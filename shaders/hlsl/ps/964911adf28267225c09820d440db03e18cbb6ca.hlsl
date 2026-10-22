// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[183];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : TEXCOORD1,
  uint w2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = asint(cb0[2].y);
  r0.x = 0.5 + r0.x;
  r0.y = asuint(cb1[182].w);
  r0.z = r0.x / r0.y;
  r0.xy = v0.xy;
  r1.xyzw = t0.Sample(s0_s, r0.xyz).yzxw;
  r2.x = cmp(0.699999988 < v0.y);
  r2.y = cmp(v0.y < 0.469999999);
  r2.y = (int)r2.y | (int)r2.x;
  if (r2.y != 0) {
    r2.y = cmp(r1.x < r1.z);
    r2.x = r2.y ? r2.x : 0;
    if (r2.x != 0) {
      r0.w = 0.699999988;
      r2.xy = t0.Sample(s0_s, r0.xwz).yz;
      r1.x = min(r2.x, r1.x);
      r1.y = r2.y;
    } else {
      r0.xy = float2(0,-0.015625) + v0.xy;
      r0.w = t0.Sample(s0_s, r0.xyz).z;
      r0.xy = float2(0,0.015625) + v0.xy;
      r0.x = t0.Sample(s0_s, r0.xyz).z;
      r0.yz = cmp(r1.yy < r0.wx);
      r0.y = r0.z ? r0.y : 0;
      r0.x = r0.w + r0.x;
      r0.x = 0.5 * r0.x;
      r1.y = r0.y ? r0.x : r1.y;
    }
  }
  o0.xyzw = r1.zxyw;
  return;
}