// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t18 : register(t18);

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
  float4 cb3[26];
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
  r1.zw = t11.SampleBias(s2_s, v3.xy, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[14].xxx * r5.xyz + r4.xyz;
  r0.w = 1 + r4.z;
  r1.zw = cb3[14].yy * v3.xy;
  r1.zw = t12.SampleBias(s3_s, r1.zw, cb0[143].y).xy;
  r5.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[14].zzz * r6.xyz + r5.xyz;
  r4.w = 1 + r4.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r1.z = dot(r4.xyw, r5.xyz);
  r5.xyz = r5.xyz * r0.www;
  r4.xyz = r4.xyw * r1.zzz + -r5.xyz;
  r5.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r6.xyz = r5.yyy * r0.xyz;
  r5.xyw = r5.xxx * v0.xyz + r6.xyz;
  r5.xyz = r5.zzz * v1.xyz + r5.xyw;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = r5.xyz * r0.www;
  r1.z = dot(r6.xyz, r2.xyz);
  r7.xyz = r6.xyz * r1.zzz;
  r7.xyz = r7.xyz * float3(2,2,2) + -r2.xyz;
  r1.z = 1 + -abs(r1.z);
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[14].w * r1.z;
  r1.z = exp2(r1.z);
  r8.xyz = cb3[2].xyz * r1.zzz;
  r8.xyz = cb3[15].xxx * r8.xyz;
  r8.xyz = r1.www ? float3(0,0,0) : r8.xyz;
  r9.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r9.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r1.z = dot(-r2.xyz, r4.xyz);
  r1.w = cb3[15].w * cb3[15].w;
  r2.w = -r1.z * r1.z + 1;
  r1.w = -r1.w * r2.w + 1;
  r3.w = sqrt(r1.w);
  r3.w = cb3[15].w * r1.z + r3.w;
  r1.w = cmp(r1.w >= 0);
  r9.xyz = r3.www * r4.xyz;
  r9.xyz = cb3[15].www * -r2.xyz + -r9.xyz;
  r9.xyz = r1.www ? r9.xyz : 0;
  r9.x = t18.Sample(s7_s, r9.xyz).x;
  r10.xy = cb3[16].zw * cb3[16].zw;
  r10.xy = -r10.xy * r2.ww + float2(1,1);
  r10.zw = sqrt(r10.xy);
  r1.zw = cb3[16].zw * r1.zz + r10.zw;
  r10.xy = cmp(r10.xy >= float2(0,0));
  r11.xyz = r1.zzz * r4.xyz;
  r11.xyz = cb3[16].zzz * -r2.xyz + -r11.xyz;
  r10.xzw = r10.xxx ? r11.xyz : 0;
  r9.y = t18.Sample(s7_s, r10.xzw).y;
  r4.xyz = r1.www * r4.xyz;
  r4.xyz = cb3[16].www * -r2.xyz + -r4.xyz;
  r4.xyz = r10.yyy ? r4.xyz : 0;
  r9.z = t18.Sample(s7_s, r4.xyz).z;
  r1.z = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r1.zzz + -r9.xyz;
  r4.xyz = cb3[17].xxx * r4.xyz + r9.xyz;
  r7.xyz = t18.Sample(s7_s, r7.xyz).xyz;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r1.zzz + -r7.xyz;
  r7.xyz = cb3[17].xxx * r9.xyz + r7.xyz;
  r7.xyz = cb3[6].xyz * r7.xyz;
  r9.xyz = cmp(float3(0,0,0) >= r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = cb3[17].zzz * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r9.xyz ? float3(0,0,0) : r7.xyz;
  r7.xyz = cb3[17].yyy * r7.xyz;
  r4.xyz = r4.xyz * cb3[17].yyy + r7.xyz;
  r1.zw = float2(0.100000001,0.100000001) * r6.xy;
  r7.xy = cmp(float2(0,0) >= r6.xy);
  r1.zw = log2(r1.zw);
  r1.zw = float2(1.5,1.5) * r1.zw;
  r1.zw = exp2(r1.zw);
  r1.zw = r7.xy ? float2(0,0) : r1.zw;
  r7.xy = cb3[18].xx * r1.zw;
  r7.xy = v3.xy * cb3[17].ww + r7.xy;
  r2.w = -0.5 * cb3[18].y;
  r9.x = dot(v0.xyz, r2.xyz);
  r9.y = dot(r0.xyz, r2.xyz);
  r0.xy = r9.xy * r2.ww + r7.xy;
  r0.xyz = t13.Sample(s0_s, r0.xy).xyz;
  r2.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb3[18].zzz * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r2.xyz ? float3(0,0,0) : r0.xyz;
  r0.xyz = cb3[18].www * r0.xyz;
  r1.zw = cb3[19].yy * r1.zw;
  r1.zw = v3.xy * cb3[19].xx + r1.zw;
  r2.x = -0.5 * cb3[19].z;
  r1.zw = r9.xy * r2.xx + r1.zw;
  r2.xyz = t14.Sample(s0_s, r1.zw).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb3[19].www * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r7.xyz ? float3(0,0,0) : r2.xyz;
  r2.xyz = cb3[20].xxx * r2.xyz;
  r2.xyz = cb3[10].xyz * r2.xyz;
  r0.xyz = r0.xyz * cb3[8].xyz + r2.xyz;
  r0.xyz = r4.xyz + r0.xyz;
  r2.xyz = t15.SampleBias(s4_s, v3.xy, cb0[143].y).xyz;
  r1.z = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r1.zzz + -r2.xyz;
  r2.xyz = cb3[20].www * r4.xyz + r2.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r4.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.zxy;
  sincos(cb3[20].z, r7.x, r9.x);
  r4.xyz = r7.xxx * r4.xyz;
  r2.xyz = r2.xyz * r9.xxx + r4.xyz;
  r2.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[12].xyz * r2.xyz;
  r4.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb3[21].xxx * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r4.xyz ? float3(0,0,0) : r2.xyz;
  r4.xyz = r2.xyz + r0.xyz;
  r1.zw = t16.SampleBias(s5_s, v3.xy, cb0[143].y).xy;
  r1.z = cb3[21].y + r1.z;
  r2.w = saturate(1 + -r1.z);
  r0.xyz = r0.xyz * r2.www + r2.xyz;
  r0.xyz = r0.xyz + -r4.xyz;
  r0.xyz = cb3[21].zzz * r0.xyz + r4.xyz;
  r0.xyz = r8.xyz + r0.xyz;
  r2.xyz = cb3[21].www * r0.xyz;
  r4.xyz = -cb3[21].www * r0.xyz + cb3[13].xyz;
  r2.xyz = cb3[22].xxx * r4.xyz + r2.xyz;
  r0.xyz = cb3[21].www * -r0.xyz + r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  r4.x = saturate(cb3[22].y + r1.w);
  r1.w = cb3[23].x * cb2[1].w;
  r2.w = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.w + r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.y = cb3[23].y + r1.x;
  r4.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r2.w = cb2[1].w * 0.617499948 + -r1.x;
  r2.w = saturate(r2.w / r4.w);
  r3.w = -cb2[1].w * 0.649999976 + 8000;
  r2.w = r2.w * r3.w + r4.z;
  r1.y = r1.y / r2.w;
  r1.x = r1.x / cb3[23].y;
  r2.w = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.y = r1.w ? r1.y : r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[23].x));
  r1.w = 1 + cb3[23].x;
  r1.y = r1.y ? r1.w : 1.39999998;
  r7.xyz = -cb0[129].xxy + v4.xxy;
  r1.w = r7.x * cb0[130].z + -0.469999999;
  r1.w = 4.93230057 * r1.w;
  r1.w = cos(r1.w);
  r1.w = 0.899999976 + r1.w;
  r1.w = saturate(0.555555582 * r1.w);
  r1.y = r1.y + -r1.w;
  r4.zw = cb0[152].xx + r7.yz;
  r4.zw = (uint2)r4.zw;
  r1.w = (uint)r4.w << 1;
  r1.w = (int)r1.w + (int)r4.z;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r4.zw = float2(0.015625,0.015625) * r7.yz;
  r2.w = t17.SampleBias(s6_s, r4.zw, cb0[143].y).x;
  r1.w = r2.w + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = v2.y * r1.x;
  r7.xyz = -cb0[67].xyz + r3.xyz;
  r1.y = dot(r7.xyz, r7.xyz);
  r1.y = sqrt(r1.y);
  r1.y = r1.y / cb3[24].x;
  r1.y = saturate(r1.y * cb3[24].w + -cb3[24].z);
  r1.y = r1.y * 3 + -1;
  r1.y = r1.y * cb3[25].x + r1.w;
  r1.y = -0.5 + r1.y;
  r1.w = cmp(0.00100000005 < abs(v2.w));
  r4.zw = floor(v4.xy);
  r2.w = dot(r4.zw, float2(347.834503,3343.28369));
  r2.w = cos(r2.w);
  r2.w = 1000 * r2.w;
  r2.w = frac(r2.w);
  r3.w = cmp(v2.w < 0);
  r4.z = 1 + v2.w;
  r4.z = cmp(r2.w < r4.z);
  r2.w = cmp(v2.w < r2.w);
  r2.w = r3.w ? r4.z : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r1.w = r1.w ? r2.w : 0;
  if (r1.w != 0) discard;
  r1.x = r1.x * r1.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r0.xyz = min(float3(1,1,1), r0.xyz);
  r4.y = saturate(cb3[22].w);
  r1.z = saturate(r1.z);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r1.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = min(float3(0.99000001,0.99000001,0.99000001), r1.xyz);
  r1.xyz = cb0[213].xyz * r1.xyz;
  r7.xyz = (int3)r1.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r1.w = 1 + cb0[213].w;
  r1.xyz = r1.xyz / r7.www;
  r1.xyz = frac(r1.xyz);
  r1.xyz = cb0[213].www * r1.xyz;
  r1.xyz = r7.xyz * r1.www + r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) + r1.xyz;
  r1.xyz = cb0[214].xyz * r1.xyz;
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r1.w = t9.SampleLevel(s1_s, r1.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r2.w = 0.0799999982 * r4.y;
  r7.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r7.xyz = r4.xxx * r7.xyz + r2.www;
  r8.xyz = -r0.xyz * r4.xxx + r0.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r2.www ? r9.xyz : r8.xyz;
  r7.xyz = r2.www ? float3(0,0,0) : r7.xyz;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r9.xyz = t1.SampleLevel(s1_s, r1.xyz, 0).zxy;
  r10.xyzw = t2.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t4.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t6.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r9.yyyy;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r9.zzzz;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r9.xxxx;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = t3.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t5.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t7.SampleLevel(s1_s, r1.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = r13.xyzw * r9.yyyy;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r9.zzzz;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyzw = r15.xyzw * r9.xxxx;
  r15.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r15.xyzw;
  r16.xyz = r6.yzy * r6.yzx;
  r17.yw = r6.zz * r6.yx;
  r3.w = r6.x * r6.x + -r16.x;
  r18.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r6.yzx;
  r17.xz = r16.zy * float2(1,3) + float2(0,-1);
  r16.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r17.xyzw;
  r3.w = 0.429042608 * r3.w;
  r17.x = r9.y;
  r17.yzw = r10.yzw;
  r18.x = 0.886227548;
  r4.z = dot(r17.xyzw, r18.xyzw);
  r10.yzw = r13.xyz;
  r4.w = dot(r10.xyzw, r16.xyzw);
  r4.z = r4.z + r4.w;
  r10.x = r13.w * r3.w + r4.z;
  r13.x = r9.z;
  r13.yzw = r11.yzw;
  r4.z = dot(r13.xyzw, r18.xyzw);
  r11.yzw = r14.xyz;
  r4.w = dot(r11.xyzw, r16.xyzw);
  r4.z = r4.z + r4.w;
  r10.y = r14.w * r3.w + r4.z;
  r9.yzw = r12.yzw;
  r4.z = dot(r9.xyzw, r18.xyzw);
  r12.yzw = r15.xyz;
  r4.w = dot(r12.xyzw, r16.xyzw);
  r4.z = r4.z + r4.w;
  r10.z = r15.w * r3.w + r4.z;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = cb0[157].xyz * r9.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r1.xyz = t8.SampleLevel(s1_s, r1.xyz, 0).xyz;
    r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r3.w = dot(r1.xyz, r1.xyz);
    r10.x = sqrt(r3.w);
    r3.w = max(9.99999975e-005, r10.x);
    r1.xyz = r1.xyz / r3.www;
    r3.w = 1 + -r10.x;
    r3.w = -r3.w * r3.w + 1;
    r5.xyz = r5.xyz * r0.www + -r1.xyz;
    r5.xyz = r3.www * r5.xyz + r1.xyz;
    r0.w = saturate(dot(r1.xyz, r6.xyz));
    r1.x = 1 + -r0.w;
    r10.y = r3.w * r1.x + r0.w;
  } else {
    r5.xyz = r6.xyz;
    r10.xy = float2(1,1);
  }
  r11.x = t10[0].val[0/4];
  r11.y = t10[0].val[0/4+1];
  r11.z = t10[0].val[0/4+2];
  r11.w = t10[0].val[0/4+3];
  r5.w = 1;
  r1.x = dot(r11.xyzw, r5.xyzw);
  r11.x = t10[1].val[0/4];
  r11.y = t10[1].val[0/4+1];
  r11.z = t10[1].val[0/4+2];
  r11.w = t10[1].val[0/4+3];
  r1.y = dot(r11.xyzw, r5.xyzw);
  r11.x = t10[2].val[0/4];
  r11.y = t10[2].val[0/4+1];
  r11.z = t10[2].val[0/4+2];
  r11.w = t10[2].val[0/4+3];
  r1.z = dot(r11.xyzw, r5.xyzw);
  r11.xyzw = r5.xyzz * r5.yzzx;
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
  r0.w = r5.y * r5.y;
  r0.w = r5.x * r5.x + -r0.w;
  r5.x = t10[6].val[0/4];
  r5.y = t10[6].val[0/4+1];
  r5.z = t10[6].val[0/4+2];
  r1.xyz = r12.xyz + r1.xyz;
  r1.xyz = r5.xyz * r0.www + r1.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = cb0[187].xyz * r1.xyz;
  r0.w = r10.x * r10.y;
  r1.xyz = r1.xyz * r0.www;
  r1.xyz = r9.xyz * float3(0.318309873,0.318309873,0.318309873) + r1.xyz;
  r0.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r1.xyz * r8.xyz;
  r5.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r1.xyz = r5.xyz * r1.xyz;
  r5.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r3.w = (int)r7.y | (int)r7.x;
    r3.w = (int)r7.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r3.www ? r3.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.xyz + r1.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r6.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}