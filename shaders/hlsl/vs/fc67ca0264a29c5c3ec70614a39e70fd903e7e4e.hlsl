// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
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
  float2 v4 : ATTRIBUTE5,
  float3 v5 : ATTRIBUTE11,
  float3 v6 : ATTRIBUTE12,
  uint v7 : SV_VertexID0,
  float4 v8 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11,
  out float4 o5 : TEXCOORD0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v7.x + asint(cb0[10].w);
  r0.x = (int)r0.x + asint(-cb0[10].z);
  bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r0.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)3 & ~bitmask.y);
  r0.yz = t3.Load(r0.y).xy;
  r1.xy = (uint2)r0.yz >> int2(16,16);
  r2.xyzw = (int4)r0.yyzz & int4(0xffff,0xffff,0xffff,0xffff);
  r0.y = cmp((uint)r1.y < 0x0000ffff);
  if (r0.y != 0) {
    r0.z = (uint)r0.x << 2;
    r3.xyz = t3.Load(r0.z).xyw;
    r0.zw = (int2)r2.yw * int2(3,3);
    r1.zw = t1.Load(r0.z).xy;
    r4.xyzw = mad((int4)r2.ywyw, int4(3,3,3,3), int4(1,1,2,2));
    r5.xy = t1.Load(r4.x).xy;
    r6.xyz = cb0[7].xyz * r1.www;
    r6.xyz = r1.zzz * cb0[6].xyz + r6.xyz;
    r5.xzw = r5.xxx * cb0[8].xyz + r6.xyz;
    r5.xzw = cb0[9].xyz + r5.xzw;
    r1.z = (int)r1.x * 3;
    r6.xy = t1.Load(r1.z).xy;
    r6.zw = mad((int2)r1.xx, int2(3,3), int2(1,2));
    r7.xy = t1.Load(r6.z).xy;
    r8.xyz = cb0[7].xyz * r6.yyy;
    r8.xyz = r6.xxx * cb0[6].xyz + r8.xyz;
    r7.xzw = r7.xxx * cb0[8].xyz + r8.xyz;
    r7.xzw = cb0[9].xyz + r7.xzw;
    r6.xy = t1.Load(r0.w).xy;
    r8.xy = t1.Load(r4.y).xy;
    r9.xyz = cb0[7].xyz * r6.yyy;
    r9.xyz = r6.xxx * cb0[6].xyz + r9.xyz;
    r8.xzw = r8.xxx * cb0[8].xyz + r9.xyz;
    r8.xzw = cb0[9].xyz + r8.xzw;
    r6.xy = t1.Load(r4.z).xy;
    r9.xyz = cb0[7].xyz * r6.xxx;
    r9.xyz = r5.yyy * cb0[6].xyz + r9.xyz;
    r9.xyz = r6.yyy * cb0[8].xyz + r9.xyz;
    r6.xy = t1.Load(r6.w).xy;
    r10.xyz = cb0[7].xyz * r6.xxx;
    r10.xyz = r7.yyy * cb0[6].xyz + r10.xyz;
    r10.xyz = r6.yyy * cb0[8].xyz + r10.xyz;
    r6.xy = t1.Load(r4.w).xy;
    r11.xyz = cb0[7].xyz * r6.xxx;
    r11.xyz = r8.yyy * cb0[6].xyz + r11.xyz;
    r11.xyz = r6.yyy * cb0[8].xyz + r11.xyz;
    r1.w = 1 + -r3.x;
    r1.w = r1.w + -r3.y;
    r5.xyz = r9.xyz * r3.zzz + r5.xzw;
    r7.xyz = r10.xyz * r3.zzz + r7.xzw;
    r7.xyz = r7.xyz * r3.yyy;
    r5.xyz = r3.xxx * r5.xyz + r7.xyz;
    r7.xyz = r11.xyz * r3.zzz + r8.xzw;
    r5.xyz = r1.www * r7.xyz + r5.xyz;
    r6.xy = t0.Load(r0.z).xy;
    r7.xy = t0.Load(r4.x).xy;
    r8.xyz = cb0[3].xyz * r6.yyy;
    r8.xyz = r6.xxx * cb0[2].xyz + r8.xyz;
    r7.xzw = r7.xxx * cb0[4].xyz + r8.xyz;
    r7.xzw = cb0[5].xyz + r7.xzw;
    r6.xy = t0.Load(r1.z).xy;
    r8.xy = t0.Load(r6.z).xy;
    r9.xyz = cb0[3].xyz * r6.yyy;
    r6.xyz = r6.xxx * cb0[2].xyz + r9.xyz;
    r6.xyz = r8.xxx * cb0[4].xyz + r6.xyz;
    r6.xyz = cb0[5].xyz + r6.xyz;
    r0.zw = t0.Load(r0.w).xy;
    r4.xy = t0.Load(r4.y).xy;
    r8.xzw = cb0[3].xyz * r0.www;
    r8.xzw = r0.zzz * cb0[2].xyz + r8.xzw;
    r8.xzw = r4.xxx * cb0[4].xyz + r8.xzw;
    r8.xzw = cb0[5].xyz + r8.xzw;
    r0.zw = t0.Load(r4.z).xy;
    r9.xyz = cb0[3].xyz * r0.zzz;
    r9.xyz = r7.yyy * cb0[2].xyz + r9.xyz;
    r9.xyz = r0.www * cb0[4].xyz + r9.xyz;
    r0.zw = t0.Load(r6.w).xy;
    r10.xyz = cb0[3].xyz * r0.zzz;
    r10.xyz = r8.yyy * cb0[2].xyz + r10.xyz;
    r10.xyz = r0.www * cb0[4].xyz + r10.xyz;
    r0.zw = t0.Load(r4.w).xy;
    r4.xzw = cb0[3].xyz * r0.zzz;
    r4.xyz = r4.yyy * cb0[2].xyz + r4.xzw;
    r4.xyz = r0.www * cb0[4].xyz + r4.xyz;
    r7.xyz = r9.xyz * r3.zzz + r7.xzw;
    r6.xyz = r10.xyz * r3.zzz + r6.xyz;
    r6.xyz = r6.xyz * r3.yyy;
    r3.xyw = r3.xxx * r7.xyz + r6.xyz;
    r4.xyz = r4.xyz * r3.zzz + r8.xzw;
    r3.xyz = r1.www * r4.xyz + r3.xyw;
  } else {
    r3.xyz = v0.xyz;
    r5.xyz = v0.xyz;
  }
  r0.z = (int)v3.x & 255;
  r0.w = (uint)v3.x >> 8;
  r1.z = mad(asint(cb0[10].y), (int)r0.z, (int)r0.w);
  r4.xyzw = float4(0,0,0,0);
  r6.xyzw = float4(0,0,0,0);
  r7.xyzw = float4(0,0,0,0);
  r1.w = cb0[10].y;
  r3.w = 0;
  while (true) {
    r5.w = cmp((int)r3.w >= (int)r0.z);
    if (r5.w != 0) break;
    r5.w = mad((int)r1.w, (int)r3.w, (int)r0.w);
    r8.x = t2.Load(r5.w).x;
    r8.y = cmp(1 < (uint)r1.w);
    if (r8.y != 0) {
      r5.w = (int)r5.w + 1;
      r5.w = t2.Load(r5.w).x;
      r5.w = (uint)r5.w << 8;
      r5.w = (int)r8.x | (int)r5.w;
      r8.y = (int)r1.z + (int)r3.w;
      r8.y = t2.Load(r8.y).x;
      r8.y = (uint)r8.y;
      r8.y = 0.00392156886 * r8.y;
      r8.z = (int)r5.w * 3;
      r9.xyzw = t4.Load(r8.z).xyzw;
      r8.zw = mad((int2)r5.ww, int2(3,3), int2(1,2));
      r10.xyzw = t4.Load(r8.z).xyzw;
      r11.xyzw = t4.Load(r8.w).xyzw;
      r4.xyzw = r8.yyyy * r9.xyzw + r4.xyzw;
      r6.xyzw = r8.yyyy * r10.xyzw + r6.xyzw;
      r7.xyzw = r8.yyyy * r11.xyzw + r7.xyzw;
    } else {
      r5.w = (int)r1.z + (int)r3.w;
      r5.w = t2.Load(r5.w).x;
      r5.w = (uint)r5.w;
      r5.w = 0.00392156886 * r5.w;
      r8.y = (int)r8.x * 3;
      r9.xyzw = t4.Load(r8.y).xyzw;
      r8.xy = mad((int2)r8.xx, int2(3,3), int2(1,2));
      r10.xyzw = t4.Load(r8.x).xyzw;
      r8.xyzw = t4.Load(r8.y).xyzw;
      r4.xyzw = r5.wwww * r9.xyzw + r4.xyzw;
      r6.xyzw = r5.wwww * r10.xyzw + r6.xyzw;
      r7.xyzw = r5.wwww * r8.xyzw + r7.xyzw;
    }
    r3.w = (int)r3.w + 1;
  }
  if (r0.y != 0) {
    bitmask.x = ((~(-1 << 30)) << 2) & 0xffffffff;  r8.x = (((uint)r0.x << 2) & bitmask.x) | ((uint)1 & ~bitmask.x);
    bitmask.y = ((~(-1 << 30)) << 2) & 0xffffffff;  r8.y = (((uint)r0.x << 2) & bitmask.y) | ((uint)2 & ~bitmask.y);
    r8.xzw = t3.Load(r8.x).xyz;
    r9.xyz = t3.Load(r8.y).xyz;
    r2.xyzw = mad((int4)r2.xyzw, int4(3,3,3,3), int4(1,2,1,2));
    r0.x = t0.Load(r2.x).y;
    r2.xy = t0.Load(r2.y).xy;
    r10.xyz = cb0[3].xyz * r2.xxx;
    r10.xyz = r0.xxx * cb0[2].xyz + r10.xyz;
    r10.xyz = r2.yyy * cb0[4].xyz + r10.xyz;
    r1.xw = mad((int2)r1.xx, int2(3,3), int2(1,2));
    r0.x = t0.Load(r1.x).y;
    r1.xw = t0.Load(r1.w).xy;
    r11.xyz = cb0[3].xyz * r1.xxx;
    r11.xyz = r0.xxx * cb0[2].xyz + r11.xyz;
    r11.xyz = r1.www * cb0[4].xyz + r11.xyz;
    r0.x = t0.Load(r2.z).y;
    r1.xw = t0.Load(r2.w).xy;
    r2.xyz = cb0[3].xyz * r1.xxx;
    r2.xyz = r0.xxx * cb0[2].xyz + r2.xyz;
    r2.xyz = r1.www * cb0[4].xyz + r2.xyz;
    r12.xyz = r11.xyz * r8.zzz;
    r8.xyz = r8.xxx * r10.xyz + r12.xyz;
    r8.xyz = r8.www * r2.xyz + r8.xyz;
    r11.xyz = r11.xyz * r9.yyy;
    r9.xyw = r9.xxx * r10.xyz + r11.xyz;
    r2.xyz = r9.zzz * r2.xyz + r9.xyw;
    r2.xyz = r2.xyz + -r3.xyz;
    r0.x = dot(r2.xyz, r2.xyz);
    r0.x = rsqrt(r0.x);
    r2.xyz = r2.xyz * r0.xxx;
    r0.x = dot(r8.xyz, r8.xyz);
    r0.x = rsqrt(r0.x);
    r8.xyz = r8.xyz * r0.xxx;
    r9.xyz = cb2[7].xyz * r2.yyy;
    r2.xyw = r2.xxx * cb2[6].xyz + r9.xyz;
    r2.xyz = r2.zzz * cb2[8].xyz + r2.xyw;
    r9.xyz = cb2[7].xyz * -r8.yyy;
    r8.xyw = -r8.xxx * cb2[6].xyz + r9.xyz;
    r8.yzw = -r8.zzz * cb2[8].xyz + r8.xyw;
    r8.x = r2.z;
    r0.x = cb0[10].x;
  } else {
    r8.xyzw = float4(0,0,0,1);
    r2.xy = float2(1,0);
    r0.x = 0;
  }
  r9.x = dot(r4.xyz, v1.xyz);
  r9.y = dot(r6.xyz, v1.xyz);
  r9.z = dot(r7.xyz, v1.xyz);
  r1.x = dot(r9.xyz, r9.xyz);
  r1.x = rsqrt(r1.x);
  r9.xyz = r9.xyz * r1.xxx;
  r10.y = dot(r4.xyz, v2.xyz);
  r10.z = dot(r6.xyz, v2.xyz);
  r10.w = dot(r7.xyz, v2.xyz);
  r1.x = dot(r10.yzw, r10.yzw);
  r1.x = rsqrt(r1.x);
  r10.yzw = r10.yzw * r1.xxx;
  r1.x = 1 + -r0.x;
  r10.x = r9.z;
  r10.xyzw = r10.xyzw * r1.xxxx;
  r1.xw = r9.xy * r1.xx;
  r1.xw = r2.xy * r0.xx + r1.xw;
  r2.xyzw = r8.xyzw * r0.xxxx + r10.xyzw;
  r8.xyz = v5.xyz + v0.xyz;
  r8.w = 1;
  r9.x = dot(r4.xyzw, r8.xyzw);
  r9.y = dot(r6.xyzw, r8.xyzw);
  r9.z = dot(r7.xyzw, r8.xyzw);
  r9.xyz = v6.xyz + r9.xyz;
  r10.xyz = cb2[1].xyz * r9.yyy;
  r9.xyw = r9.xxx * cb2[0].xyz + r10.xyz;
  r9.xyz = r9.zzz * cb2[2].xyz + r9.xyw;
  r10.xyz = cb2[3].xyz + r9.xyz;
  r3.xyz = -r10.xyz + r3.xyz;
  r3.xyz = cb0[10].xxx * r3.xyz + r10.xyz;
  r3.xyz = cb1[70].xyz + r3.xyz;
  r10.xyz = cb2[3].xyz + cb1[70].xyz;
  r9.xyz = r10.xyz + r9.xyz;
  r3.xyz = r0.yyy ? r3.xyz : r9.xyz;
  r9.xyz = cb2[4].xxx * cb2[0].xyz;
  r10.xyz = cb2[4].yyy * cb2[1].xyz;
  r11.xyz = cb2[4].zzz * cb2[2].xyz;
  r12.xyz = r10.xyz * r1.www;
  r12.xyz = r1.xxx * r9.xyz + r12.xyz;
  o3.xyz = r2.xxx * r11.xyz + r12.xyz;
  r10.xyz = r10.xyz * r2.zzz;
  r2.xyz = r2.yyy * r9.xyz + r10.xyz;
  o4.xyz = r2.www * r11.xyz + r2.xyz;
  o4.w = cb2[4].w * v2.w;
  r2.xyw = cb2[13].xyz + cb1[113].xyz;
  if (cb0[1].x != 0) {
    r4.xyzw = float4(0,0,0,0);
    r6.xyzw = float4(0,0,0,0);
    r7.xyzw = float4(0,0,0,0);
    r0.x = cb0[10].y;
    r0.y = 0;
    while (true) {
      r1.x = cmp((int)r0.y >= (int)r0.z);
      if (r1.x != 0) break;
      r1.x = mad((int)r0.x, (int)r0.y, (int)r0.w);
      r1.w = t2.Load(r1.x).x;
      r3.w = cmp(1 < (uint)r0.x);
      if (r3.w != 0) {
        r1.x = (int)r1.x + 1;
        r1.x = t2.Load(r1.x).x;
        r1.x = (uint)r1.x << 8;
        r1.x = (int)r1.w | (int)r1.x;
        r3.w = (int)r0.y + (int)r1.z;
        r3.w = t2.Load(r3.w).x;
        r3.w = (uint)r3.w;
        r3.w = 0.00392156886 * r3.w;
        r5.w = (int)r1.x * 3;
        r9.xyzw = t5.Load(r5.w).xyzw;
        r10.xy = mad((int2)r1.xx, int2(3,3), int2(1,2));
        r11.xyzw = t5.Load(r10.x).xyzw;
        r10.xyzw = t5.Load(r10.y).xyzw;
        r4.xyzw = r3.wwww * r9.xyzw + r4.xyzw;
        r6.xyzw = r3.wwww * r11.xyzw + r6.xyzw;
        r7.xyzw = r3.wwww * r10.xyzw + r7.xyzw;
      } else {
        r1.x = (int)r0.y + (int)r1.z;
        r1.x = t2.Load(r1.x).x;
        r1.x = (uint)r1.x;
        r1.x = 0.00392156886 * r1.x;
        r3.w = (int)r1.w * 3;
        r9.xyzw = t5.Load(r3.w).xyzw;
        r10.xy = mad((int2)r1.ww, int2(3,3), int2(1,2));
        r11.xyzw = t5.Load(r10.x).xyzw;
        r10.xyzw = t5.Load(r10.y).xyzw;
        r4.xyzw = r1.xxxx * r9.xyzw + r4.xyzw;
        r6.xyzw = r1.xxxx * r11.xyzw + r6.xyzw;
        r7.xyzw = r1.xxxx * r10.xyzw + r7.xyzw;
      }
      r0.y = (int)r0.y + 1;
    }
  }
  r0.x = dot(r4.xyzw, r8.xyzw);
  r0.y = dot(r6.xyzw, r8.xyzw);
  r0.z = dot(r7.xyzw, r8.xyzw);
  r0.xyz = v6.xyz + r0.xyz;
  r0.w = 1;
  r4.x = cb2[10].x;
  r4.y = cb2[11].x;
  r4.z = cb2[12].x;
  r4.w = r2.x;
  r4.x = dot(r0.xyzw, r4.xyzw);
  r6.x = cb2[10].y;
  r6.y = cb2[11].y;
  r6.z = cb2[12].y;
  r6.w = r2.y;
  r4.y = dot(r0.xyzw, r6.xyzw);
  r2.x = cb2[10].z;
  r2.y = cb2[11].z;
  r2.z = cb2[12].z;
  r4.z = dot(r0.xyzw, r2.xyzw);
  r0.xyz = cb1[113].xyz + r5.xyz;
  r0.xyz = r0.xyz + -r4.xyz;
  r0.xyz = cb0[10].xxx * r0.xyz + r4.xyz;
  r0.w = cmp((uint)r1.y >= 0x0000ffff);
  r0.xyz = r0.www ? r4.xyz : r0.xyz;
  r1.xyzw = cb1[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xyzw = cb1[1].xyzw * r3.yyyy;
  r0.xyzw = r3.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r3.zzzz * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.w = 0;
  o5.xy = v4.xy;
  o5.zw = float2(0,0);
  return;
}