// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD10,
  out float4 o2 : TEXCOORD11,
  out float4 o3 : TEXCOORD6)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v6.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v6.x + asint(cb0[10].w);
  r0.x = (int)r0.x + asint(-cb0[10].z);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)3 & ~bitmask.y);
  r0.yz = t2.Load(r0.y).xy;
  r1.xy = (uint2)r0.yz >> int2(16,16);
  r2.xyzw = (int4)r0.yyzz & int4(0xffff,0xffff,0xffff,0xffff);
  r0.y = cmp((uint)r1.y < 0x0000ffff);
  if (r0.y != 0) {
    r0.z = (uint)r0.x << 2;
    r1.yzw = t2.Load(r0.z).xyw;
    r0.zw = (int2)r2.yw * int2(3,3);
    r3.xy = t0.Load(r0.z).xy;
    r4.xyzw = mad((int4)r2.ywyw, int4(3,3,3,3), int4(1,1,2,2));
    r3.zw = t0.Load(r4.x).xy;
    r5.xyz = cb0[3].xyz * r3.yyy;
    r5.xyz = r3.xxx * cb0[2].xyz + r5.xyz;
    r3.xyz = r3.zzz * cb0[4].xyz + r5.xyz;
    r3.xyz = cb0[5].xyz + r3.xyz;
    r0.z = (int)r1.x * 3;
    r5.xy = t0.Load(r0.z).xy;
    r5.zw = mad((int2)r1.xx, int2(3,3), int2(1,2));
    r6.xy = t0.Load(r5.z).xy;
    r7.xyz = cb0[3].xyz * r5.yyy;
    r5.xyz = r5.xxx * cb0[2].xyz + r7.xyz;
    r5.xyz = r6.xxx * cb0[4].xyz + r5.xyz;
    r5.xyz = cb0[5].xyz + r5.xyz;
    r0.zw = t0.Load(r0.w).xy;
    r4.xy = t0.Load(r4.y).xy;
    r6.xzw = cb0[3].xyz * r0.www;
    r6.xzw = r0.zzz * cb0[2].xyz + r6.xzw;
    r6.xzw = r4.xxx * cb0[4].xyz + r6.xzw;
    r6.xzw = cb0[5].xyz + r6.xzw;
    r0.zw = t0.Load(r4.z).xy;
    r7.xyz = cb0[3].xyz * r0.zzz;
    r7.xyz = r3.www * cb0[2].xyz + r7.xyz;
    r7.xyz = r0.www * cb0[4].xyz + r7.xyz;
    r0.zw = t0.Load(r5.w).xy;
    r8.xyz = cb0[3].xyz * r0.zzz;
    r8.xyz = r6.yyy * cb0[2].xyz + r8.xyz;
    r8.xyz = r0.www * cb0[4].xyz + r8.xyz;
    r0.zw = t0.Load(r4.w).xy;
    r4.xzw = cb0[3].xyz * r0.zzz;
    r4.xyz = r4.yyy * cb0[2].xyz + r4.xzw;
    r4.xyz = r0.www * cb0[4].xyz + r4.xyz;
    r0.z = 1 + -r1.y;
    r0.z = r0.z + -r1.z;
    r3.xyz = r7.xyz * r1.www + r3.xyz;
    r5.xyz = r8.xyz * r1.www + r5.xyz;
    r5.xyz = r5.xyz * r1.zzz;
    r3.xyz = r1.yyy * r3.xyz + r5.xyz;
    r1.yzw = r4.xyz * r1.www + r6.xzw;
    r1.yzw = r0.zzz * r1.yzw + r3.xyz;
  } else {
    r1.yzw = v0.xyz;
  }
  r0.z = (int)v3.x & 255;
  r0.w = (uint)v3.x >> 8;
  r3.x = mad(asint(cb0[10].y), (int)r0.z, (int)r0.w);
  r4.xyzw = float4(0,0,0,0);
  r5.xyzw = float4(0,0,0,0);
  r6.xyzw = float4(0,0,0,0);
  r3.y = cb0[10].y;
  r3.z = 0;
  while (true) {
    r3.w = cmp((int)r3.z >= (int)r0.z);
    if (r3.w != 0) break;
    r3.w = mad((int)r3.y, (int)r3.z, (int)r0.w);
    r7.x = t1.Load(r3.w).x;
    r7.y = cmp(1 < (uint)r3.y);
    if (r7.y != 0) {
      r3.w = (int)r3.w + 1;
      r3.w = t1.Load(r3.w).x;
      r3.w = (uint)r3.w << 8;
      r3.w = (int)r7.x | (int)r3.w;
      r7.y = (int)r3.z + (int)r3.x;
      r7.y = t1.Load(r7.y).x;
      r7.y = (uint)r7.y;
      r7.y = 0.00392156886 * r7.y;
      r7.z = (int)r3.w * 3;
      r8.xyzw = t3.Load(r7.z).xyzw;
      r7.zw = mad((int2)r3.ww, int2(3,3), int2(1,2));
      r9.xyzw = t3.Load(r7.z).xyzw;
      r10.xyzw = t3.Load(r7.w).xyzw;
      r4.xyzw = r7.yyyy * r8.xyzw + r4.xyzw;
      r5.xyzw = r7.yyyy * r9.xyzw + r5.xyzw;
      r6.xyzw = r7.yyyy * r10.xyzw + r6.xyzw;
    } else {
      r3.w = (int)r3.z + (int)r3.x;
      r3.w = t1.Load(r3.w).x;
      r3.w = (uint)r3.w;
      r3.w = 0.00392156886 * r3.w;
      r7.y = (int)r7.x * 3;
      r8.xyzw = t3.Load(r7.y).xyzw;
      r7.xy = mad((int2)r7.xx, int2(3,3), int2(1,2));
      r9.xyzw = t3.Load(r7.x).xyzw;
      r7.xyzw = t3.Load(r7.y).xyzw;
      r4.xyzw = r3.wwww * r8.xyzw + r4.xyzw;
      r5.xyzw = r3.wwww * r9.xyzw + r5.xyzw;
      r6.xyzw = r3.wwww * r7.xyzw + r6.xyzw;
    }
    r3.z = (int)r3.z + 1;
  }
  if (r0.y != 0) {
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
    bitmask.z = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.z = (((uint)r0.x << 2) & bitmask.z) | ((uint)2 & ~bitmask.z);
    r3.xyz = t2.Load(r0.x).xyz;
    r0.xzw = t2.Load(r0.z).xyz;
    r2.xyzw = mad((int4)r2.xyzw, int4(3,3,3,3), int4(1,2,1,2));
    r2.x = t0.Load(r2.x).y;
    r7.xy = t0.Load(r2.y).xy;
    r7.xzw = cb0[3].xyz * r7.xxx;
    r7.xzw = r2.xxx * cb0[2].xyz + r7.xzw;
    r7.xyz = r7.yyy * cb0[4].xyz + r7.xzw;
    r2.xy = mad((int2)r1.xx, int2(3,3), int2(1,2));
    r1.x = t0.Load(r2.x).y;
    r2.xy = t0.Load(r2.y).xy;
    r8.xyz = cb0[3].xyz * r2.xxx;
    r8.xyz = r1.xxx * cb0[2].xyz + r8.xyz;
    r8.xyz = r2.yyy * cb0[4].xyz + r8.xyz;
    r1.x = t0.Load(r2.z).y;
    r2.xy = t0.Load(r2.w).xy;
    r2.xzw = cb0[3].xyz * r2.xxx;
    r2.xzw = r1.xxx * cb0[2].xyz + r2.xzw;
    r2.xyz = r2.yyy * cb0[4].xyz + r2.xzw;
    r9.xyz = r8.xyz * r3.yyy;
    r3.xyw = r3.xxx * r7.xyz + r9.xyz;
    r3.xyz = r3.zzz * r2.xyz + r3.xyw;
    r8.xyz = r8.xyz * r0.zzz;
    r7.xyz = r0.xxx * r7.xyz + r8.xyz;
    r0.xzw = r0.www * r2.xyz + r7.xyz;
    r0.xzw = r0.xzw + -r1.yzw;
    r1.x = dot(r0.xzw, r0.xzw);
    r1.x = rsqrt(r1.x);
    r0.xzw = r1.xxx * r0.xzw;
    r1.x = dot(r3.xyz, r3.xyz);
    r1.x = rsqrt(r1.x);
    r2.xyz = r3.xyz * r1.xxx;
    r3.xyz = cb2[7].xyz * r0.zzz;
    r3.xyz = r0.xxx * cb2[6].xyz + r3.xyz;
    r0.xzw = r0.www * cb2[8].xyz + r3.xyz;
    r3.xyz = cb2[7].xyz * -r2.yyy;
    r2.xyw = -r2.xxx * cb2[6].xyz + r3.xyz;
    r2.yzw = -r2.zzz * cb2[8].xyz + r2.xyw;
    r2.x = r0.w;
    r0.w = cb0[10].x;
  } else {
    r2.xyzw = float4(0,0,0,1);
    r0.xzw = float3(1,0,0);
  }
  r3.x = dot(r4.xyz, v1.xyz);
  r3.y = dot(r5.xyz, v1.xyz);
  r3.z = dot(r6.xyz, v1.xyz);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = rsqrt(r1.x);
  r3.xyz = r3.xyz * r1.xxx;
  r7.y = dot(r4.xyz, v2.xyz);
  r7.z = dot(r5.xyz, v2.xyz);
  r7.w = dot(r6.xyz, v2.xyz);
  r1.x = dot(r7.yzw, r7.yzw);
  r1.x = rsqrt(r1.x);
  r7.yzw = r7.yzw * r1.xxx;
  r1.x = 1 + -r0.w;
  r7.x = r3.z;
  r7.xyzw = r7.xyzw * r1.xxxx;
  r3.xy = r3.xy * r1.xx;
  r0.xz = r0.xz * r0.ww + r3.xy;
  r2.xyzw = r2.xyzw * r0.wwww + r7.xyzw;
  r3.xyz = v4.xyz + v0.xyz;
  r3.w = 1;
  r4.x = dot(r4.xyzw, r3.xyzw);
  r4.y = dot(r5.xyzw, r3.xyzw);
  r4.z = dot(r6.xyzw, r3.xyzw);
  r3.xyz = v5.xyz + r4.xyz;
  r4.xyz = cb2[1].xyz * r3.yyy;
  r3.xyw = r3.xxx * cb2[0].xyz + r4.xyz;
  r3.xyz = r3.zzz * cb2[2].xyz + r3.xyw;
  r4.xyz = cb2[3].xyz + r3.xyz;
  r1.xyz = -r4.xyz + r1.yzw;
  r1.xyz = cb0[10].xxx * r1.xyz + r4.xyz;
  r1.xyz = cb1[70].xyz + r1.xyz;
  r4.xyz = cb2[3].xyz + cb1[70].xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r1.xyz = r0.yyy ? r1.xyz : r3.xyz;
  o3.w = 1;
  r3.xyzw = cb1[1].xyzw * r1.yyyy;
  r3.xyzw = r1.xxxx * cb1[0].xyzw + r3.xyzw;
  r3.xyzw = r1.zzzz * cb1[2].xyzw + r3.xyzw;
  r3.xyzw = cb1[3].xyzw + r3.xyzw;
  o0.xy = cb1[364].xy * r3.zz + r3.xy;
  r4.xyz = cb2[4].xxx * cb2[0].xyz;
  r5.xyz = cb2[4].yyy * cb2[1].xyz;
  r6.xyz = cb2[4].zzz * cb2[2].xyz;
  r0.yzw = r5.xyz * r0.zzz;
  r0.xyz = r0.xxx * r4.xyz + r0.yzw;
  o1.xyz = r2.xxx * r6.xyz + r0.xyz;
  r0.xyz = r5.xyz * r2.zzz;
  r0.xyz = r2.yyy * r4.xyz + r0.xyz;
  o2.xyz = r2.www * r6.xyz + r0.xyz;
  o2.w = cb2[4].w * v2.w;
  o0.zw = r3.zw;
  o1.w = 0;
  o3.xyz = r1.xyz;
  return;
}