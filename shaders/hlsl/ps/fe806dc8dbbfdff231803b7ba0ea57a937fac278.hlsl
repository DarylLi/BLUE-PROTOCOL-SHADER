// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DMS<float4> t0 : register(t0);




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float oDepth : SV_DEPTH)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = trunc(v0.xy);
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);
  r1.x = t0.Load(r0.xy, 0).x;
  r1.y = r1.x;
  r1.z = 1;
  while (true) {
    r1.w = cmp((int)r1.z >= 8);
    if (r1.w != 0) break;
    r1.w = t0.Load(r0.xy, r1.z).x;
    r1.y = max(r1.y, r1.w);
    r1.z = (int)r1.z + 1;
  }
  oDepth = r1.y;
  return;
}