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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * cb0[28].xy + float2(-0.5,-0.5);
  r0.xy = floor(r0.xy);
  r1.xyzw = float4(0.5,0.5,-0.5,-0.5) + r0.xyxy;
  r0.xy = float2(2.5,2.5) + r0.xy;
  r0.xy = cb0[28].zw * r0.xy;
  r2.xy = v0.yx * cb0[28].yx + -r1.yx;
  r2.zw = r2.yx * r2.yx;
  r3.xy = r2.zw * r2.yx;
  r3.zw = float2(2.5,2.5) * r2.wz;
  r3.xy = r3.yx * float2(1.5,1.5) + -r3.zw;
  r3.xy = float2(1,1) + r3.xy;
  r3.zw = r2.wz * r2.xy + r2.xy;
  r2.xy = r2.zw * r2.yx + -r2.zw;
  r2.zw = -r3.zw * float2(0.5,0.5) + r2.wz;
  r3.zw = float2(1,1) + -r2.wz;
  r3.zw = r3.zw + -r3.yx;
  r3.zw = -r2.xy * float2(0.5,0.5) + r3.zw;
  r2.xy = float2(0.5,0.5) * r2.xy;
  r3.xy = r3.xy + r3.wz;
  r3.zw = r3.zw / r3.yx;
  r1.xy = r3.zw + r1.xy;
  r4.xyzw = cb0[28].zwzw * r1.xyzw;
  r1.xyzw = max(cb0[34].xyxy, r4.xwzy);
  r1.xyzw = min(cb0[34].zwzw, r1.xyzw);
  r5.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
  r1.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r2.zw = r3.yx * r2.zw;
  r5.xyz = r5.xyz * r2.www;
  r1.xyz = r1.xyz * r2.zzz + r5.xyz;
  r1.w = r2.z + r2.w;
  r1.w = r3.y * r3.x + r1.w;
  r1.w = r2.x * r3.x + r1.w;
  r1.w = r2.y * r3.y + r1.w;
  r2.xy = r3.xy * r2.xy;
  r2.z = r3.y * r3.x;
  r1.w = 1 / r1.w;
  r3.xy = max(cb0[34].xy, r4.xy);
  r0.zw = r4.yx;
  r0.xyzw = max(cb0[34].xyxy, r0.xzwy);
  r0.xyzw = min(cb0[34].zwzw, r0.xyzw);
  r3.xy = min(cb0[34].zw, r3.xy);
  r3.xyz = t0.SampleLevel(s0_s, r3.xy, 0).xyz;
  r1.xyz = r3.xyz * r2.zzz + r1.xyz;
  r3.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
  r1.xyz = r3.xyz * r2.xxx + r1.xyz;
  r0.xyz = r0.xyz * r2.yyy + r1.xyz;
  o0.xyz = r0.xyz * r1.www;
  o0.w = 0;
  return;
}