// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.SampleLevel(s0_s, v0.xy, 0).w;
  r0.x = 255 * r0.x;
  r0.x = round(r0.x);
  r0.x = (uint)r0.x;
  r0.x = (int)r0.x & 15;
  r0.xy = cmp((int2)r0.xx == int2(5,9));
  r0.x = (int)r0.y | (int)r0.x;
  if (r0.x == 0) {
    o0.xyzw = t2.Sample(s1_s, v0.xy).xyzw;
    return;
  }
  r0.xyz = t1.SampleLevel(s0_s, v0.xy, 0).xyz;
  r1.xyzw = t2.SampleLevel(s1_s, v0.xy, 0).xyzw;
  r0.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = saturate(r1.w / r0.w);
  r1.w = 1 + -r0.w;
  r2.xyz = r1.xyz * r0.www;
  r1.xyz = r1.xyz * r1.www;
  o0.xyz = r2.xyz * r0.xyz + r1.xyz;
  o0.w = 0;
  return;
}