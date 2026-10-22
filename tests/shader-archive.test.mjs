import test from 'node:test';import assert from 'node:assert/strict';import zlib from 'node:zlib';import{parseArchive,decodeEntry,lz4Raw}from '../tools/shader-archive.mjs';

test('LZ4 supports overlapping matches and rejects out-of-range references',()=>{
 assert.equal(lz4Raw(Buffer.from([0x11,0x61,1,0]),6).toString(),'aaaaaa');
 assert.throws(()=>lz4Raw(Buffer.from([0,1,0]),4),/backreference/);
 assert.throws(()=>lz4Raw(Buffer.from([0xf0,255]),1),/Truncated/);
 assert.throws(()=>lz4Raw(Buffer.from([0x20,0x61]),2),/overflow/);
 assert.throws(()=>lz4Raw(Buffer.from([0x10,0x61]),2),/size mismatch/);
});

function fixture({frequency=3,compress=false}={}){
 const dxbc=Buffer.alloc(52);dxbc.write('DXBC');dxbc.writeUInt32LE(1,20);dxbc.writeUInt32LE(52,24);dxbc.writeUInt32LE(1,28);dxbc.writeUInt32LE(36,32);dxbc.write('SHDR',36);dxbc.writeUInt32LE(8,40);dxbc.writeUInt32LE(0x50,44);dxbc.writeUInt32LE(2,48); // pixel shader model 5.0; structural fixture only
 const raw=Buffer.concat([Buffer.alloc(12,7),dxbc,Buffer.alloc(4)]),packed=compress?zlib.deflateSync(raw):raw;
 const u32=n=>{let b=Buffer.alloc(4);b.writeUInt32LE(n);return b;};
 const array=(n,b)=>Buffer.concat([u32(n),b]);
 const descriptor=Buffer.alloc(16);descriptor.writeUInt32LE(1,4);
 const entry=Buffer.alloc(17);entry.writeUInt32LE(packed.length,8);entry.writeUInt32LE(raw.length,12);entry[16]=frequency;
 return Buffer.concat([u32(2),array(1,Buffer.alloc(20,1)),array(1,Buffer.alloc(20,2)),array(1,descriptor),array(1,entry),array(0,Buffer.alloc(0)),array(1,u32(0)),packed]);
}

test('UE frequency 3 means pixel; DXBC program type 0 independently confirms it',()=>{
 for(const compress of [false,true]){const b=fixture({compress}),a=parseArchive(b),s=decodeEntry(b,a,0);assert.equal(s.stage,'ps');assert.equal(s.dxbcOffset,12);assert.equal(s.dxbc.length,52);assert.equal(s.hash,'02'.repeat(20));}
});
test('Parser rejects stage disagreement, truncated payload and unsupported version',()=>{
 const badStage=fixture({frequency:1});assert.throws(()=>decodeEntry(badStage,parseArchive(badStage),0),/stage/);
 const b=fixture(),a=parseArchive(b);assert.throws(()=>decodeEntry(b.subarray(0,b.length-1),a,0),/bounds/);
 const wrong=Buffer.from(b);wrong.writeUInt32LE(1,0);assert.throws(()=>parseArchive(wrong),/Unsupported/);
 const count=Buffer.from(b);count.writeUInt32LE(0xffffffff,4);assert.throws(()=>parseArchive(count),/overflow/);
});
