// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

struct t10_t {
  float val[4];
};
StructuredBuffer<t10_t> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  r4.xy = t11.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[10].zzz * r5.xyz + r4.xyz;
  r5.xy = t12.SampleBias(s2_s, r1.zw, r0.w).xy;
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
  r2.w = dot(-cb3[5].xyz, -cb3[5].xyz);
  r2.w = sqrt(r2.w);
  r5.xyz = -cb3[5].xyz / r2.www;
  r2.w = dot(r5.xyz, r4.xyz);
  r2.w = 1 + r2.w;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r3.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = saturate(dot(-r6.xyz, r5.xyz));
  r4.w = 1 + -cb2[1].x;
  r3.w = saturate(r4.w + r3.w);
  r2.w = r3.w * r2.w;
  r3.w = dot(r4.xyz, r2.xyz);
  r3.w = max(0, r3.w);
  r3.w = 1 + -r3.w;
  r3.w = max(9.99999975e-005, abs(r3.w));
  r3.w = log2(r3.w);
  r5.x = cb2[1].y * r3.w;
  r5.x = exp2(r5.x);
  r5.y = 1 + -cb2[0].w;
  r5.x = r5.x * r5.y + cb2[0].w;
  r5.y = cmp(r5.x >= cb2[0].y);
  r5.y = r5.y ? 1.000000 : 0;
  r5.x = r5.y * r5.x;
  r5.y = r0.z * r0.w + 1;
  r5.z = cmp(0 >= r5.y);
  r5.y = log2(r5.y);
  r5.y = cb2[0].x * r5.y;
  r5.y = exp2(r5.y);
  r5.y = min(1, r5.y);
  r5.y = r5.z ? 0 : r5.y;
  r5.x = r5.x * r5.y;
  r5.y = -r0.z * r0.w + 1;
  r5.z = cmp(0 >= r5.y);
  r5.y = log2(r5.y);
  r5.y = cb2[1].z * r5.y;
  r5.y = exp2(r5.y);
  r5.y = min(1, r5.y);
  r5.y = r5.z ? 0 : r5.y;
  r5.x = r5.x * r5.y;
  r5.x = cb2[0].z * r5.x;
  r2.w = r5.x * r2.w;
  r5.yzw = cb3[4].xyz * r2.www;
  r2.w = dot(-cb3[8].xyz, -cb3[8].xyz);
  r2.w = sqrt(r2.w);
  r7.xyz = -cb3[8].xyz / r2.www;
  r2.w = dot(r7.xyz, r4.xyz);
  r2.w = 1 + r2.w;
  r6.x = saturate(dot(-r6.xyz, r7.xyz));
  r4.w = saturate(r6.x + r4.w);
  r2.w = r4.w * r2.w;
  r2.w = r2.w * r5.x;
  r6.xyz = cb3[9].xyz * r2.www;
  r6.xyz = cb3[1].yyy * r6.xyz;
  r5.xyz = r5.yzw * cb3[1].xxx + r6.xyz;
  r2.w = cmp(cb0[31].w < 1);
  r4.w = r1.x * cb0[65].x + cb0[65].y;
  r5.w = r1.x * cb0[65].z + -cb0[65].w;
  r5.w = 1 / r5.w;
  r4.w = r5.w + r4.w;
  r2.w = r2.w ? r1.y : r4.w;
  r4.w = r2.w / cb4[11].x;
  r5.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb4[11].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = cb4[11].z * r4.w;
  r4.w = max(1, r4.w);
  r4.w = r5.w ? 1 : r4.w;
  r6.xy = r1.zw / cb4[12].yy;
  r6.xy = cb4[12].zw + r6.xy;
  r6.xyz = t13.SampleBias(s3_s, r6.xy, cb0[143].y).xyz;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[12].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r5.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb4[2].xyz * r6.xyz;
  r7.xy = cb4[13].yy * v4.xy;
  r5.w = t14.SampleBias(s4_s, r7.xy, cb0[143].y).x;
  r6.w = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb4[13].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = cb4[13].w * r5.w;
  r5.w = r6.w ? 0 : r5.w;
  r5.w = cb0[142].z * cb4[13].x + r5.w;
  r5.w = 6.28318548 * r5.w;
  r5.w = sin(r5.w);
  r5.w = r5.w * 0.5 + 0.5;
  r5.w = r5.w * cb4[14].y + cb4[14].x;
  r5.w = max(cb4[14].w, r5.w);
  r5.w = min(cb4[14].z, r5.w);
  r5.w = cb4[15].x * r5.w;
  r5.w = cb3[3].y * r5.w;
  r6.xyz = r6.xyz * r5.www;
  r6.xyz = r6.xyz * r4.www;
  r4.w = 1 + -v2.y;
  r6.xyz = r6.xyz * r4.www;
  r5.xyz = cb2[2].xyz * r5.xyz + r6.xyz;
  r6.xyz = cb4[4].xyz * r5.xyz;
  r5.xyz = -r5.xyz * cb4[4].xyz + cb4[5].xyz;
  r5.xyz = cb4[15].yyy * r5.xyz + r6.xyz;
  r6.xyzw = t15.SampleBias(s5_s, r1.zw, cb0[143].y).xyzw;
  r4.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r4.www + -r6.xyz;
  r6.xyz = cb4[16].xxx * r7.xyz + r6.xyz;
  r4.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r4.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[15].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r4.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb4[7].xyz * r6.xyz;
  r7.xy = cb4[16].ww * r1.zw;
  r8.xyz = t16.SampleBias(s6_s, r7.xy, cb0[143].y).xyz;
  r4.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r4.www + -r8.xyz;
  r8.xyz = cb4[17].xxx * r9.xyz + r8.xyz;
  r4.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r4.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb4[16].z, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r4.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = r8.xyz * cb4[9].xyz + -r6.xyz;
  r6.xyz = v2.yyy * r8.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.zw = t17.SampleBias(s7_s, r1.zw, cb0[143].y).yx;
  r1.w = saturate(cb4[17].y + r1.w);
  r7.xy = t18.SampleBias(s8_s, r7.xy, cb0[143].y).yx;
  r7.y = saturate(cb4[17].z + r7.y);
  r7.xy = r7.xy + -r1.zw;
  r1.zw = saturate(v2.yy * r7.xy + r1.zw);
  r3.w = cb4[17].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r3.w * 0.959999979 + 0.0399999991;
  r3.w = cb4[18].x * r3.w;
  r4.w = saturate(cb4[18].z + v1.z);
  r3.w = r4.w * r3.w;
  r3.w = max(0, r3.w);
  r3.w = min(0.5, r3.w);
  r3.w = saturate(cb4[18].w * r3.w);
  r4.w = r2.w / cb4[19].x;
  r7.xyz = -cb0[129].xxy + v5.xxy;
  r5.w = r7.x * cb0[130].z + -0.469999999;
  r5.w = 4.93230057 * r5.w;
  r5.w = cos(r5.w);
  r5.w = 0.899999976 + r5.w;
  r5.w = saturate(0.555555582 * r5.w);
  r5.w = cb4[19].z + -r5.w;
  r7.xw = cb0[152].xx + r7.yz;
  r7.xw = (uint2)r7.xw;
  r7.w = (uint)r7.w << 1;
  r7.x = (int)r7.w + (int)r7.x;
  r7.x = (uint)r7.x % 5;
  r7.x = (uint)r7.x;
  r7.yz = float2(0.015625,0.015625) * r7.yz;
  r7.y = t19.SampleBias(s9_s, r7.yz, cb0[143].y).x;
  r7.x = r7.x + r7.y;
  r7.x = 0.166666672 * r7.x;
  r4.w = r4.w * r5.w + r7.x;
  r4.w = saturate(-0.5 + r4.w);
  r4.w = r6.w * r4.w;
  r5.w = cb4[19].w * r7.x;
  r2.w = r2.w / cb4[20].x;
  r6.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[20].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = cb4[20].z * r2.w;
  r2.w = max(1, r2.w);
  r2.w = r6.w ? 1 : r2.w;
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
  r1.x = r4.w * v3.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r3.xyz = min(float3(1,1,1), r6.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.xyw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r1.xyw = max(float3(0,0,0), r1.xyw);
  r1.xyw = min(float3(0.99000001,0.99000001,0.99000001), r1.xyw);
  r1.xyw = cb0[213].xyz * r1.xyw;
  r6.xyz = (int3)r1.xyw;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r4.w = 1 + cb0[213].w;
  r1.xyw = r1.xyw / r6.www;
  r1.xyw = frac(r1.xyw);
  r1.xyw = cb0[213].www * r1.xyw;
  r1.xyw = r6.xyz * r4.www + r1.xyw;
  r1.xyw = float3(0.5,0.5,0.5) + r1.xyw;
  r1.xyw = cb0[214].xyz * r1.xyw;
  r4.w = cmp(0 < cb1[20].z);
  if (r4.w != 0) {
    r4.w = t9.SampleLevel(s0_s, r1.xyw, 0).x;
  } else {
    r4.w = 1;
  }
  r5.w = 0.0799999982 * r3.w;
  r6.xyz = -r3.www * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r6.xyz = r1.zzz * r6.xyz + r5.www;
  r7.xyz = -r3.xyz * r1.zzz + r3.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r5.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r5.www ? r8.xyz : r7.xyz;
  r6.xyz = r5.www ? float3(0,0,0) : r6.xyz;
  r5.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r5.w * 2.04040003 + -0.332399994;
  r6.w = r5.w * -4.79510021 + r6.w;
  r5.w = r5.w * 2.75519991 + r6.w;
  r5.w = 1.33200002 + r5.w;
  r5.w = max(1, r5.w);
  r8.xyz = t1.SampleLevel(s0_s, r1.xyw, 0).zxy;
  r9.xyzw = t2.SampleLevel(s0_s, r1.xyw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s0_s, r1.xyw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s0_s, r1.xyw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s0_s, r1.xyw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s0_s, r1.xyw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s0_s, r1.xyw, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r8.xxxx;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyz = r4.yzy * r4.yzx;
  r16.yw = r4.zz * r4.yx;
  r6.w = r4.x * r4.x + -r15.x;
  r17.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r16.xz = r15.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r16.xyzw;
  r6.w = 0.429042608 * r6.w;
  r16.x = r8.y;
  r16.yzw = r9.yzw;
  r17.x = 0.886227548;
  r7.w = dot(r16.xyzw, r17.xyzw);
  r9.yzw = r12.xyz;
  r9.x = dot(r9.xyzw, r15.xyzw);
  r7.w = r9.x + r7.w;
  r9.x = r12.w * r6.w + r7.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r7.w = dot(r12.xyzw, r17.xyzw);
  r10.yzw = r13.xyz;
  r9.w = dot(r10.xyzw, r15.xyzw);
  r7.w = r9.w + r7.w;
  r9.y = r13.w * r6.w + r7.w;
  r8.yzw = r11.yzw;
  r7.w = dot(r8.xyzw, r17.xyzw);
  r11.yzw = r14.xyz;
  r8.x = dot(r11.xyzw, r15.xyzw);
  r7.w = r8.x + r7.w;
  r9.z = r14.w * r6.w + r7.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r1.xyw = t8.SampleLevel(s0_s, r1.xyw, 0).xyz;
    r1.xyw = r1.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r6.w = dot(r1.xyw, r1.xyw);
    r9.x = sqrt(r6.w);
    r6.w = max(9.99999975e-005, r9.x);
    r1.xyw = r1.xyw / r6.www;
    r6.w = 1 + -r9.x;
    r6.w = -r6.w * r6.w + 1;
    r0.xyz = r0.xyz * r0.www + -r1.xyw;
    r0.xyz = r6.www * r0.xyz + r1.xyw;
    r1.x = saturate(dot(r1.xyw, r4.xyz));
    r1.y = 1 + -r1.x;
    r9.y = r6.w * r1.y + r1.x;
  } else {
    r0.xyz = r4.xyz;
    r9.xy = float2(1,1);
  }
  r10.x = t10[0].val[0/4];
  r10.y = t10[0].val[0/4+1];
  r10.z = t10[0].val[0/4+2];
  r10.w = t10[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t10[1].val[0/4];
  r11.y = t10[1].val[0/4+1];
  r11.z = t10[1].val[0/4+2];
  r11.w = t10[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t10[2].val[0/4];
  r11.y = t10[2].val[0/4+1];
  r11.z = t10[2].val[0/4+2];
  r11.w = t10[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t10[3].val[0/4];
  r12.y = t10[3].val[0/4+1];
  r12.z = t10[3].val[0/4+2];
  r12.w = t10[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t10[4].val[0/4];
  r13.y = t10[4].val[0/4+1];
  r13.z = t10[4].val[0/4+2];
  r13.w = t10[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t10[5].val[0/4];
  r13.y = t10[5].val[0/4+1];
  r13.z = t10[5].val[0/4+2];
  r13.w = t10[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t10[6].val[0/4];
  r0.z = t10[6].val[0/4+1];
  r0.w = t10[6].val[0/4+2];
  r1.xyw = r12.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r1.xyw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r1.xyw = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.xyw = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.xyw;
  r1.xyw = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.xyw;
  r1.xyw = float3(1.33200002,1.33200002,1.33200002) + r1.xyw;
  r1.xyw = max(float3(1,1,1), r1.xyw);
  r0.xyz = r1.xyw * r0.xyz;
  r1.xyw = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r6.x = cmp(0 < cb0[140].x);
  if (r6.x != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r6.x = (int)r6.y | (int)r6.x;
    r6.x = (int)r6.z | (int)r6.x;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r6.xxx ? r2.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r1.xyw + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r1.xyw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyw = frac(r1.xyw);
  r1.xyw = r1.xyw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyw = r1.xyw * r1.xyy;
  r1.x = dot(r1.xyw, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r5.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r1.z;
  o2.w = 0.505882382;
  o2.y = r3.w;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r4.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r2.w;
  return;
}