// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[136];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[33];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = asint(-cb0[32].xy) + asint(cb0[32].zw);
  r0.xy = (uint2)r0.xy;
  r0.xy = float2(1,1) / r0.xy;
  r1.zw = float2(0,0);
  r0.zw = float2(0,0);
  r1.x = cb0[32].x;
  while (true) {
    r2.x = cmp((uint)r1.x >= asuint(cb0[32].z));
    if (r2.x != 0) break;
    r2.x = (uint)r1.x;
    r2.x = r2.x * r0.x;
    r2.zw = r0.zw;
    r1.y = cb0[32].y;
    while (true) {
      r3.x = cmp((uint)r1.y >= asuint(cb0[32].w));
      if (r3.x != 0) break;
      r3.x = (uint)r1.y;
      r2.y = r3.x * r0.y;
      r2.y = t0.SampleLevel(s0_s, r2.xy, 0).x;
      r2.y = max(0.0500000007, r2.y);
      r2.w = r2.w + r2.y;
      r3.x = t2.Load(r1.xyz).w;
      r2.z = r2.y * r3.x + r2.z;
      r1.y = (int)r1.y + 1;
    }
    r0.zw = r2.zw;
    r1.x = (int)r1.x + 1;
  }
  r0.x = r0.z / r0.w;
  r0.x = -cb0[29].y + r0.x;
  r0.x = r0.x / cb0[29].x;
  r0.x = exp2(r0.x);
  r0.x = cb1[135].z * r0.x;
  r0.y = cb0[28].x * cb0[27].w;
  r0.y = cb0[30].x * r0.y;
  r0.z = max(cb0[27].y, r0.x);
  r0.z = min(cb0[27].z, r0.z);
  r0.w = t1.Load(float4(0,0,0,0)).x;
  r1.x = cmp(r0.w != 0.000000);
  r0.w = r1.x ? r0.w : 1;
  r0.w = r0.y / r0.w;
  r1.x = log2(r0.z);
  r0.w = log2(r0.w);
  r1.y = r1.x + -r0.w;
  r1.z = cmp(0 < r1.y);
  r1.w = r1.z ? cb0[28].z : cb0[28].w;
  r1.z = r1.z ? cb0[30].y : cb0[30].z;
  r2.x = -cb0[28].y * r1.w;
  r2.x = exp2(r2.x);
  r2.x = 1 + -r2.x;
  r2.x = r2.x * r1.y;
  r1.z = r2.x * r1.z + r0.w;
  r2.x = cmp(r0.w < r1.x);
  r2.y = cb0[28].y * r1.w + r0.w;
  r2.y = min(r2.y, r1.x);
  r0.w = -cb0[28].y * r1.w + r0.w;
  r0.w = max(r1.x, r0.w);
  r0.w = r2.x ? r2.y : r0.w;
  r1.x = cmp(cb0[30].w < abs(r1.y));
  r0.w = r1.x ? r0.w : r1.z;
  r0.w = exp2(r0.w);
  r1.x = r0.z + -r0.w;
  r0.w = cb0[31].y * r1.x + r0.w;
  r0.w = max(cb0[27].y, r0.w);
  r0.w = min(cb0[27].z, r0.w);
  r0.zw = max(float2(9.99999975e-005,9.99999975e-005), r0.zw);
  r0.w = 1 / r0.w;
  r0.z = 1 / r0.z;
  o0.xy = r0.yy * r0.wz;
  o0.w = r0.y / cb0[30].x;
  o0.z = r0.x;
  return;
}