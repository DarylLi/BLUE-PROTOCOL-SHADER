// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[13];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t0.SampleLevel(s0_s, v0.xy, 0).x;
  r0.y = r0.x * cb1[65].z + -cb1[65].w;
  r0.x = r0.x * cb1[65].x + cb1[65].y;
  r0.y = 1 / r0.y;
  r0.x = r0.x + r0.y;
  r0.yz = -cb1[129].xy * cb1[132].zw + v0.xy;
  r0.yz = min(cb0[12].xy, r0.yz);
  r1.xy = float2(0.5,0.5) * cb1[132].xy;
  r1.xy = floor(r1.xy);
  r1.zw = r0.yz * r1.xy + float2(-0.5,-0.5);
  r1.zw = floor(r1.zw);
  r1.zw = r1.zw / r1.xy;
  r2.xy = float2(1,1) / r1.xy;
  r1.zw = r2.xy * float2(0.5,0.5) + r1.zw;
  r3.xy = r1.zw + r2.xy;
  r3.xyzw = t2.SampleLevel(s1_s, r3.xy, 0).xyzw;
  r4.w = r3.w;
  r2.z = 0;
  r2.xyzw = r1.zwzw + r2.xzzy;
  r5.xyzw = t2.SampleLevel(s1_s, r2.xy, 0).xyzw;
  r2.xyzw = t2.SampleLevel(s1_s, r2.zw, 0).xyzw;
  r4.y = r5.w;
  r4.z = r2.w;
  r6.xyzw = t2.SampleLevel(s1_s, r1.zw, 0).xyzw;
  r0.yz = -r1.zw + r0.yz;
  r4.x = r6.w;
  r4.xyzw = r4.xyzw + -r0.xxxx;
  r0.x = cb0[8].w + -r0.x;
  r0.x = saturate(cb0[9].x * r0.x);
  r4.xyzw = float4(9.99999975e-005,9.99999975e-005,9.99999975e-005,9.99999975e-005) + abs(r4.xyzw);
  r4.xyzw = float4(1,1,1,1) / r4.xyzw;
  r1.zw = r0.yz * r1.xy;
  r0.yz = -r0.zy * r1.yx + float2(1,1);
  r7.yz = r0.yz * r1.zw;
  r7.w = r1.w * r1.z;
  r7.x = r0.y * r0.z;
  r1.xyzw = r7.xyzw * r4.xyzw;
  r0.yzw = r1.yyy * r5.xyz;
  r0.yzw = r1.xxx * r6.xyz + r0.yzw;
  r0.yzw = r1.zzz * r2.xyz + r0.yzw;
  r0.yzw = r1.www * r3.xyz + r0.yzw;
  r1.x = dot(r1.xyzw, float4(1,1,1,1));
  r1.x = 1 / r1.x;
  r1.yzw = t1.SampleLevel(s0_s, v0.xy, 0).xyz;
  r1.yzw = r1.yzw * float3(2,2,2) + float3(-1,-1,-1);
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = rsqrt(r2.x);
  r1.yzw = r2.xxx * r1.yzw;
  r0.yzw = r0.yzw * r1.xxx + -r1.yzw;
  r0.xyz = r0.xxx * r0.yzw + r1.yzw;
  r0.x = dot(r0.xyz, r0.xyz);
  o0.xyz = sqrt(r0.xxx);
  o0.w = 1;
  return;
}