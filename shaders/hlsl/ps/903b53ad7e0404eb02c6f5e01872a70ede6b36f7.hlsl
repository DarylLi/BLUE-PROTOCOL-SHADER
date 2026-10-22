// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DArray<sint4> t0 : register(t0);

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

  r0.xy = asuint(cb0[3].xy);
  r0.xy = v0.xy * r0.xy;
  r0.xy = (int2)r0.xy;
  r0.z = cb0[6].z;
  r0.w = 0;
  r0.xyzw = t0.Load(r0.xyzw).xyzw;
  r0.xyzw = (int4)r0.xyzw;
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