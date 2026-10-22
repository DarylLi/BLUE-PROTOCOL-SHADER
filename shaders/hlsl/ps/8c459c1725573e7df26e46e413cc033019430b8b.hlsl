// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-20,-20) + cb0[30].xy;
  r0.xy = (int2)r0.xy;
  r0.zw = (int2)v1.xy;
  r0.zw = (int2)r0.zw + asint(-cb0[29].xy);
  r0.xy = (int2)r0.zw + (int2)-r0.xy;
  r0.zw = (int2)-r0.zw + int2(10,10);
  r0.xy = (int2)r0.xy + int2(-9,-9);
  r0.xyzw = max(int4(0,0,0,0), (int4)r0.xyzw);
  r0.xy = (int2)r0.zw + (int2)r0.xy;
  r0.xy = (int2)r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.xy = float2(-8,-10) + r0.xx;
  r0.z = saturate(0.5 * r0.x);
  r0.xy = saturate(r0.xy);
  r0.z = 1 + -r0.z;
  r0.w = cb0[34].w + -r0.z;
  r0.z = r0.x * r0.w + r0.z;
  o0.w = r0.y * -r0.z + r0.z;
  r0.yzw = t0.Sample(s0_s, v0.xy).xyz;
  r1.xyz = cb0[34].xyz + -r0.yzw;
  o0.xyz = r0.xxx * r1.xyz + r0.yzw;
  return;
}