// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[48];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 16, 16, 1
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[34].xyyy);
  r1.xy = (int2)r0.xw;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.zw = cb0[29].xx * r1.xy;
  r1.zw = cb1[132].zw * r1.zw;
  r2.x = t0.SampleLevel(s0_s, r1.zw, 0).x;
  r2.y = r2.x * cb1[65].x + cb1[65].y;
  r2.x = r2.x * cb1[65].z + -cb1[65].w;
  r2.x = 1 / r2.x;
  r2.x = r2.y + r2.x;
  r2.x = r2.x * cb0[31].x + cb0[31].y;
  r2.x = cmp(r2.x < 1);
  if (r2.x != 0) {
    r1.xy = r1.xy * cb0[29].xx + -cb1[129].xy;
    r1.xy = r1.xy * cb1[130].zw + float2(-0.5,-0.5);
    r1.xy = float2(2,-2) * r1.xy;
    r2.y = cb0[30].w * cb0[28].w;
    r3.x = 1 / cb0[30].w;
    r3.y = 1 / r2.y;
    r3.z = 1;
    r2.w = t3.SampleLevel(s3_s, r1.zw, 0).w;
    r4.z = 131072 * r2.w;
    r5.xy = frac(r1.zw);
    r5.xyz = t3.SampleLevel(s3_s, r5.xy, 0).xyz;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r6.xyz = cb1[13].xyz * r5.yyy;
    r5.xyw = r5.xxx * cb1[12].xyz + r6.xyz;
    r5.xyz = r5.zzz * cb1[14].xyz + r5.xyw;
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = rsqrt(r3.w);
    r5.xyz = r5.xyz * r3.www;
    r4.xy = r4.zz * r1.xy;
    r1.xy = -r2.ww * float2(131072,131072) + float2(1,1000);
    r1.xy = cb0[29].zz * r1.xy + r4.zz;
    r1.x = cb0[28].z * r1.x;
    r2.w = cb0[27].y * r4.z;
    r2.w = cb0[29].x * r2.w;
    r2.x = cb0[30].w;
    r2.z = 1;
    r6.xyz = r5.xyz * r2.xyz;
    r4.xyz = r2.www * r6.xyz + r4.xyz;
    r1.zw = r1.zw * cb0[28].xy + cb0[30].xy;
    r1.zw = t1.SampleLevel(s1_s, r1.zw, 0).xy;
    r6.xyz = r1.zzw * float3(2,2,2) + float3(-1,-1,-1);
    r6.yzw = r6.xyz * r1.xxx;
    r1.x = 1 / r4.z;
    r2.xyzw = r2.xyxy * r1.xxxx;
    r6.x = -r6.w;
    r2.xyzw = r6.xyzw * r2.xyzw;
    r1.xz = r4.xy / r4.zz;
    r1.y = 0.0799999982 * r1.y;
    r5.xyz = r5.xyz * r1.yyy;
    r6.xyzw = float4(0.0833333358,0.25,0.416666657,0.583333313) * cb0[31].zzzz;
    r6.xyzw = log2(r6.xyzw);
    r1.yw = r2.xy * float2(0.200000003,0.200000003) + r1.xz;
    r7.xy = -r2.xy * float2(0.200000003,0.200000003) + r1.xz;
    r7.zw = cb0[47].xy * r1.yw + cb0[47].zw;
    r3.w = t2.SampleLevel(s2_s, r7.zw, r6.x).x;
    r4.w = r3.w * cb1[65].x + cb1[65].y;
    r3.w = r3.w * cb1[65].z + -cb1[65].w;
    r3.w = 1 / r3.w;
    r8.z = r4.w + r3.w;
    r7.zw = cb0[47].xy * r7.xy + cb0[47].zw;
    r3.w = t2.SampleLevel(s2_s, r7.zw, r6.x).x;
    r4.w = r3.w * cb1[65].x + cb1[65].y;
    r3.w = r3.w * cb1[65].z + -cb1[65].w;
    r3.w = 1 / r3.w;
    r9.z = r4.w + r3.w;
    r8.xy = r8.zz * r1.yw;
    r9.xy = r9.zz * r7.xy;
    r7.xyz = r8.xyz + -r4.xyz;
    r7.xyz = r7.xyz * r3.xyz;
    r8.xyz = r9.xyz + -r4.xyz;
    r8.xyz = r8.xyz * r3.xyz;
    r1.y = dot(r7.xyz, r5.xyz);
    r1.w = dot(r7.xyz, r7.xyz);
    r1.y = saturate(r1.y / r1.w);
    r1.w = dot(r8.xyz, r5.xyz);
    r3.w = dot(r8.xyz, r8.xyz);
    r1.w = saturate(r1.w / r3.w);
    r1.yw = float2(1,1) + -r1.yw;
    r1.y = r1.y * r1.y + 9.99999975e-005;
    r1.y = r1.w * r1.w + r1.y;
    r7.xy = float2(0.101000004,0.101000004) * r2.xy;
    r7.xy = r2.zw * float2(0.324999988,0.324999988) + r7.xy;
    r7.zw = r7.xy + r1.xz;
    r7.xy = -r7.xy + r1.xz;
    r8.xy = cb0[47].xy * r7.zw + cb0[47].zw;
    r1.w = t2.SampleLevel(s2_s, r8.xy, r6.y).x;
    r3.w = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r8.z = r3.w + r1.w;
    r9.xy = cb0[47].xy * r7.xy + cb0[47].zw;
    r1.w = t2.SampleLevel(s2_s, r9.xy, r6.y).x;
    r3.w = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r9.z = r3.w + r1.w;
    r8.xy = r8.zz * r7.zw;
    r9.xy = r9.zz * r7.xy;
    r7.xyz = r8.xyz + -r4.xyz;
    r7.xyz = r7.xyz * r3.xyz;
    r8.xyz = r9.xyz + -r4.xyz;
    r8.xyz = r8.xyz * r3.xyz;
    r1.w = dot(r7.xyz, r5.xyz);
    r3.w = dot(r7.xyz, r7.xyz);
    r1.w = saturate(r1.w / r3.w);
    r3.w = dot(r8.xyz, r5.xyz);
    r4.w = dot(r8.xyz, r8.xyz);
    r3.w = saturate(r3.w / r4.w);
    r1.w = 1 + -r1.w;
    r1.y = r1.w * r1.w + r1.y;
    r1.w = 1 + -r3.w;
    r1.y = r1.w * r1.w + r1.y;
    r6.xy = float2(-0.395999998,-0.395999998) * r2.xy;
    r6.xy = r2.zw * float2(0.272000015,0.272000015) + r6.xy;
    r7.xy = r6.xy + r1.xz;
    r6.xy = -r6.xy + r1.xz;
    r7.zw = cb0[47].xy * r7.xy + cb0[47].zw;
    r1.w = t2.SampleLevel(s2_s, r7.zw, r6.z).x;
    r3.w = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r8.z = r3.w + r1.w;
    r7.zw = cb0[47].xy * r6.xy + cb0[47].zw;
    r1.w = t2.SampleLevel(s2_s, r7.zw, r6.z).x;
    r3.w = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r9.z = r3.w + r1.w;
    r8.xy = r8.zz * r7.xy;
    r9.xy = r9.zz * r6.xy;
    r6.xyz = r8.xyz + -r4.xyz;
    r6.xyz = r6.xyz * r3.xyz;
    r7.xyz = r9.xyz + -r4.xyz;
    r7.xyz = r7.xyz * r3.xyz;
    r1.w = dot(r6.xyz, r5.xyz);
    r3.w = dot(r6.xyz, r6.xyz);
    r1.w = saturate(r1.w / r3.w);
    r3.w = dot(r7.xyz, r5.xyz);
    r4.w = dot(r7.xyz, r7.xyz);
    r3.w = saturate(r3.w / r4.w);
    r1.w = 1 + -r1.w;
    r1.y = r1.w * r1.w + r1.y;
    r1.w = 1 + -r3.w;
    r1.y = r1.w * r1.w + r1.y;
    r6.xy = float2(-0.488000005,-0.488000005) * r2.xy;
    r6.xy = r2.zw * float2(-0.38499999,-0.38499999) + r6.xy;
    r7.xy = r6.xy + r1.xz;
    r6.xy = -r6.xy + r1.xz;
    r7.zw = cb0[47].xy * r7.xy + cb0[47].zw;
    r1.w = t2.SampleLevel(s2_s, r7.zw, r6.w).x;
    r3.w = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r8.z = r3.w + r1.w;
    r7.zw = cb0[47].xy * r6.xy + cb0[47].zw;
    r1.w = t2.SampleLevel(s2_s, r7.zw, r6.w).x;
    r3.w = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r9.z = r3.w + r1.w;
    r8.xy = r8.zz * r7.xy;
    r9.xy = r9.zz * r6.xy;
    r6.xyz = r8.xyz + -r4.xyz;
    r6.xyz = r6.xyz * r3.xyz;
    r7.xyz = r9.xyz + -r4.xyz;
    r7.xyz = r7.xyz * r3.xyz;
    r1.w = dot(r6.xyz, r5.xyz);
    r3.w = dot(r6.xyz, r6.xyz);
    r1.w = saturate(r1.w / r3.w);
    r3.w = dot(r7.xyz, r5.xyz);
    r4.w = dot(r7.xyz, r7.xyz);
    r3.w = saturate(r3.w / r4.w);
    r1.w = 1 + -r1.w;
    r1.y = r1.w * r1.w + r1.y;
    r1.w = 1 + -r3.w;
    r1.y = r1.w * r1.w + r1.y;
    r6.xyzw = float4(0.273999989,0.273999989,0.0599999987,0.0599999987) * r2.xyzw;
    r2.zw = r2.zw * float2(-0.711000025,-0.711000025) + r6.xy;
    r6.xy = float2(0.75,0.916666687) * cb0[31].zz;
    r6.xy = log2(r6.xy);
    r7.xy = r2.zw + r1.xz;
    r2.zw = -r2.zw + r1.xz;
    r7.zw = cb0[47].xy * r7.xy + cb0[47].zw;
    r1.w = t2.SampleLevel(s2_s, r7.zw, r6.x).x;
    r3.w = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r8.z = r3.w + r1.w;
    r7.zw = cb0[47].xy * r2.zw + cb0[47].zw;
    r1.w = t2.SampleLevel(s2_s, r7.zw, r6.x).x;
    r3.w = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r9.z = r3.w + r1.w;
    r8.xy = r8.zz * r7.xy;
    r9.xy = r9.zz * r2.zw;
    r7.xyz = r8.xyz + -r4.xyz;
    r7.xyz = r7.xyz * r3.xyz;
    r8.xyz = r9.xyz + -r4.xyz;
    r8.xyz = r8.xyz * r3.xyz;
    r1.w = dot(r7.xyz, r5.xyz);
    r2.z = dot(r7.xyz, r7.xyz);
    r1.w = saturate(r1.w / r2.z);
    r2.z = dot(r8.xyz, r5.xyz);
    r2.w = dot(r8.xyz, r8.xyz);
    r2.z = saturate(r2.z / r2.w);
    r1.w = 1 + -r1.w;
    r1.y = r1.w * r1.w + r1.y;
    r1.w = 1 + -r2.z;
    r1.y = r1.w * r1.w + r1.y;
    r2.xy = r2.xy * float2(0.899999976,0.899999976) + r6.zw;
    r2.zw = r2.xy + r1.xz;
    r1.xz = -r2.xy + r1.xz;
    r2.xy = cb0[47].xy * r2.zw + cb0[47].zw;
    r1.w = t2.SampleLevel(s2_s, r2.xy, r6.y).x;
    r2.x = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r7.z = r2.x + r1.w;
    r2.xy = cb0[47].xy * r1.xz + cb0[47].zw;
    r1.w = t2.SampleLevel(s2_s, r2.xy, r6.y).x;
    r2.x = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r6.z = r2.x + r1.w;
    r7.xy = r7.zz * r2.zw;
    r6.xy = r6.zz * r1.xz;
    r1.xzw = r7.xyz + -r4.xyz;
    r1.xzw = r1.xzw * r3.xyz;
    r2.xyz = r6.xyz + -r4.xyz;
    r2.xyz = r2.xyz * r3.xyz;
    r2.w = dot(r1.xzw, r5.xyz);
    r1.x = dot(r1.xzw, r1.xzw);
    r1.x = saturate(r2.w / r1.x);
    r1.z = dot(r2.xyz, r5.xyz);
    r1.w = dot(r2.xyz, r2.xyz);
    r1.z = saturate(r1.z / r1.w);
    r1.x = 1 + -r1.x;
    r1.x = r1.x * r1.x + r1.y;
    r1.y = 1 + -r1.z;
    r1.x = r1.y * r1.y + r1.x;
    r1.x = 0.0833326355 * r1.x;
  } else {
    r1.x = 1;
  }
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xxxx
  return;
}