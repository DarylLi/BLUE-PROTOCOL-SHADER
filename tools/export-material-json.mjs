import config, { enterWork } from './config.mjs';
enterWork();
import fs from 'node:fs';import path from 'node:path';import{spawn}from 'node:child_process';
const root=path.resolve(process.argv.slice(2).find(x=>!x.startsWith('--'))||config.workRoot),source=path.join(root,'materials'),exe=config.uassetGuiExe;
function walk(dir){return fs.readdirSync(dir,{withFileTypes:true}).flatMap(e=>e.isDirectory()?walk(path.join(dir,e.name)):[path.join(dir,e.name)]);}
const files=walk(source).filter(f=>f.endsWith('.uasset')&&(/^(M_|MI_|MF_|MPC_)/.test(path.basename(f))||f.includes('LightParamCollection'))),results=[];
let next=0,done=0;
async function worker(){while(next<files.length){const file=files[next++],relative=path.relative(source,file),dest=path.join(root,'material-json',relative.replace(/\.uasset$/,'.json'));fs.mkdirSync(path.dirname(dest),{recursive:true});
 const r=await new Promise(resolve=>{const child=spawn(exe,['tojson',file,dest,'VER_UE4_27'],{windowsHide:true});let stderr='';child.stderr.on('data',x=>stderr+=x);child.stdout.resume();const timer=setTimeout(()=>child.kill(),60000);child.on('error',e=>{clearTimeout(timer);resolve({code:null,error:e.message});});child.on('close',code=>{clearTimeout(timer);resolve({code,error:stderr});});});
 let valid=false,exportCount=0;try{const data=JSON.parse(fs.readFileSync(dest,'utf8'));valid=Array.isArray(data.Exports);exportCount=data.Exports?.length||0;}catch{}
 results.push({source:file,json:dest,...r,valid,exportCount});done++;if(done%40===0)console.log(`${done}/${files.length}`);
}}
await Promise.all(Array.from({length:4},worker));
fs.writeFileSync(path.join(root,'catalog/material-json-export.json'),JSON.stringify(results,null,2));console.log(JSON.stringify({total:files.length,valid:results.filter(x=>x.valid).length}));
if(results.some(x=>!x.valid))process.exitCode=1;
