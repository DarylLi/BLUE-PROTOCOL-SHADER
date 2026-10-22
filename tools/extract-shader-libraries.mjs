import config, { enterWork } from './config.mjs';
enterWork();
import fs from 'node:fs';
import path from 'node:path';
import {spawnSync} from 'node:child_process';
const root=process.argv[2]||config.paksRoot;
const exe=config.repakExe;
const key = config.aesKey;
if (!/^(0x)?[0-9a-f]{64}$/i.test(key)) throw Error("Configure a 256-bit hex AES key in config.local.json or BLUEPROTOCOL_AES_KEY");
const entries=JSON.parse(fs.readFileSync('analysis/rendering-assets.json','utf8')).filter(x=>x.category==='shader-binary');
const results=[];
for(const pak of [...new Set(entries.map(x=>x.pak))]){
  if(process.argv[3] && !pak.startsWith(process.argv[3]))continue;
  const files=entries.filter(x=>x.pak===pak);
  const out=path.resolve('extracted/shader-libraries',pak.replace(/\.pak$/,''));
  fs.mkdirSync(out,{recursive:true});
  const r=spawnSync(exe,['-a',key,'unpack',path.join(root,pak),'-o',out,'-f',...files.flatMap(x=>['-i',x.path])],{encoding:'utf8',maxBuffer:16*1024*1024,windowsHide:true});
  fs.mkdirSync('analysis/extraction-logs',{recursive:true});
  fs.writeFileSync(`analysis/extraction-logs/${pak}.log`,(r.stdout||'')+(r.stderr||''));
  for(const f of files){const target=path.join(out,f.path);results.push({...f,output:target,exists:fs.existsSync(target),bytes:fs.existsSync(target)?fs.statSync(target).size:0,exitCode:r.status});}
  console.log(`${pak}: ${r.status}`);
}
const old=process.argv[3]?JSON.parse(fs.readFileSync('analysis/shader-extraction.json')).filter(x=>!x.pak.startsWith(process.argv[3])):[];
fs.writeFileSync('analysis/shader-extraction.json',JSON.stringify([...results,...old],null,2));
console.log(JSON.stringify({files:results.length,extracted:results.filter(x=>x.exists).length,bytes:results.reduce((s,x)=>s+x.bytes,0)}));
if(results.some(x=>x.exitCode!==0||!x.exists||x.bytes===0))process.exitCode=1;
