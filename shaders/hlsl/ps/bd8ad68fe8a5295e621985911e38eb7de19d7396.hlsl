// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.Sample(s0_s, v0.xy).x;
  r0.y = t4.Sample(s4_s, v0.xy).x;
  r0.x = r0.x + r0.y;
  r0.y = t1.Sample(s1_s, v0.zw).x;
  r0.y = r0.y * cb0[2].x + cb0[2].z;
  r0.yzw = float3(0.00860903692,-0.00860903692,0.560031354) * r0.yyy;
  r0.xyz = r0.xxx * cb0[1].xxx + r0.yzw;
  r0.w = t2.Sample(s2_s, v0.zw).x;
  r0.w = r0.w * cb0[2].y + cb0[2].w;
  r0.xyz = r0.www * float3(0.111029625,-0.111029625,-0.320627183) + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(0.0126833133,0.0126833133,0.0126833133) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xyz = float3(-0.8359375,-0.8359375,-0.8359375) + r0.xyz;
  r0.xyz = -r0.xyz * float3(18.6875,18.6875,18.6875) + float3(18.8515625,18.8515625,18.8515625);
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r0.xyz = r1.xyz / r0.xyz;
  r0.xyz = log2(abs(r0.xyz));
  r0.xyz = float3(6.27739477,6.27739477,6.27739477) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.xyz = float3(-313.306519,247.950058,-12.3642139) * r0.yyy;
  r0.xyw = r0.xxx * float3(429.575836,-98.9161911,-3.24373746) + r1.xyz;
  r0.xyz = r0.zzz * float3(8.7306776,-24.0338612,140.607956) + r0.xyw;
  r1.xyz = cb0[1].yyy * r0.xyz;
  r0.xyz = r0.xyz * cb0[1].yyy + float3(1,1,1);
  r0.xyz = r1.xyz / r0.xyz;
  r0.xyz = cb0[1].zzz * r0.xyz;
  r0.w = t3.Sample(s3_s, v0.xy).x;
  o0.xyzw = cb0[0].xyzw * r0.xyzw;
  return;
}