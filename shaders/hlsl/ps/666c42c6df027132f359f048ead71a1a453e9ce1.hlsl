// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[134];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[47];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[46].yzyz * float4(-0.5,-0.5,0.5,-0.5) + v0.xyxy;
  r1.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = r1.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.yz = min(cb1[133].zw, r0.zw);
  r0.w = r0.x * cb1[65].z + -cb1[65].w;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.w = 1 / r0.w;
  r0.x = r0.x + r0.w;
  r0.w = t0.SampleLevel(s0_s, r0.yz, 0).x;
  r2.xyz = t1.SampleLevel(s0_s, r0.yz, 0).xyz;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.y = r0.w * cb1[65].z + -cb1[65].w;
  r0.z = r0.w * cb1[65].x + cb1[65].y;
  r0.y = 1 / r0.y;
  r0.y = r0.z + r0.y;
  r0.z = max(r0.x, r0.y);
  r3.xyzw = cb0[46].yzyz * float4(-0.5,0.5,0.5,0.5) + v0.xyxy;
  r3.xyzw = min(cb1[133].zwzw, r3.xyzw);
  r0.w = t0.SampleLevel(s0_s, r3.xy, 0).x;
  r2.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = r0.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r0.w = r2.w + r0.w;
  r2.w = t0.SampleLevel(s0_s, r3.zw, 0).x;
  r4.x = r2.w * cb1[65].z + -cb1[65].w;
  r2.w = r2.w * cb1[65].x + cb1[65].y;
  r4.x = 1 / r4.x;
  r2.w = r4.x + r2.w;
  r4.x = max(r2.w, r0.w);
  r0.z = max(r4.x, r0.z);
  r0.x = r0.x + -r0.z;
  r0.x = saturate(-abs(r0.x) * cb0[46].x + 1);
  r1.w = 1;
  r1.xyzw = r1.xyzw * r0.xxxx + float4(9.99999975e-005,9.99999975e-005,9.99999975e-005,9.99999975e-005);
  r0.x = r0.y + -r0.z;
  r0.x = saturate(-abs(r0.x) * cb0[46].x + 1);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = r2.xyz * r0.yyy;
  r4.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r4.w = 1;
  r1.xyzw = r4.xyzw * r0.xxxx + r1.xyzw;
  r0.x = r0.w + -r0.z;
  r0.x = saturate(-abs(r0.x) * cb0[46].x + 1);
  r2.xyz = t1.SampleLevel(s0_s, r3.xy, 0).xyz;
  r3.xyz = t1.SampleLevel(s0_s, r3.zw, 0).xyz;
  r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = r2.xyz * r0.yyy;
  r4.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r4.w = 1;
  r1.xyzw = r4.xyzw * r0.xxxx + r1.xyzw;
  r0.x = r2.w + -r0.z;
  o0.w = 7.62939453e-006 * r0.z;
  r0.x = saturate(-abs(r0.x) * cb0[46].x + 1);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = r3.xyz * r0.yyy;
  r2.xyz = r0.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r2.w = 1;
  r0.xyzw = r2.xyzw * r0.xxxx + r1.xyzw;
  o0.xyz = r0.xyz / r0.www;
  return;
}