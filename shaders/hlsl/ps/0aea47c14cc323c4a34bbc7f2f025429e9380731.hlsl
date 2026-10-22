// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asuint(cb0[0].x) >> 1;
  r1.x = v0.x;
  r2.xyzw = float4(0,0,0,0);
  r0.y = 0;
  while (true) {
    r0.z = cmp((uint)r0.y >= (uint)r0.x);
    if (r0.z != 0) break;
    bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.z = (((uint)r0.y << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
    r0.z = (uint)r0.z;
    r1.y = cb0[0].z * r0.z;
    r3.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
    r2.xyzw = r3.xyzw + r2.xyzw;
    r0.y = (int)r0.y + 1;
  }
  o0.xyzw = r2.xyzw;
  r0.x = cmp(v1.y < 1);
  if (r0.x == 0) {
    o0.xyzw = t0.Load(float4(0,0,0,0)).xyzw;
  }
  return;
}