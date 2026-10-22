// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DMS<float4,8> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.zw = float2(0,0);
  r1.xy = cb0[0].xy + v0.xy;
  r1.xy = (uint2)r1.xy;
  r2.xyzw = (int4)r1.xyxy + int4(0,-1,-1,-1);
  r0.xy = r2.zw;
  r0.xyz = t0.Load(r0.xy, 6).xyz;
  r0.w = dot(r0.xyz, float3(24.4941425,48.1718102,8.98118496));
  r0.w = 81.6471405 + r0.w;
  r0.w = rcp(r0.w);
  r2.zw = float2(0,0);
  r3.xyz = t0.Load(r2.xy, 1).xyz;
  r3.w = dot(r3.xyz, float3(5.335145,10.4924507,1.95621967));
  r3.w = 17.7838154 + r3.w;
  r3.w = rcp(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r3.w = r3.w + r0.w;
  r0.xyz = r0.xyz * r0.www + r3.xyz;
  r3.xyz = t0.Load(r2.xy, 2).xyz;
  r0.w = dot(r3.xyz, float3(24.4941425,48.1718102,8.98118496));
  r0.w = 81.6471405 + r0.w;
  r0.w = rcp(r0.w);
  r0.xyz = r3.xyz * r0.www + r0.xyz;
  r0.w = r3.w + r0.w;
  r3.xyz = t0.Load(r2.xy, 4).xyz;
  r2.xyz = t0.Load(r2.xy, 6).xyz;
  r2.w = dot(r3.xyz, float3(3.62742257,7.13393068,1.33005488));
  r2.w = 12.0914087 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r3.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.w = dot(r2.xyz, float3(1.54979384,3.04792762,0.568257689));
  r2.w = 5.16597939 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.zw = float2(0,0);
  r3.xyzw = (int4)r1.xyxy + int4(-1,0,1,-1);
  r2.xy = r3.zw;
  r2.xyz = t0.Load(r2.xy, 4).xyz;
  r2.w = dot(r2.xyz, float3(20.5141144,40.3444214,7.52184153));
  r2.w = 68.3803787 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r3.zw = float2(0,0);
  r2.xyz = t0.Load(r3.xy, 0).xyz;
  r2.w = dot(r2.xyz, float3(17.3046894,34.0325508,6.34505224));
  r2.w = 57.6822929 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r3.xy, 2).xyz;
  r2.w = dot(r2.xyz, float3(2.50684977,4.93013716,0.919178188));
  r2.w = 8.35616493 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r3.xy, 6).xyz;
  r3.xyz = t0.Load(r3.xy, 7).xyz;
  r2.w = dot(r2.xyz, float3(12.5452242,24.6722717,4.59991503));
  r2.w = 41.8174095 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.x = dot(r3.xyz, float3(2.83167195,5.56895447,1.03827965));
  r2.x = 9.43890667 + r2.x;
  r2.x = rcp(r2.x);
  r0.xyz = r3.xyz * r2.xxx + r0.xyz;
  r0.w = r2.x + r0.w;
  r1.zw = float2(0,0);
  r2.xyz = t0.Load(r1.xy, 0).xyz;
  r2.w = dot(r2.xyz, float3(0.515040874,1.0129137,0.188848317));
  r2.w = 1.71680295 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r1.xy, 1).xyz;
  r2.w = dot(r2.xyz, float3(0.515040874,1.0129137,0.188848317));
  r2.w = 1.71680295 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r1.xy, 2).xyz;
  r2.w = dot(r2.xyz, float3(0.634311318,1.24747872,0.232580796));
  r2.w = 2.11437082 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r1.xy, 3).xyz;
  r2.w = dot(r2.xyz, float3(0.704568028,1.38565028,0.258341581));
  r2.w = 2.34855986 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r1.xy, 4).xyz;
  r2.w = dot(r2.xyz, float3(0.873506486,1.71789598,0.320285708));
  r2.w = 2.91168833 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r1.xy, 5).xyz;
  r2.w = dot(r2.xyz, float3(0.873506486,1.71789598,0.320285708));
  r2.w = 2.91168833 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r1.xy, 6).xyz;
  r3.xyz = t0.Load(r1.xy, 7).xyz;
  r1.z = dot(r2.xyz, float3(0.975533366,1.91854882,0.35769555));
  r1.z = 3.25177789 + r1.z;
  r1.z = rcp(r1.z);
  r0.xyz = r2.xyz * r1.zzz + r0.xyz;
  r0.w = r1.z + r0.w;
  r1.z = dot(r3.xyz, float3(1.74680722,3.43538713,0.640495956));
  r1.z = 5.82269049 + r1.z;
  r1.z = rcp(r1.z);
  r0.xyz = r3.xyz * r1.zzz + r0.xyz;
  r0.w = r1.z + r0.w;
  r2.xyzw = (int4)r1.xyxy + int4(-1,1,1,0);
  r1.xy = (int2)r1.xy + int2(0,1);
  r3.xy = r2.zw;
  r3.zw = float2(0,0);
  r4.xyz = t0.Load(r3.xy, 1).xyz;
  r4.w = dot(r4.xyz, float3(17.3046894,34.0325508,6.34505224));
  r4.w = 57.6822929 + r4.w;
  r4.w = rcp(r4.w);
  r0.xyz = r4.xyz * r4.www + r0.xyz;
  r0.w = r4.w + r0.w;
  r4.xyz = t0.Load(r3.xy, 3).xyz;
  r4.w = dot(r4.xyz, float3(8.04193497,15.8158035,2.94870925));
  r4.w = 26.806448 + r4.w;
  r4.w = rcp(r4.w);
  r0.xyz = r4.xyz * r4.www + r0.xyz;
  r0.w = r4.w + r0.w;
  r4.xyz = t0.Load(r3.xy, 4).xyz;
  r3.xyz = t0.Load(r3.xy, 5).xyz;
  r3.w = dot(r4.xyz, float3(3.62742257,7.13393068,1.33005488));
  r3.w = 12.0914087 + r3.w;
  r3.w = rcp(r3.w);
  r0.xyz = r4.xyz * r3.www + r0.xyz;
  r0.w = r3.w + r0.w;
  r3.w = dot(r3.xyz, float3(1.37654173,2.70719862,0.504731953));
  r3.w = 4.58847237 + r3.w;
  r3.w = rcp(r3.w);
  r0.xyz = r3.xyz * r3.www + r0.xyz;
  r0.w = r3.w + r0.w;
  r2.zw = float2(0,0);
  r2.xyz = t0.Load(r2.xy, 7).xyz;
  r2.w = dot(r2.xyz, float3(4.68055058,9.20508194,1.71620178));
  r2.w = 15.6018343 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r1.zw = float2(0,0);
  r2.xyz = t0.Load(r1.xy, 0).xyz;
  r2.w = dot(r2.xyz, float3(5.335145,10.4924507,1.95621967));
  r2.w = 17.7838154 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r1.xy, 3).xyz;
  r1.xyz = t0.Load(r1.xy, 7).xyz;
  r1.w = dot(r2.xyz, float3(2.83167195,5.56895447,1.03827965));
  r1.w = 9.43890667 + r1.w;
  r1.w = rcp(r1.w);
  r0.xyz = r2.xyz * r1.www + r0.xyz;
  r0.w = r1.w + r0.w;
  r1.w = dot(r1.xyz, float3(2.83167195,5.56895447,1.03827965));
  r1.w = 9.43890667 + r1.w;
  r1.w = rcp(r1.w);
  r0.xyz = r1.xyz * r1.www + r0.xyz;
  r0.w = r1.w + r0.w;
  o0.xyz = r0.xyz / r0.www;
  o0.w = 0;
  return;
}