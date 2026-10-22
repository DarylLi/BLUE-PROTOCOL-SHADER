// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

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

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[21];
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
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb4[10].xx * v4.xy;
  r0.w = cb4[10].y + cb0[143].y;
  r4.xy = t3.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[10].zzz * r5.xyz + r4.xyz;
  r5.xy = t4.SampleBias(s2_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[10].www * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = v2.yyy * r5.xyz + r4.xyz;
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
  r0.x = dot(-cb3[5].xyz, -cb3[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[5].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = sqrt(r0.y);
  r6.xyz = r6.xyz / r0.yyy;
  r0.y = saturate(dot(-r6.xyz, r5.xyz));
  r2.w = 1 + -cb2[1].x;
  r0.y = saturate(r2.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r4.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r3.w = cb2[1].y * r0.y;
  r3.w = exp2(r3.w);
  r5.x = 1 + -cb2[0].w;
  r3.w = r3.w * r5.x + cb2[0].w;
  r5.x = cmp(r3.w >= cb2[0].y);
  r5.x = r5.x ? 1.000000 : 0;
  r3.w = r5.x * r3.w;
  r5.x = r0.z * r0.w + 1;
  r5.y = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = cb2[0].x * r5.x;
  r5.x = exp2(r5.x);
  r5.x = min(1, r5.x);
  r5.x = r5.y ? 0 : r5.x;
  r3.w = r5.x * r3.w;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r3.w * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r5.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r7.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r6.xyz, r7.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb3[9].xyz * r0.xxx;
  r0.xzw = cb3[1].yyy * r0.xzw;
  r0.xzw = r5.xyz * cb3[1].xxx + r0.xzw;
  r2.w = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r5.x = r1.x * cb0[65].z + -cb0[65].w;
  r5.x = 1 / r5.x;
  r3.w = r5.x + r3.w;
  r2.w = r2.w ? r1.y : r3.w;
  r3.w = r2.w / cb4[11].x;
  r5.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb4[11].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = cb4[11].z * r3.w;
  r3.w = max(1, r3.w);
  r3.w = r5.x ? 1 : r3.w;
  r5.xy = r1.zw / cb4[12].yy;
  r5.xy = cb4[12].zw + r5.xy;
  r5.xyz = t5.SampleBias(s3_s, r5.xy, cb0[143].y).xyz;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[12].x, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r5.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb4[2].xyz * r5.xyz;
  r6.xy = cb4[13].yy * v4.xy;
  r5.w = t6.SampleBias(s4_s, r6.xy, cb0[143].y).x;
  r6.x = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb4[13].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = cb4[13].w * r5.w;
  r5.w = r6.x ? 0 : r5.w;
  r5.w = cb0[142].z * cb4[13].x + r5.w;
  r5.w = 6.28318548 * r5.w;
  r5.w = sin(r5.w);
  r5.w = r5.w * 0.5 + 0.5;
  r5.w = r5.w * cb4[14].y + cb4[14].x;
  r5.w = max(cb4[14].w, r5.w);
  r5.w = min(cb4[14].z, r5.w);
  r5.w = cb4[15].x * r5.w;
  r5.w = cb3[3].y * r5.w;
  r5.xyz = r5.xyz * r5.www;
  r5.xyz = r5.xyz * r3.www;
  r3.w = 1 + -v2.y;
  r5.xyz = r5.xyz * r3.www;
  r0.xzw = cb2[2].xyz * r0.xzw + r5.xyz;
  r5.xyz = cb4[4].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb4[4].xyz + cb4[5].xyz;
  r0.xzw = cb4[15].yyy * r0.xzw + r5.xyz;
  r5.xyzw = t7.SampleBias(s5_s, r1.zw, cb0[143].y).xyzw;
  r3.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r3.www + -r5.xyz;
  r5.xyz = cb4[16].xxx * r6.xyz + r5.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[15].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb4[7].xyz * r5.xyz;
  r6.xy = cb4[16].ww * r1.zw;
  r7.xyz = t8.SampleBias(s6_s, r6.xy, cb0[143].y).xyz;
  r3.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r3.www + -r7.xyz;
  r7.xyz = cb4[17].xxx * r8.xyz + r7.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb4[16].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb4[9].xyz + -r5.xyz;
  r5.xyz = v2.yyy * r7.xyz + r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r1.zw = t9.SampleBias(s7_s, r1.zw, cb0[143].y).yx;
  r1.w = saturate(cb4[17].y + r1.w);
  r6.xy = t10.SampleBias(s8_s, r6.xy, cb0[143].y).yx;
  r6.y = saturate(cb4[17].z + r6.y);
  r6.xy = r6.xy + -r1.zw;
  r1.zw = saturate(v2.yy * r6.xy + r1.zw);
  r0.y = cb4[17].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[18].x * r0.y;
  r3.w = saturate(cb4[18].z + v1.z);
  r0.y = r3.w * r0.y;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb4[18].w * r0.y);
  r3.w = r2.w / cb4[19].x;
  r6.xyz = -cb0[129].xxy + v5.xxy;
  r6.x = r6.x * cb0[130].z + -0.469999999;
  r6.x = 4.93230057 * r6.x;
  r6.x = cos(r6.x);
  r6.x = 0.899999976 + r6.x;
  r6.x = saturate(0.555555582 * r6.x);
  r6.x = cb4[19].z + -r6.x;
  r7.xy = cb0[152].xx + r6.yz;
  r7.xy = (uint2)r7.xy;
  r6.w = (uint)r7.y << 1;
  r6.w = (int)r6.w + (int)r7.x;
  r6.w = (uint)r6.w % 5;
  r6.w = (uint)r6.w;
  r6.yz = float2(0.015625,0.015625) * r6.yz;
  r6.y = t11.SampleBias(s9_s, r6.yz, cb0[143].y).x;
  r6.y = r6.w + r6.y;
  r6.y = 0.166666672 * r6.y;
  r3.w = r3.w * r6.x + r6.y;
  r3.w = saturate(-0.5 + r3.w);
  r3.w = r5.w * r3.w;
  r5.w = cb4[19].w * r6.y;
  r2.w = r2.w / cb4[20].x;
  r6.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[20].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = cb4[20].z * r2.w;
  r2.w = max(1, r2.w);
  r2.w = r6.x ? 1 : r2.w;
  r2.w = r5.w * r2.w + r1.y;
  r2.w = r1.x / r2.w;
  r2.w = min(v5.z, r2.w);
  r1.x = -r2.w * r1.y + r1.x;
  r1.x = r1.x / r2.w;
  r2.xyz = r2.xyz * r1.xxx + r3.xyz;
  r1.x = cmp(0.00100000005 < abs(v3.w));
  r3.xy = floor(v5.xy);
  r1.y = dot(r3.xy, float2(347.834503,3343.28369));
  r1.y = cos(r1.y);
  r1.y = 1000 * r1.y;
  r1.y = frac(r1.y);
  r3.x = cmp(v3.w < 0);
  r3.y = 1 + v3.w;
  r3.y = cmp(r1.y < r3.y);
  r1.y = cmp(v3.w < r1.y);
  r1.y = r3.x ? r3.y : r1.y;
  r1.y = cmp((int)r1.y == 0);
  r1.x = r1.x ? r1.y : 0;
  if (r1.x != 0) discard;
  r1.x = r3.w * v3.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r3.xyz = min(float3(1,1,1), r5.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.x = cmp(0 < cb1[20].z);
  if (r1.x != 0) {
    r1.xyw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r1.xyw = max(float3(0,0,0), r1.xyw);
    r1.xyw = min(float3(0.99000001,0.99000001,0.99000001), r1.xyw);
    r1.xyw = cb0[213].xyz * r1.xyw;
    r5.xyz = (int3)r1.xyw;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r3.w = 1 + cb0[213].w;
    r1.xyw = r1.xyw / r5.www;
    r1.xyw = frac(r1.xyw);
    r1.xyw = cb0[213].www * r1.xyw;
    r1.xyw = r5.xyz * r3.www + r1.xyw;
    r1.xyw = float3(0.5,0.5,0.5) + r1.xyw;
    r1.xyw = cb0[214].xyz * r1.xyw;
    r1.x = t1.SampleLevel(s0_s, r1.xyw, 0).x;
  } else {
    r1.x = 1;
  }
  r1.y = 0.0799999982 * r0.y;
  r5.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r5.xyz = r1.zzz * r5.xyz + r1.yyy;
  r6.xyz = -r3.xyz * r1.zzz + r3.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.y = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = r1.yyy ? r5.xyz : r6.xyz;
  r6.x = t2[0].val[0/4];
  r6.y = t2[0].val[0/4+1];
  r6.z = t2[0].val[0/4+2];
  r6.w = t2[0].val[0/4+3];
  r4.w = 1;
  r6.x = dot(r6.xyzw, r4.xyzw);
  r8.x = t2[1].val[0/4];
  r8.y = t2[1].val[0/4+1];
  r8.z = t2[1].val[0/4+2];
  r8.w = t2[1].val[0/4+3];
  r6.y = dot(r8.xyzw, r4.xyzw);
  r8.x = t2[2].val[0/4];
  r8.y = t2[2].val[0/4+1];
  r8.z = t2[2].val[0/4+2];
  r8.w = t2[2].val[0/4+3];
  r6.z = dot(r8.xyzw, r4.xyzw);
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
  r1.w = r4.y * r4.y;
  r1.w = r4.x * r4.x + -r1.w;
  r8.x = t2[6].val[0/4];
  r8.y = t2[6].val[0/4+1];
  r8.z = t2[6].val[0/4+2];
  r6.xyz = r9.xyz + r6.xyz;
  r6.xyz = r8.xyz * r1.www + r6.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = cb0[187].xyz * r6.xyz;
  r6.xyz = r6.xyz * r5.xyz;
  r8.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r6.xyz = r8.xyz * r6.xyz;
  r7.xyz = r1.yyy ? float3(0,0,0) : r7.xyz;
  r5.xyz = r7.xyz + r5.xyz;
  r1.y = cmp(0 < cb0[140].x);
  if (r1.y != 0) {
    r7.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r1.y = (int)r7.y | (int)r7.x;
    r1.y = (int)r7.z | (int)r1.y;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.xyz = r1.www ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r1.yyy ? r2.xyz : r0.xzw;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r6.xyz;
  r0.xzw = r2.xyz + r0.xzw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.y = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.y;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r1.z;
  o2.w = 0.505882382;
  o2.y = r0.y;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r2.w;
  return;
}