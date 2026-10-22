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
  r1.xyzw = float4(9.99999975e-005,0,0.000199999995,0) + v0.xyxy;
  r0.y = t0.Sample(s0_s, r1.xy).x;
  r0.z = t0.Sample(s0_s, r1.zw).x;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r1.xyzw = float4(0.000299999985,0,0.00039999999,0) + v0.xyxy;
  r0.y = t0.Sample(s0_s, r1.xy).x;
  r0.z = t0.Sample(s0_s, r1.zw).x;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r1.xyzw = float4(0.000499999966,0,0.00059999997,0) + v0.xyxy;
  r0.y = t0.Sample(s0_s, r1.xy).x;
  r0.z = t0.Sample(s0_s, r1.zw).x;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r1.xyzw = float4(0.000699999975,0,0.00079999998,0) + v0.xyxy;
  r0.y = t0.Sample(s0_s, r1.xy).x;
  r0.z = t0.Sample(s0_s, r1.zw).x;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r1.xyzw = float4(0.000899999985,0,0.000999999931,0) + v0.xyxy;
  r0.y = t0.Sample(s0_s, r1.xy).x;
  r0.z = t0.Sample(s0_s, r1.zw).x;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r1.xyzw = float4(0.00109999999,0,0.00119999994,0) + v0.xyxy;
  r0.y = t0.Sample(s0_s, r1.xy).x;
  r0.z = t0.Sample(s0_s, r1.zw).x;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r1.xyzw = float4(0.0013,0,0.00139999995,0) + v0.xyxy;
  r0.y = t0.Sample(s0_s, r1.xy).x;
  r0.z = t0.Sample(s0_s, r1.zw).x;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r0.yz = float2(0.00150000001,0) + v0.xy;
  r0.y = t0.Sample(s0_s, r0.yz).x;
  o0.x = r0.x + r0.y;
  o0.yzw = float3(0,0,0);
  return;
}