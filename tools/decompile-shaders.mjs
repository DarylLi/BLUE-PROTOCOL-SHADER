import config, { enterWork } from './config.mjs';
enterWork();
import fs from 'node:fs';import path from 'node:path';import{spawnSync}from 'node:child_process';
const root=path.resolve(process.argv.slice(2).find(x=>!x.startsWith('--'))||config.workRoot);
const all=process.argv.includes('--all'),materials=process.argv.includes('--materials'),exe=config.decompilerExe;
const wanted=new Set();
if(materials){for(const asset of JSON.parse(fs.readFileSync(path.join(root,'catalog/materials-summary.json'))))for(const map of asset.shaderMaps)for(const hash of map.shaders)wanted.add(hash);}
else for(const file of fs.readdirSync(path.join(root,'catalog')).filter(f=>f.endsWith('.maps.json'))){const lib=JSON.parse(fs.readFileSync(path.join(root,'catalog',file)));if(all||['common','character-common','character-other','global'].includes(lib.group))for(const map of lib.maps)for(const hash of map.shaders)wanted.add(hash);}
const files=[];
for(const stage of fs.readdirSync(path.join(root,'dxbc')))for(const file of fs.readdirSync(path.join(root,'dxbc',stage))){if(file.endsWith('.bin')&&wanted.has(file.slice(0,-4)))files.push({stage,hash:file.slice(0,-4),file:path.join(root,'dxbc',stage,file)});}
fs.mkdirSync(path.join(root,'logs'),{recursive:true});
const log=fs.openSync(path.join(root,'logs',all?'decompile-all.log':'decompile-core.log'),'a');
const previousFile=path.join(root,'catalog/decompiled-core.json');const previous=materials&&fs.existsSync(previousFile)?new Set(JSON.parse(fs.readFileSync(previousFile)).shaders.map(x=>x.hash)):new Set();
const pending=files.filter(x=>!previous.has(x.hash)&&(!fs.existsSync(x.file.replace(/\.bin$/,'.hlsl'))||!fs.existsSync(x.file.replace(/\.bin$/,'.msasm'))));
console.log(`Selected ${files.length} shaders; pending ${pending.length}`);
for(let i=0;i<pending.length;i+=48){
 const batch=pending.slice(i,i+48),r=spawnSync(exe,['-D','--disassemble-ms',...batch.map(x=>x.file)],{encoding:'utf8',maxBuffer:32*1024*1024,timeout:180000,windowsHide:true});
 fs.writeSync(log,JSON.stringify({start:i,count:batch.length,status:r.status,error:r.error?.message})+'\n'+(r.stdout||'')+(r.stderr||''));
 if(i%480===0||i+48>=pending.length)console.log(`Processed ${Math.min(i+48,pending.length)}/${pending.length}`);
}
fs.closeSync(log);
const report=files.map(x=>{const hlsl=x.file.replace(/\.bin$/,'.hlsl'),assembly=x.file.replace(/\.bin$/,'.msasm'),text=fs.existsSync(hlsl)?fs.readFileSync(hlsl,'utf8'):'';return{hash:x.hash,stage:x.stage,hlsl:fs.existsSync(hlsl)?hlsl:null,assembly:fs.existsSync(assembly)?assembly:null,needsManualFix:/Needs manual fix|void main\)/i.test(text),compiledValidation:'not-performed'};});
const summary={selected:files.length,hlsl:report.filter(x=>x.hlsl).length,assembly:report.filter(x=>x.assembly).length,needsManualFix:report.filter(x=>x.needsManualFix).length};
fs.writeFileSync(path.join(root,'catalog',all?'decompiled-all.json':materials?'decompiled-materials.json':'decompiled-core.json'),JSON.stringify({summary,shaders:report},null,2));console.log(JSON.stringify(summary));
