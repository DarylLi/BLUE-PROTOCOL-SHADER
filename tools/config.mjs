import fs from 'node:fs';
import path from 'node:path';
import {fileURLToPath} from 'node:url';
const projectRoot=path.resolve(path.dirname(fileURLToPath(import.meta.url)),'..');
const local=path.join(projectRoot,'config.local.json');
const settings=fs.existsSync(local)?JSON.parse(fs.readFileSync(local,'utf8').replace(/^\uFEFF/,'')):{};
const resolve=value=>path.resolve(projectRoot,value);
const config={
 projectRoot,
 toolsRoot:path.join(projectRoot,'tools'),
 workRoot:resolve(settings.workRoot||'work'),
 paksRoot:settings.paksRoot?resolve(settings.paksRoot):null,
 repakExe:resolve(settings.repakExe||'tools/bin/repak-compatible/repak.exe'),
 decompilerExe:resolve(settings.decompilerExe||'tools/bin/decompiler/cmd_Decompiler.exe'),
 uassetGuiExe:resolve(settings.uassetGuiExe||'tools/bin/UAssetGUI.exe'),
 aesKey:process.env.BLUEPROTOCOL_AES_KEY||settings.aesKey||''
};
export function enterWork(){fs.mkdirSync(path.join(config.workRoot,'analysis/extraction-logs'),{recursive:true});process.chdir(config.workRoot);}
export default config;
