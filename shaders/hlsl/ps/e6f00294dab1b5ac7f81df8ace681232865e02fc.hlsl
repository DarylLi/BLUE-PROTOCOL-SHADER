// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[21];
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
  float3 v4 : TEXCOORD9,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xyz = -cb0[70].xyz + v4.xyz;
  r3.xy = t11.SampleBias(s2_s, v3.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb2[11].xxx * r4.xyz + r3.xyz;
  r0.w = 1 + r3.z;
  r4.xyz = r2.xyz / cb2[11].www;
  r5.xy = t12.SampleBias(s3_s, r4.xz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r6.y = v1.y * r1.w;
  r6.xz = -r5.xy;
  r5.xy = t12.SampleBias(s3_s, r4.yz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.x = v1.x * r1.w;
  r7.yz = -r5.xy;
  r1.w = cb2[12].y + -cb2[12].z;
  r5.xy = saturate(abs(v1.xz) * r1.ww + cb2[12].zz);
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.xxx * r7.xyz + r6.xyz;
  r5.zw = t12.SampleBias(s3_s, r4.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.xy = -r5.zw;
  r7.z = v1.z * r1.w;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.yyy * r7.xyz + r6.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r6.xyz = r6.xyz / r1.www;
  r7.x = dot(v0.xyz, r6.xyz);
  r7.y = dot(r0.xyz, r6.xyz);
  r7.z = dot(v1.xyz, r6.xyz);
  r6.xyz = float3(0,0,1) + -r7.xyz;
  r6.xyz = cb2[12].www * r6.xyz + r7.xyz;
  r7.xyz = r2.xyz / cb2[13].zzz;
  r5.zw = t13.SampleBias(s4_s, r7.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r8.y = v1.y * r1.w;
  r8.xz = -r5.zw;
  r5.zw = t13.SampleBias(s4_s, r7.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.zw, r5.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r9.x = v1.x * r1.w;
  r9.yz = -r5.zw;
  r1.w = cb2[14].x + -cb2[14].y;
  r5.zw = saturate(abs(v1.xz) * r1.ww + cb2[14].yy);
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.zzz * r9.xyz + r8.xyz;
  r9.xy = t13.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r9.xy, r9.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r9.xy = -r9.xy;
  r9.z = v1.z * r1.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.www * r9.xyz + r8.xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = sqrt(r1.w);
  r8.xyz = r8.xyz / r1.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb2[14].zzz * r8.xyz + r9.xyz;
  r9.xy = t14.SampleBias(s5_s, v3.xy, cb0[143].y).xy;
  r1.w = saturate(cb2[14].w * r9.x);
  r2.w = saturate(cb2[15].x * r9.y);
  r8.xyz = r8.xyz + -r6.xyz;
  r6.xyz = r1.www * r8.xyz + r6.xyz;
  r2.xyz = r2.xyz / cb2[15].www;
  r8.xy = t15.SampleBias(s6_s, r2.xz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r8.xy, r8.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r9.y = v1.y * r4.w;
  r9.xz = -r8.xy;
  r8.xy = t15.SampleBias(s6_s, r2.yz, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r8.xy, r8.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r10.x = v1.x * r4.w;
  r10.yz = -r8.xy;
  r4.w = cb2[16].y + -cb2[16].z;
  r8.xy = saturate(abs(v1.xz) * r4.ww + cb2[16].zz);
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r8.xxx * r10.xyz + r9.xyz;
  r8.zw = t15.SampleBias(s6_s, r2.xy, cb0[143].y).xy;
  r8.zw = r8.zw * float2(2,2) + float2(-1,-1);
  r4.w = dot(r8.zw, r8.zw);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.w = sqrt(r4.w);
  r10.xy = -r8.zw;
  r10.z = v1.z * r4.w;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r8.yyy * r10.xyz + r9.xyz;
  r4.w = dot(r9.xyz, r9.xyz);
  r4.w = sqrt(r4.w);
  r9.xyz = r9.xyz / r4.www;
  r10.x = dot(v0.xyz, r9.xyz);
  r10.y = dot(r0.xyz, r9.xyz);
  r10.z = dot(v1.xyz, r9.xyz);
  r9.xyz = float3(0,0,1) + -r10.xyz;
  r9.xyz = cb2[16].www * r9.xyz + r10.xyz;
  r9.xyz = r9.xyz + -r6.xyz;
  r6.xyz = r2.www * r9.xyz + r6.xyz;
  r3.w = 1 + r3.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r3.z = dot(r3.xyw, r6.xyz);
  r6.xyz = r6.xyz * r0.www;
  r3.xyz = r3.xyw * r3.zzz + -r6.xyz;
  r3.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r0.xyz * r0.www;
  r6.xyz = cb2[4].xyz + -cb2[3].xyz;
  r6.xyz = cb2[17].xxx * r6.xyz + cb2[3].xyz;
  r9.xyz = t16.Sample(s0_s, r4.xz).xyz;
  r10.xyz = t16.Sample(s0_s, r4.yz).xyz;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.xxx * r10.xyz + r9.xyz;
  r10.xyz = t16.Sample(s0_s, r4.xy).xyz;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r5.yyy * r10.xyz + r9.xyz;
  r3.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r3.www + -r9.xyz;
  r9.xyz = cb2[17].www * r10.xyz + r9.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r10.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb2[17].z, r11.x, r12.x);
  r10.xyz = r11.xxx * r10.xyz;
  r9.xyz = r9.xyz * r12.xxx + r10.xyz;
  r9.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r9.xyz = cb2[6].xyz * r9.xyz;
  r10.xyz = t17.Sample(s0_s, r7.xz).xyz;
  r11.xyz = t17.Sample(s0_s, r7.yz).xyz;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r5.zzz * r11.xyz + r10.xyz;
  r11.xyz = t17.Sample(s0_s, r7.xy).xyz;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r5.www * r11.xyz + r10.xyz;
  r3.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r3.www + -r10.xyz;
  r10.xyz = cb2[18].zzz * r11.xyz + r10.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r11.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb2[18].y, r12.x, r13.x);
  r11.xyz = r12.xxx * r11.xyz;
  r10.xyz = r10.xyz * r13.xxx + r11.xyz;
  r10.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r10.xyz = r10.xyz * cb2[8].xyz + -r9.xyz;
  r9.xyz = r1.www * r10.xyz + r9.xyz;
  r10.xyz = t18.Sample(s0_s, r2.xz).xyz;
  r11.xyz = t18.Sample(s0_s, r2.yz).xyz;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r8.xxx * r11.xyz + r10.xyz;
  r11.xyz = t18.Sample(s0_s, r2.xy).xyz;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r8.yyy * r11.xyz + r10.xyz;
  r3.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r3.www + -r10.xyz;
  r10.xyz = cb2[19].yyy * r11.xyz + r10.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r10.xyz);
  r10.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r11.xyz = float3(0.577350259,0.577350259,0.577350259) * r10.zxy;
  r11.xyz = r10.zxy * float3(0.577350259,0.577350259,0.577350259) + -r11.zxy;
  sincos(cb2[19].x, r12.x, r13.x);
  r11.xyz = r12.xxx * r11.xyz;
  r10.xyz = r10.xyz * r13.xxx + r11.xyz;
  r10.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r10.xyz;
  r10.xyz = r10.xyz * cb2[10].xyz + -r9.xyz;
  r9.xyz = r2.www * r10.xyz + r9.xyz;
  r9.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r9.xyz);
  r8.zw = t19.Sample(s0_s, r4.xz).xy;
  r4.zw = t19.Sample(s0_s, r4.yz).xy;
  r4.zw = r4.zw + -r8.zw;
  r4.zw = r5.xx * r4.zw + r8.zw;
  r4.xy = t19.Sample(s0_s, r4.xy).xy;
  r4.xy = r4.xy + -r4.zw;
  r4.xy = r5.yy * r4.xy + r4.zw;
  r3.w = saturate(cb2[19].z + r4.x);
  r4.xz = t20.Sample(s0_s, r7.xz).xy;
  r5.xy = t20.Sample(s0_s, r7.yz).xy;
  r5.xy = r5.xy + -r4.xz;
  r4.xz = r5.zz * r5.xy + r4.xz;
  r5.xy = t20.Sample(s0_s, r7.xy).xy;
  r5.xy = r5.xy + -r4.xz;
  r4.xz = r5.ww * r5.xy + r4.xz;
  r4.x = saturate(cb2[19].w + r4.x);
  r4.x = r4.x + -r3.w;
  r3.w = r1.w * r4.x + r3.w;
  r4.xw = t21.Sample(s0_s, r2.xz).xy;
  r5.xy = t21.Sample(s0_s, r2.yz).xy;
  r5.xy = r5.xy + -r4.xw;
  r4.xw = r8.xx * r5.xy + r4.xw;
  r2.xy = t21.Sample(s0_s, r2.xy).xy;
  r2.xy = r2.xy + -r4.xw;
  r2.xy = r8.yy * r2.xy + r4.xw;
  r2.x = saturate(cb2[20].x + r2.x);
  r2.x = r2.x + -r3.w;
  r2.x = saturate(r2.w * r2.x + r3.w);
  r2.z = r4.z + -r4.y;
  r1.w = r1.w * r2.z + r4.y;
  r2.y = r2.y + -r1.w;
  r4.x = saturate(r2.w * r2.y + r1.w);
  r1.w = cmp(0.00100000005 < abs(v2.w));
  r2.yz = floor(v5.xy);
  r2.y = dot(r2.yz, float2(347.834503,3343.28369));
  r2.y = cos(r2.y);
  r2.y = 1000 * r2.y;
  r2.y = frac(r2.y);
  r2.z = cmp(v2.w < 0);
  r2.w = 1 + v2.w;
  r2.w = cmp(r2.y < r2.w);
  r2.y = cmp(v2.w < r2.y);
  r2.y = r2.z ? r2.w : r2.y;
  r2.y = cmp((int)r2.y == 0);
  r1.w = r1.w ? r2.y : 0;
  if (r1.w != 0) discard;
  r2.yzw = min(float3(1,1,1), r9.xyz);
  r4.y = saturate(cb2[20].y);
  o2.z = r2.x * cb0[139].y + cb0[139].x;
  r5.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
  r5.xyz = cb0[213].xyz * r5.xyz;
  r7.xyz = (int3)r5.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r1.w = 1 + cb0[213].w;
  r5.xyz = r5.xyz / r7.www;
  r5.xyz = frac(r5.xyz);
  r5.xyz = cb0[213].www * r5.xyz;
  r5.xyz = r7.xyz * r1.www + r5.xyz;
  r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
  r5.xyz = cb0[214].xyz * r5.xyz;
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r1.w = t9.SampleLevel(s1_s, r5.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r2.x = 0.0799999982 * r4.y;
  r7.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.yzw;
  r7.xyz = r4.xxx * r7.xyz + r2.xxx;
  r8.xyz = -r2.yzw * r4.xxx + r2.yzw;
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
  r9.xyz = t1.SampleLevel(s1_s, r5.xyz, 0).zxy;
  r10.xyzw = t2.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t4.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t6.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r9.yyyy;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r9.zzzz;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r9.xxxx;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = t3.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t5.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t7.SampleLevel(s1_s, r5.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = r13.xyzw * r9.yyyy;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r9.zzzz;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyzw = r15.xyzw * r9.xxxx;
  r15.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r15.xyzw;
  r16.xyz = r3.yzy * r3.yzx;
  r17.yw = r3.zz * r3.yx;
  r3.w = r3.x * r3.x + -r16.x;
  r18.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r3.yzx;
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
    r5.xyz = t8.SampleLevel(s1_s, r5.xyz, 0).xyz;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r3.w = dot(r5.xyz, r5.xyz);
    r10.x = sqrt(r3.w);
    r3.w = max(9.99999975e-005, r10.x);
    r5.xyz = r5.xyz / r3.www;
    r3.w = 1 + -r10.x;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.xyz * r0.www + -r5.xyz;
    r0.xyz = r3.www * r0.xyz + r5.xyz;
    r4.z = saturate(dot(r5.xyz, r3.xyz));
    r4.w = 1 + -r4.z;
    r10.y = r3.w * r4.w + r4.z;
  } else {
    r0.xyz = r3.xyz;
    r10.xy = float2(1,1);
  }
  r5.x = t10[0].val[0/4];
  r5.y = t10[0].val[0/4+1];
  r5.z = t10[0].val[0/4+2];
  r5.w = t10[0].val[0/4+3];
  r0.w = 1;
  r5.x = dot(r5.xyzw, r0.xyzw);
  r11.x = t10[1].val[0/4];
  r11.y = t10[1].val[0/4+1];
  r11.z = t10[1].val[0/4+2];
  r11.w = t10[1].val[0/4+3];
  r5.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t10[2].val[0/4];
  r11.y = t10[2].val[0/4+1];
  r11.z = t10[2].val[0/4+2];
  r11.w = t10[2].val[0/4+3];
  r5.z = dot(r11.xyzw, r0.xyzw);
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
  r5.xyz = r12.xyz + r5.xyz;
  r0.xyz = r0.yzw * r0.xxx + r5.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r9.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r5.xyz = r2.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r2.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r2.yzw * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r0.xyz = r5.xyz * r0.xyz;
  r5.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r7.xyz = -cb1[5].xyz + r1.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r3.w = (int)r7.y | (int)r7.x;
    r3.w = (int)r7.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r6.xyz = r3.www ? r1.xyz : r6.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.x;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r2.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}