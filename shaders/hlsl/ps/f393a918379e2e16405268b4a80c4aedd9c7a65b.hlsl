// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2DMS<float4,8> t0 : register(t0);




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v0.xy;
  r0.zw = float2(0,0);
  r1.xyzw = t0.Load(r0.xy, 1).xyzw;
  r2.x = dot(r1.xyz, float3(0.298999995,0.587000012,0.114));
  r2.x = 1 + r2.x;
  r2.x = rcp(r2.x);
  r1.xyz = r2.xxx * r1.xyz;
  r1.xyzw = float4(0.125,0.125,0.125,0.125) * r1.xyzw;
  r2.xyzw = t0.Load(r0.xy, 0).xyzw;
  r3.x = dot(r2.xyz, float3(0.298999995,0.587000012,0.114));
  r3.x = 1 + r3.x;
  r3.x = rcp(r3.x);
  r2.xyz = r3.xxx * r2.xyz;
  r1.xyzw = r2.xyzw * float4(0.125,0.125,0.125,0.125) + r1.xyzw;
  r2.xyzw = t0.Load(r0.xy, 2).xyzw;
  r3.x = dot(r2.xyz, float3(0.298999995,0.587000012,0.114));
  r3.x = 1 + r3.x;
  r3.x = rcp(r3.x);
  r2.xyz = r3.xxx * r2.xyz;
  r1.xyzw = r2.xyzw * float4(0.125,0.125,0.125,0.125) + r1.xyzw;
  r2.xyzw = t0.Load(r0.xy, 3).xyzw;
  r3.x = dot(r2.xyz, float3(0.298999995,0.587000012,0.114));
  r3.x = 1 + r3.x;
  r3.x = rcp(r3.x);
  r2.xyz = r3.xxx * r2.xyz;
  r1.xyzw = r2.xyzw * float4(0.125,0.125,0.125,0.125) + r1.xyzw;
  r2.xyzw = t0.Load(r0.xy, 4).xyzw;
  r3.x = dot(r2.xyz, float3(0.298999995,0.587000012,0.114));
  r3.x = 1 + r3.x;
  r3.x = rcp(r3.x);
  r2.xyz = r3.xxx * r2.xyz;
  r1.xyzw = r2.xyzw * float4(0.125,0.125,0.125,0.125) + r1.xyzw;
  r2.xyzw = t0.Load(r0.xy, 5).xyzw;
  r3.x = dot(r2.xyz, float3(0.298999995,0.587000012,0.114));
  r3.x = 1 + r3.x;
  r3.x = rcp(r3.x);
  r2.xyz = r3.xxx * r2.xyz;
  r1.xyzw = r2.xyzw * float4(0.125,0.125,0.125,0.125) + r1.xyzw;
  r2.xyzw = t0.Load(r0.xy, 6).xyzw;
  r0.xyzw = t0.Load(r0.xy, 7).xyzw;
  r3.x = dot(r2.xyz, float3(0.298999995,0.587000012,0.114));
  r3.x = 1 + r3.x;
  r3.x = rcp(r3.x);
  r2.xyz = r3.xxx * r2.xyz;
  r1.xyzw = r2.xyzw * float4(0.125,0.125,0.125,0.125) + r1.xyzw;
  r2.x = dot(r0.xyz, float3(0.298999995,0.587000012,0.114));
  r2.x = 1 + r2.x;
  r2.x = rcp(r2.x);
  r0.xyz = r2.xxx * r0.xyz;
  r0.xyzw = r0.xyzw * float4(0.125,0.125,0.125,0.125) + r1.xyzw;
  r1.x = dot(r0.xyz, float3(-0.298999995,-0.587000012,-0.114));
  r1.x = 1 + r1.x;
  r1.x = rcp(r1.x);
  o0.xyz = r1.xxx * r0.xyz;
  o0.w = r0.w;
  return;
}