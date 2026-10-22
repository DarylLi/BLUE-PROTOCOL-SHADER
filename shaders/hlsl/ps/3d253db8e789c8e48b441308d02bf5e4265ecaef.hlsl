// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[6];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 2.26303458 * cb0[5].z;
  r0.x = exp2(r0.x);
  r0.x = cb0[5].y * r0.x;
  r0.x = min(1, r0.x);
  r0.yz = -v0.xy * cb0[2].zw + cb0[0].xy;
  r0.xy = r0.yz * r0.xx;
  r0.zw = cb0[2].zw * v0.xy;
  r1.xyzw = r0.xyxy * float4(0.0833333358,0.0833333358,0.166666672,0.166666672) + r0.zwzw;
  r1.xyzw = cb0[2].xyxy * r1.xyzw;
  r1.xyzw = max(cb0[1].xyxy, r1.xyzw);
  r1.xyzw = min(cb0[1].zwzw, r1.xyzw);
  r2.xyz = t0.Sample(s0_s, r1.xy).xyz;
  r1.xyz = t0.Sample(s0_s, r1.zw).xyz;
  r3.xy = cb0[2].xy * r0.zw;
  r3.xy = max(cb0[1].xy, r3.xy);
  r3.xy = min(cb0[1].zw, r3.xy);
  r3.xyz = t0.Sample(s0_s, r3.xy).xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyzw = r0.xyxy * float4(0.25,0.25,0.333333343,0.333333343) + r0.zwzw;
  r2.xyzw = cb0[2].xyxy * r2.xyzw;
  r2.xyzw = max(cb0[1].xyxy, r2.xyzw);
  r2.xyzw = min(cb0[1].zwzw, r2.xyzw);
  r3.xyz = t0.Sample(s0_s, r2.xy).xyz;
  r2.xyz = t0.Sample(s0_s, r2.zw).xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyzw = r0.xyxy * float4(0.416666687,0.416666687,0.5,0.5) + r0.zwzw;
  r2.xyzw = cb0[2].xyxy * r2.xyzw;
  r2.xyzw = max(cb0[1].xyxy, r2.xyzw);
  r2.xyzw = min(cb0[1].zwzw, r2.xyzw);
  r3.xyz = t0.Sample(s0_s, r2.xy).xyz;
  r2.xyz = t0.Sample(s0_s, r2.zw).xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyzw = r0.xyxy * float4(0.583333373,0.583333373,0.666666687,0.666666687) + r0.zwzw;
  r2.xyzw = cb0[2].xyxy * r2.xyzw;
  r2.xyzw = max(cb0[1].xyxy, r2.xyzw);
  r2.xyzw = min(cb0[1].zwzw, r2.xyzw);
  r3.xyz = t0.Sample(s0_s, r2.xy).xyz;
  r2.xyz = t0.Sample(s0_s, r2.zw).xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyzw = r0.xyxy * float4(0.75,0.75,0.833333373,0.833333373) + r0.zwzw;
  r0.xy = r0.xy * float2(0.916666687,0.916666687) + r0.zw;
  r0.xy = cb0[2].xy * r0.xy;
  r0.xy = max(cb0[1].xy, r0.xy);
  r0.xy = min(cb0[1].zw, r0.xy);
  r0.xyz = t0.Sample(s0_s, r0.xy).xyz;
  r2.xyzw = cb0[2].xyxy * r2.xyzw;
  r2.xyzw = max(cb0[1].xyxy, r2.xyzw);
  r2.xyzw = min(cb0[1].zwzw, r2.xyzw);
  r3.xyz = t0.Sample(s0_s, r2.xy).xyz;
  r2.xyz = t0.Sample(s0_s, r2.zw).xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o0.xyz = float3(0.0833333358,0.0833333358,0.0833333358) * r0.xyz;
  o0.w = 1;
  return;
}