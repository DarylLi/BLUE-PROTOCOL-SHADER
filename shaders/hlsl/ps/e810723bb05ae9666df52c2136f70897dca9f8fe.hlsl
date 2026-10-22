// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[50];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[144];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z / cb5[24].z;
  r0.y = 0.5 + r0.x;
  r0.xy = frac(r0.xy);
  r0.z = r0.y + r0.y;
  r0.w = max(1, r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.z + r0.z;
  r0.w = -1 + r0.w;
  r0.w = r0.w + r0.w;
  r0.zw = min(float2(1,1), r0.zw);
  r0.w = 1 + -r0.w;
  r0.z = r0.w * r0.z;
  r0.w = cb2[18].x + cb2[18].y;
  r0.w = cb2[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb1[142].z + r0.w;
  r0.w = cb4[2].x * r0.w;
  r1.x = cb5[23].z * r0.w;
  r0.w = cb5[20].x * r0.w;
  r1.y = cb5[22].z * v3.y + cb5[22].w;
  r2.y = cb5[23].x * r1.y;
  r2.xz = v3.xx;
  r1.zw = cb5[2].xy * r2.xy;
  r2.xy = r1.xx * cb5[22].xy + r1.zw;
  r2.xy = t0.SampleBias(s0_s, r2.xy, cb1[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.200000003,0.200000003) * r2.xy;
  r3.xy = r1.zw / cb5[24].yy;
  r1.xz = r1.zw / cb5[23].yy;
  r1.xz = r0.ww * cb5[22].xy + r1.xz;
  r3.xy = r0.ww * cb5[22].xy + r3.xy;
  r0.yw = r2.xy * r0.yy + r3.xy;
  r3.xy = r2.xy * r0.xx + r3.xy;
  r3.xy = t0.SampleBias(s0_s, r3.xy, cb1[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.xy = t0.SampleBias(s0_s, r0.yw, cb1[143].y).xy;
  r4.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r4.xy, r4.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r4.z = sqrt(r0.x);
  r0.x = dot(r3.xy, r3.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r3.z = sqrt(r0.x);
  r0.xyw = r4.xyz + -r3.xyz;
  r0.xyz = r0.zzz * r0.xyw + r3.xyz;
  r3.xyz = r0.xyz + r0.xyz;
  r0.xyz = -r0.xyz * float3(2,2,2) + float3(0,0,1);
  r0.xyz = cb5[24].www * r0.xyz + r3.xyz;
  r0.xyz = float3(-1,-1,1) * r0.xyz;
  r0.w = cb1[142].z / cb5[23].w;
  r1.w = 0.5 + r0.w;
  r0.w = frac(r0.w);
  r3.xy = r2.xy * r0.ww + r1.xz;
  r3.xy = t0.SampleBias(s0_s, r3.xy, cb1[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = frac(r1.w);
  r1.xz = r2.xy * r0.ww + r1.xz;
  r0.w = r0.w + r0.w;
  r1.xz = t0.SampleBias(s0_s, r1.xz, cb1[143].y).xy;
  r4.xy = r1.xz * float2(2,2) + float2(-1,-1);
  r1.x = dot(r4.xy, r4.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r4.z = sqrt(r1.x);
  r1.x = dot(r3.xy, r3.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r3.z = sqrt(r1.x);
  r1.xzw = r4.xyz + -r3.xyz;
  r2.x = max(1, r0.w);
  r0.w = min(1, r0.w);
  r0.w = r0.w + r0.w;
  r0.w = min(1, r0.w);
  r2.x = -1 + r2.x;
  r2.x = r2.x + r2.x;
  r2.x = min(1, r2.x);
  r2.x = 1 + -r2.x;
  r0.w = r2.x * r0.w;
  r1.xzw = r0.www * r1.xzw + r3.xyz;
  r3.xyz = r1.xzw + r1.xzw;
  r1.xzw = -r1.xzw * float3(2,2,2) + float3(0,0,1);
  r3.xyz = cb5[24].xxx * r1.xzw + r3.xyz;
  r3.w = 1 + r3.z;
  r0.w = dot(r3.xyw, r0.xyz);
  r1.x = 1 + r3.z;
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = r3.xyw * r0.www + -r0.xyz;
  r1.xzw = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb5[25].xxx * r1.xzw + r0.xyz;
  r0.w = 0.5 + cb1[142].z;
  r0.w = frac(r0.w);
  r1.x = r0.w + r0.w;
  r1.z = max(1, r1.x);
  r1.x = min(1, r1.x);
  r1.x = r1.x + r1.x;
  r1.z = -1 + r1.z;
  r1.z = r1.z + r1.z;
  r1.xz = min(float2(1,1), r1.xz);
  r1.z = 1 + -r1.z;
  r1.x = r1.z * r1.x;
  r3.xyzw = cb1[45].xyzw * v6.yyyy;
  r3.xyzw = v6.xxxx * cb1[44].xyzw + r3.xyzw;
  r3.xyzw = v6.zzzz * cb1[46].xyzw + r3.xyzw;
  r3.xyzw = cb1[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb1[70].xyz + r3.xyz;
  r1.z = -cb5[25].y + r4.z;
  r1.z = abs(r1.z) / cb5[25].z;
  r1.z = -r1.z * cb5[25].w + 1;
  r1.w = -cb5[23].x * r1.y + 1;
  r2.w = -r1.w * r1.z + 1;
  r1.z = cb4[2].x * cb1[142].z;
  r1.w = cb5[26].z * r1.z;
  r1.z = cb5[43].y * r1.z;
  r2.xy = cb5[5].xy * r1.ww;
  r5.xy = r2.zw * cb5[3].xy + r2.xy;
  r2.zw = r2.zw * cb5[4].xy + float2(0.200000003,0.200000003);
  r2.xy = r2.xy * float2(0.699999988,0.699999988) + r2.zw;
  r1.w = t1.SampleBias(s1_s, r2.xy, cb1[143].y).x;
  r6.w = r1.w * 2 + -1;
  r6.yz = float2(1,0);
  r2.zw = cb5[27].zz * r6.zw;
  r5.zw = r2.zw * r0.ww + r5.xy;
  r6.zw = r2.zw * r0.ww + r2.xy;
  r6.zw = t1.SampleBias(s1_s, r6.zw, cb1[143].y).xy;
  r7.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r5.zw = t1.SampleBias(s1_s, r5.zw, cb1[143].y).xy;
  r8.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r8.z = sqrt(r0.w);
  r0.w = frac(cb1[142].z);
  r5.xy = r2.zw * r0.ww + r5.xy;
  r2.xy = r2.zw * r0.ww + r2.xy;
  r2.xy = t1.SampleBias(s1_s, r2.xy, cb1[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r5.xy = t1.SampleBias(s1_s, r5.xy, cb1[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r1.xxx * r8.xyz + r5.xyz;
  r8.xyz = r5.xyz + r5.xyz;
  r5.yzw = -r5.xyz * float3(2,2,2) + float3(0,0,1);
  r5.yzw = cb5[24].www * r5.yzw + r8.xyz;
  r5.yzw = float3(-1,-1,1) * r5.yzw;
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r7.z = sqrt(r0.w);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r7.xyz = r7.xyz + -r2.xyz;
  r2.xyz = r1.xxx * r7.xyz + r2.xyz;
  r7.xyz = r2.xyz + r2.xyz;
  r2.xzw = -r2.xyz * float3(2,2,2) + float3(0,0,1);
  r0.w = r5.x + -r2.y;
  r2.xyz = cb5[24].xxx * r2.xzw + r7.xyz;
  r2.w = 1 + r2.z;
  r1.x = dot(r2.xyw, r5.yzw);
  r1.w = 1 + r2.z;
  r5.xyz = r1.www * r5.yzw;
  r2.xyz = r2.xyw * r1.xxx + -r5.xyz;
  r5.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb5[25].xxx * r5.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r0.xyz;
  r1.x = -0.5 + r0.w;
  r0.w = r0.w * cb5[28].x + v3.x;
  r0.w = r0.w * 2 + -1;
  r0.w = 1 + -abs(r0.w);
  r0.w = r0.w * cb5[48].w + -cb5[48].w;
  r0.w = saturate(cb5[49].y + r0.w);
  r0.w = cb5[49].z * r0.w;
  r1.x = dot(r1.xx, cb5[28].zz);
  r1.x = v3.y + r1.x;
  r1.x = r1.x * cb5[29].x + -cb5[29].x;
  r1.x = saturate(cb5[29].w + r1.x);
  r1.w = cb5[30].z * r1.x;
  r1.x = -cb5[30].z * r1.x + 1;
  r1.x = cb5[31].x * r1.x + r1.w;
  r0.xyz = r1.xxx * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz * cb1[138].www + cb1[138].xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r2.xyz = v1.zxy * v0.yzx;
  r2.xyz = v1.yzx * v0.zxy + -r2.xyz;
  r2.xyz = v1.www * r2.xyz;
  r2.xyz = r2.xyz * r0.yyy;
  r2.xyz = r0.xxx * v0.xyz + r2.xyz;
  r0.xyz = r0.zzz * v1.xyz + r2.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = cb2[4].w * cb1[141].w;
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(-r3.xyz, -r3.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = -r3.xyz * r1.www;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.y = log2(r0.x);
  r0.x = 1 + -r0.x;
  r0.x = saturate(r0.x * 3 + -0.299999952);
  r0.y = cb5[32].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * cb5[33].y + cb5[33].x;
  r6.x = v6.z;
  r2.xy = v6.ww * r6.xy;
  r0.z = r2.x * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r1.w = r2.x * cb1[65].x + cb1[65].y;
  r0.z = r1.w + r0.z;
  r1.w = cmp(cb1[31].w < 1);
  r0.z = r1.w ? r2.y : r0.z;
  r0.z = 1000000 + -r0.z;
  r0.z = saturate(r0.z / cb5[33].w);
  r0.z = cb5[34].x * r0.z;
  r1.w = log2(abs(r0.z));
  r0.z = cmp(0 >= abs(r0.z));
  r1.w = cb5[34].y * r1.w;
  r1.w = exp2(r1.w);
  r0.z = r0.z ? 0 : r1.w;
  r0.y = saturate(r0.y * r0.z);
  r2.xy = float2(1,1) + -v2.wy;
  r0.z = log2(r2.x);
  r1.w = cb5[34].z * r0.z;
  r0.z = cb5[43].x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = 1 + -r0.z;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r2.x = cmp(0 >= r2.x);
  r2.y = cb5[47].w * r2.y;
  r1.w = r2.x ? 1 : r1.w;
  r0.z = r2.x ? 1 : r0.z;
  r0.y = r1.w * r0.y;
  r0.y = r0.z * r0.y;
  r1.w = -cb5[46].z + r4.z;
  r1.w = r1.w / cb5[46].w;
  r2.x = cmp(r1.w >= 1);
  r2.x = r2.x ? 1 : r1.w;
  r1.w = -1 + r1.w;
  r1.w = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = r1.w ? r2.x : 1;
  r2.x = cmp(r1.w >= 0);
  r2.x = r2.x ? r1.w : 1;
  r1.w = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = r1.w ? r2.x : 1;
  r2.x = log2(r1.w);
  r1.w = cmp(0 >= r1.w);
  r2.x = cb5[47].x * r2.x;
  r2.x = exp2(r2.x);
  r2.x = min(1, r2.x);
  r2.x = 1 + -r2.x;
  r1.w = r1.w ? 1 : r2.x;
  r1.w = cb5[47].y * r1.w;
  r2.xzw = r4.xyz / cb5[44].zzz;
  r3.xyz = r4.xyz / cb5[45].yyy;
  r4.xy = cb5[44].ww * r2.xz;
  r5.z = -r2.w;
  r5.xy = -r4.xy;
  r6.x = cb5[43].w * r1.z;
  r6.y = cb5[44].x * r1.z;
  r6.xyzw = r6.xyxy + r5.xzyz;
  r4.z = r5.z;
  r4.xyzw = r1.zzzz * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r4.xzyz;
  r2.xz = t3.SampleBias(s3_s, r3.yz, cb1[143].y).xy;
  r3.xy = t3.SampleBias(s3_s, r3.xz, cb1[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r3.xy = cb5[45].zz * -r3.xy + r3.xy;
  r2.xz = r2.xz * float2(2,2) + float2(-1,-1);
  r2.xz = cb5[45].zz * -r2.xz + r2.xz;
  r2.xz = r2.xz + -r3.xy;
  r1.z = cb5[46].x + -cb5[46].y;
  r1.z = saturate(abs(v1.x) * r1.z + cb5[46].y);
  r2.xz = r1.zz * r2.xz + r3.xy;
  r3.xyzw = r6.xyzw + r2.xzxz;
  r4.xyzw = r4.xyzw + r2.xzxz;
  r2.x = t2.SampleLevel(s2_s, r3.zw, r1.w).y;
  r2.z = t2.SampleLevel(s2_s, r3.xy, r1.w).y;
  r1.w = 0.75 * r1.w;
  r2.x = r2.x + -r2.z;
  r2.x = r1.z * r2.x + r2.z;
  r2.z = t2.SampleLevel(s2_s, r4.zw, r1.w).y;
  r1.w = t2.SampleLevel(s2_s, r4.xy, r1.w).y;
  r2.z = r2.z + -r1.w;
  r1.z = r1.z * r2.z + r1.w;
  r1.z = r2.x + r1.z;
  r1.w = log2(r1.z);
  r1.z = cmp(0 >= r1.z);
  r1.w = cb5[47].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * r2.y;
  r1.z = r1.z ? 0 : r1.w;
  r1.z = -r0.z * r1.z + 1;
  r0.z = r1.z / r0.z;
  r0.z = cb5[48].x + -r0.z;
  r0.z = 1 + r0.z;
  r1.z = v1.z * 0.5 + 0.5;
  r1.z = saturate(r1.z * cb5[34].w + cb5[35].z);
  r0.z = saturate(r0.z * cb5[48].y + r1.z);
  r0.y = r0.z * r0.y;
  r0.x = r0.x * r0.w + -r0.y;
  r0.x = r1.x * r0.x + r0.y;
  r0.y = 1 + -r1.y;
  r0.z = saturate(cb5[42].x * r1.y);
  r0.y = saturate(cb5[42].w * r0.y);
  r0.y = r0.z * r0.y;
  r0.x = saturate(r0.y * r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = v4.x * cb3[11].y + cb0[11].x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}