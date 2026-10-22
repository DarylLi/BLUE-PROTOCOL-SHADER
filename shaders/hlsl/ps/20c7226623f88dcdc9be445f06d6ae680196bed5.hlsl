// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 6.28318548 * v0.x;
  sincos(r0.x, r0.x, r1.x);
  r0.y = 0.5 + -v0.y;
  r0.y = 3.14159274 * r0.y;
  sincos(r0.y, r2.x, r3.x);
  r1.x = r3.x * r1.x;
  r1.z = r3.x * r0.x;
  r1.y = r2.x;
  r0.xyzw = t0.Sample(s0_s, r1.xyz).xyzw;
  r0.xyzw = r0.xyzw * cb0[4].xyzw + -cb0[5].xyzw;
  r1.x = (int)r0.x & 0x7f800000;
  r1.x = cmp((int)r1.x != 0x7f800000);
  if (1 == 0) r1.y = 0; else if (1+3 < 32) {   r1.y = (uint)cb0[6].y << (32-(1 + 3)); r1.y = (uint)r1.y >> (32-1);  } else r1.y = (uint)cb0[6].y >> 3;
  r2.xyzw = r1.yyyy ? float4(1,1,1,1) : float4(1,0,0,1);
  r1.xyzw = r1.xxxx ? r0.xyzw : r2.xyzw;
  r2.x = asint(cb0[6].x) & 1;
  o0.xyzw = r2.xxxx ? r1.xyzw : r0.xyzw;
  return;
}