// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float3 v2 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb0[1].xyz * v2.yyy;
  r0.xyz = v2.xxx * cb0[0].xyz + r0.xyz;
  r0.xyz = v2.zzz * cb0[2].xyz + r0.xyz;
  r0.xyz = cb0[3].xyz + r0.xyz;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.yw = cb0[4].xz + -cb0[4].yw;
  r1.x = r0.x + -r0.y;
  r1.x = r1.x / cb0[4].y;
  r1.x = 1 + -r1.x;
  r0.y = cmp(r0.y < r0.x);
  r0.x = cmp(cb0[4].x >= r0.x);
  r0.y = r0.y ? r1.x : 1;
  r1.x = abs(r0.z) + -r0.w;
  r0.w = cmp(r0.w < abs(r0.z));
  r0.z = cmp(cb0[4].z >= abs(r0.z));
  r1.x = r1.x / cb0[4].w;
  r1.x = 1 + -r1.x;
  r1.x = r1.x * r0.y;
  r0.y = r0.w ? r1.x : r0.y;
  r0.y = cb0[5].x * r0.y;
  r1.xyzw = cb0[7].wxyz * r0.yyyy;
  r2.xyzw = t0.Sample(s0_s, v1.xy).xyzw;
  r3.xyz = r2.xyz * r2.www;
  r4.xyz = cb0[6].xyz * cb0[6].www + -r3.xyz;
  r1.yzw = r1.yzw * r4.xyz + r3.xyz;
  r0.y = cb0[6].w + -r2.w;
  r3.w = r1.x * r0.y + r2.w;
  r4.xyz = r1.yzw / r3.www;
  r0.y = cmp(0 < r3.w);
  r3.xyz = r0.yyy ? r4.xyz : r1.yzw;
  r1.xyzw = r0.zzzz ? r3.xyzw : r2.xyzw;
  r0.xyzw = r0.xxxx ? r1.xyzw : r2.xyzw;
  r1.xyz = saturate(r0.xyz);
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[8].xxx * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.w = cmp(cb0[8].x != 1.000000);
  o0.xyz = r1.www ? r1.xyz : r0.xyz;
  o0.w = r0.w;
  return;
}