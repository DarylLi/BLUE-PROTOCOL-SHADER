import fs from 'node:fs';import path from 'node:path';import crypto from 'node:crypto';import readline from 'node:readline';import{fileURLToPath}from 'node:url';
const root=path.resolve(path.dirname(fileURLToPath(import.meta.url)),'..'),errors=[];
const read=name=>JSON.parse(fs.readFileSync(path.join(root,name),'utf8').replace(/^\uFEFF/,''));
const exists=file=>{const target=path.resolve(root,file);if(!target.startsWith(root+path.sep)||!fs.existsSync(target)){errors.push(`Missing or unsafe path: ${file}`);return false;}return true;};
const summary=read('catalog/summary.json'),shaders=read('catalog/readable-shaders.json'),materials=read('catalog/materials.json'),validation=read('catalog/hlsl-validation.json'),stages=read('catalog/stage-validation.json');
if(stages.checked!==summary.uniqueDxbc||stages.mismatches!==0)errors.push('Stage validation differs from summary');
if(shaders.filter(s=>s.hlsl).length!==summary.hlsl)errors.push('HLSL count mismatch');
if(shaders.filter(s=>s.assembly).length!==summary.assembly)errors.push('Assembly count mismatch');
if(materials.length!==summary.materials)errors.push('Material count mismatch');
if(validation.filter(x=>x.passed).length!==summary.compileSamplesPassed)errors.push('Compile sample count mismatch');
const byHash=new Map(shaders.map(x=>[x.hash,x]));
for(const shader of shaders)for(const field of ['hlsl','assembly'])if(shader[field])exists(shader[field]);
for(const asset of materials){for(const field of ['page','summary','json'])exists(asset[field]);const detail=read(asset.summary);for(const map of detail.shaderMaps)for(const shader of map.shaders){const indexed=byHash.get(shader.hash);for(const field of ['hlsl','assembly'])if(shader[field]&&shader[field]!==indexed?.[field])errors.push(`Shader link mismatch: ${asset.name} ${shader.hash}`);}}
let hashes=0;
for await(const line of readline.createInterface({input:fs.createReadStream(path.join(root,'catalog/file-integrity.ndjson')),crlfDelay:Infinity})){
 if(!line)continue;const item=JSON.parse(line);if(!exists(item.path))continue;const data=fs.readFileSync(path.join(root,item.path));const hash=crypto.createHash('sha256').update(data).digest('hex');if(data.length!==item.bytes||hash!==item.sha256)errors.push(`Integrity mismatch: ${item.path}`);hashes++;
}
function walk(dir){return fs.readdirSync(dir,{withFileTypes:true}).flatMap(e=>['.git','work','node_modules'].includes(e.name)||(dir===path.join(root,'tools')&&e.name==='bin')?[]:e.isDirectory()?walk(path.join(dir,e.name)):[path.join(dir,e.name)]);}
const files=walk(root);let totalBytes=0,largest={bytes:0,path:null};
for(const file of files){const relative=path.relative(root,file).replaceAll('\\','/'),size=fs.statSync(file).size;totalBytes+=size;if(size>largest.bytes)largest={bytes:size,path:relative};if(size>=100*1024*1024)errors.push(`File exceeds 100 MiB: ${relative}`);if(/\.(pak|sig|utoc|ucas|uasset|uexp|ubulk|ushaderbytecode|bin|exe|dll)$/i.test(file))errors.push(`Unexpected binary: ${relative}`);
 if(file.endsWith('.md')){const text=fs.readFileSync(file,'utf8');for(const m of text.matchAll(/\[[^\]\n]+\]\(([^)\n]+)\)/g)){let link=m[1].split('#')[0];if(!link||/^[a-z]+:/i.test(link))continue;try{link=decodeURIComponent(link);}catch{}if(!fs.existsSync(path.resolve(path.dirname(file),link)))errors.push(`Broken Markdown link: ${relative} → ${link}`);}}
 if(/\.(mjs|json|ndjson|md)$/.test(file)&&!/materials\/raw\//.test(relative)){const text=fs.readFileSync(file,'utf8');if(/C:[/\\]+Users[/\\]+daryl|G:[/\\]+Blueprotocol_Shader_Analysis/.test(text))errors.push(`Personal absolute path: ${relative}`);}
}
console.log(JSON.stringify({files:files.length,totalMiB:Number((totalBytes/1024/1024).toFixed(2)),largest,integrityFiles:hashes,hlsl:summary.hlsl,materials:materials.length,errors:errors.slice(0,50),errorCount:errors.length},null,2));
if(errors.length)process.exitCode=1;
