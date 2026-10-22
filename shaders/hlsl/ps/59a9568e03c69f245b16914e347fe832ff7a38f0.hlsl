// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[15];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[188];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : TEXCOORD4,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v6.z;
  r1.y = 1;
  r1.xy = v6.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb5[8].xx * v4.xy;
  r0.w = cb5[8].y + cb0[143].y;
  r4.xy = t4.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[8].zzz * r5.xyz + r4.xyz;
  r5.xy = t5.SampleBias(s2_s, r1.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[8].www * r6.xyz + r5.xyz;
  r5.xyz = cb5[9].xxx * r4.xyz + r5.xyz;
  r0.w = dot(v2.yyy, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = r0.www * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r2.www * r0.xyz;
  r3.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r3.w = sqrt(r3.w);
  r5.xyz = -cb4[5].xyz / r3.www;
  r3.w = dot(r5.yzx, r4.xyz);
  r3.w = 1 + r3.w;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r5.w = dot(r6.xyz, r6.xyz);
  r5.w = sqrt(r5.w);
  r6.xyz = r6.xyz / r5.www;
  r5.x = saturate(dot(-r6.xyz, r5.xyz));
  r5.y = 1 + -cb3[1].x;
  r5.x = saturate(r5.x + r5.y);
  r3.w = r5.x * r3.w;
  r5.x = dot(r4.zxy, r2.xyz);
  r5.x = max(0, r5.x);
  r5.x = 1 + -r5.x;
  r5.x = max(9.99999975e-005, abs(r5.x));
  r5.x = log2(r5.x);
  r5.z = cb3[1].y * r5.x;
  r5.z = exp2(r5.z);
  r5.w = 1 + -cb3[0].w;
  r5.z = r5.z * r5.w + cb3[0].w;
  r5.w = cmp(r5.z >= cb3[0].y);
  r5.w = r5.w ? 1.000000 : 0;
  r5.z = r5.w * r5.z;
  r5.w = r0.y * r2.w + 1;
  r6.w = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb3[0].x * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.w ? 0 : r5.w;
  r5.z = r5.z * r5.w;
  r5.w = -r0.y * r2.w + 1;
  r6.w = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb3[1].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.w ? 0 : r5.w;
  r5.z = r5.z * r5.w;
  r5.z = cb3[0].z * r5.z;
  r3.w = r5.z * r3.w;
  r7.xyz = cb4[4].xyz * r3.www;
  r3.w = dot(-cb4[8].xyz, -cb4[8].xyz);
  r3.w = sqrt(r3.w);
  r8.xyz = -cb4[8].xyz / r3.www;
  r3.w = dot(r8.yzx, r4.xyz);
  r3.w = 1 + r3.w;
  r5.w = saturate(dot(-r6.xyz, r8.xyz));
  r5.y = saturate(r5.w + r5.y);
  r3.w = r5.y * r3.w;
  r3.w = r3.w * r5.z;
  r5.yzw = cb4[9].xyz * r3.www;
  r5.yzw = cb4[1].yyy * r5.yzw;
  r5.yzw = r7.xyz * cb4[1].xxx + r5.yzw;
  r5.yzw = cb3[2].xyz * r5.yzw;
  r6.xyz = cb5[2].xyz * r5.yzw;
  r5.yzw = -r5.yzw * cb5[2].xyz + cb5[3].xyz;
  r5.yzw = cb5[9].yyy * r5.yzw + r6.xyz;
  r6.xyz = t6.SampleBias(s3_s, r1.zw, cb0[143].y).xyz;
  r3.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r3.www + -r6.xyz;
  r6.xyz = cb5[10].xxx * r7.xyz + r6.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[9].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb5[5].xyz * r6.xyz;
  r7.xy = cb5[10].ww * r1.zw;
  r8.xyz = t7.SampleBias(s4_s, r7.xy, cb0[143].y).xyz;
  r3.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r3.www + -r8.xyz;
  r8.xyz = cb5[11].xxx * r9.xyz + r8.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb5[10].z, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = r8.xyz * cb5[7].xyz + -r6.xyz;
  r6.xyz = r0.www * r8.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.zw = t8.SampleBias(s5_s, r1.zw, cb0[143].y).xy;
  r8.yz = cb5[11].yz + r1.zw;
  r8.x = saturate(r8.y);
  r1.zw = t9.SampleBias(s6_s, r7.xy, cb0[143].y).xy;
  r7.y = saturate(cb5[11].w + r1.z);
  r7.x = cb5[12].x + r1.w;
  r1.zw = r7.xy + -r8.zx;
  r1.zw = saturate(r0.ww * r1.zw + r8.zx);
  r0.w = cb5[12].y * r5.x;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb5[12].z * r0.w;
  r3.w = saturate(cb5[13].x + v1.z);
  r0.w = r3.w * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb5[13].y * r0.w);
  r7.xy = -cb0[129].xy + v6.xy;
  r7.zw = cb0[152].xx + r7.xy;
  r7.zw = (uint2)r7.zw;
  r3.w = (uint)r7.w << 1;
  r3.w = (int)r3.w + (int)r7.z;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r7.xy = float2(0.015625,0.015625) * r7.xy;
  r5.x = t10.SampleBias(s7_s, r7.xy, cb0[143].y).x;
  r3.w = r5.x + r3.w;
  r3.w = cb5[13].z * r3.w;
  r3.w = 0.166666672 * r3.w;
  r5.x = cmp(cb0[31].w < 1);
  r6.w = r1.x * cb0[65].x + cb0[65].y;
  r7.x = r1.x * cb0[65].z + -cb0[65].w;
  r7.x = 1 / r7.x;
  r6.w = r7.x + r6.w;
  r5.x = r5.x ? r1.y : r6.w;
  r5.x = r5.x / cb5[13].w;
  r6.w = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = cb5[14].x * r5.x;
  r5.x = exp2(r5.x);
  r5.x = min(1, r5.x);
  r5.x = cb5[14].y * r5.x;
  r5.x = max(1, r5.x);
  r5.x = r6.w ? 1 : r5.x;
  r3.w = r3.w * r5.x + r1.y;
  r3.w = r1.x / r3.w;
  r3.w = min(v6.z, r3.w);
  r5.x = cmp(0.00100000005 < abs(v3.w));
  r7.xy = floor(v6.xy);
  r6.w = dot(r7.xy, float2(347.834503,3343.28369));
  r6.w = cos(r6.w);
  r6.w = 1000 * r6.w;
  r6.w = frac(r6.w);
  r7.x = cmp(v3.w < 0);
  r7.y = 1 + v3.w;
  r7.y = cmp(r6.w < r7.y);
  r6.w = cmp(v3.w < r6.w);
  r6.w = r7.x ? r7.y : r6.w;
  r6.w = cmp((int)r6.w == 0);
  r5.x = r5.x ? r6.w : 0;
  if (r5.x != 0) discard;
  r6.xyz = min(float3(1,1,1), r6.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r7.xyzw = t3.Sample(s0_s, v5.zw).xyzw;
  r8.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r7.xyzw = saturate(r7.xyzw * cb2[1].xyzw + r8.xyzw);
  r7.xyzw = r7.xyzw * r7.xyzw;
  o5.xyzw = cb2[0].xyzw * r7.xyzw;
  r1.w = 0.0799999982 * r0.w;
  r7.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r7.xyz = r1.zzz * r7.xyz + r1.www;
  r8.xyz = -r6.xyz * r1.zzz + r6.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.www ? r9.xyz : r8.xyz;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.x = r1.w * 2.04040003 + -0.332399994;
  r5.x = r1.w * -4.79510021 + r5.x;
  r1.w = r1.w * 2.75519991 + r5.x;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r9.xy = float2(1,0.5) * v5.xy;
  r9.zw = v5.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t1.Sample(s0_s, r9.xy).xyzw;
  r9.xyzw = t1.Sample(s0_s, r9.zw).xyzw;
  r5.x = r9.w * 0.00392156886 + r10.w;
  r5.x = -0.00196078443 + r5.x;
  r5.x = r5.x * cb2[4].w + cb2[6].w;
  r10.xyz = r10.xyz * r10.xyz;
  r10.xyz = r10.xyz * cb2[4].xyz + cb2[6].xyz;
  r5.x = exp2(r5.x);
  r5.x = -0.0185813606 + r5.x;
  r9.xyzw = r9.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r4.w = dot(r9.xyzw, r4.xyzw);
  r4.w = max(0, r4.w);
  r4.w = r5.x * r4.w;
  r9.xyz = r4.www * r10.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r10.xyzw = t2.Sample(s0_s, v5.xy).xyzw;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r11.x = r10.w * r10.w;
    r4.w = dot(r10.xyz, r10.xyz);
    r4.w = rsqrt(r4.w);
    r10.xyz = r10.xyz * r4.www;
    r4.w = -r10.w * r10.w + 1;
    r4.w = -r4.w * r4.w + 1;
    r0.xyz = r0.zxy * r2.www + -r10.xyz;
    r12.xyz = r4.www * r0.xyz + r10.xyz;
    r0.x = saturate(dot(r10.yzx, r4.xyz));
    r0.y = 1 + -r0.x;
    r11.y = r4.w * r0.y + r0.x;
  } else {
    r12.xyz = r4.zxy;
    r11.xy = float2(1,1);
  }
  r10.x = t0[0].val[0/4];
  r10.y = t0[0].val[0/4+1];
  r10.z = t0[0].val[0/4+2];
  r10.w = t0[0].val[0/4+3];
  r12.w = 1;
  r0.x = dot(r10.xyzw, r12.xyzw);
  r10.x = t0[1].val[0/4];
  r10.y = t0[1].val[0/4+1];
  r10.z = t0[1].val[0/4+2];
  r10.w = t0[1].val[0/4+3];
  r0.y = dot(r10.xyzw, r12.xyzw);
  r10.x = t0[2].val[0/4];
  r10.y = t0[2].val[0/4+1];
  r10.z = t0[2].val[0/4+2];
  r10.w = t0[2].val[0/4+3];
  r0.z = dot(r10.xyzw, r12.xyzw);
  r10.xyzw = r12.xyzz * r12.yzzx;
  r13.x = t0[3].val[0/4];
  r13.y = t0[3].val[0/4+1];
  r13.z = t0[3].val[0/4+2];
  r13.w = t0[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r10.xyzw);
  r14.x = t0[4].val[0/4];
  r14.y = t0[4].val[0/4+1];
  r14.z = t0[4].val[0/4+2];
  r14.w = t0[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r10.xyzw);
  r14.x = t0[5].val[0/4];
  r14.y = t0[5].val[0/4+1];
  r14.z = t0[5].val[0/4+2];
  r14.w = t0[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r10.xyzw);
  r2.w = r12.y * r12.y;
  r2.w = r12.x * r12.x + -r2.w;
  r10.x = t0[6].val[0/4];
  r10.y = t0[6].val[0/4+1];
  r10.z = t0[6].val[0/4+2];
  r0.xyz = r13.xyz + r0.xyz;
  r0.xyz = r10.xyz * r2.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r2.w = r11.x * r11.y;
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r2.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r9.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r0.xyz = r9.xyz * r0.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r5.xyz = max(float3(0,0,0), r5.yzw);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r1.x = -r3.w * r1.y + r1.x;
    r1.x = r1.x / r3.w;
    r2.xyz = r2.xyz * r1.xxx + r3.xyz;
    r3.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r3.xyz = cmp(r8.xyz < abs(r3.xyz));
    r1.x = (int)r3.y | (int)r3.x;
    r1.x = (int)r3.z | (int)r1.x;
    r1.y = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r2.xyz = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r1.xxx ? r2.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r7.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r2.w * r1.w;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r1.z;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r6.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r3.w;
  return;
}