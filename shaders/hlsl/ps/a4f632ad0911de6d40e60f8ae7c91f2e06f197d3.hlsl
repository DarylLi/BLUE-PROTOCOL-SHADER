// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.Sample(s0_s, v0.xy).x;
  r1.y = 0.00100000005 * r0.x;
  r1.xz = float2(0.00100000005,0.00200000009);
  r0.yz = v0.xy + r1.xy;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.w = 0.00100000005 * r0.x;
  r0.yz = v0.xy + r1.zw;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.y = 0.00100000005 * r0.x;
  r1.xz = float2(0.00300000003,0.00400000019);
  r0.yz = v0.xy + r1.xy;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.w = 0.00100000005 * r0.x;
  r0.yz = v0.xy + r1.zw;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.y = 0.00100000005 * r0.x;
  r1.xz = float2(0.00500000035,0.00600000005);
  r0.yz = v0.xy + r1.xy;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.w = 0.00100000005 * r0.x;
  r0.yz = v0.xy + r1.zw;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.y = 0.00100000005 * r0.x;
  r1.xz = float2(0.00700000022,0.00800000038);
  r0.yz = v0.xy + r1.xy;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.w = 0.00100000005 * r0.x;
  r0.yz = v0.xy + r1.zw;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.y = 0.00100000005 * r0.x;
  r1.xz = float2(0.00900000054,0.0100000007);
  r0.yz = v0.xy + r1.xy;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.w = 0.00100000005 * r0.x;
  r0.yz = v0.xy + r1.zw;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.y = 0.00100000005 * r0.x;
  r1.xz = float2(0.0110000009,0.0120000001);
  r0.yz = v0.xy + r1.xy;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.w = 0.00100000005 * r0.x;
  r0.yz = v0.xy + r1.zw;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.y = 0.00100000005 * r0.x;
  r1.xz = float2(0.0130000003,0.0140000004);
  r0.yz = v0.xy + r1.xy;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.w = 0.00100000005 * r0.x;
  r0.yz = v0.xy + r1.zw;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.y = 0.00100000005 * r0.x;
  r1.x = 0.0150000006;
  r0.yz = v0.xy + r1.xy;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  o0.x = r0.x + r0.y;
  o0.yzw = float3(0,0,0);
  return;
}