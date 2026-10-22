// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[16];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v4.z;
  r0.y = 1;
  r0.xy = v4.ww * r0.xy;
  r0.z = r0.x * cb0[65].z + -cb0[65].w;
  r0.z = 1 / r0.z;
  r0.x = r0.x * cb0[65].x + cb0[65].y;
  r0.x = r0.x + r0.z;
  r0.z = cmp(cb0[31].w < 1);
  r0.x = r0.z ? r0.y : r0.x;
  r0.x = r0.x / cb2[8].y;
  r0.y = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.y = cb2[8].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb2[8].w * r0.y;
  r0.y = max(1, r0.y);
  r0.x = r0.x ? 1 : r0.y;
  r0.y = mad((int)v3.x, 36, 18);
  r0.y = t0[r0.y].val[0/4];
  r0.z = t0[r0.y].val[0/4+1];
  r0.w = t0[r0.y].val[0/4+2];
  r0.y = r0.y + r0.z;
  r0.y = r0.y + r0.w;
  r0.y = frac(r0.y);
  r0.y = cb0[142].z + r0.y;
  r0.y = cb1[2].x * r0.y;
  r0.y = cb2[10].z * r0.y;
  r0.zw = v2.zw + -v2.xy;
  r0.zw = cb2[11].ww * r0.zw + v2.xy;
  r0.zw = cb2[12].xx * r0.zw;
  r0.yz = r0.yy * cb2[11].yz + r0.zw;
  r0.y = t3.SampleBias(s2_s, r0.yz, cb0[143].y).x;
  r0.z = log2(r0.y);
  r0.y = cmp(0 >= r0.y);
  r0.z = cb2[12].y * r0.z;
  r0.z = exp2(r0.z);
  r0.y = r0.y ? 0 : r0.z;
  r0.z = cb2[12].z * r0.y;
  r0.z = cb0[142].z * cb2[10].y + r0.z;
  r0.z = 6.28318548 * r0.z;
  r0.z = sin(r0.z);
  r0.z = r0.z * 0.5 + 0.5;
  r0.z = r0.z * cb2[13].x + cb2[12].w;
  r0.z = max(cb2[13].z, r0.z);
  r0.z = min(cb2[13].y, r0.z);
  r0.z = cb2[13].w * r0.z;
  r0.z = cb1[3].y * r0.z;
  r0.y = r0.z * r0.y;
  r0.zw = cb2[7].xz * v2.xy + cb2[7].yw;
  r1.xy = r0.zw / cb2[9].zz;
  r2.x = cb2[9].w + r1.x;
  r2.y = cb2[10].x + r1.y;
  r1.xyz = t2.SampleBias(s1_s, r2.xy, cb0[143].y).xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.xyz);
  r1.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r2.xyz = float3(0.577350259,0.577350259,0.577350259) * r1.zxy;
  r2.xyz = r1.zxy * float3(0.577350259,0.577350259,0.577350259) + -r2.zxy;
  sincos(cb2[9].y, r3.x, r4.x);
  r2.xyz = r3.xxx * r2.xyz;
  r1.xyz = r1.xyz * r4.xxx + r2.xyz;
  r1.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r1.xyz = cb2[2].xyz * r1.xyz;
  r1.xyz = r1.xyz * r0.yyy;
  r2.xyz = r1.xyz * r0.xxx;
  r1.xyz = -r0.xxx * r1.xyz + cb2[4].xyz;
  r1.xyz = cb2[14].xxx * r1.xyz + r2.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  o0.xyz = cb0[135].yyy * r1.xyz;
  r1.xyzw = t4.SampleBias(s3_s, r0.zw, cb0[143].y).xyzw;
  r1.w = saturate(r1.w);
  o0.w = r1.w;
  r0.xy = t1.SampleBias(s0_s, r0.zw, cb0[143].y).xy;
  r0.zw = t5.SampleBias(s4_s, r0.zw, cb0[143].y).xy;
  r2.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r2.xy, r2.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r2.z = sqrt(r0.x);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb2[8].xxx * r3.xyz + r2.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r2.xyz = r2.xyz * r0.xxx;
  r3.xyz = v1.zxy * v0.yzx;
  r3.xyz = v1.yzx * v0.zxy + -r3.xyz;
  r3.xyz = v1.www * r3.xyz;
  r3.xyz = r3.xyz * r2.yyy;
  r2.xyw = r2.xxx * v0.xyz + r3.xyz;
  r2.xyz = r2.zzz * v1.xyz + r2.xyw;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r2.xyz = r2.xyz * r0.xxx;
  o1.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o1.w = r1.w;
  r0.x = saturate(cb2[15].y + r0.z);
  o2.x = saturate(r0.w);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  o2.y = saturate(cb2[15].x);
  o2.w = r1.w;
  o3.w = r1.w;
  r0.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xxx + -r1.xyz;
  r0.xyz = cb2[14].www * r0.xyz + r1.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r0.xyz);
  r0.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r1.xyz = float3(0.577350259,0.577350259,0.577350259) * r0.zxy;
  r1.xyz = r0.zxy * float3(0.577350259,0.577350259,0.577350259) + -r1.zxy;
  sincos(cb2[14].z, r2.x, r3.x);
  r1.xyz = r2.xxx * r1.xyz;
  r0.xyz = r0.xyz * r3.xxx + r1.xyz;
  r0.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r0.xyz = cb2[6].xyz * r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  o3.xyz = min(float3(1,1,1), r0.xyz);
  return;
}