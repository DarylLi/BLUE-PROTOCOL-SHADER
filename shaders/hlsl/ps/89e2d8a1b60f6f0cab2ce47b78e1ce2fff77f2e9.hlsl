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
  float4 r0,r1,r2,r3,r4;
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
  r0.yz = r0.yz * cb0[1].xy + float2(-0.5,-0.5);
  r1.xy = frac(r0.yz);
  r0.yz = floor(r0.yz);
  r0.yz = float2(0.5,0.5) + r0.yz;
  r0.yz = cb0[1].zw * r0.yz;
  r2.xyzw = t0.Gather(s0_s, r0.yz, int2(0, -2)).xyzw;
  r0.w = min(0.999989986, r1.z);
  r1.z = -cb0[28].x + r1.z;
  r1.z = saturate(cb0[28].y * r1.z);
  r1.z = 1 + -r1.z;
  r1.z = cb0[26].y * r1.z;
  r0.w = r0.w * cb0[0].z + -1;
  r2.xyzw = saturate(r2.xyzw * cb0[0].zzzz + -r0.wwww);
  r3.xy = float2(1,1) + -r1.xy;
  r4.xyzw = t0.Gather(s0_s, r0.yz, int2(-2, -2)).xyzw;
  r4.xyzw = saturate(r4.xyzw * cb0[0].zzzz + -r0.wwww);
  r3.zw = r4.wx * r3.xx + r4.zy;
  r2.xw = r3.zw + r2.wx;
  r2.xy = r2.xw + r2.zy;
  r4.xyzw = t0.Gather(s0_s, r0.yz, int2(2, -2)).xyzw;
  r4.xyzw = saturate(r4.xyzw * cb0[0].zzzz + -r0.wwww);
  r2.xy = r4.wx + r2.xy;
  r2.xy = r4.zy * r1.xx + r2.xy;
  r1.w = r2.x * r3.y + r2.y;
  r2.xyzw = t0.Gather(s0_s, r0.yz).xyzw;
  r2.xyzw = saturate(r2.xyzw * cb0[0].zzzz + -r0.wwww);
  r4.xyzw = t0.Gather(s0_s, r0.yz, int2(-2, 0)).xyzw;
  r4.xyzw = saturate(r4.xyzw * cb0[0].zzzz + -r0.wwww);
  r3.yz = r4.wx * r3.xx + r4.zy;
  r2.xw = r3.yz + r2.wx;
  r2.xy = r2.xw + r2.zy;
  r4.xyzw = t0.Gather(s0_s, r0.yz, int2(2, 0)).xyzw;
  r4.xyzw = saturate(r4.xyzw * cb0[0].zzzz + -r0.wwww);
  r2.xy = r4.wx + r2.xy;
  r2.xy = r4.zy * r1.xx + r2.xy;
  r2.x = r2.x + r2.y;
  r1.w = r2.x + r1.w;
  r2.xyzw = t0.Gather(s0_s, r0.yz, int2(-2, 2)).xyzw;
  r2.xyzw = saturate(r2.xyzw * cb0[0].zzzz + -r0.wwww);
  r2.xy = r2.wx * r3.xx + r2.zy;
  r3.xyzw = t0.Gather(s0_s, r0.yz, int2(0, 2)).xyzw;
  r4.xyzw = t0.Gather(s0_s, r0.yz, int2(2, 2)).xyzw;
  r4.xyzw = saturate(r4.xyzw * cb0[0].zzzz + -r0.wwww);
  r3.xyzw = saturate(r3.xyzw * cb0[0].zzzz + -r0.wwww);
  r0.yz = r3.wx + r2.xy;
  r0.yz = r0.yz + r3.zy;
  r0.yz = r0.yz + r4.wx;
  r0.yz = r4.zy * r1.xx + r0.yz;
  r0.y = r0.z * r1.y + r0.y;
  r0.y = r1.w + r0.y;
  r0.y = r0.y * 0.0399999991 + -0.5;
  r0.y = saturate(r0.y * cb0[26].z + 0.5);
  r0.y = r0.y * r0.y + -1;
  r0.y = r1.z * r0.y + 1;
  o0.xz = sqrt(r0.yy);
  r0.y = cmp(0 < asuint(cb0[35].w));
  o0.w = r0.y ? r0.x : 1;
  o0.y = 1;
  return;
}