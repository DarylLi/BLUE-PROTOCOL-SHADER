// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r0.w = t9[r1.z].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r4.xy = cb3[8].xx * v2.xy;
  r1.z = cb3[8].y + cb0[143].y;
  r4.zw = t10.SampleBias(s1_s, r4.xy, r1.z).xy;
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
  r0.x = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb2[5].xyz / r0.xxx;
  r0.x = dot(r6.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r7.xyz, r7.xyz);
  r0.y = sqrt(r0.y);
  r7.xyz = r7.xyz / r0.yyy;
  r0.y = saturate(dot(-r7.xyz, r6.xyz));
  r1.z = 1 + -cb1[1].x;
  r0.y = saturate(r1.z + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r5.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb1[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb1[0].w;
  r2.x = r2.x * r2.y + cb1[0].w;
  r2.y = cmp(r2.x >= cb1[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb1[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb1[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb1[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb2[4].xyz * r0.xxx;
  r0.x = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r6.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r7.xyz, r6.xyz));
  r0.w = saturate(r0.w + r1.z);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb2[9].xyz * r0.xxx;
  r0.xzw = cb2[1].yyy * r0.xzw;
  r0.xzw = r2.xyz * cb2[1].xxx + r0.xzw;
  r1.z = cmp(cb0[31].w < 1);
  r2.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.x + r1.x;
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
  r2.xy = r4.xy / cb3[10].xx;
  r2.xy = cb3[10].yz + r2.xy;
  r2.xyz = t11.SampleBias(s2_s, r2.xy, cb0[143].y).xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r6.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[9].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r2.xyz = r2.xyz * r8.xxx + r6.xyz;
  r2.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[2].xyz * r2.xyz;
  r4.zw = cb3[11].xx * v2.xy;
  r1.z = t12.SampleBias(s3_s, r4.zw, cb0[143].y).x;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[11].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = cb3[11].z * r1.z;
  r1.z = r2.w ? 0 : r1.z;
  r1.z = cb0[142].z * cb3[10].w + r1.z;
  r1.z = 6.28318548 * r1.z;
  r1.z = sin(r1.z);
  r1.z = r1.z * 0.5 + 0.5;
  r1.z = r1.z * cb3[12].x + cb3[11].w;
  r1.z = max(cb3[12].z, r1.z);
  r1.z = min(cb3[12].y, r1.z);
  r1.z = cb3[12].w * r1.z;
  r1.z = cb2[3].y * r1.z;
  r2.xyz = r2.xyz * r1.zzz;
  r2.xyz = r2.xyz * r1.yyy;
  r0.xzw = cb1[2].xyz * r0.xzw + r2.xyz;
  r2.xyz = cb3[4].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb3[4].xyz + cb3[5].xyz;
  r0.xzw = cb3[13].xxx * r0.xzw + r2.xyz;
  r2.xyzw = t13.SampleBias(s4_s, r4.xy, cb0[143].y).xyzw;
  r1.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.yyy + -r2.xyz;
  r2.xyz = cb3[13].www * r6.xyz + r2.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r6.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[13].z, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r2.xyz = r2.xyz * r8.xxx + r6.xyz;
  r2.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[7].xyz * r2.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.yz = t14.SampleBias(s5_s, r4.xy, cb0[143].y).xy;
  r1.yz = saturate(cb3[14].xy + r1.yz);
  r0.y = cb3[14].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb3[14].w * r0.y;
  r3.w = saturate(cb3[15].y + v1.z);
  r0.y = r3.w * r0.y;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb3[15].z * r0.y);
  r3.w = cb3[15].w * cb1[1].w;
  r4.x = cb3[16].x + r1.x;
  r4.yz = float2(0.649999976,0.487499982) * cb1[1].ww;
  r4.w = cb1[1].w * 0.617499948 + -r1.x;
  r4.z = saturate(r4.w / r4.z);
  r4.w = -cb1[1].w * 0.649999976 + 8000;
  r4.y = r4.z * r4.w + r4.y;
  r4.x = r4.x / r4.y;
  r1.x = r1.x / cb3[16].x;
  r4.y = cmp(9.99999975e-006 < abs(r3.w));
  r3.w = cmp(r3.w >= 0);
  r3.w = r3.w ? r4.x : r1.x;
  r1.x = r4.y ? r3.w : r1.x;
  r3.w = cmp(9.99999975e-006 < abs(cb3[15].w));
  r4.x = 1 + cb3[15].w;
  r3.w = r3.w ? r4.x : 1.39999998;
  r4.xyz = -cb0[129].xxy + v4.xxy;
  r4.x = r4.x * cb0[130].z + -0.469999999;
  r4.x = 4.93230057 * r4.x;
  r4.x = cos(r4.x);
  r4.x = 0.899999976 + r4.x;
  r4.x = saturate(0.555555582 * r4.x);
  r3.w = -r4.x + r3.w;
  r4.xw = cb0[152].xx + r4.yz;
  r4.xw = (uint2)r4.xw;
  r4.w = (uint)r4.w << 1;
  r4.x = (int)r4.w + (int)r4.x;
  r4.x = (uint)r4.x % 5;
  r4.x = (uint)r4.x;
  r4.yz = float2(0.015625,0.015625) * r4.yz;
  r4.y = t15.SampleBias(s6_s, r4.yz, cb0[143].y).x;
  r4.x = r4.x + r4.y;
  r4.x = 0.166666672 * r4.x;
  r1.x = r1.x * r3.w + r4.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r2.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r4.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
  r4.xyz = cb0[213].xyz * r4.xyz;
  r6.xyz = (int3)r4.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r1.x = 1 + cb0[213].w;
  r4.xyz = r4.xyz / r6.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = cb0[213].www * r4.xyz;
  r4.xyz = r6.xyz * r1.xxx + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = cb0[214].xyz * r4.xyz;
  r1.x = t9[r1.w].val[4/4];
  r1.y = t9[r1.w].val[4/4+1];
  r1.y = cmp(0 < r1.y);
  if (r1.y != 0) {
    r1.y = t8.SampleLevel(s0_s, r4.xyz, 0).x;
  } else {
    r1.y = 1;
  }
  r1.w = 0.0799999982 * r0.y;
  r6.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r6.xyz = r1.zzz * r6.xyz + r1.www;
  r7.xyz = -r2.xyz * r1.zzz + r2.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.www ? r8.xyz : r7.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r8.xyz = t1.SampleLevel(s0_s, r4.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r4.xyzw = t7.SampleLevel(s0_s, r4.xyz, 0).xyzw;
  r4.xyzw = r4.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r4.xyzw = r4.xyzw * r8.xxxx;
  r4.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r4.xyzw;
  r14.xyz = r5.yzy * r5.yzx;
  r15.yw = r5.zz * r5.yx;
  r2.w = r5.x * r5.x + -r14.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r15.xz = r14.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r2.w = 0.429042608 * r2.w;
  r15.x = r8.y;
  r15.yzw = r9.yzw;
  r16.x = 0.886227548;
  r3.w = dot(r15.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r5.w = dot(r9.xyzw, r14.xyzw);
  r3.w = r5.w + r3.w;
  r9.x = r12.w * r2.w + r3.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r3.w = dot(r12.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r5.w = dot(r10.xyzw, r14.xyzw);
  r3.w = r5.w + r3.w;
  r9.y = r13.w * r2.w + r3.w;
  r8.yzw = r11.yzw;
  r3.w = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r4.xyz;
  r4.x = dot(r11.xyzw, r14.xyzw);
  r3.w = r4.x + r3.w;
  r9.z = r4.w * r2.w + r3.w;
  r4.xyz = max(float3(0,0,0), r9.xyz);
  r4.xyz = cb0[157].xyz * r4.xyz;
  r4.xyz = float3(0.318309873,0.318309873,0.318309873) * r4.xyz;
  r2.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r7.xyz;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r4.xyz = r8.xyz * r4.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r7.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t9[r7.x].val[0/4];
    r7.z = t9[r7.x].val[0/4+1];
    r7.w = t9[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r3.xyz;
    r8.x = t9[r7.y].val[0/4];
    r8.y = t9[r7.y].val[0/4+1];
    r8.z = t9[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r3.w = (int)r7.y | (int)r7.x;
    r3.w = (int)r7.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r3.www ? r3.xyz : r0.xzw;
  }
  r3.xyz = cb0[145].yyy * r6.xyz + r4.xyz;
  r0.xzw = r3.xyz + r0.xzw;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r2.w * r1.w;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = r1.x;
  o2.x = r1.z;
  o2.w = 0.505882382;
  o2.y = r0.y;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}