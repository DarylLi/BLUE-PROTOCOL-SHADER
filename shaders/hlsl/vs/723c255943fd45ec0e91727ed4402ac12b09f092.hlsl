// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Buffer<float4> t1 : register(t1);

Buffer<uint4> t0 : register(t0);

cbuffer cb3 : register(b3)
{
  float4 cb3[29];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[5];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
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
  float2 v4 : ATTRIBUTE5,
  float3 v5 : ATTRIBUTE11,
  float3 v6 : ATTRIBUTE12,
  float4 v7 : ATTRIBUTE13,
  out float o0 : TEXCOORD6,
  out float p0 : TEXCOORD8,
  out float4 o1 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r0.x = dot(r1.xyz, v2.xyz);
  r0.y = dot(r2.xyz, v2.xyz);
  r0.z = dot(r3.xyz, v2.xyz);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = v5.xyz + v0.xyz;
  r4.w = 1;
  r1.x = dot(r1.xyzw, r4.xyzw);
  r1.y = dot(r2.xyzw, r4.xyzw);
  r1.z = dot(r3.xyzw, r4.xyzw);
  r1.xyz = v6.xyz + r1.xyz;
  r2.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r2.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = cb2[4].xxx * cb2[0].xyz;
  r3.xyz = cb2[4].yyy * cb2[1].xyz;
  r4.xyz = cb2[4].zzz * cb2[2].xyz;
  r3.xyz = r3.xyz * r0.yyy;
  r0.xyw = r0.xxx * r2.xyz + r3.xyz;
  r0.xyz = r0.zzz * r4.xyz + r0.xyw;
  r2.xyzw = cb3[20].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb3[19].xyzw + r2.xyzw;
  r1.xyzw = r1.zzzz * cb3[21].xyzw + r2.xyzw;
  r1.xyzw = cb3[22].xyzw + r1.xyzw;
  r0.w = cmp(0 < cb3[28].x);
  r2.x = cmp(r1.z < 0);
  r0.w = r0.w ? r2.x : 0;
  r1.zw = r0.ww ? float2(9.99999997e-007,1) : r1.zw;
  r2.x = cb3[23].z;
  r2.y = cb3[24].z;
  r2.z = cb3[25].z;
  r0.x = dot(r2.xyz, r0.xyz);
  r0.y = cmp(0 < abs(r0.x));
  r0.z = -abs(r0.x) * abs(r0.x) + 1;
  r0.z = max(0, r0.z);
  r0.z = sqrt(r0.z);
  r0.x = r0.z / abs(r0.x);
  r0.x = r0.y ? r0.x : cb3[27].z;
  r0.x = max(0, r0.x);
  r0.x = min(cb3[27].z, r0.x);
  p0.x = cb3[27].y * r0.x + cb3[27].x;
  o1.xyzw = r1.xyzw;
  o0.x = r1.z;
  return;
}