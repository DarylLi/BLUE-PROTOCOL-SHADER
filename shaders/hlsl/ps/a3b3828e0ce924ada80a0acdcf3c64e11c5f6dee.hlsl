// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[15];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[215];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v3.z;
  r1.y = 1;
  r1.xy = v3.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v3.yyyy;
  r2.xyzw = v3.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v3.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb4[8].xx * v2.xy;
  r0.w = cb4[8].y + cb0[143].y;
  r4.xy = t3.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[8].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r5.xyz = t4.SampleBias(s2_s, r1.zw, cb0[143].y).xyz;
  r0.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r0.xxx + -r5.xyz;
  r5.xyz = cb4[9].yyy * r6.xyz + r5.xyz;
  r0.x = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[9].x, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb4[2].xyz * r5.xyz;
  r0.x = dot(-cb3[5].xyz, -cb3[5].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb3[5].xyz / r0.xxx;
  r0.x = dot(r6.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r7.xyz, r7.xyz);
  r0.y = sqrt(r0.y);
  r7.xyz = r7.xyz / r0.yyy;
  r0.y = saturate(dot(-r7.xyz, r6.xyz));
  r2.w = 1 + -cb2[1].x;
  r0.y = saturate(r2.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r4.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb2[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb2[0].w;
  r2.x = r2.x * r2.y + cb2[0].w;
  r2.y = cmp(r2.x >= cb2[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb2[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r6.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r7.xyz, r6.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb3[9].xyz * r0.xxx;
  r0.xzw = cb3[1].yyy * r0.xzw;
  r0.xzw = r2.xyz * cb3[1].xxx + r0.xzw;
  r0.xzw = r5.xyz * r0.xzw;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.x = r1.x / cb4[9].z;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb4[9].w * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb4[10].x * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r2.xy = r1.zw / cb4[10].ww;
  r2.xy = cb4[11].xy + r2.xy;
  r2.xyz = t5.SampleBias(s3_s, r2.xy, cb0[143].y).xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r6.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[10].z, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r2.xyz = r2.xyz * r8.xxx + r6.xyz;
  r2.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb4[4].xyz * r2.xyz;
  r1.y = t5.SampleBias(s3_s, r1.zw, cb0[143].y).w;
  r2.w = cb4[11].z * cb3[3].y;
  r1.y = r2.w * r1.y;
  r2.xyz = r2.xyz * r1.yyy;
  r2.xyz = r2.xyz * r1.xxx;
  r0.xzw = cb2[2].xyz * r0.xzw + r2.xyz;
  r2.xyz = cb4[6].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb4[6].xyz + cb4[7].xyz;
  r0.xzw = cb4[11].www * r0.xzw + r2.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r1.xy = t6.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r1.z = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb4[12].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.z ? 0 : r1.x;
  r1.x = saturate(cb4[12].y + r1.x);
  r6.x = saturate(cb4[12].z + r1.y);
  r0.y = cb4[12].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[13].x * r0.y;
  r1.y = saturate(cb4[13].z + v1.z);
  r0.y = r1.y * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r6.y = saturate(cb4[13].w * r0.y);
  r0.y = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.y = cb4[14].x * r0.y;
  r1.y = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb4[14].y * r0.y;
  r0.y = exp2(r0.y);
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r0.y = min(1, r0.y);
  r0.y = r1.y ? 0 : r0.y;
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r1.x = cmp(0 < cb1[20].z);
  if (r1.x != 0) {
    r1.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r1.xyz = max(float3(0,0,0), r1.xyz);
    r1.xyz = min(float3(0.99000001,0.99000001,0.99000001), r1.xyz);
    r1.xyz = cb0[213].xyz * r1.xyz;
    r5.xyz = (int3)r1.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r1.w = 1 + cb0[213].w;
    r1.xyz = r1.xyz / r5.www;
    r1.xyz = frac(r1.xyz);
    r1.xyz = cb0[213].www * r1.xyz;
    r1.xyz = r5.xyz * r1.www + r1.xyz;
    r1.xyz = float3(0.5,0.5,0.5) + r1.xyz;
    r1.xyz = cb0[214].xyz * r1.xyz;
    r1.x = t1.SampleLevel(s0_s, r1.xyz, 0).x;
  } else {
    r1.x = 1;
  }
  r1.y = 0.0799999982 * r6.y;
  r5.xyz = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r1.yzw = r6.xxx * r5.xyz + r1.yyy;
  r5.xyz = -r2.xyz * r6.xxx + r2.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r1.yzw = r1.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.yzw;
  r1.yzw = r1.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r1.yzw = r2.www ? r1.yzw : r5.xyz;
  r5.x = t2[0].val[0/4];
  r5.y = t2[0].val[0/4+1];
  r5.z = t2[0].val[0/4+2];
  r5.w = t2[0].val[0/4+3];
  r4.w = 1;
  r5.x = dot(r5.xyzw, r4.xyzw);
  r8.x = t2[1].val[0/4];
  r8.y = t2[1].val[0/4+1];
  r8.z = t2[1].val[0/4+2];
  r8.w = t2[1].val[0/4+3];
  r5.y = dot(r8.xyzw, r4.xyzw);
  r8.x = t2[2].val[0/4];
  r8.y = t2[2].val[0/4+1];
  r8.z = t2[2].val[0/4+2];
  r8.w = t2[2].val[0/4+3];
  r5.z = dot(r8.xyzw, r4.xyzw);
  r8.xyzw = r4.xyzz * r4.yzzx;
  r9.x = t2[3].val[0/4];
  r9.y = t2[3].val[0/4+1];
  r9.z = t2[3].val[0/4+2];
  r9.w = t2[3].val[0/4+3];
  r9.x = dot(r9.xyzw, r8.xyzw);
  r10.x = t2[4].val[0/4];
  r10.y = t2[4].val[0/4+1];
  r10.z = t2[4].val[0/4+2];
  r10.w = t2[4].val[0/4+3];
  r9.y = dot(r10.xyzw, r8.xyzw);
  r10.x = t2[5].val[0/4];
  r10.y = t2[5].val[0/4+1];
  r10.z = t2[5].val[0/4+2];
  r10.w = t2[5].val[0/4+3];
  r9.z = dot(r10.xyzw, r8.xyzw);
  r3.w = r4.y * r4.y;
  r3.w = r4.x * r4.x + -r3.w;
  r8.x = t2[6].val[0/4];
  r8.y = t2[6].val[0/4+1];
  r8.z = t2[6].val[0/4+2];
  r5.xyz = r9.xyz + r5.xyz;
  r5.xyz = r8.xyz * r3.www + r5.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[187].xyz * r5.xyz;
  r5.xyz = r5.xyz * r1.yzw;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r8.xyz = r0.yyy * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz * r0.yyy + r10.xyz;
  r8.xyz = r8.xyz * r0.yyy;
  r8.xyz = max(r8.xyz, r0.yyy);
  r5.xyz = r8.xyz * r5.xyz;
  r7.xyz = r2.www ? float3(0,0,0) : r7.xyz;
  r1.yzw = r7.xyz + r1.yzw;
  r0.xyz = max(float3(0,0,0), r0.xzw);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r0.w = (int)r7.y | (int)r7.x;
    r0.w = (int)r7.z | (int)r0.w;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r0.www ? r3.xyz : r0.xyz;
  }
  r1.yzw = cb0[145].yyy * r1.yzw + r5.xyz;
  r0.xyz = r1.yzw + r0.xyz;
  r1.yzw = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r1.yzw = frac(r1.yzw);
  r1.yzw = r1.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.yzw = r1.yzw * r1.yzz;
  r0.w = dot(r1.yzw, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r6.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}