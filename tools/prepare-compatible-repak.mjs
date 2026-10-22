// repak 0.2.2 tolerates this game's deleted-entry sentinel; 0.2.3 crashes on it.
// 0.2.2 pins an unavailable Oodle DLL. Update ONLY that pin to the 2.9.10 DLL
// whose SHA-256 is published in repak 0.2.3's oodle_loader/src/lib.rs.
import fs from 'node:fs';import crypto from 'node:crypto';
const original=process.argv[2];
if(!original)throw Error('Usage: node tools/prepare-compatible-repak.mjs PATH_TO_REPAK_0.2.2_EXE');
const dll=fs.readFileSync('tools/bin/repak/oo2core_9_win64.dll');
const expected='6f5d41a7892ea6b2db420f2458dad2f84a63901c9a93ce9497337b16c195f457';
const digest=(b,alg='sha256')=>crypto.createHash(alg).update(b).digest('hex');
if(digest(dll)!==expected)throw Error('Oodle DLL SHA-256 verification failed');
const b=fs.readFileSync(original),before=digest(b),needle=Buffer.from('4bcc73614cb8fd2b0bce8d0f91ee5f3202d9d624','hex');
const offsets=[];let i=-1;while((i=b.indexOf(needle,i+1))>=0)offsets.push(i);
if(offsets.length!==2)throw Error('Expected exactly two legacy DLL pin constants');
const tailOffsets=[];i=-1;while((i=b.indexOf(needle.subarray(16),i+1))>=0)tailOffsets.push(i);
const immediate=tailOffsets.filter(p=>!offsets.includes(p-16));
if(immediate.length!==1)throw Error('Expected one compiled 32-bit pin comparison');
const replacement=Buffer.from(digest(dll,'sha1'),'hex');
for(const p of offsets)replacement.copy(b,p);
replacement.subarray(16).copy(b,immediate[0]);
fs.mkdirSync('tools/bin/repak-compatible',{recursive:true});
fs.writeFileSync('tools/bin/repak-compatible/repak.exe',b);fs.writeFileSync('tools/bin/repak-compatible/oo2core_9_win64.dll',dll);
fs.writeFileSync('tools/bin/repak-compatible/provenance.json',JSON.stringify({original,originalSha256:before,modifiedSha256:digest(b),patchOffsets:offsets,comparisonOffset:immediate[0],changedBytes:44,reason:'Oodle 2.9.10 DLL pin; retain repak 0.2.2 deleted-entry handling',oodleSha256:expected},null,2));
console.log('Prepared a separate compatibility copy; original executable unchanged.');
