// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.



// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cos(v0.x);
  r0.x = 9.99999975e-005 * r0.x;
  r0.y = sin(v0.y);
  r1.xyzw = float4(0,0,0,0);
  r0.z = 0;
  while (true) {
    r0.w = cmp((int)r0.z >= 1200);
    if (r0.w != 0) break;
    r1.xyzw = r0.xxxx * r0.yyyy + r1.xyzw;
    r0.z = (int)r0.z + 1;
  }
  o0.xyzw = float4(9.99999997e-007,9.99999997e-007,9.99999997e-007,9.99999997e-007) * r1.xyzw;
  return;
}