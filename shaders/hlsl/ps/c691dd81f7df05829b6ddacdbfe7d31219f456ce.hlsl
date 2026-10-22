// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.zw = float2(0,0);
  r1.xy = (uint2)v1.xy;
  r2.xyzw = (int4)r1.xyxy + int4(0,-1,-1,0);
  r0.xy = r2.zw;
  r0.xyz = t0.Load(r0.xyz).xyz;
  r3.xyzw = (int4)r1.xyxy + int4(0,1,1,0);
  r4.xy = r3.zw;
  r4.zw = float2(0,0);
  r4.xyz = t0.Load(r4.xyz).xyz;
  r5.xyz = min(r4.xyz, r0.xyz);
  r2.zw = float2(0,0);
  r2.xyz = t0.Load(r2.xyz).xyz;
  r5.xyz = min(r2.xyz, r5.xyz);
  r3.zw = float2(0,0);
  r3.xyz = t0.Load(r3.xyz).xyz;
  r5.xyz = min(r5.xyz, r3.xyz);
  r6.xyz = r5.xyz * float3(4,4,4) + float3(-4,-4,-4);
  r6.xyz = rcp(r6.xyz);
  r7.xyz = max(r4.xyz, r0.xyz);
  r7.xyz = max(r7.xyz, r2.xyz);
  r7.xyz = max(r7.xyz, r3.xyz);
  r8.xyz = float3(1,1,1) + -r7.xyz;
  r7.xyz = float3(4,4,4) * r7.xyz;
  r7.xyz = rcp(r7.xyz);
  r5.xyz = r7.xyz * r5.xyz;
  r6.xyz = r8.xyz * r6.xyz;
  r5.xyz = max(r6.xyz, -r5.xyz);
  r0.w = max(r5.y, r5.z);
  r0.w = max(r5.x, r0.w);
  r0.w = min(0, r0.w);
  r0.w = max(-0.1875, r0.w);
  r0.w = cb0[0].x * r0.w;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = r0.www * r2.xyz + r0.xyz;
  r0.xyz = r0.www * r3.xyz + r0.xyz;
  r0.xyz = r0.www * r4.xyz + r0.xyz;
  r0.w = r0.w * 4 + 1;
  r1.zw = float2(0,0);
  r1.xyz = t0.Load(r1.xyz).xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.x = (int)-r0.w + 0x7ef19fff;
  r0.w = -r1.x * r0.w + 2;
  r0.w = r1.x * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r0.xyz * r0.xyz;
  r1.x = dot(float3(1.66053164,-0.58764261,-0.0728400499), r0.xyz);
  r1.y = dot(float3(-0.124553561,1.1329025,-0.00834836345), r0.xyz);
  r1.z = dot(float3(-0.0181512013,-0.100579083,1.11858058), r0.xyz);
  o0.xyz = float3(12.5,12.5,12.5) * r1.xyz;
  o0.w = 1;
  return;
}