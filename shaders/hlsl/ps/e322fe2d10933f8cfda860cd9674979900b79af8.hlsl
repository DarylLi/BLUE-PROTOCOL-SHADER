// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xz = v0.xy * float2(2,2) + float2(-1,-1);
  r0.y = 1;
  r1.xy = v0.xy * float2(-2,-2) + float2(1,1);
  r1.z = -1;
  r2.xy = v0.xy * float2(2,-2) + float2(-1,1);
  r2.z = 1;
  r3.xyzw = cmp(asint(cb0[2].xxxx) == int4(1,2,3,4));
  r1.xyz = r3.www ? r2.xyz : r1.xyz;
  r4.yz = v0.yx * float2(-2,2) + float2(1,-1);
  r4.x = -1;
  r1.xyz = r3.zzz ? r4.zxy : r1.xyz;
  r0.xyz = r3.yyy ? r0.xyz : r1.xyz;
  r0.xyz = r3.xxx ? r4.xyz : r0.xyz;
  r2.w = v0.x * -2 + 1;
  r0.xyz = cb0[2].xxx ? r0.xyz : r2.zyw;
  r1.xy = float2(1,-1) * cb0[4].yx;
  r1.x = dot(r0.xy, r1.xy);
  r1.y = dot(r0.xy, cb0[4].xy);
  r1.z = r0.z;
  r0.x = cmp(r1.z < 0);
  r0.yzw = t0.SampleLevel(s0_s, r1.xyz, 0).xyz;
  r1.xyz = cb0[3].xyz + -r0.yzw;
  r1.xyz = cb0[3].www * r1.xyz + r0.yzw;
  r1.w = cmp(cb0[2].w >= 1);
  r0.x = r0.x ? r1.w : 0;
  r1.xyz = r0.xxx ? r1.xyz : r0.yzw;
  r0.x = cmp(0 < cb0[2].y);
  o0.xyz = r0.xxx ? r1.xyz : r0.yzw;
  o0.w = 1;
  return;
}