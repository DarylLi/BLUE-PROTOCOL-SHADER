// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[66];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[48];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = frac(v0.xy);
  r0.xyz = t2.Sample(s2_s, r0.xy).xyz;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyz = cb1[13].xyz * r0.yyy;
  r0.xyw = r0.xxx * cb1[12].xyz + r1.xyz;
  r0.xyz = r0.zzz * cb1[14].xyz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.z = 1;
  r1.x = cb0[30].w;
  r1.y = cb0[30].w * cb0[28].w;
  r2.xyz = r1.xyz * r0.xyz;
  r0.w = t2.Sample(s2_s, v0.xy).w;
  r3.z = 131072 * r0.w;
  r1.zw = -r0.ww * float2(131072,131072) + float2(1,1000);
  r1.zw = cb0[29].zz * r1.zw + r3.zz;
  r0.w = cb0[27].y * r3.z;
  r0.w = cb0[29].x * r0.w;
  r3.xy = v0.zw * r3.zz;
  r2.xyz = r0.www * r2.xyz + r3.xyz;
  r0.w = cb0[28].z * r1.z;
  r1.z = 0.0799999982 * r1.w;
  r0.xyz = r1.zzz * r0.xyz;
  r1.zw = v0.xy * cb0[28].xy + cb0[30].xy;
  r1.zw = t0.Sample(s0_s, r1.zw).xy;
  r3.xyz = r1.zzw * float3(2,2,2) + float3(-1,-1,-1);
  r3.yzw = r3.xyz * r0.www;
  r3.x = -r3.w;
  r0.w = 1 / r2.z;
  r4.xyzw = r1.xyxy * r0.wwww;
  r1.y = 1 / r1.y;
  r3.xyzw = r4.xyzw * r3.xyzw;
  r4.xy = r2.xy / r2.zz;
  r4.zw = r3.xy * float2(0.200000003,0.200000003) + r4.xy;
  r5.xy = cb0[47].xy * r4.zw + cb0[47].zw;
  r6.xyzw = float4(0.0833333358,0.25,0.416666657,0.583333313) * cb0[31].zzzz;
  r6.xyzw = log2(r6.xyzw);
  r0.w = t1.SampleLevel(s1_s, r5.xy, r6.x).x;
  r1.w = r0.w * cb1[65].z + -cb1[65].w;
  r0.w = r0.w * cb1[65].x + cb1[65].y;
  r1.w = 1 / r1.w;
  r5.z = r1.w + r0.w;
  r5.xy = r5.zz * r4.zw;
  r5.xyz = r5.xyz + -r2.xyz;
  r1.x = 1 / cb0[30].w;
  r1.z = 1;
  r5.xyz = r5.xyz * r1.xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r1.w = dot(r5.xyz, r0.xyz);
  r0.w = saturate(r1.w / r0.w);
  r0.w = 1 + -r0.w;
  r0.w = r0.w * r0.w + 9.99999975e-005;
  r4.zw = -r3.xy * float2(0.200000003,0.200000003) + r4.xy;
  r5.xy = cb0[47].xy * r4.zw + cb0[47].zw;
  r1.w = t1.SampleLevel(s1_s, r5.xy, r6.x).x;
  r2.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = r1.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r5.z = r2.w + r1.w;
  r5.xy = r5.zz * r4.zw;
  r5.xyz = r5.xyz + -r2.xyz;
  r5.xyz = r5.xyz * r1.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r2.w = dot(r5.xyz, r0.xyz);
  r1.w = saturate(r2.w / r1.w);
  r1.w = 1 + -r1.w;
  r0.w = r1.w * r1.w + r0.w;
  r4.zw = float2(0.101000004,0.101000004) * r3.xy;
  r4.zw = r3.zw * float2(0.324999988,0.324999988) + r4.zw;
  r5.xy = r4.xy + r4.zw;
  r4.zw = r4.xy + -r4.zw;
  r5.zw = cb0[47].xy * r5.xy + cb0[47].zw;
  r1.w = t1.SampleLevel(s1_s, r5.zw, r6.y).x;
  r2.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = r1.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r7.z = r2.w + r1.w;
  r7.xy = r7.zz * r5.xy;
  r5.xyz = r7.xyz + -r2.xyz;
  r5.xyz = r5.xyz * r1.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r2.w = dot(r5.xyz, r0.xyz);
  r1.w = saturate(r2.w / r1.w);
  r1.w = 1 + -r1.w;
  r0.w = r1.w * r1.w + r0.w;
  r5.xy = cb0[47].xy * r4.zw + cb0[47].zw;
  r1.w = t1.SampleLevel(s1_s, r5.xy, r6.y).x;
  r2.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = r1.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r5.z = r2.w + r1.w;
  r5.xy = r5.zz * r4.zw;
  r5.xyz = r5.xyz + -r2.xyz;
  r5.xyz = r5.xyz * r1.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r2.w = dot(r5.xyz, r0.xyz);
  r1.w = saturate(r2.w / r1.w);
  r1.w = 1 + -r1.w;
  r0.w = r1.w * r1.w + r0.w;
  r4.zw = float2(-0.395999998,-0.395999998) * r3.xy;
  r4.zw = r3.zw * float2(0.272000015,0.272000015) + r4.zw;
  r5.xy = r4.xy + r4.zw;
  r4.zw = r4.xy + -r4.zw;
  r5.zw = cb0[47].xy * r5.xy + cb0[47].zw;
  r1.w = t1.SampleLevel(s1_s, r5.zw, r6.z).x;
  r2.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = r1.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r7.z = r2.w + r1.w;
  r7.xy = r7.zz * r5.xy;
  r5.xyz = r7.xyz + -r2.xyz;
  r5.xyz = r5.xyz * r1.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r2.w = dot(r5.xyz, r0.xyz);
  r1.w = saturate(r2.w / r1.w);
  r1.w = 1 + -r1.w;
  r0.w = r1.w * r1.w + r0.w;
  r5.xy = cb0[47].xy * r4.zw + cb0[47].zw;
  r1.w = t1.SampleLevel(s1_s, r5.xy, r6.z).x;
  r2.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = r1.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r5.z = r2.w + r1.w;
  r5.xy = r5.zz * r4.zw;
  r5.xyz = r5.xyz + -r2.xyz;
  r5.xyz = r5.xyz * r1.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r2.w = dot(r5.xyz, r0.xyz);
  r1.w = saturate(r2.w / r1.w);
  r1.w = 1 + -r1.w;
  r0.w = r1.w * r1.w + r0.w;
  r4.zw = float2(-0.488000005,-0.488000005) * r3.xy;
  r4.zw = r3.zw * float2(-0.38499999,-0.38499999) + r4.zw;
  r5.xy = r4.xy + r4.zw;
  r4.zw = r4.xy + -r4.zw;
  r5.zw = cb0[47].xy * r5.xy + cb0[47].zw;
  r1.w = t1.SampleLevel(s1_s, r5.zw, r6.w).x;
  r2.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = r1.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r6.z = r2.w + r1.w;
  r6.xy = r6.zz * r5.xy;
  r5.xyz = r6.xyz + -r2.xyz;
  r5.xyz = r5.xyz * r1.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r2.w = dot(r5.xyz, r0.xyz);
  r1.w = saturate(r2.w / r1.w);
  r1.w = 1 + -r1.w;
  r0.w = r1.w * r1.w + r0.w;
  r5.xy = cb0[47].xy * r4.zw + cb0[47].zw;
  r1.w = t1.SampleLevel(s1_s, r5.xy, r6.w).x;
  r2.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = r1.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r5.z = r2.w + r1.w;
  r5.xy = r5.zz * r4.zw;
  r5.xyz = r5.xyz + -r2.xyz;
  r5.xyz = r5.xyz * r1.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r2.w = dot(r5.xyz, r0.xyz);
  r1.w = saturate(r2.w / r1.w);
  r1.w = 1 + -r1.w;
  r0.w = r1.w * r1.w + r0.w;
  r5.xyzw = float4(0.273999989,0.273999989,0.0599999987,0.0599999987) * r3.xyzw;
  r3.zw = r3.zw * float2(-0.711000025,-0.711000025) + r5.xy;
  r3.xy = r3.xy * float2(0.899999976,0.899999976) + r5.zw;
  r4.zw = r4.xy + r3.zw;
  r3.zw = r4.xy + -r3.zw;
  r5.xy = cb0[47].xy * r4.zw + cb0[47].zw;
  r5.zw = float2(0.75,0.916666687) * cb0[31].zz;
  r5.zw = log2(r5.zw);
  r1.w = t1.SampleLevel(s1_s, r5.xy, r5.z).x;
  r2.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = r1.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r6.z = r2.w + r1.w;
  r6.xy = r6.zz * r4.zw;
  r6.xyz = r6.xyz + -r2.xyz;
  r6.xyz = r6.xyz * r1.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r2.w = dot(r6.xyz, r0.xyz);
  r1.w = saturate(r2.w / r1.w);
  r1.w = 1 + -r1.w;
  r0.w = r1.w * r1.w + r0.w;
  r4.zw = cb0[47].xy * r3.zw + cb0[47].zw;
  r1.w = t1.SampleLevel(s1_s, r4.zw, r5.z).x;
  r2.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = r1.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r5.z = r2.w + r1.w;
  r5.xy = r5.zz * r3.zw;
  r5.xyz = r5.xyz + -r2.xyz;
  r5.xyz = r5.xyz * r1.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r2.w = dot(r5.xyz, r0.xyz);
  r1.w = saturate(r2.w / r1.w);
  r1.w = 1 + -r1.w;
  r0.w = r1.w * r1.w + r0.w;
  r3.zw = r4.xy + r3.xy;
  r3.xy = r4.xy + -r3.xy;
  r4.xy = cb0[47].xy * r3.zw + cb0[47].zw;
  r1.w = t1.SampleLevel(s1_s, r4.xy, r5.w).x;
  r2.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = r1.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r4.z = r2.w + r1.w;
  r4.xy = r4.zz * r3.zw;
  r4.xyz = r4.xyz + -r2.xyz;
  r4.xyz = r4.xyz * r1.xyz;
  r1.w = dot(r4.xyz, r0.xyz);
  r2.w = dot(r4.xyz, r4.xyz);
  r1.w = saturate(r1.w / r2.w);
  r1.w = 1 + -r1.w;
  r0.w = r1.w * r1.w + r0.w;
  r3.zw = cb0[47].xy * r3.xy + cb0[47].zw;
  r1.w = t1.SampleLevel(s1_s, r3.zw, r5.w).x;
  r2.w = r1.w * cb1[65].z + -cb1[65].w;
  r1.w = r1.w * cb1[65].x + cb1[65].y;
  r2.w = 1 / r2.w;
  r4.z = r2.w + r1.w;
  r4.xy = r4.zz * r3.xy;
  r2.xyz = r4.xyz + -r2.xyz;
  r1.xyz = r2.xyz * r1.xyz;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.x = saturate(r0.x / r0.y);
  r0.x = 1 + -r0.x;
  r0.x = r0.x * r0.x + r0.w;
  o0.x = 0.0833326355 * r0.x;
  o0.yzw = float3(0,0,0);
  return;
}