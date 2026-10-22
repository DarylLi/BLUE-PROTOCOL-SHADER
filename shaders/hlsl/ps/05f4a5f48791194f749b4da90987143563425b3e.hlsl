// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<uint4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[36];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = floor(v0.xy);
  r0.xy = (uint2)r0.xy;
  r0.zw = float2(0,0);
  r0.xy = t1.Load(r0.xyz).zw;
  bitmask.x = ((~(-1 << 16)) << 16) & 0xffffffff;  r0.x = (((uint)r0.y << 16) & bitmask.x) | ((uint)r0.x & ~bitmask.x);
  r0.y = r0.x * cb1[65].z + -cb1[65].w;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.y = 1 / r0.y;
  r0.x = r0.x + r0.y;
  r0.yz = v0.xy * cb1[132].zw + -cb1[66].wz;
  r0.yz = r0.yz / cb1[66].xy;
  r0.yz = r0.yz * r0.xx;
  r1.xyzw = cb0[30].xyzw * r0.zzzz;
  r1.xyzw = r0.yyyy * cb0[29].xyzw + r1.xyzw;
  r1.xyzw = r0.xxxx * cb0[31].xyzw + r1.xyzw;
  r0.x = -cb0[35].y + r0.x;
  r0.x = saturate(cb0[35].z * r0.x);
  r0.x = 1 + -r0.x;
  r1.xyzw = cb0[32].xyzw + r1.xyzw;
  r0.yz = r1.xy / r1.ww;
  r0.y = t0.SampleLevel(s0_s, r0.yz, 0).x;
  r0.z = min(0.999989986, r1.z);
  r0.w = -cb0[28].x + r1.z;
  r0.w = saturate(cb0[28].y * r0.w);
  r0.w = 1 + -r0.w;
  r0.w = cb0[26].y * r0.w;
  r0.z = r0.z * cb0[0].z + -1;
  r0.y = saturate(r0.y * cb0[0].z + -r0.z);
  r0.y = -0.5 + r0.y;
  r0.y = saturate(r0.y * cb0[26].z + 0.5);
  r0.y = r0.y * r0.y + -1;
  r0.y = r0.w * r0.y + 1;
  o0.xz = sqrt(r0.yy);
  r0.y = cmp(0 < asuint(cb0[35].w));
  o0.w = r0.y ? r0.x : 1;
  o0.y = 1;
  return;
}