// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[43];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  linear noperspective float4 v2 : TEXCOORD2,
  linear noperspective float4 v3 : TEXCOORD3,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = max(cb0[33].xyxy, v1.xyzw);
  r0.xyzw = min(cb0[33].zwzw, r0.xyzw);
  r1.xyzw = -v1.xyzw + r0.xyzw;
  r1.xyzw = saturate(-abs(r1.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r1.xy = r1.xz * r1.yw;
  r2.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
  r0.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.xyz = r1.xxx * r0.xyz;
  r1.xyz = r2.xyz * r1.yyy;
  r1.xyz = cb0[38].xyz * r1.xyz;
  r0.xyz = r0.xyz * cb0[37].xyz + r1.xyz;
  r1.xyzw = max(cb0[33].xyxy, v2.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v2.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r1.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
  r1.xyz = r2.yyy * r1.xyz;
  r2.xyz = r3.xyz * r2.xxx;
  r0.xyz = r2.xyz * cb0[39].xyz + r0.xyz;
  r0.xyz = r1.xyz * cb0[40].xyz + r0.xyz;
  r1.xyzw = max(cb0[33].xyxy, v3.xyzw);
  r1.xyzw = min(cb0[33].zwzw, r1.xyzw);
  r2.xyzw = -v3.xyzw + r1.xyzw;
  r2.xyzw = saturate(-abs(r2.xyzw) * cb0[27].xyxy + float4(1,1,1,1));
  r2.xy = r2.xz * r2.yw;
  r3.xyz = t0.SampleLevel(s0_s, r1.xy, 0).xyz;
  r1.xyz = t0.SampleLevel(s0_s, r1.zw, 0).xyz;
  r1.xyz = r2.yyy * r1.xyz;
  r2.xyz = r3.xyz * r2.xxx;
  r0.xyz = r2.xyz * cb0[41].xyz + r0.xyz;
  o0.xyz = r1.xyz * cb0[42].xyz + r0.xyz;
  r0.xy = max(cb0[33].xy, v0.xy);
  r0.xy = min(cb0[33].zw, r0.xy);
  r0.zw = -v0.xy + r0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).w;
  r0.yz = saturate(-abs(r0.zw) * cb0[27].xy + float2(1,1));
  r0.y = r0.y * r0.z;
  o0.w = r0.y * r0.x;
  return;
}