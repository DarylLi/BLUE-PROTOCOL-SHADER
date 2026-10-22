// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  linear noperspective float4 v1 : TEXCOORD0,
  nointerpolation int v2 : TEXCOORD1,
  nointerpolation int w2 : TEXCOORD2,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(8,8) * v1.xy;
  r0.xy = floor(r0.xy);
  r0.yz = (uint2)r0.xy;
  r1.x = (uint)v2.x << 3;
  r0.x = (int)r0.y + (int)r1.x;
  r0.w = 0;
  r0.x = t0.Load(r0.xzw).x;
  o0.xyz = w2.xyy ? float3(0,0,0) : r0.xxx;
  o0.w = r0.x;
  return;
}