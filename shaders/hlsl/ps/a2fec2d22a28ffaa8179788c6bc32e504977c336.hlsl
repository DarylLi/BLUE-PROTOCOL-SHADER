// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[28].zwzw * float4(-0.5,-0.5,0.5,-0.5) + v0.xyxy;
  r0.xyzw = max(cb0[34].xyxy, r0.xyzw);
  r0.xyzw = min(cb0[34].zwzw, r0.xyzw);
  r1.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
  r0.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.w = dot(r1.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r1.xyz = float3(0.25,0.25,0.25) * r1.xyz;
  r1.xyz = r0.xyz * float3(0.25,0.25,0.25) + r1.xyz;
  r0.x = dot(r0.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r2.xyzw = cb0[28].zwzw * float4(-0.5,0.5,0.5,0.5) + v0.xyxy;
  r2.xyzw = max(cb0[34].xyxy, r2.xyzw);
  r2.xyzw = min(cb0[34].zwzw, r2.xyzw);
  r3.xyz = t0.SampleLevel(s0_s, r2.xy, 0).xyz;
  r2.xyz = t0.SampleLevel(s0_s, r2.zw, 0).xyz;
  r0.y = dot(r3.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r1.xyz = r3.xyz * float3(0.25,0.25,0.25) + r1.xyz;
  r1.xyz = r2.xyz * float3(0.25,0.25,0.25) + r1.xyz;
  r0.z = dot(r2.xyz, float3(0.212599993,0.715200007,0.0722000003));
  r1.xyz = float3(0.25,0.25,0.25) * r1.xyz;
  r0.xy = r0.zy + -r0.xw;
  r2.x = r0.y + r0.x;
  r2.y = r0.y + -r0.x;
  r0.x = dot(r2.xy, r2.xy);
  r0.x = 5.99999979e-008 + r0.x;
  r0.x = rsqrt(r0.x);
  r0.x = 0.125 * r0.x;
  r0.xy = r2.xy * r0.xx;
  r0.zw = -r0.xy * cb0[28].zw + v0.xy;
  r0.xy = r0.xy * cb0[28].zw + v0.xy;
  r0.xy = max(cb0[34].xy, r0.xy);
  r0.xy = min(cb0[34].zw, r0.xy);
  r2.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.xy = max(cb0[34].xy, r0.zw);
  r0.xy = min(cb0[34].zw, r0.xy);
  r0.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.xyz = r0.xyz + r2.xyz;
  o0.xyz = r0.xyz * float3(0.625,0.625,0.625) + -r1.xyz;
  o0.w = 0;
  return;
}