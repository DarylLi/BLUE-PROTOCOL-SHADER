import config, { enterWork } from './config.mjs';
enterWork();
import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import{parseArchive,decodeEntry}from './shader-archive.mjs';
const out=path.resolve(process.argv.slice(2).find(x=>!x.startsWith('--'))||config.workRoot);
fs.mkdirSync(path.join(out,'catalog'),{recursive:true});
const sources=JSON.parse(fs.readFileSync('analysis/shader-extraction.json')).filter(x=>x.bytes>0&&x.output.endsWith('.ushaderbytecode'));
const seen=new Map(),summaries=[],failures=[];
const fd=fs.openSync(path.join(out,'catalog/shaders.ndjson'),'w');
const stages=['vs','hs','ds','ps','gs','cs'];
for(const source of sources){
 const b=fs.readFileSync(source.output),a=parseArchive(b),lib=source.pak.replace('.pak','')+'__'+path.basename(source.path,'.ushaderbytecode');
 const group=/Chunk200-/.test(source.path)?'character-common':/Chunk2\d\d-/.test(source.path)?'character-other':/Global-/.test(source.path)?'global':/Chunk0-/.test(source.path)?'common':/Chunk300-/.test(source.path)?'effects':'other';
 const maps=[];
 for(let i=0;i<a.maps.count;i++){
  const e=a.mapEntries.start+i*16,first=b.readUInt32LE(e),count=b.readUInt32LE(e+4),hash=b.subarray(a.maps.start+i*20,a.maps.start+(i+1)*20).toString('hex'),shaders=[];
  if(first+count>a.indices.count)throw Error('Map index range overflow');
  for(let j=0;j<count;j++){const index=b.readUInt32LE(a.indices.start+(first+j)*4);if(index>=a.hashes.count)throw Error('Shader index overflow');shaders.push(b.subarray(a.hashes.start+index*20,a.hashes.start+(index+1)*20).toString('hex'));}
  maps.push({hash,shaders});
 }
 fs.writeFileSync(path.join(out,'catalog',lib+'.maps.json'),JSON.stringify({source,group,maps}));
 let successes=0;
 for(let i=0;i<a.entries.count;i++){
  try{
   const s=decodeEntry(b,a,i),stage=stages[s.frequency]||`frequency${s.frequency}`,relative=`dxbc/${stage}/${s.hash}.bin`,target=path.join(out,relative),digest=crypto.createHash('sha256').update(s.dxbc).digest('hex');
   if(!seen.has(s.hash)){fs.mkdirSync(path.dirname(target),{recursive:true});fs.writeFileSync(target,s.dxbc);seen.set(s.hash,digest);}else if(seen.get(s.hash)!==digest)throw Error('Hash collision with different DXBC');
   const{dxbc,...meta}=s;fs.writeSync(fd,JSON.stringify({...meta,sha256:digest,stage,group,library:lib,pak:source.pak,archive:source.path,dxbc:relative,dxbcBytes:dxbc.length})+'\n');successes++;
  }catch(error){failures.push({library:lib,index:i,error:error.message});}
 }
 summaries.push({library:lib,group,maps:a.maps.count,shaders:a.entries.count,successes,sha256:crypto.createHash('sha256').update(b).digest('hex')});
 console.log(`${lib}: ${successes}/${a.entries.count}`);
}
fs.closeSync(fd);
const summary={output:out,libraries:summaries.length,uniqueShaders:seen.size,entries:summaries.reduce((s,x)=>s+x.shaders,0),failures:failures.length,archives:summaries};
fs.writeFileSync(path.join(out,'catalog/summary.json'),JSON.stringify(summary,null,2));
fs.writeFileSync(path.join(out,'catalog/failures.json'),JSON.stringify(failures,null,2));
fs.writeFileSync(path.join(out,'catalog/stage-validation.json'),JSON.stringify({checked:seen.size,method:'DXBC SHEX/SHDR program type compared to UE shader frequency',mismatches:failures.filter(x=>x.error.includes('stage')).length},null,2));
fs.writeFileSync('analysis/shader-catalog-location.json',JSON.stringify(summary,null,2));
console.log(JSON.stringify({unique:seen.size,failures:failures.length,output:out}));
if(failures.length)process.exitCode=1;
