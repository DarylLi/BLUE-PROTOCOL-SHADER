import zlib from 'node:zlib';
export function parseArchive(b){
 let p=0;
 const u32=()=>{if(p+4>b.length)throw Error('Truncated archive');const n=b.readUInt32LE(p);p+=4;return n;};
 const array=stride=>{const count=u32(),start=p;p+=count*stride;if(p>b.length)throw Error('Array overflow');return{count,start,stride};};
 const version=u32();if(version!==2)throw Error(`Unsupported archive version ${version}`);
 const maps=array(20),hashes=array(20),mapEntries=array(16),entries=array(17),preloads=array(16),indices=array(4);
 if(maps.count!==mapEntries.count||hashes.count!==entries.count)throw Error('Mismatched array counts');
 return{version,maps,hashes,mapEntries,entries,preloads,indices,dataOffset:p};
}
export function lz4Raw(input,length){
 const out=Buffer.alloc(length);let ip=0,op=0;
 const extra=()=>{let n=0,v;do{if(ip>=input.length)throw Error('Truncated LZ4 length');v=input[ip++];n+=v;}while(v===255);return n;};
 while(ip<input.length){
  const token=input[ip++];let literals=token>>>4;if(literals===15)literals+=extra();
  if(ip+literals>input.length||op+literals>length)throw Error('LZ4 literal overflow');
  input.copy(out,op,ip,ip+literals);ip+=literals;op+=literals;
  if(ip===input.length)break;
  if(ip+2>input.length)throw Error('Truncated LZ4 offset');
  const offset=input.readUInt16LE(ip);ip+=2;if(offset===0||offset>op)throw Error('Invalid LZ4 backreference');
  let match=(token&15)+4;if((token&15)===15)match+=extra();
  if(op+match>length)throw Error('LZ4 match overflow');
  for(let j=0;j<match;j++){out[op]=out[op-offset];op++;}
 }
 if(op!==length)throw Error(`LZ4 size mismatch ${op}/${length}`);
 return out;
}
export function decodeEntry(b,a,i){
 const e=a.entries.start+i*17,offset=Number(b.readBigUInt64LE(e)),size=b.readUInt32LE(e+8),usize=b.readUInt32LE(e+12),frequency=b[e+16];
 if(!Number.isSafeInteger(offset)||a.dataOffset+offset+size>b.length||usize>32*1024*1024)throw Error('Shader bounds invalid');
 const packed=b.subarray(a.dataOffset+offset,a.dataOffset+offset+size);
 let raw,compression='none';
 if(size===usize)raw=packed;else {try{raw=zlib.inflateSync(packed);compression='zlib';}catch{raw=lz4Raw(packed,usize);compression='lz4';}}
 if(raw.length!==usize)throw Error('Uncompressed size mismatch');
 const start=raw.indexOf('DXBC');if(start<0||start+32>raw.length)throw Error('DXBC container missing');
 const length=raw.readUInt32LE(start+24),chunks=raw.readUInt32LE(start+28);
 if(length<32+chunks*4||start+length>raw.length)throw Error('Invalid DXBC size');
 const dxbc=raw.subarray(start,start+length),tags=[];let stage=null;
 for(let j=0;j<chunks;j++){const p=dxbc.readUInt32LE(32+j*4);if(p+8>length||p+8+dxbc.readUInt32LE(p+4)>length)throw Error('DXBC chunk bounds');const tag=dxbc.toString('ascii',p,p+4);tags.push(tag);if(tag==='SHDR'||tag==='SHEX')stage=['ps','vs','gs','hs','ds','cs'][dxbc.readUInt32LE(p+8)>>>16];}
 const expected=['vs','hs','ds','ps','gs','cs'][frequency];
 if(!stage||stage!==expected)throw Error(`DXBC stage ${stage} differs from UE frequency ${frequency}`);
 return{hash:b.subarray(a.hashes.start+i*20,a.hashes.start+(i+1)*20).toString('hex'),offset,size,usize,frequency,stage,compression,dxbcOffset:start,dxbc,tags};
}
