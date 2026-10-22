// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

struct t11_t {
  float val[4];
};
StructuredBuffer<t11_t> t11 : register(t11);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[21];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
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
  r1.zw = cb3[10].xx * v3.xy;
  r0.w = cb3[10].y + cb0[143].y;
  r4.xy = t12.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[10].zzz * r5.xyz + r4.xyz;
  r5.xy = cb3[10].ww * r1.zw;
  r5.zw = t13.SampleBias(s2_s, r5.xy, r0.w).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[11].xxx * r7.xyz + r6.xyz;
  r6.xyz = cb3[11].yyy * r4.xyz + r6.xyz;
  r0.w = dot(v2.yyy, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz + -r4.xyz;
  r4.xyz = r0.www * r6.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r2.www * r0.xyz;
  r3.w = dot(-cb2[5].xyz, -cb2[5].xyz);
  r3.w = sqrt(r3.w);
  r6.xyz = -cb2[5].xyz / r3.www;
  r3.w = dot(r6.xyz, r4.xyz);
  r3.w = 1 + r3.w;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r4.w = dot(r7.xyz, r7.xyz);
  r4.w = sqrt(r4.w);
  r7.xyz = r7.xyz / r4.www;
  r4.w = saturate(dot(-r7.xyz, r6.xyz));
  r5.z = 1 + -cb1[1].x;
  r4.w = saturate(r5.z + r4.w);
  r3.w = r4.w * r3.w;
  r2.x = dot(r4.xyz, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb1[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb1[0].w;
  r2.y = r2.y * r2.z + cb1[0].w;
  r2.z = cmp(r2.y >= cb1[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.z * r2.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb1[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.z * r2.w + 1;
  r4.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb1[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r4.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb1[0].z * r2.y;
  r2.z = r3.w * r2.y;
  r6.xyz = cb2[4].xyz * r2.zzz;
  r2.z = dot(-cb2[8].xyz, -cb2[8].xyz);
  r2.z = sqrt(r2.z);
  r8.xyz = -cb2[8].xyz / r2.zzz;
  r2.z = dot(r8.xyz, r4.xyz);
  r2.z = 1 + r2.z;
  r3.w = saturate(dot(-r7.xyz, r8.xyz));
  r3.w = saturate(r3.w + r5.z);
  r2.z = r3.w * r2.z;
  r2.y = r2.z * r2.y;
  r7.xyz = cb2[9].xyz * r2.yyy;
  r7.xyz = cb2[1].yyy * r7.xyz;
  r6.xyz = r6.xyz * cb2[1].xxx + r7.xyz;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = r1.x / cb3[11].z;
  r2.y = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[11].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[12].x * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r2.y ? 1 : r1.y;
  r2.yz = r1.zw / cb3[12].ww;
  r2.yz = cb3[13].xy + r2.yz;
  r7.xyz = t14.SampleBias(s3_s, r2.yz, cb0[143].y).xyz;
  r2.y = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[12].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r2.yyy * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb3[2].xyz * r7.xyz;
  r2.yz = cb3[13].ww * v3.xy;
  r2.y = t15.SampleBias(s4_s, r2.yz, cb0[143].y).x;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb3[14].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = cb3[14].y * r2.y;
  r2.y = r2.z ? 0 : r2.y;
  r2.y = cb0[142].z * cb3[13].z + r2.y;
  r2.y = 6.28318548 * r2.y;
  r2.y = sin(r2.y);
  r2.y = r2.y * 0.5 + 0.5;
  r2.y = r2.y * cb3[14].w + cb3[14].z;
  r2.y = max(cb3[15].y, r2.y);
  r2.y = min(cb3[15].x, r2.y);
  r2.y = cb3[15].z * r2.y;
  r2.y = cb2[3].y * r2.y;
  r7.xyz = r7.xyz * r2.yyy;
  r7.xyz = r7.xyz * r1.yyy;
  r1.y = 1 + -r0.w;
  r7.xyz = r7.xyz * r1.yyy;
  r6.xyz = cb1[2].xyz * r6.xyz + r7.xyz;
  r7.xyz = cb3[4].xyz * r6.xyz;
  r6.xyz = -r6.xyz * cb3[4].xyz + cb3[5].xyz;
  r6.xyz = cb3[15].www * r6.xyz + r7.xyz;
  r7.xyzw = t16.SampleBias(s5_s, r1.zw, cb0[143].y).xyzw;
  r1.y = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.yyy + -r7.xyz;
  r7.xyz = cb3[16].zzz * r8.xyz + r7.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[16].y, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb3[7].xyz * r7.xyz;
  r8.xyz = t17.SampleBias(s6_s, r5.xy, cb0[143].y).xyz;
  r1.y = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r1.yyy + -r8.xyz;
  r8.xyz = cb3[17].yyy * r9.xyz + r8.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb3[17].x, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = r8.xyz * cb3[9].xyz + -r7.xyz;
  r7.xyz = r0.www * r8.xyz + r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r1.yz = t18.SampleBias(s7_s, r1.zw, cb0[143].y).xy;
  r8.yz = cb3[17].zw + r1.yz;
  r8.x = saturate(r8.y);
  r1.yz = t19.SampleBias(s8_s, r5.xy, cb0[143].y).xy;
  r5.yz = cb3[18].xy + r1.yz;
  r5.x = saturate(r5.y);
  r1.yz = r5.zx + -r8.zx;
  r1.yz = saturate(r0.ww * r1.yz + r8.zx);
  r0.w = cb3[18].z * r2.x;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb3[18].w * r0.w;
  r1.w = saturate(cb3[19].y + v1.z);
  r0.w = r1.w * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb3[19].z * r0.w);
  r1.w = cb3[19].w * cb1[1].w;
  r2.x = cb3[20].x + r1.x;
  r2.yz = float2(0.649999976,0.487499982) * cb1[1].ww;
  r3.w = cb1[1].w * 0.617499948 + -r1.x;
  r2.z = saturate(r3.w / r2.z);
  r3.w = -cb1[1].w * 0.649999976 + 8000;
  r2.y = r2.z * r3.w + r2.y;
  r2.x = r2.x / r2.y;
  r1.x = r1.x / cb3[20].x;
  r2.y = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.w = r1.w ? r2.x : r1.x;
  r1.x = r2.y ? r1.w : r1.x;
  r1.w = cmp(9.99999975e-006 < abs(cb3[19].w));
  r2.x = 1 + cb3[19].w;
  r1.w = r1.w ? r2.x : 1.39999998;
  r2.xyz = -cb0[129].xxy + v5.xxy;
  r2.x = r2.x * cb0[130].z + -0.469999999;
  r2.x = 4.93230057 * r2.x;
  r2.x = cos(r2.x);
  r2.x = 0.899999976 + r2.x;
  r2.x = saturate(0.555555582 * r2.x);
  r1.w = -r2.x + r1.w;
  r5.xy = cb0[152].xx + r2.yz;
  r5.xy = (uint2)r5.xy;
  r2.x = (uint)r5.y << 1;
  r2.x = (int)r2.x + (int)r5.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r2.yz = float2(0.015625,0.015625) * r2.yz;
  r2.y = t20.SampleBias(s9_s, r2.yz, cb0[143].y).x;
  r2.x = r2.x + r2.y;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.w + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r7.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r7.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r1.xzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r1.xzw = max(float3(0,0,0), r1.xzw);
  r1.xzw = min(float3(0.99000001,0.99000001,0.99000001), r1.xzw);
  r1.xzw = cb0[213].xyz * r1.xzw;
  r5.xyz = (int3)r1.xzw;
  r5.w = 0;
  r5.xyzw = t0.Load(r5.xyzw).xyzw;
  r5.xyzw = (uint4)r5.xyzw;
  r3.w = 1 + cb0[213].w;
  r1.xzw = r1.xzw / r5.www;
  r1.xzw = frac(r1.xzw);
  r1.xzw = cb0[213].www * r1.xzw;
  r1.xzw = r5.xyz * r3.www + r1.xzw;
  r1.xzw = float3(0.5,0.5,0.5) + r1.xzw;
  r1.xzw = cb0[214].xyz * r1.xzw;
  r3.w = mad((int)v4.x, 36, 20);
  r5.x = t10[r3.w].val[4/4];
  r5.y = t10[r3.w].val[4/4+1];
  r3.w = cmp(0 < r5.y);
  if (r3.w != 0) {
    r3.w = t9.SampleLevel(s0_s, r1.xzw, 0).x;
  } else {
    r3.w = 1;
  }
  r4.w = 0.0799999982 * r0.w;
  r5.yzw = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r5.yzw = r1.yyy * r5.yzw + r4.www;
  r7.xyz = -r2.xyz * r1.yyy + r2.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r5.yzw = r5.yzw * cb0[137].www + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r8.xyz = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r4.www ? r8.xyz : r7.xyz;
  r5.yzw = r4.www ? float3(0,0,0) : r5.yzw;
  r4.w = dot(r5.yzw, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r4.w * 2.04040003 + -0.332399994;
  r6.w = r4.w * -4.79510021 + r6.w;
  r4.w = r4.w * 2.75519991 + r6.w;
  r4.w = 1.33200002 + r4.w;
  r4.w = max(1, r4.w);
  r8.xyz = t1.SampleLevel(s0_s, r1.xzw, 0).zxy;
  r9.xyzw = t2.SampleLevel(s0_s, r1.xzw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s0_s, r1.xzw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s0_s, r1.xzw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s0_s, r1.xzw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s0_s, r1.xzw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s0_s, r1.xzw, 0).xyzw;
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
    r1.xzw = t8.SampleLevel(s0_s, r1.xzw, 0).xyz;
    r1.xzw = r1.xzw * float3(2,2,2) + float3(-1,-1,-1);
    r6.w = dot(r1.xzw, r1.xzw);
    r9.x = sqrt(r6.w);
    r6.w = max(9.99999975e-005, r9.x);
    r1.xzw = r1.xzw / r6.www;
    r6.w = 1 + -r9.x;
    r6.w = -r6.w * r6.w + 1;
    r0.xyz = r0.xyz * r2.www + -r1.xzw;
    r10.xyz = r6.www * r0.xyz + r1.xzw;
    r0.x = saturate(dot(r1.xzw, r4.xyz));
    r0.y = 1 + -r0.x;
    r9.y = r6.w * r0.y + r0.x;
  } else {
    r10.xyz = r4.xyz;
    r9.xy = float2(1,1);
  }
  r11.x = t11[0].val[0/4];
  r11.y = t11[0].val[0/4+1];
  r11.z = t11[0].val[0/4+2];
  r11.w = t11[0].val[0/4+3];
  r10.w = 1;
  r0.x = dot(r11.xyzw, r10.xyzw);
  r11.x = t11[1].val[0/4];
  r11.y = t11[1].val[0/4+1];
  r11.z = t11[1].val[0/4+2];
  r11.w = t11[1].val[0/4+3];
  r0.y = dot(r11.xyzw, r10.xyzw);
  r11.x = t11[2].val[0/4];
  r11.y = t11[2].val[0/4+1];
  r11.z = t11[2].val[0/4+2];
  r11.w = t11[2].val[0/4+3];
  r0.z = dot(r11.xyzw, r10.xyzw);
  r11.xyzw = r10.xyzz * r10.yzzx;
  r12.x = t11[3].val[0/4];
  r12.y = t11[3].val[0/4+1];
  r12.z = t11[3].val[0/4+2];
  r12.w = t11[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t11[4].val[0/4];
  r13.y = t11[4].val[0/4+1];
  r13.z = t11[4].val[0/4+2];
  r13.w = t11[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t11[5].val[0/4];
  r13.y = t11[5].val[0/4+1];
  r13.z = t11[5].val[0/4+2];
  r13.w = t11[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r1.x = r10.y * r10.y;
  r1.x = r10.x * r10.x + -r1.x;
  r10.x = t11[6].val[0/4];
  r10.y = t11[6].val[0/4+1];
  r10.z = t11[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r10.xyz * r1.xxx + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.x = r9.x * r9.y;
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = r8.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r1.x = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r5.yzw = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r1.z = cmp(0 < cb0[140].x);
  if (r1.z != 0) {
    r1.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t10[r1.z].val[0/4];
    r7.y = t10[r1.z].val[0/4+1];
    r7.z = t10[r1.z].val[0/4+2];
    r7.xyz = -r7.xyz + r3.xyz;
    r8.x = t10[r1.w].val[0/4];
    r8.y = t10[r1.w].val[0/4+1];
    r8.z = t10[r1.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r1.z = (int)r7.y | (int)r7.x;
    r1.z = (int)r7.z | (int)r1.z;
    r1.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r3.xyz = r1.www ? float3(0,1,1) : float3(1,1,0);
    r6.xyz = r1.zzz ? r3.xyz : r6.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.yzw + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.z = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.z = frac(r1.z);
  r1.z = -0.5 + r1.z;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.x = r1.x * r4.w;
  r1.x = r1.x * cb0[135].y + 0.00390625;
  r1.x = log2(r1.x);
  r1.x = r1.x * 0.0625 + 0.5;
  o3.w = r1.z * 0.00392156886 + r1.x;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r5.x;
  o2.x = r1.y;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}