// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DMS<float4,2> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.zw = float2(0,0);
  r1.xy = cb0[0].xy + v0.xy;
  r1.xy = (uint2)r1.xy;
  r2.xyzw = (int4)r1.xyxy + int4(0,-1,-1,0);
  r0.xy = r2.zw;
  r0.xyz = t0.Load(r0.xy, 0).xyz;
  r0.w = dot(r0.xyz, float3(4.53161335,8.91217232,1.66159153));
  r0.w = 15.1053772 + r0.w;
  r0.w = rcp(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.zw = float2(0,0);
  r2.xyz = t0.Load(r2.xy, 0).xyz;
  r2.w = dot(r2.xyz, float3(4.53161335,8.91217232,1.66159153));
  r2.w = 15.1053772 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r1.zw = float2(0,0);
  r2.xyz = t0.Load(r1.xy, 0).xyz;
  r3.xyz = t0.Load(r1.xy, 1).xyz;
  r1.xyzw = (int4)r1.xyxy + int4(0,1,1,0);
  r2.w = dot(r2.xyz, float3(0.686221957,1.3495698,0.25161472));
  r2.w = 2.28740644 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.x = dot(r3.xyz, float3(0.686221957,1.3495698,0.25161472));
  r2.x = 2.28740644 + r2.x;
  r2.x = rcp(r2.x);
  r0.xyz = r3.xyz * r2.xxx + r0.xyz;
  r0.w = r2.x + r0.w;
  r2.xy = r1.zw;
  r2.zw = float2(0,0);
  r2.xyz = t0.Load(r2.xy, 1).xyz;
  r2.w = dot(r2.xyz, float3(4.53161335,8.91217232,1.66159153));
  r2.w = 15.1053772 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r1.zw = float2(0,0);
  r1.xyz = t0.Load(r1.xy, 1).xyz;
  r1.w = dot(r1.xyz, float3(4.53161335,8.91217232,1.66159153));
  r1.w = 15.1053772 + r1.w;
  r1.w = rcp(r1.w);
  r0.xyz = r1.xyz * r1.www + r0.xyz;
  r0.w = r1.w + r0.w;
  o0.xyz = r0.xyz / r0.www;
  o0.w = 0;
  return;
}