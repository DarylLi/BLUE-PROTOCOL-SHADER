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

  r0.xyzw = float4(32,32,32,32) * v0.xyxy;
  r0.xyzw = frac(r0.xyzw);
  r1.xyzw = r0.xyxy * float4(16,16,16,16) + float4(1,0,2,0);
  r1.xyzw = float4(0.03125,0.03125,0.03125,0.03125) * r1.xyzw;
  r1.x = t0.Sample(s0_s, r1.xy).x;
  r1.y = t0.Sample(s0_s, r1.zw).x;
  r0.zw = float2(0.5,0.5) * r0.zw;
  r0.z = t0.Sample(s0_s, r0.zw).x;
  r0.z = r0.z + r1.x;
  r0.z = r0.z + r1.y;
  r1.xyzw = r0.xyxy * float4(16,16,16,16) + float4(3,0,0,1);
  r1.xyzw = float4(0.03125,0.03125,0.03125,0.03125) * r1.xyzw;
  r0.w = t0.Sample(s0_s, r1.xy).x;
  r1.x = t0.Sample(s0_s, r1.zw).x;
  r0.z = r0.z + r0.w;
  r0.z = r0.z + r1.x;
  r1.xyzw = r0.xyxy * float4(16,16,16,16) + float4(1,1,2,1);
  r1.xyzw = float4(0.03125,0.03125,0.03125,0.03125) * r1.xyzw;
  r0.w = t0.Sample(s0_s, r1.xy).x;
  r1.x = t0.Sample(s0_s, r1.zw).x;
  r0.z = r0.z + r0.w;
  r0.z = r0.z + r1.x;
  r1.xyzw = r0.xyxy * float4(16,16,16,16) + float4(3,1,0,2);
  r1.xyzw = float4(0.03125,0.03125,0.03125,0.03125) * r1.xyzw;
  r0.w = t0.Sample(s0_s, r1.xy).x;
  r1.x = t0.Sample(s0_s, r1.zw).x;
  r0.z = r0.z + r0.w;
  r0.z = r0.z + r1.x;
  r1.xyzw = r0.xyxy * float4(16,16,16,16) + float4(1,2,2,2);
  r1.xyzw = float4(0.03125,0.03125,0.03125,0.03125) * r1.xyzw;
  r0.w = t0.Sample(s0_s, r1.xy).x;
  r1.x = t0.Sample(s0_s, r1.zw).x;
  r0.z = r0.z + r0.w;
  r0.z = r0.z + r1.x;
  r1.xyzw = r0.xyxy * float4(16,16,16,16) + float4(3,2,0,3);
  r1.xyzw = float4(0.03125,0.03125,0.03125,0.03125) * r1.xyzw;
  r0.w = t0.Sample(s0_s, r1.xy).x;
  r1.x = t0.Sample(s0_s, r1.zw).x;
  r0.z = r0.z + r0.w;
  r0.z = r0.z + r1.x;
  r1.xyzw = r0.xyxy * float4(16,16,16,16) + float4(1,3,2,3);
  r0.xy = r0.xy * float2(16,16) + float2(3,3);
  r0.xy = float2(0.03125,0.03125) * r0.xy;
  r0.x = t0.Sample(s0_s, r0.xy).x;
  r1.xyzw = float4(0.03125,0.03125,0.03125,0.03125) * r1.xyzw;
  r0.y = t0.Sample(s0_s, r1.xy).x;
  r0.w = t0.Sample(s0_s, r1.zw).x;
  r0.y = r0.z + r0.y;
  r0.y = r0.y + r0.w;
  o0.x = r0.y + r0.x;
  o0.yzw = float3(0,0,0);
  return;
}