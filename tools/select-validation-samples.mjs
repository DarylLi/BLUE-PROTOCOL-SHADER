import fs from 'node:fs';import path from 'node:path';import config from './config.mjs';
const root=path.resolve(process.argv[2]||config.workRoot),materials=JSON.parse(fs.readFileSync(path.join(root,'catalog/materials-summary.json'))),samples=[];
for(const m of materials.filter(m=>m.pak.endsWith('_0_P.pak')&&/\/(M_CH_ToonHair|MI_CH_AvatarFace|M_CH_Outline|MI_CH_AvatarArmor)\.uasset$/.test(m.asset))){
 for(const stage of ['ps','vs']){let count=0;for(const hash of m.shaderMaps.flatMap(x=>x.shaders)){const file=path.join(root,'dxbc',stage,hash+'.hlsl');if(fs.existsSync(file)&&!fs.readFileSync(file,'utf8').includes('Needs manual fix')){samples.push({material:m.asset,hash,stage,hlsl:file});if(++count===2)break;}}}
}
fs.writeFileSync(path.join(root,'catalog/validation-samples.json'),JSON.stringify(samples,null,2));console.log(`Selected ${samples.length} samples; selection excludes known manual-fix markers.`);
