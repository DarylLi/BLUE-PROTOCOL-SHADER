// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[20];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r3.xyz = r2.xyz / cb2[11].zzz;
  r4.xy = t9.SampleBias(s2_s, r3.xz, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r5.y = v1.y * r0.w;
  r5.xz = -r4.xy;
  r4.xy = t9.SampleBias(s2_s, r3.yz, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.x = v1.x * r0.w;
  r6.yz = -r4.xy;
  r0.w = cb2[12].x + -cb2[12].y;
  r4.xy = saturate(abs(v1.xz) * r0.ww + cb2[12].yy);
  r6.xyz = r6.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r6.xyz + r5.xyz;
  r4.zw = t9.SampleBias(s2_s, r3.xy, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.zw, r4.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.xy = -r4.zw;
  r6.z = v1.z * r0.w;
  r6.xyz = r6.xyz + -r5.xyz;
  r5.xyz = r4.yyy * r6.xyz + r5.xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r5.xyz = r5.xyz / r0.www;
  r6.x = dot(v0.xyz, r5.xyz);
  r6.y = dot(r0.xyz, r5.xyz);
  r6.z = dot(v1.xyz, r5.xyz);
  r5.xyz = float3(0,0,1) + -r6.xyz;
  r5.xyz = cb2[12].zzz * r5.xyz + r6.xyz;
  r6.xyz = r2.xyz / cb2[13].yyy;
  r4.zw = t10.SampleBias(s3_s, r6.xz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.zw, r4.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.y = v1.y * r0.w;
  r7.xz = -r4.zw;
  r4.zw = t10.SampleBias(s3_s, r6.yz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.zw, r4.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.x = v1.x * r0.w;
  r8.yz = -r4.zw;
  r0.w = -cb2[14].x + cb2[13].w;
  r4.zw = saturate(abs(v1.xz) * r0.ww + cb2[14].xx);
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.zzz * r8.xyz + r7.xyz;
  r8.xy = t10.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.xy = -r8.xy;
  r8.z = v1.z * r0.w;
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.www * r8.xyz + r7.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r7.xyz = r7.xyz / r0.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.xyz, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb2[14].yyy * r7.xyz + r8.xyz;
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = v2.xxx * r7.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r5.xyz = cb2[4].xyz + -cb2[3].xyz;
  r5.xyz = cb2[14].zzz * r5.xyz + cb2[3].xyz;
  r7.xyz = t11.Sample(s0_s, r3.xz).xyz;
  r8.xyz = t11.Sample(s0_s, r3.yz).xyz;
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.xxx * r8.xyz + r7.xyz;
  r8.xyz = t11.Sample(s0_s, r3.xy).xyz;
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.yyy * r8.xyz + r7.xyz;
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r0.www + -r7.xyz;
  r7.xyz = cb2[15].yyy * r8.xyz + r7.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb2[15].x, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb2[6].xyz * r7.xyz;
  r8.xyz = t12.Sample(s0_s, r6.xz).xyz;
  r9.xyz = t12.Sample(s0_s, r6.yz).xyz;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r4.zzz * r9.xyz + r8.xyz;
  r9.xyz = t12.Sample(s0_s, r6.xy).xyz;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r4.www * r9.xyz + r8.xyz;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r0.www + -r8.xyz;
  r8.xyz = cb2[16].xxx * r9.xyz + r8.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb2[15].w, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = r8.xyz * cb2[8].xyz + -r7.xyz;
  r7.xyz = v2.xxx * r8.xyz + r7.xyz;
  r2.xyz = r2.xyz / cb2[17].yyy;
  r8.xyz = t13.Sample(s0_s, r2.xz).xyz;
  r9.xyz = t13.Sample(s0_s, r2.yz).xyz;
  r0.w = -cb2[18].x + cb2[17].w;
  r2.zw = saturate(abs(v1.xz) * r0.ww + cb2[18].xx);
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r2.zzz * r9.xyz + r8.xyz;
  r2.xyz = t13.Sample(s0_s, r2.xy).xyz;
  r2.xyz = r2.xyz + -r8.xyz;
  r2.xyz = r2.www * r2.xyz + r8.xyz;
  r0.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r0.www + -r2.xyz;
  r2.xyz = cb2[18].yyy * r8.xyz + r2.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r8.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb2[16].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r2.xyz = r2.xyz * r10.xxx + r8.xyz;
  r2.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = r2.xyz * cb2[10].xyz + -r7.xyz;
  r2.xyz = v2.yyy * r2.xyz + r7.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r7.xy = t14.Sample(s0_s, r3.xz).xy;
  r3.zw = t14.Sample(s0_s, r3.yz).xy;
  r3.zw = r3.zw + -r7.xy;
  r3.zw = r4.xx * r3.zw + r7.xy;
  r3.xy = t14.Sample(s0_s, r3.xy).xy;
  r3.xy = r3.xy + -r3.zw;
  r3.xy = r4.yy * r3.xy + r3.zw;
  r0.w = saturate(cb2[18].z + r3.x);
  r3.xz = t15.Sample(s0_s, r6.xz).xy;
  r4.xy = t15.Sample(s0_s, r6.yz).xy;
  r4.xy = r4.xy + -r3.xz;
  r3.xz = r4.zz * r4.xy + r3.xz;
  r4.xy = t15.Sample(s0_s, r6.xy).xy;
  r4.xy = r4.xy + -r3.xz;
  r3.xz = r4.ww * r4.xy + r3.xz;
  r1.w = saturate(cb2[18].w + r3.x);
  r1.w = r1.w + -r0.w;
  r0.w = saturate(v2.x * r1.w + r0.w);
  r1.w = r3.z + -r3.y;
  r3.x = saturate(v2.x * r1.w + r3.y);
  r1.w = cmp(0.00100000005 < abs(v3.w));
  r3.zw = floor(v5.xy);
  r2.w = dot(r3.zw, float2(347.834503,3343.28369));
  r2.w = cos(r2.w);
  r2.w = 1000 * r2.w;
  r2.w = frac(r2.w);
  r3.z = cmp(v3.w < 0);
  r3.w = 1 + v3.w;
  r3.w = cmp(r2.w < r3.w);
  r2.w = cmp(v3.w < r2.w);
  r2.w = r3.z ? r3.w : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r1.w = r1.w ? r2.w : 0;
  if (r1.w != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r3.y = saturate(cb2[19].x);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r4.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
  r4.xyz = cb0[213].xyz * r4.xyz;
  r6.xyz = (int3)r4.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r0.w = 1 + cb0[213].w;
  r4.xyz = r4.xyz / r6.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = cb0[213].www * r4.xyz;
  r4.xyz = r6.xyz * r0.www + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = cb0[214].xyz * r4.xyz;
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r0.w = t8.SampleLevel(s1_s, r4.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r1.w = 0.0799999982 * r3.y;
  r6.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r6.xyz = r3.xxx * r6.xyz + r1.www;
  r7.xyz = -r2.xyz * r3.xxx + r2.xyz;
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
  r8.xyz = t1.SampleLevel(s1_s, r4.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r4.xyzw = t7.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r4.xyzw = r4.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r4.xyzw = r4.xyzw * r8.xxxx;
  r4.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r4.xyzw;
  r14.xyz = r0.yzy * r0.yzx;
  r15.yw = r0.zz * r0.yx;
  r2.w = r0.x * r0.x + -r14.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r15.xz = r14.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r2.w = 0.429042608 * r2.w;
  r15.x = r8.y;
  r15.yzw = r9.yzw;
  r16.x = 0.886227548;
  r3.z = dot(r15.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r3.w = dot(r9.xyzw, r14.xyzw);
  r3.z = r3.z + r3.w;
  r9.x = r12.w * r2.w + r3.z;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r3.z = dot(r12.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r3.w = dot(r10.xyzw, r14.xyzw);
  r3.z = r3.z + r3.w;
  r9.y = r13.w * r2.w + r3.z;
  r8.yzw = r11.yzw;
  r3.z = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r4.xyz;
  r3.w = dot(r11.xyzw, r14.xyzw);
  r3.z = r3.z + r3.w;
  r9.z = r4.w * r2.w + r3.z;
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
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r3.z = cmp(0 < cb0[140].x);
  if (r3.z != 0) {
    r7.xyz = -cb1[5].xyz + r1.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r3.z = (int)r7.y | (int)r7.x;
    r3.z = (int)r7.z | (int)r3.z;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r3.zzz ? r1.xyz : r5.xyz;
  }
  r1.xyz = cb0[145].yyy * r6.xyz + r4.xyz;
  r1.xyz = r1.xyz + r5.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r3.z = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r3.z = frac(r3.z);
  r3.z = -0.5 + r3.z;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r2.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.z * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}