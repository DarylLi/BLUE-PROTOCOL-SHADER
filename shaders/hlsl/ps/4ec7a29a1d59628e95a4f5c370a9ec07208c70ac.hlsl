// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[30];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = r3.xy / cb3[18].yy;
  r1.z = t11.SampleBias(s2_s, r1.zw, cb0[143].y).x;
  r1.w = cb3[18].z + -cb3[18].w;
  r1.z = saturate(r1.z * r1.w + cb3[18].w);
  r1.z = cb3[19].x + r1.z;
  r1.z = r1.z * -cb3[19].y + cb3[19].y;
  r4.xyz = -cb0[67].xyz + r3.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r2.w = cb3[19].w * r1.w;
  r1.z = r1.z * r2.w + cb0[143].y;
  r4.xy = t12.SampleBias(s3_s, v3.xy, r1.z).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[20].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r4.xyz = r0.xyz * r0.www;
  r5.xyz = cb3[20].yyy * cb3[1].xyz;
  r6.xyz = t13.SampleBias(s4_s, v3.xy, r1.z).yzw;
  r7.xyz = -cb3[5].xyz + cb3[4].xyz;
  r7.xyz = r6.xxx * r7.xyz + cb3[5].xyz;
  r8.xyzw = r3.xyxy / cb3[21].xxyy;
  r1.z = t11.Sample(s0_s, r8.xy).x;
  r2.w = t11.Sample(s0_s, r8.zw).x;
  r3.w = r1.w / cb3[21].z;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[21].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r2.w = r2.w + -r1.z;
  r1.z = r3.w * r2.w + r1.z;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[22].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = saturate(cb3[22].y * r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r8.xyz = cb3[7].xyz + -r7.xyz;
  r7.xyz = r1.zzz * r8.xyz + r7.xyz;
  r2.w = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r3.w = 1 + -r2.w;
  r3.w = r3.w + r3.w;
  r8.xyz = -r3.www * cb3[10].xyz + float3(1,1,1);
  r3.w = r2.w + r2.w;
  r9.xyz = cb3[9].xyz * r3.www;
  r2.w = cmp(r2.w >= 0.5);
  r8.xyz = r2.www ? r8.xyz : r9.xyz;
  r9.xyz = cb3[9].xyz + -r8.xyz;
  r8.xyz = cb3[22].zzz * r9.xyz + r8.xyz;
  r2.w = r1.w / cb3[22].w;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[23].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r8.xyz = r8.xyz + -r7.xyz;
  r8.xyz = r8.xyz * r2.www;
  r7.xyz = cb3[23].yyy * r8.xyz + r7.xyz;
  r6.xw = r3.xy / cb3[23].ww;
  r3.w = t14.SampleBias(s5_s, r6.xw, cb0[143].y).x;
  r3.w = cb3[24].x * r3.w;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[24].z * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r8.xyz = -cb3[14].xyz + cb3[13].xyz;
  r8.xyz = r8.xyz * r3.www;
  r8.xyz = r4.www ? float3(0,0,0) : r8.xyz;
  r8.xyz = cb3[14].xyz + r8.xyz;
  r9.xyz = r8.xyz * r6.yyy;
  r8.xyz = -r8.xyz * r6.yyy + cb3[7].xyz;
  r8.xyz = r8.xyz * r1.zzz;
  r8.xyz = cb3[24].www * r8.xyz + r9.xyz;
  r1.z = saturate(dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r3.w = 1 + -r1.z;
  r3.w = r3.w + r3.w;
  r9.xyz = -r3.www * cb3[10].xyz + float3(1,1,1);
  r3.w = r1.z + r1.z;
  r10.xyz = cb3[9].xyz * r3.www;
  r1.z = cmp(r1.z >= 0.5);
  r9.xyz = r1.zzz ? r9.xyz : r10.xyz;
  r10.xyz = cb3[9].xyz + -r9.xyz;
  r9.xyz = cb3[22].zzz * r10.xyz + r9.xyz;
  r9.xyz = r9.xyz + -r8.xyz;
  r9.xyz = r9.xyz * r2.www;
  r9.xyz = cb3[23].yyy * r9.xyz;
  r8.xyz = cb3[25].xxx * r9.xyz + r8.xyz;
  r1.z = saturate(10 * r6.y);
  r6.xyw = r8.xyz + -r7.xyz;
  r6.xyw = r1.zzz * r6.xyw + r7.xyz;
  r1.z = dot(r6.xyw, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.zzz + -r6.xyw;
  r6.xyw = cb3[25].yyy * r7.xyz + r6.xyw;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyw);
  r6.xyw = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyw;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.wxy;
  r7.xyz = r6.wxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[20].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyw = r6.xyw * r9.xxx + r7.xyz;
  r6.xyw = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyw;
  r6.xyw = cb3[16].xyz * r6.xyw;
  r6.xyw = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyw);
  r1.z = dot(r4.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb3[25].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb3[25].w * r1.z;
  r2.x = saturate(cb3[26].y + v1.z);
  r1.z = r2.x * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r1.z = saturate(cb3[26].z * r1.z);
  r2.xy = r3.xy / cb3[27].xx;
  r2.x = t11.SampleBias(s2_s, r2.xy, cb0[143].y).x;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb3[27].y * r2.x;
  r2.x = exp2(r2.x);
  r2.x = cb3[27].z * r2.x;
  r2.x = r2.y ? -0 : -r2.x;
  r2.x = cb3[28].x + r2.x;
  r2.x = 1 + r2.x;
  r1.w = r1.w / cb3[28].y;
  r2.y = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[28].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.y ? 0 : r1.w;
  r1.w = saturate(r2.x * r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r6.z * r1.w;
  r2.x = cb3[28].w * cb2[1].w;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cb3[29].x + r1.x;
  r2.yz = float2(0.649999976,0.487499982) * cb2[1].ww;
  r2.w = cb2[1].w * 0.617499948 + -r1.x;
  r2.z = saturate(r2.w / r2.z);
  r2.w = -cb2[1].w * 0.649999976 + 8000;
  r2.y = r2.z * r2.w + r2.y;
  r1.y = r1.y / r2.y;
  r1.x = r1.x / cb3[29].x;
  r2.y = cmp(9.99999975e-006 < abs(r2.x));
  r2.x = cmp(r2.x >= 0);
  r1.y = r2.x ? r1.y : r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[28].w));
  r2.x = 1 + cb3[28].w;
  r1.y = r1.y ? r2.x : 1.39999998;
  r2.xyz = -cb0[129].xxy + v4.xxy;
  r2.x = r2.x * cb0[130].z + -0.469999999;
  r2.x = 4.93230057 * r2.x;
  r2.x = cos(r2.x);
  r2.x = 0.899999976 + r2.x;
  r2.x = saturate(0.555555582 * r2.x);
  r1.y = -r2.x + r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r2.w = (uint)r2.w << 1;
  r2.x = (int)r2.w + (int)r2.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r2.yz = float2(0.015625,0.015625) * r2.yz;
  r2.y = t15.SampleBias(s6_s, r2.yz, cb0[143].y).x;
  r2.x = r2.x + r2.y;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r1.w * r1.x;
  r1.y = cmp(0.00100000005 < abs(v2.w));
  r2.xy = floor(v4.xy);
  r1.w = dot(r2.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r2.x = cmp(v2.w < 0);
  r2.y = 1 + v2.w;
  r2.y = cmp(r1.w < r2.y);
  r1.w = cmp(v2.w < r1.w);
  r1.w = r2.x ? r2.y : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r1.y = r1.y ? r1.w : 0;
  if (r1.y != 0) discard;
  r1.x = r1.x * v2.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r6.xyw);
  r2.x = saturate(cb3[26].w);
  o2.z = r2.x * cb0[139].y + cb0[139].x;
  r2.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = min(float3(0.99000001,0.99000001,0.99000001), r2.xyz);
  r2.xyz = cb0[213].xyz * r2.xyz;
  r6.xyz = (int3)r2.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r2.w = 1 + cb0[213].w;
  r2.xyz = r2.xyz / r6.www;
  r2.xyz = frac(r2.xyz);
  r2.xyz = cb0[213].www * r2.xyz;
  r2.xyz = r6.xyz * r2.www + r2.xyz;
  r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
  r2.xyz = cb0[214].xyz * r2.xyz;
  r2.w = cmp(0 < cb1[20].z);
  if (r2.w != 0) {
    r2.w = t9.SampleLevel(s1_s, r2.xyz, 0).x;
  } else {
    r2.w = 1;
  }
  r3.w = cb0[137].w * r1.z;
  r6.xyz = r1.xyw * cb0[136].www + cb0[136].xyz;
  r7.xyz = r3.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r3.www ? r8.xyz : r6.xyz;
  r7.xyz = r3.www ? float3(0,0,0) : r7.xyz;
  r3.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.w * 2.04040003 + -0.332399994;
  r4.w = r3.w * -4.79510021 + r4.w;
  r3.w = r3.w * 2.75519991 + r4.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r8.xyz = t1.SampleLevel(s1_s, r2.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s1_s, r2.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r8.xxxx;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyz = r4.yzy * r4.yzx;
  r16.yw = r4.zz * r4.yx;
  r4.w = r4.x * r4.x + -r15.x;
  r17.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r16.xz = r15.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r16.xyzw;
  r4.w = 0.429042608 * r4.w;
  r16.x = r8.y;
  r16.yzw = r9.yzw;
  r17.x = 0.886227548;
  r5.w = dot(r16.xyzw, r17.xyzw);
  r9.yzw = r12.xyz;
  r6.w = dot(r9.xyzw, r15.xyzw);
  r5.w = r6.w + r5.w;
  r9.x = r12.w * r4.w + r5.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r5.w = dot(r12.xyzw, r17.xyzw);
  r10.yzw = r13.xyz;
  r6.w = dot(r10.xyzw, r15.xyzw);
  r5.w = r6.w + r5.w;
  r9.y = r13.w * r4.w + r5.w;
  r8.yzw = r11.yzw;
  r5.w = dot(r8.xyzw, r17.xyzw);
  r11.yzw = r14.xyz;
  r6.w = dot(r11.xyzw, r15.xyzw);
  r5.w = r6.w + r5.w;
  r9.z = r14.w * r4.w + r5.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r2.xyz = t8.SampleLevel(s1_s, r2.xyz, 0).xyz;
    r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r4.w = dot(r2.xyz, r2.xyz);
    r9.x = sqrt(r4.w);
    r4.w = max(9.99999975e-005, r9.x);
    r2.xyz = r2.xyz / r4.www;
    r4.w = 1 + -r9.x;
    r4.w = -r4.w * r4.w + 1;
    r0.xyz = r0.xyz * r0.www + -r2.xyz;
    r0.xyz = r4.www * r0.xyz + r2.xyz;
    r2.x = saturate(dot(r2.xyz, r4.xyz));
    r2.y = 1 + -r2.x;
    r9.y = r4.w * r2.y + r2.x;
  } else {
    r0.xyz = r4.xyz;
    r9.xy = float2(1,1);
  }
  r10.x = t10[0].val[0/4];
  r10.y = t10[0].val[0/4+1];
  r10.z = t10[0].val[0/4+2];
  r10.w = t10[0].val[0/4+3];
  r0.w = 1;
  r2.x = dot(r10.xyzw, r0.xyzw);
  r10.x = t10[1].val[0/4];
  r10.y = t10[1].val[0/4+1];
  r10.z = t10[1].val[0/4+2];
  r10.w = t10[1].val[0/4+3];
  r2.y = dot(r10.xyzw, r0.xyzw);
  r10.x = t10[2].val[0/4];
  r10.y = t10[2].val[0/4+1];
  r10.z = t10[2].val[0/4+2];
  r10.w = t10[2].val[0/4+3];
  r2.z = dot(r10.xyzw, r0.xyzw);
  r10.xyzw = r0.xyzz * r0.yzzx;
  r11.x = t10[3].val[0/4];
  r11.y = t10[3].val[0/4+1];
  r11.z = t10[3].val[0/4+2];
  r11.w = t10[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t10[4].val[0/4];
  r12.y = t10[4].val[0/4+1];
  r12.z = t10[4].val[0/4+2];
  r12.w = t10[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t10[5].val[0/4];
  r12.y = t10[5].val[0/4+1];
  r12.z = t10[5].val[0/4+2];
  r12.w = t10[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t10[6].val[0/4];
  r0.z = t10[6].val[0/4+1];
  r0.w = t10[6].val[0/4+2];
  r2.xyz = r11.xyz + r2.xyz;
  r0.xyz = r0.yzw * r0.xxx + r2.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r6.xyz;
  r2.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r2.xyz = max(float3(1,1,1), r2.xyz);
  r0.xyz = r2.xyz * r0.xyz;
  r2.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r4.w = (int)r6.y | (int)r6.x;
    r4.w = (int)r6.z | (int)r4.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r4.www ? r3.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.z;
  o3.xyz = r1.xyw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}