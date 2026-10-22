// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[17];
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
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = mad((int2)v3.xx, int2(36,36), int2(4,20));
  r0.w = t10[r1.z].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r4.xy = cb3[8].xx * v2.xy;
  r1.z = cb3[8].y + cb0[143].y;
  r4.zw = t12.SampleBias(s1_s, r4.xy, r1.z).xy;
  r5.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[8].zzz * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyz = r5.xyz * r1.zzz;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r5.xyz = r0.xyz * r0.www;
  r1.z = dot(-cb2[5].xyz, -cb2[5].xyz);
  r1.z = sqrt(r1.z);
  r6.xyz = -cb2[5].xyz / r1.zzz;
  r1.z = dot(r6.xyz, r5.xyz);
  r1.z = 1 + r1.z;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = sqrt(r2.w);
  r7.xyz = r7.xyz / r2.www;
  r2.w = saturate(dot(-r7.xyz, r6.xyz));
  r3.w = 1 + -cb1[1].x;
  r2.w = saturate(r3.w + r2.w);
  r1.z = r2.w * r1.z;
  r2.x = dot(r5.xyz, r2.xyz);
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
  r2.z = r0.z * r0.w + 1;
  r2.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb1[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r2.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.z * r0.w + 1;
  r2.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb1[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r2.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb1[0].z * r2.y;
  r1.z = r2.y * r1.z;
  r6.xyz = cb2[4].xyz * r1.zzz;
  r1.z = dot(-cb2[8].xyz, -cb2[8].xyz);
  r1.z = sqrt(r1.z);
  r8.xyz = -cb2[8].xyz / r1.zzz;
  r1.z = dot(r8.xyz, r5.xyz);
  r1.z = 1 + r1.z;
  r2.z = saturate(dot(-r7.xyz, r8.xyz));
  r2.z = saturate(r2.z + r3.w);
  r1.z = r2.z * r1.z;
  r1.z = r1.z * r2.y;
  r2.yzw = cb2[9].xyz * r1.zzz;
  r2.yzw = cb2[1].yyy * r2.yzw;
  r2.yzw = r6.xyz * cb2[1].xxx + r2.yzw;
  r1.z = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.y = r1.x / cb3[8].w;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[9].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[9].y * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r1.z ? 1 : r1.y;
  r4.zw = r4.xy / cb3[10].xx;
  r4.zw = cb3[10].yz + r4.zw;
  r6.xyz = t13.SampleBias(s2_s, r4.zw, cb0[143].y).xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[9].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb3[2].xyz * r6.xyz;
  r4.zw = cb3[11].xx * v2.xy;
  r1.z = t14.SampleBias(s3_s, r4.zw, cb0[143].y).x;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[11].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = cb3[11].z * r1.z;
  r1.z = r3.w ? 0 : r1.z;
  r1.z = cb0[142].z * cb3[10].w + r1.z;
  r1.z = 6.28318548 * r1.z;
  r1.z = sin(r1.z);
  r1.z = r1.z * 0.5 + 0.5;
  r1.z = r1.z * cb3[12].x + cb3[11].w;
  r1.z = max(cb3[12].z, r1.z);
  r1.z = min(cb3[12].y, r1.z);
  r1.z = cb3[12].w * r1.z;
  r1.z = cb2[3].y * r1.z;
  r6.xyz = r6.xyz * r1.zzz;
  r6.xyz = r6.xyz * r1.yyy;
  r2.yzw = cb1[2].xyz * r2.yzw + r6.xyz;
  r6.xyz = cb3[4].xyz * r2.yzw;
  r2.yzw = -r2.yzw * cb3[4].xyz + cb3[5].xyz;
  r2.yzw = cb3[13].xxx * r2.yzw + r6.xyz;
  r6.xyzw = t15.SampleBias(s4_s, r4.xy, cb0[143].y).xyzw;
  r1.y = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.yyy + -r6.xyz;
  r6.xyz = cb3[13].www * r7.xyz + r6.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[13].z, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb3[7].xyz * r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.yz = t16.SampleBias(s5_s, r4.xy, cb0[143].y).xy;
  r3.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[14].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r3.w ? 0 : r1.y;
  r1.y = saturate(cb3[14].y + r1.y);
  r4.x = saturate(cb3[14].z + r1.z);
  r1.z = cb3[14].w * r2.x;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb3[15].x * r1.z;
  r2.x = saturate(cb3[15].z + v1.z);
  r1.z = r2.x * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r4.y = saturate(cb3[15].w * r1.z);
  r1.z = cb3[16].x * cb1[1].w;
  r2.x = cb3[16].y + r1.x;
  r4.zw = float2(0.649999976,0.487499982) * cb1[1].ww;
  r3.w = cb1[1].w * 0.617499948 + -r1.x;
  r3.w = saturate(r3.w / r4.w);
  r4.w = -cb1[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.w + r4.z;
  r2.x = r2.x / r3.w;
  r1.x = r1.x / cb3[16].y;
  r3.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.z = r1.z ? r2.x : r1.x;
  r1.x = r3.w ? r1.z : r1.x;
  r1.z = cmp(9.99999975e-006 < abs(cb3[16].x));
  r2.x = 1 + cb3[16].x;
  r1.z = r1.z ? r2.x : 1.39999998;
  r7.xyz = -cb0[129].xxy + v4.xxy;
  r2.x = r7.x * cb0[130].z + -0.469999999;
  r2.x = 4.93230057 * r2.x;
  r2.x = cos(r2.x);
  r2.x = 0.899999976 + r2.x;
  r2.x = saturate(0.555555582 * r2.x);
  r1.z = -r2.x + r1.z;
  r4.zw = cb0[152].xx + r7.yz;
  r4.zw = (uint2)r4.zw;
  r2.x = (uint)r4.w << 1;
  r2.x = (int)r2.x + (int)r4.z;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r4.zw = float2(0.015625,0.015625) * r7.yz;
  r3.w = t17.SampleBias(s6_s, r4.zw, cb0[143].y).x;
  r2.x = r3.w + r2.x;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.z + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r6.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r6.xyz = min(float3(1,1,1), r6.xyz);
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r1.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = min(float3(0.99000001,0.99000001,0.99000001), r1.xyz);
  r1.xyz = cb0[213].xyz * r1.xyz;
  r7.xyz = (int3)r1.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r2.x = 1 + cb0[213].w;
  r1.xyz = r1.xyz / r7.www;
  r1.xyz = frac(r1.xyz);
  r1.xyz = cb0[213].www * r1.xyz;
  r1.xyz = r7.xyz * r2.xxx + r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) + r1.xyz;
  r1.xyz = cb0[214].xyz * r1.xyz;
  r4.z = t10[r1.w].val[4/4];
  r4.w = t10[r1.w].val[4/4+1];
  r1.w = cmp(0 < r4.w);
  if (r1.w != 0) {
    r1.w = t9.SampleLevel(s0_s, r1.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r2.x = 0.0799999982 * r4.y;
  r7.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r7.xyz = r4.xxx * r7.xyz + r2.xxx;
  r8.xyz = -r6.xyz * r4.xxx + r6.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r2.x = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r2.xxx ? r9.xyz : r8.xyz;
  r7.xyz = r2.xxx ? float3(0,0,0) : r7.xyz;
  r2.x = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.x * 2.04040003 + -0.332399994;
  r3.w = r2.x * -4.79510021 + r3.w;
  r2.x = r2.x * 2.75519991 + r3.w;
  r2.x = 1.33200002 + r2.x;
  r2.x = max(1, r2.x);
  r9.xyz = t1.SampleLevel(s0_s, r1.xyz, 0).zxy;
  r10.xyzw = t2.SampleLevel(s0_s, r1.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t4.SampleLevel(s0_s, r1.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t6.SampleLevel(s0_s, r1.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r9.yyyy;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r9.zzzz;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r9.xxxx;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = t3.SampleLevel(s0_s, r1.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t5.SampleLevel(s0_s, r1.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t7.SampleLevel(s0_s, r1.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = r13.xyzw * r9.yyyy;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r9.zzzz;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyzw = r15.xyzw * r9.xxxx;
  r15.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r15.xyzw;
  r16.xyz = r5.yzy * r5.yzx;
  r17.yw = r5.zz * r5.yx;
  r3.w = r5.x * r5.x + -r16.x;
  r18.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r17.xz = r16.zy * float2(1,3) + float2(0,-1);
  r16.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r17.xyzw;
  r3.w = 0.429042608 * r3.w;
  r17.x = r9.y;
  r17.yzw = r10.yzw;
  r18.x = 0.886227548;
  r4.w = dot(r17.xyzw, r18.xyzw);
  r10.yzw = r13.xyz;
  r5.w = dot(r10.xyzw, r16.xyzw);
  r4.w = r5.w + r4.w;
  r10.x = r13.w * r3.w + r4.w;
  r13.x = r9.z;
  r13.yzw = r11.yzw;
  r4.w = dot(r13.xyzw, r18.xyzw);
  r11.yzw = r14.xyz;
  r5.w = dot(r11.xyzw, r16.xyzw);
  r4.w = r5.w + r4.w;
  r10.y = r14.w * r3.w + r4.w;
  r9.yzw = r12.yzw;
  r4.w = dot(r9.xyzw, r18.xyzw);
  r12.yzw = r15.xyz;
  r5.w = dot(r12.xyzw, r16.xyzw);
  r4.w = r5.w + r4.w;
  r10.z = r15.w * r3.w + r4.w;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = cb0[157].xyz * r9.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r1.xyz = t8.SampleLevel(s0_s, r1.xyz, 0).xyz;
    r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r3.w = dot(r1.xyz, r1.xyz);
    r10.x = sqrt(r3.w);
    r3.w = max(9.99999975e-005, r10.x);
    r1.xyz = r1.xyz / r3.www;
    r3.w = 1 + -r10.x;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.xyz * r0.www + -r1.xyz;
    r0.xyz = r3.www * r0.xyz + r1.xyz;
    r1.x = saturate(dot(r1.xyz, r5.xyz));
    r1.y = 1 + -r1.x;
    r10.y = r3.w * r1.y + r1.x;
  } else {
    r0.xyz = r5.xyz;
    r10.xy = float2(1,1);
  }
  r11.x = t11[0].val[0/4];
  r11.y = t11[0].val[0/4+1];
  r11.z = t11[0].val[0/4+2];
  r11.w = t11[0].val[0/4+3];
  r0.w = 1;
  r1.x = dot(r11.xyzw, r0.xyzw);
  r11.x = t11[1].val[0/4];
  r11.y = t11[1].val[0/4+1];
  r11.z = t11[1].val[0/4+2];
  r11.w = t11[1].val[0/4+3];
  r1.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t11[2].val[0/4];
  r11.y = t11[2].val[0/4+1];
  r11.z = t11[2].val[0/4+2];
  r11.w = t11[2].val[0/4+3];
  r1.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
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
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t11[6].val[0/4];
  r0.z = t11[6].val[0/4+1];
  r0.w = t11[6].val[0/4+2];
  r1.xyz = r12.xyz + r1.xyz;
  r0.xyz = r0.yzw * r0.xxx + r1.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r9.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r1.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.xyz;
  r1.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.xyz;
  r1.xyz = float3(1.33200002,1.33200002,1.33200002) + r1.xyz;
  r1.xyz = max(float3(1,1,1), r1.xyz);
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r2.yzw = max(float3(0,0,0), r2.yzw);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r7.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t10[r7.x].val[0/4];
    r7.z = t10[r7.x].val[0/4+1];
    r7.w = t10[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r3.xyz;
    r8.x = t10[r7.y].val[0/4];
    r8.y = t10[r7.y].val[0/4+1];
    r8.z = t10[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r3.w = (int)r7.y | (int)r7.x;
    r3.w = (int)r7.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.yzw = r3.www ? r3.xyz : r2.yzw;
  }
  r0.xyz = cb0[145].yyy * r1.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.yzw;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.x;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r4.z;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r6.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}