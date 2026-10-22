// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DMS<float4> t1 : register(t1);

Texture2DMS<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[134];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  uint v1 : SV_SampleIndex0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[132].xy * v0.xy;
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);
  r0.xyzw = t0.Load(r0.xy, v1.x).xyzw;
  r0.xy = r0.xy + -r0.zw;
  r0.xy = r0.xy * float2(0.25,0.25) + v0.xy;
  r0.zw = cmp(r0.xy < cb0[133].xy);
  r1.xy = cmp(cb0[133].zw < r0.xy);
  r0.z = (int)r0.z | (int)r1.x;
  r0.z = (int)r0.w | (int)r0.z;
  r0.z = (int)r1.y | (int)r0.z;
  r0.xy = r0.zz ? v0.xy : r0.xy;
  r0.xy = cb0[132].xy * r0.xy;
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);
  o0.xyzw = t1.Load(r0.xy, v1.x).xyzw;
  return;
}