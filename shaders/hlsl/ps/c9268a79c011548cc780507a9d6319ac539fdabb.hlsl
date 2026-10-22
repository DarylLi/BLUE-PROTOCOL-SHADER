// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DArray<float4> t0 : register(t0);

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  if (1 == 0) r0.x = 0; else if (1+3 < 32) {   r0.x = (uint)cb0[6].y << (32-(1 + 3)); r0.x = (uint)r0.x >> (32-1);  } else r0.x = (uint)cb0[6].y >> 3;
  r0.xyzw = r0.xxxx ? float4(1,1,1,1) : float4(1,0,0,1);
  r1.z = asuint(cb0[6].z);
  r1.xy = v0.xy;
  r1.xyzw = t0.Sample(s0_s, r1.xyz).xyzw;
  r1.xyzw = r1.xyzw * cb0[4].xyzw + -cb0[5].xyzw;
  r2.x = (int)r1.x & 0x7f800000;
  r2.x = cmp((int)r2.x != 0x7f800000);
  r0.xyzw = r2.xxxx ? r1.xyzw : r0.xyzw;
  r2.x = asint(cb0[6].x) & 1;
  o0.xyzw = r2.xxxx ? r0.xyzw : r1.xyzw;
  return;
}