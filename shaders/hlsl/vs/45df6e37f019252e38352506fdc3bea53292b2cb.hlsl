// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[365];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  uint v3 : ATTRIBUTE3,
  float3 v4 : ATTRIBUTE11,
  float3 v5 : ATTRIBUTE12,
  uint v6 : SV_VertexID0,
  float4 v7 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v6.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v6.x + asint(cb0[10].w);
  r0.x = (int)r0.x + asint(-cb0[10].z);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)3 & ~bitmask.y);
  r0.yz = t2.Load(r0.y).xy;
  r1.xy = (uint2)r0.yz >> int2(16,16);
  r0.w = cmp((uint)r1.y < 0x0000ffff);
  if (r0.w != 0) {
    r0.x = (uint)r0.x << 2;
    r1.yzw = t2.Load(r0.x).xyw;
    r2.xyzw = (int4)r0.yzyz & int4(0xffff,0xffff,0xffff,0xffff);
    r0.xy = (int2)r2.zw * int2(3,3);
    r0.xz = t0.Load(r0.x).xy;
    r2.xyzw = mad((int4)r2.xyzw, int4(3,3,3,3), int4(1,1,2,2));
    r3.xy = t0.Load(r2.x).xy;
    r4.xyz = cb0[3].xyz * r0.zzz;
    r4.xyz = r0.xxx * cb0[2].xyz + r4.xyz;
    r3.xzw = r3.xxx * cb0[4].xyz + r4.xyz;
    r3.xzw = cb0[5].xyz + r3.xzw;
    r0.x = (int)r1.x * 3;
    r0.xz = t0.Load(r0.x).xy;
    r4.xy = mad((int2)r1.xx, int2(3,3), int2(1,2));
    r4.xz = t0.Load(r4.x).xy;
    r5.xyz = cb0[3].xyz * r0.zzz;
    r5.xyz = r0.xxx * cb0[2].xyz + r5.xyz;
    r5.xyz = r4.xxx * cb0[4].xyz + r5.xyz;
    r5.xyz = cb0[5].xyz + r5.xyz;
    r0.xy = t0.Load(r0.y).xy;
    r2.xy = t0.Load(r2.y).xy;
    r6.xyz = cb0[3].xyz * r0.yyy;
    r0.xyz = r0.xxx * cb0[2].xyz + r6.xyz;
    r0.xyz = r2.xxx * cb0[4].xyz + r0.xyz;
    r0.xyz = cb0[5].xyz + r0.xyz;
    r2.xz = t0.Load(r2.z).xy;
    r6.xyz = cb0[3].xyz * r2.xxx;
    r6.xyz = r3.yyy * cb0[2].xyz + r6.xyz;
    r6.xyz = r2.zzz * cb0[4].xyz + r6.xyz;
    r2.xz = t0.Load(r4.y).xy;
    r4.xyw = cb0[3].xyz * r2.xxx;
    r4.xyz = r4.zzz * cb0[2].xyz + r4.xyw;
    r4.xyz = r2.zzz * cb0[4].xyz + r4.xyz;
    r2.xz = t0.Load(r2.w).xy;
    r7.xyz = cb0[3].xyz * r2.xxx;
    r2.xyw = r2.yyy * cb0[2].xyz + r7.xyz;
    r2.xyz = r2.zzz * cb0[4].xyz + r2.xyw;
    r1.x = 1 + -r1.y;
    r1.x = r1.x + -r1.z;
    r3.xyz = r6.xyz * r1.www + r3.xzw;
    r4.xyz = r4.xyz * r1.www + r5.xyz;
    r4.xyz = r4.xyz * r1.zzz;
    r3.xyz = r1.yyy * r3.xyz + r4.xyz;
    r0.xyz = r2.xyz * r1.www + r0.xyz;
    r0.xyz = r1.xxx * r0.xyz + r3.xyz;
  } else {
    r0.xyz = v0.xyz;
  }
  r1.x = (int)v3.x & 255;
  r1.y = (uint)v3.x >> 8;
  r1.z = mad(asint(cb0[10].y), (int)r1.x, (int)r1.y);
  r2.xyzw = float4(0,0,0,0);
  r3.xyzw = float4(0,0,0,0);
  r4.xyzw = float4(0,0,0,0);
  r1.w = cb0[10].y;
  r5.x = 0;
  while (true) {
    r5.y = cmp((int)r5.x >= (int)r1.x);
    if (r5.y != 0) break;
    r5.y = mad((int)r1.w, (int)r5.x, (int)r1.y);
    r5.z = t1.Load(r5.y).x;
    r5.w = cmp(1 < (uint)r1.w);
    if (r5.w != 0) {
      r5.y = (int)r5.y + 1;
      r5.y = t1.Load(r5.y).x;
      r5.y = (uint)r5.y << 8;
      r5.y = (int)r5.z | (int)r5.y;
      r5.w = (int)r1.z + (int)r5.x;
      r5.w = t1.Load(r5.w).x;
      r5.w = (uint)r5.w;
      r5.w = 0.00392156886 * r5.w;
      r6.x = (int)r5.y * 3;
      r6.xyzw = t3.Load(r6.x).xyzw;
      r7.xy = mad((int2)r5.yy, int2(3,3), int2(1,2));
      r8.xyzw = t3.Load(r7.x).xyzw;
      r7.xyzw = t3.Load(r7.y).xyzw;
      r2.xyzw = r5.wwww * r6.xyzw + r2.xyzw;
      r3.xyzw = r5.wwww * r8.xyzw + r3.xyzw;
      r4.xyzw = r5.wwww * r7.xyzw + r4.xyzw;
    } else {
      r5.y = (int)r1.z + (int)r5.x;
      r5.y = t1.Load(r5.y).x;
      r5.y = (uint)r5.y;
      r5.y = 0.00392156886 * r5.y;
      r5.w = (int)r5.z * 3;
      r6.xyzw = t3.Load(r5.w).xyzw;
      r5.zw = mad((int2)r5.zz, int2(3,3), int2(1,2));
      r7.xyzw = t3.Load(r5.z).xyzw;
      r8.xyzw = t3.Load(r5.w).xyzw;
      r2.xyzw = r5.yyyy * r6.xyzw + r2.xyzw;
      r3.xyzw = r5.yyyy * r7.xyzw + r3.xyzw;
      r4.xyzw = r5.yyyy * r8.xyzw + r4.xyzw;
    }
    r5.x = (int)r5.x + 1;
  }
  r1.xyz = v4.xyz + v0.xyz;
  r1.w = 1;
  r2.x = dot(r2.xyzw, r1.xyzw);
  r2.y = dot(r3.xyzw, r1.xyzw);
  r2.z = dot(r4.xyzw, r1.xyzw);
  r1.xyz = v5.xyz + r2.xyz;
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = r1.xxx * cb2[0].xyz + r2.xyz;
  r1.xyz = r1.zzz * cb2[2].xyz + r1.xyw;
  r2.xyz = cb2[3].xyz + r1.xyz;
  r0.xyz = -r2.xyz + r0.xyz;
  r0.xyz = cb0[10].xxx * r0.xyz + r2.xyz;
  r0.xyz = cb1[70].xyz + r0.xyz;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.xyz = r0.www ? r0.xyz : r1.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  o0.xy = cb1[364].xy * r0.zz + r0.xy;
  o0.zw = r0.zw;
  return;
}