// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DMS<float4,4> t0 : register(t0);

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
  r0.xyz = t0.Load(r0.xy, 3).xyz;
  r0.w = dot(r0.xyz, float3(9.91244698,19.4944763,3.63456368));
  r0.w = 33.0414886 + r0.w;
  r0.w = rcp(r0.w);
  r2.zw = float2(0,0);
  r3.xyz = t0.Load(r2.xy, 1).xyz;
  r3.w = dot(r3.xyz, float3(24.4941425,48.1718102,8.98118496));
  r3.w = 81.6471405 + r3.w;
  r3.w = rcp(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r3.w = r3.w + r0.w;
  r0.xyz = r0.xyz * r0.www + r3.xyz;
  r3.xyz = t0.Load(r2.xy, 2).xyz;
  r2.xyz = t0.Load(r2.xy, 3).xyz;
  r0.w = dot(r3.xyz, float3(4.6136775,9.07356453,1.69168162));
  r0.w = 15.3789234 + r0.w;
  r0.w = rcp(r0.w);
  r0.xyz = r3.xyz * r0.www + r0.xyz;
  r0.w = r3.w + r0.w;
  r2.w = dot(r2.xyz, float3(1.19365048,2.34751225,0.43767181));
  r2.w = 3.97883463 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.zw = float2(0,0);
  r3.xyzw = (int4)r1.xyxy + int4(-1,0,1,-1);
  r2.xy = r3.zw;
  r2.xyz = t0.Load(r2.xy, 2).xyz;
  r2.w = dot(r2.xyz, float3(9.91244698,19.4944763,3.63456368));
  r2.w = 33.0414886 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r3.zw = float2(0,0);
  r2.xyz = t0.Load(r3.xy, 0).xyz;
  r2.w = dot(r2.xyz, float3(24.4941425,48.1718102,8.98118496));
  r2.w = 81.6471405 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r3.xy, 1).xyz;
  r3.xyz = t0.Load(r3.xy, 3).xyz;
  r2.w = dot(r2.xyz, float3(1.19365048,2.34751225,0.43767181));
  r2.w = 3.97883463 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.x = dot(r3.xyz, float3(4.6136775,9.07356453,1.69168162));
  r2.x = 15.3789234 + r2.x;
  r2.x = rcp(r2.x);
  r0.xyz = r3.xyz * r2.xxx + r0.xyz;
  r0.w = r2.x + r0.w;
  r1.zw = float2(0,0);
  r2.xyz = t0.Load(r1.xy, 0).xyz;
  r2.w = dot(r2.xyz, float3(0.649224579,1.27680814,0.238049001));
  r2.w = 2.16408181 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r1.xy, 1).xyz;
  r2.w = dot(r2.xyz, float3(0.649224579,1.27680814,0.238049001));
  r2.w = 2.16408181 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xyz = t0.Load(r1.xy, 2).xyz;
  r3.xyz = t0.Load(r1.xy, 3).xyz;
  r1.z = dot(r2.xyz, float3(0.649224579,1.27680814,0.238049001));
  r1.z = 2.16408181 + r1.z;
  r1.z = rcp(r1.z);
  r0.xyz = r2.xyz * r1.zzz + r0.xyz;
  r0.w = r1.z + r0.w;
  r1.z = dot(r3.xyz, float3(0.649224579,1.27680814,0.238049001));
  r1.z = 2.16408181 + r1.z;
  r1.z = rcp(r1.z);
  r0.xyz = r3.xyz * r1.zzz + r0.xyz;
  r0.w = r1.z + r0.w;
  r2.xyzw = (int4)r1.xyxy + int4(-1,1,1,0);
  r1.xyzw = (int4)r1.xyxy + int4(1,1,0,1);
  r3.xy = r2.zw;
  r3.zw = float2(0,0);
  r4.xyz = t0.Load(r3.xy, 0).xyz;
  r4.w = dot(r4.xyz, float3(4.6136775,9.07356453,1.69168162));
  r4.w = 15.3789234 + r4.w;
  r4.w = rcp(r4.w);
  r0.xyz = r4.xyz * r4.www + r0.xyz;
  r0.w = r4.w + r0.w;
  r4.xyz = t0.Load(r3.xy, 2).xyz;
  r3.xyz = t0.Load(r3.xy, 3).xyz;
  r3.w = dot(r4.xyz, float3(1.19365048,2.34751225,0.43767181));
  r3.w = 3.97883463 + r3.w;
  r3.w = rcp(r3.w);
  r0.xyz = r4.xyz * r3.www + r0.xyz;
  r0.w = r3.w + r0.w;
  r3.w = dot(r3.xyz, float3(24.4941425,48.1718102,8.98118496));
  r3.w = 81.6471405 + r3.w;
  r3.w = rcp(r3.w);
  r0.xyz = r3.xyz * r3.www + r0.xyz;
  r0.w = r3.w + r0.w;
  r2.zw = float2(0,0);
  r2.xyz = t0.Load(r2.xy, 1).xyz;
  r2.w = dot(r2.xyz, float3(9.91244698,19.4944763,3.63456368));
  r2.w = 33.0414886 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.xy = r1.zw;
  r2.zw = float2(0,0);
  r3.xyz = t0.Load(r2.xy, 0).xyz;
  r3.w = dot(r3.xyz, float3(1.19365048,2.34751225,0.43767181));
  r3.w = 3.97883463 + r3.w;
  r3.w = rcp(r3.w);
  r0.xyz = r3.xyz * r3.www + r0.xyz;
  r0.w = r3.w + r0.w;
  r3.xyz = t0.Load(r2.xy, 1).xyz;
  r2.xyz = t0.Load(r2.xy, 2).xyz;
  r2.w = dot(r3.xyz, float3(4.6136775,9.07356453,1.69168162));
  r2.w = 15.3789234 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r3.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r2.w = dot(r2.xyz, float3(24.4941425,48.1718102,8.98118496));
  r2.w = 81.6471405 + r2.w;
  r2.w = rcp(r2.w);
  r0.xyz = r2.xyz * r2.www + r0.xyz;
  r0.w = r2.w + r0.w;
  r1.zw = float2(0,0);
  r1.xyz = t0.Load(r1.xy, 0).xyz;
  r1.w = dot(r1.xyz, float3(9.91244698,19.4944763,3.63456368));
  r1.w = 33.0414886 + r1.w;
  r1.w = rcp(r1.w);
  r0.xyz = r1.xyz * r1.www + r0.xyz;
  r0.w = r1.w + r0.w;
  o0.xyz = r0.xyz / r0.www;
  o0.w = 0;
  return;
}