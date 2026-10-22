// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
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

  r0.xyz = float3(0.0078125,0.0078125,0.0078125) * v1.xyx;
  r0.xyz = frac(r0.xyz);
  r0.xyz = r0.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r0.xyz = r0.xyz * r0.xyy;
  r0.x = dot(r0.xyz, float3(20.390625,60.703125,2.42812085));
  r0.x = frac(r0.x);
  r0.x = 6.28318548 * r0.x;
  r1.xyzw = float4(0,0,0,0);
  r0.y = 0;
  while (true) {
    r0.z = cmp((int)r0.y >= 16);
    if (r0.z != 0) break;
    r0.z = (int)r0.y + 1;
    r0.w = (int)r0.z;
    r0.w = cb0[27].x * r0.w;
    r0.w = 0.0625 * r0.w;
    r2.x = (int)r0.y;
    r2.x = r2.x * 8.10000038 + r0.x;
    sincos(r2.x, r2.x, r3.x);
    r2.y = r3.x;
    r2.xy = r2.xy * r0.ww;
    r2.xy = r2.xy * cb0[0].zw + v0.xy;
    r2.xyzw = t0.Sample(s0_s, r2.xy).xyzw;
    r1.xyzw = r2.xyzw + r1.xyzw;
    r0.y = r0.z;
  }
  o0.xyzw = float4(0.0625,0.0625,0.0625,0.0625) * r1.xyzw;
  return;
}