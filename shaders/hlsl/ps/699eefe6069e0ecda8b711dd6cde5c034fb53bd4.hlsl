// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  nointerpolation uint v2 : TEXCOORD1,
  nointerpolation uint w2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
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
  r3.xyzw = cmp((int4)v2.xxxx == int4(1,2,3,4));
  r1.xyz = r3.www ? r2.xyz : r1.xyz;
  r4.yz = v0.yx * float2(-2,2) + float2(1,-1);
  r4.x = -1;
  r1.xyz = r3.zzz ? r4.zxy : r1.xyz;
  r0.xyz = r3.yyy ? r0.xyz : r1.xyz;
  r0.xyz = r3.xxx ? r4.xyz : r0.xyz;
  r2.w = v0.x * -2 + 1;
  r0.xyz = v2.xxx ? r0.xyz : r2.zyw;
  r0.x = t0.SampleLevel(s0_s, r0.xyz, 0).x;
  oDepth = r0.x;
  o0.xyzw = float4(0,0,0,0);
  return;
}