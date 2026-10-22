// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Buffer<uint4> t0 : register(t0);

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
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  uint v3 : ATTRIBUTE3,
  float3 v4 : ATTRIBUTE9,
  float3 v5 : ATTRIBUTE10,
  float3 v6 : ATTRIBUTE11,
  float3 v7 : ATTRIBUTE12,
  float4 v8 : ATTRIBUTE13,
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD10,
  out float4 o4 : TEXCOORD11)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v3.x & 255;
  r0.y = (uint)v3.x >> 8;
  r0.z = mad(asint(cb0[1].z), (int)r0.x, (int)r0.y);
  r1.xyzw = float4(0,0,0,0);
  r2.xyzw = float4(0,0,0,0);
  r3.xyzw = float4(0,0,0,0);
  r0.w = cb0[1].z;
  r4.x = 0;
  while (true) {
    r4.y = cmp((int)r4.x >= (int)r0.x);
    if (r4.y != 0) break;
    r4.y = mad((int)r0.w, (int)r4.x, (int)r0.y);
    r4.z = t0.Load(r4.y).x;
    r4.w = cmp(1 < (uint)r0.w);
    if (r4.w != 0) {
      r4.y = (int)r4.y + 1;
      r4.y = t0.Load(r4.y).x;
      r4.y = (uint)r4.y << 8;
      r4.y = (int)r4.z | (int)r4.y;
      r4.w = (int)r0.z + (int)r4.x;
      r4.w = t0.Load(r4.w).x;
      r4.w = (uint)r4.w;
      r4.w = 0.00392156886 * r4.w;
      r5.x = (int)r4.y * 3;
      r5.xyzw = t1.Load(r5.x).xyzw;
      r6.xy = mad((int2)r4.yy, int2(3,3), int2(1,2));
      r7.xyzw = t1.Load(r6.x).xyzw;
      r6.xyzw = t1.Load(r6.y).xyzw;
      r1.xyzw = r4.wwww * r5.xyzw + r1.xyzw;
      r2.xyzw = r4.wwww * r7.xyzw + r2.xyzw;
      r3.xyzw = r4.wwww * r6.xyzw + r3.xyzw;
    } else {
      r4.y = (int)r0.z + (int)r4.x;
      r4.y = t0.Load(r4.y).x;
      r4.y = (uint)r4.y;
      r4.y = 0.00392156886 * r4.y;
      r4.w = (int)r4.z * 3;
      r5.xyzw = t1.Load(r4.w).xyzw;
      r4.zw = mad((int2)r4.zz, int2(3,3), int2(1,2));
      r6.xyzw = t1.Load(r4.z).xyzw;
      r7.xyzw = t1.Load(r4.w).xyzw;
      r1.xyzw = r4.yyyy * r5.xyzw + r1.xyzw;
      r2.xyzw = r4.yyyy * r6.xyzw + r2.xyzw;
      r3.xyzw = r4.yyyy * r7.xyzw + r3.xyzw;
    }
    r4.x = (int)r4.x + 1;
  }
  r4.xyz = v5.xyz + v2.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.w = dot(v1.xyz, r4.xyz);
  r5.xyz = -r0.www * r4.xyz + v1.xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r6.x = dot(r1.xyz, r5.xyz);
  r6.y = dot(r2.xyz, r5.xyz);
  r6.z = dot(r3.xyz, r5.xyz);
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r6.xyz * r0.www;
  r6.x = dot(r1.xyz, r4.xyz);
  r6.y = dot(r2.xyz, r4.xyz);
  r6.z = dot(r3.xyz, r4.xyz);
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r6.xyz * r0.www;
  r6.xyz = v4.xyz + v0.xyz;
  r6.xyz = v6.xyz + r6.xyz;
  r6.w = 1;
  r7.x = dot(r1.xyzw, r6.xyzw);
  r7.y = dot(r2.xyzw, r6.xyzw);
  r7.z = dot(r3.xyzw, r6.xyzw);
  r7.xyz = v7.xyz + r7.xyz;
  r8.xyz = cb2[1].xyz * r7.yyy;
  r7.xyw = cb2[0].xyz * r7.xxx + r8.xyz;
  r7.xyz = cb2[2].xyz * r7.zzz + r7.xyw;
  r8.xyz = cb2[3].xyz + cb1[70].xyz;
  r7.xyz = r8.xyz + r7.xyz;
  r8.xyz = cb2[4].xxx * cb2[0].xyz;
  r9.xyz = cb2[4].yyy * cb2[1].xyz;
  r10.xyz = cb2[4].zzz * cb2[2].xyz;
  r11.xyz = r9.xyz * r5.yyy;
  r5.xyw = r5.xxx * r8.xyz + r11.xyz;
  o3.xyz = r5.zzz * r10.xyz + r5.xyw;
  r5.xyz = r9.xyz * r4.yyy;
  r4.xyw = r4.xxx * r8.xyz + r5.xyz;
  o4.xyz = r4.zzz * r10.xyz + r4.xyw;
  o4.w = cb2[4].w * v2.w;
  r4.xyw = cb2[13].xyz + cb1[113].xyz;
  if (cb0[1].x != 0) {
    r1.xyzw = float4(0,0,0,0);
    r2.xyzw = float4(0,0,0,0);
    r3.xyzw = float4(0,0,0,0);
    r0.w = cb0[1].z;
    r5.x = 0;
    while (true) {
      r5.y = cmp((int)r5.x >= (int)r0.x);
      if (r5.y != 0) break;
      r5.y = mad((int)r0.w, (int)r5.x, (int)r0.y);
      r5.z = t0.Load(r5.y).x;
      r5.w = cmp(1 < (uint)r0.w);
      if (r5.w != 0) {
        r5.y = (int)r5.y + 1;
        r5.y = t0.Load(r5.y).x;
        r5.y = (uint)r5.y << 8;
        r5.y = (int)r5.z | (int)r5.y;
        r5.w = (int)r0.z + (int)r5.x;
        r5.w = t0.Load(r5.w).x;
        r5.w = (uint)r5.w;
        r5.w = 0.00392156886 * r5.w;
        r7.w = (int)r5.y * 3;
        r8.xyzw = t2.Load(r7.w).xyzw;
        r9.xy = mad((int2)r5.yy, int2(3,3), int2(1,2));
        r10.xyzw = t2.Load(r9.x).xyzw;
        r9.xyzw = t2.Load(r9.y).xyzw;
        r1.xyzw = r5.wwww * r8.xyzw + r1.xyzw;
        r2.xyzw = r5.wwww * r10.xyzw + r2.xyzw;
        r3.xyzw = r5.wwww * r9.xyzw + r3.xyzw;
      } else {
        r5.y = (int)r0.z + (int)r5.x;
        r5.y = t0.Load(r5.y).x;
        r5.y = (uint)r5.y;
        r5.y = 0.00392156886 * r5.y;
        r5.w = (int)r5.z * 3;
        r8.xyzw = t2.Load(r5.w).xyzw;
        r5.zw = mad((int2)r5.zz, int2(3,3), int2(1,2));
        r9.xyzw = t2.Load(r5.z).xyzw;
        r10.xyzw = t2.Load(r5.w).xyzw;
        r1.xyzw = r5.yyyy * r8.xyzw + r1.xyzw;
        r2.xyzw = r5.yyyy * r9.xyzw + r2.xyzw;
        r3.xyzw = r5.yyyy * r10.xyzw + r3.xyzw;
      }
      r5.x = (int)r5.x + 1;
    }
  }
  r0.x = dot(r1.xyzw, r6.xyzw);
  r0.y = dot(r2.xyzw, r6.xyzw);
  r0.z = dot(r3.xyzw, r6.xyzw);
  r0.xyz = v7.xyz + r0.xyz;
  r0.w = 1;
  r1.x = cb2[10].x;
  r1.y = cb2[11].x;
  r1.z = cb2[12].x;
  r1.w = r4.x;
  r1.x = dot(r0.xyzw, r1.xyzw);
  r2.x = cb2[10].y;
  r2.y = cb2[11].y;
  r2.z = cb2[12].y;
  r2.w = r4.y;
  r1.y = dot(r0.xyzw, r2.xyzw);
  r4.x = cb2[10].z;
  r4.y = cb2[11].z;
  r4.z = cb2[12].z;
  r0.x = dot(r0.xyzw, r4.xyzw);
  r2.xyzw = cb1[92].xyzw * r1.yyyy;
  r1.xyzw = r1.xxxx * cb1[91].xyzw + r2.xyzw;
  r0.xyzw = r0.xxxx * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xyzw = cb1[1].xyzw * r7.yyyy;
  r0.xyzw = r7.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r7.zzzz * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.x = cmp(1 < asint(cb1[135].x));
  r1.y = 0.00100000005 * r0.w;
  r1.x = r1.x ? r1.y : 0;
  o0.z = r1.x + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.w = 0;
  return;
}