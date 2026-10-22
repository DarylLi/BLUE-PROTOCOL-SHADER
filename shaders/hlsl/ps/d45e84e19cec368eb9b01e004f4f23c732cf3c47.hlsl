// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
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
  r0.xy = (uint2)v1.xy;
  r1.xyz = t0.Load(r0.xyz).xyz;
  r0.z = r1.x * 0.5 + r1.y;
  r0.z = r1.z * 0.5 + r0.z;
  r2.zw = float2(0,0);
  r3.xyzw = (int4)r0.xyxy + int4(0,-1,-1,0);
  r2.xy = r3.zw;
  r2.xyz = t0.Load(r2.xyz).xyz;
  r0.w = r2.x * 0.5 + r2.y;
  r0.w = r2.z * 0.5 + r0.w;
  r1.w = max(r0.w, r0.z);
  r3.zw = float2(0,0);
  r3.xyz = t0.Load(r3.xyz).xyz;
  r2.w = r3.x * 0.5 + r3.y;
  r2.w = r3.z * 0.5 + r2.w;
  r1.w = max(r2.w, r1.w);
  r4.xyzw = (int4)r0.xyxy + int4(0,1,1,0);
  r0.xy = (uint2)r0.xy;
  r0.xy = r0.xy * cb0[3].xy + cb0[1].xy;
  r0.x = r0.y * 543.309998 + r0.x;
  r0.x = sin(r0.x);
  r0.x = 493013 * r0.x;
  r0.x = frac(r0.x);
  r0.x = r0.x * cb0[2].x + cb0[2].y;
  r5.xy = r4.zw;
  r5.zw = float2(0,0);
  r5.xyz = t0.Load(r5.xyz).xyz;
  r0.y = r5.x * 0.5 + r5.y;
  r0.y = r5.z * 0.5 + r0.y;
  r4.zw = float2(0,0);
  r4.xyz = t0.Load(r4.xyz).xyz;
  r3.w = r4.x * 0.5 + r4.y;
  r3.w = r4.z * 0.5 + r3.w;
  r4.w = max(r3.w, r0.y);
  r1.w = max(r4.w, r1.w);
  r4.w = min(r0.w, r0.z);
  r0.w = 0.25 * r0.w;
  r0.w = r2.w * 0.25 + r0.w;
  r2.w = min(r4.w, r2.w);
  r0.w = r0.y * 0.25 + r0.w;
  r0.y = min(r3.w, r0.y);
  r0.w = r3.w * 0.25 + r0.w;
  r0.z = r0.w + -r0.z;
  r0.y = min(r2.w, r0.y);
  r0.y = r1.w + -r0.y;
  r0.w = (int)-r0.y + 0x7ef19fff;
  r0.y = -r0.w * r0.y + 2;
  r0.y = r0.w * r0.y;
  r0.y = saturate(abs(r0.z) * r0.y);
  r0.y = r0.y * -0.5 + 1;
  r6.xyz = max(r5.xyz, r2.xyz);
  r6.xyz = max(r6.xyz, r3.xyz);
  r6.xyz = max(r6.xyz, r4.xyz);
  r7.xyz = float3(4,4,4) * r6.xyz;
  r6.xyz = float3(1,1,1) + -r6.xyz;
  r7.xyz = rcp(r7.xyz);
  r8.xyz = min(r5.xyz, r2.xyz);
  r8.xyz = min(r8.xyz, r3.xyz);
  r8.xyz = min(r8.xyz, r4.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r8.xyz = r8.xyz * float3(4,4,4) + float3(-4,-4,-4);
  r8.xyz = rcp(r8.xyz);
  r6.xyz = r8.xyz * r6.xyz;
  r6.xyz = max(-r7.xyz, r6.xyz);
  r0.z = max(r6.y, r6.z);
  r0.z = max(r6.x, r0.z);
  r0.z = min(0, r0.z);
  r0.z = max(-0.1875, r0.z);
  r0.z = cb0[0].x * r0.z;
  r0.y = r0.z * r0.y;
  r2.xyz = r0.yyy * r2.xyz;
  r2.xyz = r0.yyy * r3.xyz + r2.xyz;
  r2.xyz = r0.yyy * r4.xyz + r2.xyz;
  r2.xyz = r0.yyy * r5.xyz + r2.xyz;
  r0.y = r0.y * 4 + 1;
  r1.xyz = r2.xyz + r1.xyz;
  r0.z = (int)-r0.y + 0x7ef19fff;
  r0.y = -r0.z * r0.y + 2;
  r0.y = r0.z * r0.y;
  r0.yzw = r1.xyz * r0.yyy;
  r0.yzw = r0.yzw * r0.yzw;
  r0.xyz = r0.yzw * r0.xxx;
  r1.x = dot(float3(1.66053164,-0.58764261,-0.0728400499), r0.xyz);
  r1.y = dot(float3(-0.124553561,1.1329025,-0.00834836345), r0.xyz);
  r1.z = dot(float3(-0.0181512013,-0.100579083,1.11858058), r0.xyz);
  o0.xyz = float3(25,25,25) * r1.xyz;
  o0.w = 1;
  return;
}