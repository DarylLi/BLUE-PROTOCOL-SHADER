// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD3,
  float3 v3 : PARTICLE_LIGHTING_OFFSET0,
  float w3 : TEXCOORD6,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r1.y = cb5[22].z * v2.y + cb5[22].w;
  r2.y = cb5[23].x * r1.y;
  r2.xz = v2.xx;
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
  r3.xyzw = cb1[45].xyzw * v5.yyyy;
  r3.xyzw = v5.xxxx * cb1[44].xyzw + r3.xyzw;
  r3.xyzw = v5.zzzz * cb1[46].xyzw + r3.xyzw;
  r3.xyzw = cb1[47].xyzw + r3.xyzw;
  r1.xzw = r3.xyz / r3.www;
  r0.w = -cb1[70].z + r1.w;
  r0.w = -cb5[25].y + r0.w;
  r0.w = abs(r0.w) / cb5[25].z;
  r0.w = -r0.w * cb5[25].w + 1;
  r2.x = -cb5[23].x * r1.y + 1;
  r2.w = -r2.x * r0.w + 1;
  r0.w = cb4[2].x * cb1[142].z;
  r0.w = cb5[26].z * r0.w;
  r2.xy = cb5[5].xy * r0.ww;
  r3.xy = r2.zw * cb5[3].xy + r2.xy;
  r2.zw = r2.zw * cb5[4].xy + float2(0.200000003,0.200000003);
  r2.xy = r2.xy * float2(0.699999988,0.699999988) + r2.zw;
  r0.w = t1.SampleBias(s1_s, r2.xy, cb1[143].y).x;
  r4.w = r0.w * 2 + -1;
  r4.yz = float2(1,0);
  r2.zw = cb5[27].zz * r4.zw;
  r0.w = 0.5 + cb1[142].z;
  r0.w = frac(r0.w);
  r3.zw = r2.zw * r0.ww + r3.xy;
  r3.zw = t1.SampleBias(s1_s, r3.zw, cb1[143].y).xy;
  r5.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r3.z = dot(r5.xy, r5.xy);
  r3.z = 1 + -r3.z;
  r3.z = max(0, r3.z);
  r5.z = sqrt(r3.z);
  r3.z = frac(cb1[142].z);
  r3.xy = r2.zw * r3.zz + r3.xy;
  r3.zw = r2.zw * r3.zz + r2.xy;
  r2.xy = r2.zw * r0.ww + r2.xy;
  r0.w = r0.w + r0.w;
  r2.xy = t1.SampleBias(s1_s, r2.xy, cb1[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r3.zw = t1.SampleBias(s1_s, r3.zw, cb1[143].y).xy;
  r6.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r3.xy = t1.SampleBias(s1_s, r3.xy, cb1[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r3.xy, r3.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r3.z = sqrt(r2.w);
  r5.xyz = r5.xyz + -r3.xyz;
  r2.w = max(1, r0.w);
  r0.w = min(1, r0.w);
  r0.w = r0.w + r0.w;
  r0.w = min(1, r0.w);
  r2.w = -1 + r2.w;
  r2.w = r2.w + r2.w;
  r2.w = min(1, r2.w);
  r2.w = 1 + -r2.w;
  r0.w = r2.w * r0.w;
  r3.xyz = r0.www * r5.xyz + r3.xyz;
  r5.xyz = r3.xyz + r3.xyz;
  r3.yzw = -r3.xyz * float3(2,2,2) + float3(0,0,1);
  r3.yzw = cb5[24].www * r3.yzw + r5.xyz;
  r3.yzw = float3(-1,-1,1) * r3.yzw;
  r2.w = dot(r2.xy, r2.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.z = sqrt(r2.w);
  r2.w = dot(r6.xy, r6.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r6.z = sqrt(r2.w);
  r2.xyz = -r6.xyz + r2.xyz;
  r2.xyz = r0.www * r2.xyz + r6.xyz;
  r5.xyz = r2.xyz + r2.xyz;
  r2.xzw = -r2.xyz * float3(2,2,2) + float3(0,0,1);
  r0.w = r3.x + -r2.y;
  r2.xyz = cb5[24].xxx * r2.xzw + r5.xyz;
  r2.w = 1 + r2.z;
  r3.x = dot(r2.xyw, r3.yzw);
  r2.z = 1 + r2.z;
  r3.yzw = r2.zzz * r3.yzw;
  r2.xyz = r2.xyw * r3.xxx + -r3.yzw;
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb5[25].xxx * r3.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r0.xyz;
  r2.w = -0.5 + r0.w;
  r0.w = r0.w * cb5[28].x + v2.x;
  r0.w = r0.w * 2 + -1;
  r0.w = 1 + -abs(r0.w);
  r0.w = r0.w * cb5[48].w + -cb5[48].w;
  r0.w = saturate(cb5[49].y + r0.w);
  r0.w = cb5[49].z * r0.w;
  r2.w = dot(r2.ww, cb5[28].zz);
  r2.w = v2.y + r2.w;
  r2.w = r2.w * cb5[29].x + -cb5[29].x;
  r2.w = saturate(cb5[29].w + r2.w);
  r3.x = cb5[30].z * r2.w;
  r2.w = -cb5[30].z * r2.w + 1;
  r2.w = cb5[31].x * r2.w + r3.x;
  r0.xyz = r2.www * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz * cb1[138].www + cb1[138].xyz;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r0.xyz = r2.xxx * r0.xyz;
  r2.xyz = v1.zxy * v0.yzx;
  r2.xyz = v1.yzx * v0.zxy + -r2.xyz;
  r2.xyz = v1.www * r2.xyz;
  r2.xyz = r2.xyz * r0.yyy;
  r2.xyz = r0.xxx * v0.xyz + r2.xyz;
  r0.xyz = r0.zzz * v1.xyz + r2.xyz;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r0.xyz = r2.xxx * r0.xyz;
  r2.x = cb2[4].w * cb1[141].w;
  r0.xyz = r2.xxx * r0.xyz;
  r2.x = dot(-r1.xzw, -r1.xzw);
  r2.x = rsqrt(r2.x);
  r1.xzw = r2.xxx * -r1.xzw;
  r0.x = dot(r0.xyz, r1.xzw);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.y = log2(r0.x);
  r0.x = 1 + -r0.x;
  r0.x = saturate(r0.x * 3 + -0.299999952);
  r0.y = cb5[32].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * cb5[33].y + cb5[33].x;
  r4.x = v5.z;
  r1.xz = v5.ww * r4.xy;
  r0.z = r1.x * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r1.x = r1.x * cb1[65].x + cb1[65].y;
  r0.z = r1.x + r0.z;
  r1.x = cmp(cb1[31].w < 1);
  r0.z = r1.x ? r1.z : r0.z;
  r0.z = 1000000 + -r0.z;
  r0.z = saturate(r0.z / cb5[33].w);
  r0.z = cb5[34].x * r0.z;
  r1.x = log2(abs(r0.z));
  r0.z = cmp(0 >= abs(r0.z));
  r1.x = cb5[34].y * r1.x;
  r1.x = exp2(r1.x);
  r0.z = r0.z ? 0 : r1.x;
  r0.y = saturate(r0.y * r0.z);
  r0.z = v1.z * 0.5 + 0.5;
  r0.z = saturate(r0.z * cb5[34].w + cb5[35].z);
  r0.z = saturate(cb5[48].x * cb5[48].y + r0.z);
  r0.y = r0.z * r0.y;
  r0.x = r0.x * r0.w + -r0.y;
  r0.x = r2.w * r0.x + r0.y;
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
  r0.y = w3.x * cb3[11].y + cb0[1].y;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}