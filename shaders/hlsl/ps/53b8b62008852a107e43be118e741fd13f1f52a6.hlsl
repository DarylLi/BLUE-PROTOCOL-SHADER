// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[49];
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
  float4 v0 : TEXCOORD0,
  float3 v1 : PARTICLE_LIGHTING_OFFSET0,
  float w1 : TEXCOORD6,
  float4 v2 : TANGENTX0,
  float4 v3 : TANGENTZ0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z / cb5[21].z;
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
  r1.x = cb5[17].x * r0.w;
  r2.x = v0.x;
  r1.y = cb5[19].z * v0.y + cb5[19].w;
  r2.y = cb5[20].x * r1.y;
  r1.zw = cb5[2].xy * r2.xy;
  r2.xy = r1.zw / cb5[21].yy;
  r2.xy = r1.xx * cb5[19].xy + r2.xy;
  r2.z = cb5[20].z * r0.w;
  r0.w = cb5[32].w * r0.w;
  r3.xy = r0.ww * cb5[19].xy + r1.zw;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r0.w = t1.SampleBias(s1_s, r3.xy, cb1[143].y).x;
  r2.zw = r2.zz * cb5[19].xy + r1.zw;
  r1.zw = r1.zw / cb5[20].yy;
  r1.xz = r1.xx * cb5[19].xy + r1.zw;
  r3.xy = t0.SampleBias(s0_s, r2.zw, cb1[143].y).xy;
  r1.w = t1.SampleBias(s1_s, r2.zw, cb1[143].y).x;
  r2.zw = r3.xy * float2(2,2) + float2(-1,-1);
  r2.zw = float2(0.200000003,0.200000003) * r2.zw;
  r3.xy = r2.zw * r0.yy + r2.xy;
  r0.xy = r2.zw * r0.xx + r2.xy;
  r0.xy = t0.SampleBias(s0_s, r0.xy, cb1[143].y).xy;
  r4.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = t0.SampleBias(s0_s, r3.xy, cb1[143].y).xy;
  r3.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r3.xy, r3.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r3.z = sqrt(r0.x);
  r0.x = dot(r4.xy, r4.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r4.z = sqrt(r0.x);
  r3.xyz = -r4.xyz + r3.xyz;
  r0.xyz = r0.zzz * r3.xyz + r4.xyz;
  r3.xyz = r0.xyz + r0.xyz;
  r0.xyz = -r0.xyz * float3(2,2,2) + float3(0,0,1);
  r0.xyz = cb5[21].www * r0.xyz + r3.xyz;
  r0.xyz = float3(-1,-1,1) * r0.xyz;
  r2.x = cb1[142].z / cb5[20].w;
  r2.y = 0.5 + r2.x;
  r2.x = frac(r2.x);
  r3.xy = r2.zw * r2.xx + r1.xz;
  r3.xy = t0.SampleBias(s0_s, r3.xy, cb1[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r2.x = frac(r2.y);
  r1.xz = r2.zw * r2.xx + r1.xz;
  r2.x = r2.x + r2.x;
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
  r2.yzw = r4.xyz + -r3.xyz;
  r1.x = max(1, r2.x);
  r1.z = min(1, r2.x);
  r1.z = r1.z + r1.z;
  r1.x = -1 + r1.x;
  r1.x = r1.x + r1.x;
  r1.xz = min(float2(1,1), r1.xz);
  r1.x = 1 + -r1.x;
  r1.x = r1.x * r1.z;
  r2.xyz = r1.xxx * r2.yzw + r3.xyz;
  r3.xyz = r2.xyz + r2.xyz;
  r2.xyz = -r2.xyz * float3(2,2,2) + float3(0,0,1);
  r2.xyz = cb5[21].xxx * r2.xyz + r3.xyz;
  r2.w = 1 + r2.z;
  r1.x = dot(r2.xyw, r0.xyz);
  r1.z = 1 + r2.z;
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = r2.xyw * r1.xxx + -r0.xyz;
  r2.xyz = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb5[22].xxx * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz * cb1[138].www + cb1[138].xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r2.xyz = v3.zxy * v2.yzx;
  r2.xyz = v3.yzx * v2.zxy + -r2.xyz;
  r2.xyz = v3.www * r2.xyz;
  r2.xyz = r2.xyz * r0.yyy;
  r2.xyz = r0.xxx * v2.xyz + r2.xyz;
  r0.xyz = r0.zzz * v3.xyz + r2.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r1.x = cb2[4].w * cb1[141].w;
  r0.xyz = r1.xxx * r0.xyz;
  r2.xyzw = cb1[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb1[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb1[46].xyzw + r2.xyzw;
  r2.xyzw = cb1[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r1.x = dot(-r2.xyz, -r2.xyz);
  r1.x = rsqrt(r1.x);
  r3.xyz = -r2.xyz * r1.xxx;
  r1.xz = -cb1[70].xy + r2.xy;
  r1.xz = r1.xz / cb5[31].yy;
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.x = log2(r0.x);
  r0.y = cb5[29].w * r0.x;
  r0.x = cb5[35].y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * cb5[35].w + cb5[35].z;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb5[30].x * r0.y;
  r0.y = max(9.99999975e-006, r0.y);
  r2.x = v5.z;
  r2.y = 1;
  r2.xy = v5.ww * r2.xy;
  r0.z = r2.x * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r2.x = r2.x * cb1[65].x + cb1[65].y;
  r0.z = r2.x + r0.z;
  r2.x = cmp(cb1[31].w < 1);
  r0.z = r2.x ? r2.y : r0.z;
  r0.z = 1000000 + -r0.z;
  r0.y = saturate(r0.z / r0.y);
  r0.y = 1 + -r0.y;
  r0.y = -r0.y * cb5[30].y + 1;
  r2.xy = cb1[142].zz * cb5[30].ww + r1.xz;
  r1.xz = cb1[142].zz * cb5[31].ww + r1.xz;
  r1.x = t1.SampleBias(s1_s, r1.xz, cb1[143].y).x;
  r1.z = t1.SampleBias(s1_s, r2.xy, cb1[143].y).x;
  r1.x = r1.z * r1.x;
  r1.x = cb5[32].x * r1.x;
  r1.z = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb5[32].y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.z ? 0 : r1.x;
  r0.y = r0.y / r1.x;
  r0.y = cb5[32].z + -r0.y;
  r0.y = 1 + r0.y;
  r0.y = 1 + -r0.y;
  r1.x = 1 + -r0.w;
  r0.w = dot(r1.ww, r0.ww);
  r1.z = 1 + -r1.w;
  r1.w = cmp(r1.w >= 0.5);
  r1.z = r1.z + r1.z;
  r1.x = -r1.z * r1.x + 1;
  r0.w = r1.w ? r1.x : r0.w;
  r1.x = cb4[2].x * cb1[142].z;
  r1.x = cb5[33].x * r1.x;
  r1.x = 6.28318548 * r1.x;
  r1.x = sin(r1.x);
  r1.x = r1.x * 0.5 + 0.5;
  r1.x = r1.x * cb5[33].y + cb5[33].z;
  r1.z = -r1.x + r0.w;
  r1.z = cmp(9.99999975e-006 < abs(r1.z));
  r1.w = cmp(r0.w >= r1.x);
  r1.x = cb5[33].w + r1.x;
  r1.w = r1.w ? 1.000000 : 0;
  r1.z = r1.z ? r1.w : 1;
  r1.z = cb5[34].x * r1.z;
  r1.w = cmp(r0.w >= r1.x);
  r0.w = -r1.x + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.x = r1.w ? 0 : r1.z;
  r0.w = r0.w ? r1.x : 0;
  r0.y = r0.y / r0.w;
  r0.y = 1 + -r0.y;
  r0.w = saturate(r0.z / cb5[34].z);
  r0.z = saturate(r0.z / cb5[36].y);
  r0.z = cb5[36].z * r0.z;
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb5[34].w * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r0.w ? 0 : r1.x;
  r0.y = saturate(r0.y * r0.w);
  r1.x = rsqrt(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = 1 / r1.x;
  r1.x = cb5[35].x * r1.x;
  r0.y = r1.x * r0.y;
  r0.y = r0.w ? 0 : r0.y;
  r0.w = log2(abs(r0.z));
  r0.z = cmp(0 >= abs(r0.z));
  r0.w = cb5[36].w * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.z ? 0 : r0.w;
  r0.x = saturate(r0.x * r0.z);
  r0.x = saturate(r0.y + r0.x);
  r0.y = v3.z * 0.5 + 0.5;
  r0.y = saturate(r0.y * cb5[28].w + cb5[29].z);
  r0.y = saturate(cb5[48].y * cb5[48].z + r0.y);
  r0.x = r0.y * r0.x;
  r0.y = 1 + -r1.y;
  r0.z = saturate(cb5[47].y * r1.y);
  r0.y = saturate(cb5[48].x * r0.y);
  r0.y = r0.z * r0.y;
  r0.z = r0.y * r0.x + -0.00392156886;
  r0.x = r0.y * r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.z < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = w1.x * cb3[11].y + cb0[1].y;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}