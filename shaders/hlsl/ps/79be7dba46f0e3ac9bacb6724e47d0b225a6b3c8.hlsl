// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[60];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = float4(0,0,0,0);
  r1.x = 0;
  while (true) {
    r1.y = cmp((int)r1.x >= 7);
    if (r1.y != 0) break;
    r1.y = (uint)r1.x >> 1;
    r2.xyzw = cb0[r1.y+42].xyzw + v0.xyxy;
    r3.xyzw = t0.Sample(s0_s, r2.xy).xyzw;
    r3.xyzw = r3.xyzw * cb0[r1.x+50].xyzw + r0.xyzw;
    r2.xyzw = t0.Sample(s0_s, r2.zw).xyzw;
    r1.y = (int)r1.x + 1;
    r0.xyzw = r2.xyzw * cb0[r1.y+50].xyzw + r3.xyzw;
    r1.x = (int)r1.x + 2;
  }
  o0.xyzw = r0.xyzw;
  return;
}