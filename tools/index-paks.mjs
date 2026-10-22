import config, { enterWork } from './config.mjs';
enterWork();
import fs from 'node:fs';
import path from 'node:path';
import {spawnSync} from 'node:child_process';
const root = process.argv[2] || config.paksRoot;
if (!root || !fs.statSync(root).isDirectory()) throw new Error('Pass the Paks directory');
const exe = config.repakExe;
const key = config.aesKey;
if (!/^(0x)?[0-9a-f]{64}$/i.test(key)) throw Error("Configure a 256-bit hex AES key in config.local.json or BLUEPROTOCOL_AES_KEY");
fs.mkdirSync('analysis/pak-index',{recursive:true});
const entries=[], packs=[];
for (const pak of fs.readdirSync(root).filter(p=>p.endsWith('.pak')).sort()) {
  const r = spawnSync(exe,['-a',key,'list',path.join(root,pak)],{encoding:'utf8',maxBuffer:128*1024*1024,windowsHide:true});
  fs.writeFileSync(`analysis/pak-index/${pak}.txt`,r.stdout||'');
  if (r.stderr) fs.writeFileSync(`analysis/pak-index/${pak}.log`,r.stderr);
  const lines = (r.stdout||'').split(/\r?\n/).filter(Boolean);
  const files = lines.filter(x=>!x.startsWith('"') && !x.includes(' has invalid offset: '));
  packs.push({pak,bytes:fs.statSync(path.join(root,pak)).size,exitCode:r.status,fileCount:files.length,warningLines:lines.length-files.length+(r.stderr||'').split(/\r?\n/).filter(Boolean).length});
  for(const file of files) {
    let category = /\.(hlsl|glsl|usf|ush|wgsl)$/i.test(file) ? 'shader-source' : /shaderbytecode|globalshadercache|\.ushader/i.test(file) ? 'shader-binary' : /(?:^|\/)(?:M_|MI_|MI1_|MF_|MPC_)/i.test(file) && /\.(uasset|uexp)$/i.test(file) ? 'material' : /toon|outline|rimlight|shadowhsv/i.test(file) ? 'rendering-candidate' : null;
    if(category) entries.push({pak,path:file,category});
  }
  console.log(`${pak}: ${files.length} entries (${r.status})`);
}
fs.writeFileSync('analysis/pak-summary.json',JSON.stringify(packs,null,2));
fs.writeFileSync('analysis/rendering-assets.json',JSON.stringify(entries,null,2));
console.log(JSON.stringify({packs:packs.length,selected:entries.length,categories:Object.fromEntries([...new Set(entries.map(x=>x.category))].map(c=>[c,entries.filter(x=>x.category===c).length]))}));
if(packs.some(x=>x.exitCode!==0))process.exitCode=1;
