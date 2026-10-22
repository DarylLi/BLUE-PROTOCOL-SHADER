// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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

  r0.xy = cb1[132].zw * v0.xy;
  r0.zw = t0.SampleLevel(s0_s, r0.xy, 0).zw;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r1.x = cmp((int)r0.w == 4);
  if (r1.x != 0) {
    r0.xy = t1.SampleLevel(s0_s, r0.xy, 0).xy;
    r0.y = r0.y + -r0.z;
    r0.z = r0.x * r0.y + r0.z;
  }
  r0.x = r0.z * cb0[1].y + 2;
  r0.x = min(1, r0.x);
  r0.x = cmp(0 < r0.x);
  r0.y = cmp((int)r0.w != 0);
  r0.x = r0.y ? r0.x : 0;
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}