// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[47];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
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
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD15,
  float4 v3 : COLOR0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float4 v5 : TEXCOORD6,
  float4 v6 : TEXCOORD7,
  float4 v7 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = mad((int)v4.x, 36, 18);
  r0.x = t0[r0.x].val[0/4];
  r0.y = t0[r0.x].val[0/4+1];
  r0.z = t0[r0.x].val[0/4+2];
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r0.x = frac(r0.x);
  r0.x = cb1[142].z + r0.x;
  r0.x = cb3[2].x * r0.x;
  r1.x = v7.z;
  r1.yz = float2(1,0);
  r0.yz = v7.ww * r1.xy;
  r0.w = r0.y * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.y = r0.y * cb1[65].x + cb1[65].y;
  r0.y = r0.y + r0.w;
  r0.w = cmp(cb1[31].w < 1);
  r0.y = r0.w ? r0.z : r0.y;
  r0.y = 1000000 + -r0.y;
  r0.z = saturate(r0.y / cb4[19].x);
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb4[19].y * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.z ? 0 : r0.w;
  r0.w = cb4[24].w * r0.z;
  r0.z = cb4[19].z * r0.z;
  r0.z = r0.x * r0.z;
  r0.x = r0.x * r0.w;
  r2.xyzw = cb1[45].xyzw * v7.yyyy;
  r2.xyzw = v7.xxxx * cb1[44].xyzw + r2.xyzw;
  r2.xyzw = v7.zzzz * cb1[46].xyzw + r2.xyzw;
  r2.xyzw = cb1[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb1[70].xyz + r2.xyz;
  r1.xy = r3.xy / cb4[25].yy;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r4.x = dot(r1.xy, cb4[2].xy);
  r4.y = dot(r1.xy, cb4[3].xy);
  r1.xy = float2(0.5,0.5) + r4.xy;
  r4.xy = r0.xx * cb4[20].zw + r1.xy;
  r0.xw = r0.xx * cb4[24].xy + r1.xy;
  r0.xw = t1.SampleBias(s0_s, r0.xw, cb1[143].y).xy;
  r5.xy = r0.xw * float2(2,2) + float2(-1,-1);
  r0.xw = t1.SampleBias(s0_s, r4.xy, cb1[143].y).xy;
  r4.xy = r0.xw * float2(2,2) + float2(-1,-1);
  r0.x = dot(r4.xy, r4.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r4.z = sqrt(r0.x);
  r0.x = dot(r5.xy, r5.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r5.z = sqrt(r0.x);
  r4.xyz = r5.xyz + r4.xyz;
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[25].zzz * r5.xyz + r4.xyz;
  r4.xyz = float3(-1,-1,1) * r4.xyz;
  r0.xw = r3.xy / cb4[21].yy;
  r0.xw = float2(-0.5,-0.5) + r0.xw;
  r1.x = dot(r0.xw, cb4[2].xy);
  r1.y = dot(r0.xw, cb4[3].xy);
  r0.xw = float2(0.5,0.5) + r1.xy;
  r1.xy = r0.zz * cb4[20].zw + r0.xw;
  r0.xz = r0.zz * cb4[24].xy + r0.xw;
  r0.w = cb4[22].w + cb1[143].y;
  r1.xy = t1.SampleBias(s0_s, r1.xy, r0.w).xy;
  r0.xz = t1.SampleBias(s0_s, r0.xz, r0.w).xy;
  r5.xy = r0.xz * float2(2,2) + float2(-1,-1);
  r6.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r6.xy, r6.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r6.z = sqrt(r0.x);
  r0.x = dot(r5.xy, r5.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r5.z = sqrt(r0.x);
  r0.xzw = r6.xyz + r5.xyz;
  r5.xyz = float3(0,0,1) + -r0.xzw;
  r5.xyz = cb4[24].zzz * r5.xyz + r0.xzw;
  r5.w = 1 + r5.z;
  r0.x = dot(r5.xyw, r4.xyz);
  r0.z = 1 + r5.z;
  r4.xyz = r0.zzz * r4.xyz;
  r0.xzw = r5.xyw * r0.xxx + -r4.xyz;
  r4.xyz = float3(0,0,1) + -r0.xzw;
  r0.xzw = cb4[25].www * r4.xyz + r0.xzw;
  r1.x = cb4[17].x * cb1[142].z;
  r1.w = -0.100000001 * r1.x;
  r4.xyz = r3.xyz / cb4[17].zzz;
  r5.xy = cb4[17].ww * r4.yx;
  r5.z = -r4.z;
  r1.xyzw = r5.xzyz + r1.zwzw;
  r1.xy = t1.SampleBias(s0_s, r1.xy, cb1[143].y).xy;
  r1.zw = t1.SampleBias(s0_s, r1.zw, cb1[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r1.xy, r1.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.z = sqrt(r1.w);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = float3(0,0,1) + -r1.xyz;
  r5.xyz = -cb1[67].xyz + r3.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r2.w = r1.w / cb4[18].x;
  r1.w = r1.w / cb4[46].y;
  r3.z = log2(r2.w);
  r2.w = cmp(0 >= r2.w);
  r3.z = cb4[18].y * r3.z;
  r3.z = exp2(r3.z);
  r3.z = min(1, r3.z);
  r3.w = 1 + -cb4[18].z;
  r3.z = r3.z * r3.w;
  r2.w = r2.w ? 0 : r3.z;
  r2.w = cb4[18].z + r2.w;
  r1.xyz = r2.www * r4.xyz + r1.xyz;
  r0.xzw = -r1.xyz + r0.xzw;
  r2.w = v1.z * 0.5 + 0.5;
  r2.w = saturate(r2.w * cb4[26].x + cb4[26].w);
  r0.xzw = r2.www * r0.xzw + r1.xyz;
  r0.xzw = r0.xzw * cb1[138].www + cb1[138].xyz;
  r1.x = dot(r0.xzw, r0.xzw);
  r1.x = rsqrt(r1.x);
  r0.xzw = r1.xxx * r0.xzw;
  r1.xyz = v1.zxy * v0.yzx;
  r1.xyz = v1.yzx * v0.zxy + -r1.xyz;
  r1.xyz = v1.www * r1.xyz;
  r1.xyz = r1.xyz * r0.zzz;
  r1.xyz = r0.xxx * v0.xyz + r1.xyz;
  r0.xzw = r0.www * v1.xyz + r1.xyz;
  r1.x = dot(r0.xzw, r0.xzw);
  r1.x = rsqrt(r1.x);
  r0.xzw = r1.xxx * r0.xzw;
  r1.x = dot(-r2.xyz, -r2.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = -r2.xyz * r1.xxx;
  r0.x = dot(r0.xzw, r1.xyz);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.x = log2(r0.x);
  r0.z = cb4[27].x * r0.x;
  r0.x = cb4[33].z * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * cb4[34].x + cb4[33].w;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb4[27].y * r0.z;
  r0.z = max(9.99999975e-006, r0.z);
  r0.z = saturate(r0.y / r0.z);
  r0.z = 1 + -r0.z;
  r0.z = -r0.z * cb4[27].z + 1;
  r1.xy = r3.xy / cb4[28].zz;
  r2.xy = r3.xy / cb4[31].xx;
  r2.zw = cb1[142].zz * cb4[28].xx + r1.xy;
  r1.xy = cb1[142].zz * cb4[29].xx + r1.xy;
  r0.w = t2.SampleBias(s1_s, r1.xy, cb1[143].y).y;
  r1.x = t2.SampleBias(s1_s, r2.zw, cb1[143].y).x;
  r0.w = r1.x * r0.w;
  r0.w = cb4[29].y * r0.w;
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb4[29].z * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r0.w ? 0 : r1.x;
  r0.z = r0.z / r0.w;
  r0.z = 1 + -r0.z;
  r0.w = cb1[142].z * cb4[29].w + cb4[30].y;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r1.x, r3.x);
  r0.w = 1 + r3.x;
  r1.x = 1 + r1.x;
  r1.y = r0.w * 0.5 + -0.5;
  r0.w = cmp(r0.w >= 1);
  r0.w = r0.w ? 1.000000 : 0;
  r1.y = cmp(9.99999975e-006 < abs(r1.y));
  r0.w = r1.y ? r0.w : 1;
  r1.y = 0.5 * r1.x;
  r1.x = -r1.x * 0.5 + 1;
  r0.w = r1.y * r0.w;
  r0.w = r0.w * r1.x;
  r0.z = cb4[30].z * r0.w + r0.z;
  r0.z = 1 + -r0.z;
  r3.z = 0;
  r0.w = cb4[31].y * cb1[142].z;
  r3.xy = float2(0.100000001,6.28318548) * r0.ww;
  r2.zw = r3.xz + r2.xy;
  r0.w = t2.SampleBias(s1_s, r2.xy, cb1[143].y).x;
  r1.z = sin(r3.y);
  r1.z = r1.z * 0.5 + 0.5;
  r1.z = r1.z * cb4[31].z + cb4[31].w;
  r2.x = t2.SampleBias(s1_s, r2.zw, cb1[143].y).x;
  r2.y = 1 + -r2.x;
  r2.x = dot(r0.ww, r2.xx);
  r2.z = 1 + -r0.w;
  r0.w = cmp(r0.w >= 0.5);
  r2.z = r2.z + r2.z;
  r2.y = -r2.z * r2.y + 1;
  r0.w = r0.w ? r2.y : r2.x;
  r2.x = r0.w + -r1.z;
  r2.x = cmp(9.99999975e-006 < abs(r2.x));
  r2.y = cmp(r0.w >= r1.z);
  r1.z = cb4[32].x + r1.z;
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.x ? r2.y : 1;
  r2.x = cb4[32].y * r2.x;
  r2.y = cmp(r0.w >= r1.z);
  r0.w = -r1.z + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.z = r2.y ? 0 : r2.x;
  r0.w = r0.w ? r1.z : 0;
  r0.z = r0.z / r0.w;
  r0.z = 1 + -r0.z;
  r0.w = saturate(r0.y / cb4[32].w);
  r0.y = saturate(r0.y / cb4[34].z);
  r0.y = cb4[34].w * r0.y;
  r1.z = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.z = cb4[33].x * r1.z;
  r1.z = exp2(r1.z);
  r0.w = r0.w ? 0 : r1.z;
  r0.z = saturate(r0.z * r0.w);
  r1.z = rsqrt(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.z = 1 / r1.z;
  r1.z = cb4[33].y * r1.z;
  r0.z = r1.z * r0.z;
  r0.z = r0.z * r1.y;
  r1.yz = float2(1,1) + -v3.yw;
  r0.z = r1.y * r0.z;
  r0.z = r0.w ? 0 : r0.z;
  r0.w = log2(r1.w);
  r1.y = cmp(0 >= r1.w);
  r0.w = cb4[46].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r1.y ? 0 : r0.w;
  r1.y = log2(r1.x);
  r1.x = cmp(0 >= r1.x);
  r1.y = cb4[35].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = 1 + -r1.y;
  r1.x = r1.x ? 1 : r1.y;
  r1.y = log2(abs(r0.y));
  r0.y = cmp(0 >= abs(r0.y));
  r1.xy = cb4[35].zx * r1.xy;
  r1.y = exp2(r1.y);
  r0.y = r0.y ? 0 : r1.y;
  r0.x = r0.x * r0.y + r1.x;
  r0.y = 1 + -r0.x;
  r0.x = saturate(r0.w * r0.y + r0.x);
  r0.x = saturate(r0.z + r0.x);
  r0.y = log2(r1.z);
  r0.z = cmp(0 >= r1.z);
  r0.y = cb4[46].x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = 1 + -r0.y;
  r0.y = r0.z ? 1 : r0.y;
  r0.x = r0.y * r0.x;
  r0.x = max(0, r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = v5.x * cb2[11].y + cb0[1].x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}