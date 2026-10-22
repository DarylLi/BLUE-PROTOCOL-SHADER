import config, { enterWork } from './config.mjs';
enterWork();
import fs from 'node:fs';import path from 'node:path';
const root=path.resolve(process.argv.slice(2).find(x=>!x.startsWith('--'))||config.workRoot);
const exports=JSON.parse(fs.readFileSync(path.join(root,'catalog/material-json-export.json'))),libs=[];
for(const file of fs.readdirSync(path.join(root,'catalog')).filter(x=>x.endsWith('.maps.json'))){const lib=JSON.parse(fs.readFileSync(path.join(root,'catalog',file)));libs.push({...lib,id:file.replace('.maps.json','')});}
const compact=p=>p.EnumValue!==undefined?{enum:p.EnumType,value:p.EnumValue}:Array.isArray(p.Value)?p.Value.map(x=>({name:x.Name,arrayIndex:x.ArrayIndex,...(x.StructType?{structType:x.StructType}:{}),value:compact(x)})):p.Value??null;
function objectRef(j,index,seen=new Set()){
 if(!Number.isInteger(index)||index===0)return null;if(seen.has(index))return '[cycle]';seen.add(index);
 const obj=index<0?j.Imports[-index-1]:j.Exports[index-1];if(!obj)return `[unresolved:${index}]`;
 const parent=objectRef(j,obj.OuterIndex,seen);return parent?parent+'.'+obj.ObjectName:obj.ObjectName;
}
const result=[];
for(const item of exports.filter(x=>x.valid)){
 const rel=path.relative(path.join(root,'materials'),item.source).replaceAll('\\','/'),pak=rel.split('/')[0]+'.pak';
 const j=JSON.parse(fs.readFileSync(item.json,'utf8')),uexpPath=item.source.replace(/\.uasset$/,'.uexp');
 const buffer=fs.existsSync(uexpPath)?fs.readFileSync(uexpPath):Buffer.alloc(0),matches=[];
 for(const lib of libs.filter(x=>x.source.pak===pak))for(const map of lib.maps){const byteOffset=buffer.indexOf(Buffer.from(map.hash,'hex'));if(byteOffset>=0)matches.push({hash:map.hash,library:lib.id,byteOffset,method:'exact-20-byte-hash-in-uexp',shaderCount:map.shaders.length,shaders:map.shaders});}
 const objects=[];
 for(const e of j.Exports||[]){
  const data=e.Data||[],get=name=>data.find(x=>x.Name===name),params={};
  for(const key of ['ScalarParameterValues','VectorParameterValues','TextureParameterValues']){
   params[key]=[];
   for(const p of get(key)?.Value||[]){const fields=p.Value||[],info=fields.find(x=>x.Name==='ParameterInfo'),value=fields.find(x=>x.Name==='ParameterValue');const name=info?.Value?.find(x=>x.Name==='Name')?.Value;
    params[key].push({name:name||null,parameterInfo:info?compact(info):null,value:key==='TextureParameterValues'?objectRef(j,value?.Value):value?compact(value):null});
   }
  }
  objects.push({name:e.ObjectName,class:objectRef(j,e.ClassIndex),parent:objectRef(j,get('Parent')?.Value),shadingModel:get('ShadingModel')?compact(get('ShadingModel')):null,blendMode:get('BlendMode')?compact(get('BlendMode')):null,parameters:params,properties:data.filter(x=>!['CachedExpressionData','CachedReferencedTextures','TextureStreamingData','ScalarParameterValues','VectorParameterValues','TextureParameterValues'].includes(x.Name)).map(x=>({name:x.Name,value:compact(x)})),hasUnparsedExtras:!!e.Extras});
 }
 result.push({asset:rel,pak,sourceJson:path.relative(root,item.json).replaceAll('\\','/'),objects,packageReferences:(j.NameMap||[]).filter(x=>typeof x==='string'&&/^\/(Game|Engine)\//.test(x)),shaderMaps:matches});
}
fs.writeFileSync(path.join(root,'catalog/materials-summary.json'),JSON.stringify(result,null,2));
console.log(JSON.stringify({materials:result.length,withShaderMaps:result.filter(x=>x.shaderMaps.length).length,maps:result.reduce((s,x)=>s+x.shaderMaps.length,0),referencedShaders:new Set(result.flatMap(x=>x.shaderMaps.flatMap(m=>m.shaders))).size}));
