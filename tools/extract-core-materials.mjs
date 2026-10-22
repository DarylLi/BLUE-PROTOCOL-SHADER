import config, { enterWork } from './config.mjs';
enterWork();
import fs from 'node:fs';import path from 'node:path';import{spawnSync}from 'node:child_process';
const paks=process.argv[2]||config.paksRoot,out=path.resolve(process.argv[3]||config.workRoot);
const key = config.aesKey;
if (!/^(0x)?[0-9a-f]{64}$/i.test(key)) throw Error("Configure a 256-bit hex AES key in config.local.json or BLUEPROTOCOL_AES_KEY");
const exe=config.repakExe;
const jobs=[
 ['pakchunk200-WindowsClient.pak','BLUEPROTOCOL/Content/Character/Common/Material/'],
 ['pakchunk200-WindowsClient_0_P.pak','BLUEPROTOCOL/Content/Character/Common/Material/'],
 ['pakchunk200-WindowsClient.pak','BLUEPROTOCOL/Content/Character/Material/'],
 ['pakchunk200-WindowsClient_0_P.pak','BLUEPROTOCOL/Content/Character/Material/'],
 ['pakchunk100-WindowsClient.pak','BLUEPROTOCOL/Content/Environment/Common/MasterShader/'],
 ['pakchunk100-WindowsClient_0_P.pak','BLUEPROTOCOL/Content/Environment/Common/MasterShader/'],
];
const result=[];
for(const[pak,prefix]of jobs){const dest=path.join(out,'materials',pak.replace('.pak',''));fs.mkdirSync(dest,{recursive:true});const r=spawnSync(exe,['-a',key,'unpack',path.join(paks,pak),'-o',dest,'-f','-i',prefix],{encoding:'utf8',maxBuffer:32*1024*1024,windowsHide:true});fs.writeFileSync(`analysis/extraction-logs/materials-${pak}.log`,(r.stdout||'')+(r.stderr||''));result.push({pak,prefix,output:dest,exitCode:r.status});console.log(result.at(-1));}
fs.writeFileSync('analysis/material-extraction.json',JSON.stringify(result,null,2));
if(result.some(x=>x.exitCode!==0))process.exitCode=1;
