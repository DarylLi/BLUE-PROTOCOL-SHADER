// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t22 : register(t22);

Texture2D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

TextureCubeArray<float4> t10 : register(t10);

TextureCube<float4> t9 : register(t9);

Buffer<uint4> t8 : register(t8);

Buffer<uint4> t7 : register(t7);

Buffer<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s8_s : register(s8);

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
  float4 cb5[18];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[15];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2728];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[179];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD7,
  float3 v5 : TEXCOORD9,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = -cb0[129].xy + v6.xy;
  r1.zw = cb0[130].zw * r1.xy;
  r2.xy = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v6.ww * r2.xy;
  r2.zw = v6.zw;
  r3.xyw = float3(2,-2,1);
  r3.z = v6.w;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r3.xyzw = cb0[45].xyzw * v6.yyyy;
  r3.xyzw = v6.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v6.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r5.xyzw = -cb0[70].zxyz + v5.zxyz;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = -r3.xyz * r0.www;
  r7.xyzw = cb5[8].xxww * cb0[142].zzzz;
  r8.xy = r4.xy / cb5[8].yy;
  r9.xyzw = r7.xyyy * float4(-0.100000001,0.100000001,0.100000001,0.100000001) + r8.xyxy;
  r8.zw = float2(0.864861012,0.148384005) + r9.xy;
  r8.zw = t17.Sample(s0_s, r8.zw).xy;
  r10.xy = r8.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r10.xy, r10.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r10.z = sqrt(r0.w);
  r8.zw = t17.Sample(s0_s, r9.zw).xy;
  r9.xy = r8.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.xy, r9.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r9.z = sqrt(r0.w);
  r7.xy = r7.xx * float2(-0.100000001,-0.100000001) + r8.xy;
  r7.xy = float2(0.418099999,0.354799986) + r7.xy;
  r7.xy = t17.Sample(s0_s, r7.xy).xy;
  r8.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r8.z = sqrt(r0.w);
  r8.xyz = r9.xyz + r8.xyz;
  r8.xyz = r10.xyz + r8.xyz;
  r9.xyz = float3(0.5,0.5,0.5) * r8.xyz;
  r8.xyz = -r8.xyz * float3(0.5,0.5,0.5) + float3(0,0,1);
  r8.xyz = cb5[8].zzz * r8.xyz + r9.xyz;
  r7.xy = r4.xy / cb5[9].xx;
  r9.xyzw = r7.zwww * float4(-0.100000001,0.100000001,0.100000001,0.100000001) + r7.xyxy;
  r9.xy = float2(0.864861012,0.148384005) + r9.xy;
  r9.xy = t18.Sample(s0_s, r9.xy).xy;
  r10.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r10.xy, r10.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r10.z = sqrt(r0.w);
  r9.xy = t18.Sample(s0_s, r9.zw).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.xy, r9.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r9.z = sqrt(r0.w);
  r7.xy = r7.zz * float2(-0.100000001,-0.100000001) + r7.xy;
  r7.xy = float2(0.418099999,0.354799986) + r7.xy;
  r7.xy = t18.Sample(s0_s, r7.xy).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r7.z = sqrt(r0.w);
  r7.xyz = r9.xyz + r7.xyz;
  r7.xyz = r10.xyz + r7.xyz;
  r9.xyz = float3(0.333330005,0.333330005,0.333330005) * r7.xyz;
  r7.xyz = -r7.xyz * float3(0.333330005,0.333330005,0.333330005) + float3(0,0,1);
  r7.xyz = cb5[9].yyy * r7.xyz + r9.xyz;
  r9.xyz = float3(1,1,0.200000003) * r7.xyz;
  r0.w = cb4[4].x + cb4[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r10.x, r11.x);
  r12.x = -r10.x;
  r12.y = r11.x;
  r11.x = dot(cb4[3].yx, r12.xy);
  r12.z = r10.x;
  r11.y = dot(cb4[3].yx, r12.yz);
  r0.w = dot(r11.xy, r11.xy);
  r0.w = sqrt(r0.w);
  r10.xy = r11.xy / r0.ww;
  r11.xyz = cb4[4].yzw * cb4[0].yzw;
  r0.w = 6.28318405 / r11.x;
  r3.w = r0.w * r11.y;
  r6.w = dot(r5.yz, r10.xy);
  r7.w = cb4[1].x * cb0[142].z;
  r0.w = r6.w * r0.w + r7.w;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r11.x, r12.x);
  r0.w = r12.x * r3.w;
  r10.xy = r10.xy * r0.ww;
  r10.xy = -r10.xy;
  r0.w = r11.x * r3.w;
  r0.w = -r0.w * r11.z + 1;
  r3.w = cb4[5].x + cb4[0].x;
  r3.w = 6.28318548 * r3.w;
  sincos(r3.w, r11.x, r12.x);
  r13.x = -r11.x;
  r13.y = r12.x;
  r12.x = dot(cb4[3].yx, r13.xy);
  r13.z = r11.x;
  r12.y = dot(cb4[3].yx, r13.yz);
  r3.w = dot(r12.xy, r12.xy);
  r3.w = sqrt(r3.w);
  r11.xy = r12.xy / r3.ww;
  r12.xyz = cb4[5].yzw * cb4[0].yzw;
  r3.w = 6.28318405 / r12.x;
  r6.w = r3.w * r12.y;
  r8.w = dot(r5.yz, r11.xy);
  r3.w = r8.w * r3.w + r7.w;
  r3.w = 1.00000024 * r3.w;
  sincos(r3.w, r12.x, r13.x);
  r3.w = r13.x * r6.w;
  r11.xy = r11.xy * r3.ww;
  r11.xy = -r11.xy;
  r3.w = r12.x * r6.w;
  r11.z = -r3.w * r12.z + r0.w;
  r10.zw = float2(1,1);
  r10.xyz = r11.xyz + r10.xyz;
  r0.w = cb4[6].x + cb4[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r11.x, r12.x);
  r13.x = -r11.x;
  r13.y = r12.x;
  r12.x = dot(cb4[3].yx, r13.xy);
  r13.z = r11.x;
  r12.y = dot(cb4[3].yx, r13.yz);
  r0.w = dot(r12.xy, r12.xy);
  r0.w = sqrt(r0.w);
  r11.xy = r12.xy / r0.ww;
  r12.xyz = cb4[6].yzw * cb4[0].yzw;
  r0.w = 6.28318405 / r12.x;
  r3.w = r0.w * r12.y;
  r6.w = dot(r5.yz, r11.xy);
  r0.w = r6.w * r0.w + r7.w;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r12.x, r13.x);
  r0.w = r13.x * r3.w;
  r11.xy = r11.xy * r0.ww;
  r11.xy = -r11.xy;
  r0.w = r12.x * r3.w;
  r0.w = -r0.w * r12.z + 1;
  r3.w = cb4[7].x + cb4[0].x;
  r3.w = 6.28318548 * r3.w;
  sincos(r3.w, r12.x, r13.x);
  r14.x = -r12.x;
  r14.y = r13.x;
  r13.x = dot(cb4[3].yx, r14.xy);
  r14.z = r12.x;
  r13.y = dot(cb4[3].yx, r14.yz);
  r3.w = dot(r13.xy, r13.xy);
  r3.w = sqrt(r3.w);
  r12.xy = r13.xy / r3.ww;
  r13.xyz = cb4[7].yzw * cb4[0].yzw;
  r3.w = 6.28318405 / r13.x;
  r6.w = r3.w * r13.y;
  r8.w = dot(r5.yz, r12.xy);
  r3.w = r8.w * r3.w + r7.w;
  r3.w = 1.00000024 * r3.w;
  sincos(r3.w, r13.x, r14.x);
  r3.w = r14.x * r6.w;
  r12.xy = r12.xy * r3.ww;
  r12.xy = -r12.xy;
  r3.w = r13.x * r6.w;
  r12.z = -r3.w * r13.z + r0.w;
  r11.z = r10.z;
  r11.xyz = r12.xyz + r11.xyz;
  r10.xyz = r11.xyz + r10.xyw;
  r0.w = cb4[8].x + cb4[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r11.x, r12.x);
  r13.x = -r11.x;
  r13.y = r12.x;
  r12.x = dot(cb4[3].yx, r13.xy);
  r13.z = r11.x;
  r12.y = dot(cb4[3].yx, r13.yz);
  r0.w = dot(r12.xy, r12.xy);
  r0.w = sqrt(r0.w);
  r11.xy = r12.xy / r0.ww;
  r12.xyz = cb4[8].yzw * cb4[0].yzw;
  r0.w = 6.28318405 / r12.x;
  r3.w = r0.w * r12.y;
  r6.w = dot(r5.yz, r11.xy);
  r0.w = r6.w * r0.w + r7.w;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r12.x, r13.x);
  r0.w = r13.x * r3.w;
  r11.xy = r11.xy * r0.ww;
  r11.xy = -r11.xy;
  r0.w = r12.x * r3.w;
  r0.w = -r0.w * r12.z + 1;
  r3.w = cb4[9].x + cb4[0].x;
  r3.w = 6.28318548 * r3.w;
  sincos(r3.w, r12.x, r13.x);
  r14.x = -r12.x;
  r14.y = r13.x;
  r13.x = dot(cb4[3].yx, r14.xy);
  r14.z = r12.x;
  r13.y = dot(cb4[3].yx, r14.yz);
  r3.w = dot(r13.xy, r13.xy);
  r3.w = sqrt(r3.w);
  r12.xy = r13.xy / r3.ww;
  r13.xyz = cb4[9].yzw * cb4[0].yzw;
  r3.w = 6.28318405 / r13.x;
  r6.w = r3.w * r13.y;
  r8.w = dot(r5.yz, r12.xy);
  r3.w = r8.w * r3.w + r7.w;
  r3.w = 1.00000024 * r3.w;
  sincos(r3.w, r13.x, r14.x);
  r3.w = r14.x * r6.w;
  r12.xy = r12.xy * r3.ww;
  r12.xy = -r12.xy;
  r3.w = r13.x * r6.w;
  r12.z = -r3.w * r13.z + r0.w;
  r11.z = 1;
  r11.xyz = r12.xyz + r11.xyz;
  r0.w = cb4[10].x + cb4[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r12.x, r13.x);
  r14.x = -r12.x;
  r14.y = r13.x;
  r13.x = dot(cb4[3].yx, r14.xy);
  r14.z = r12.x;
  r13.y = dot(cb4[3].yx, r14.yz);
  r0.w = dot(r13.xy, r13.xy);
  r0.w = sqrt(r0.w);
  r12.xy = r13.xy / r0.ww;
  r13.xyz = cb4[10].yzw * cb4[0].yzw;
  r0.w = 6.28318405 / r13.x;
  r3.w = r0.w * r13.y;
  r6.w = dot(r5.yz, r12.xy);
  r0.w = r6.w * r0.w + r7.w;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r13.x, r14.x);
  r0.w = r14.x * r3.w;
  r12.xy = r12.xy * r0.ww;
  r12.xy = -r12.xy;
  r0.w = r13.x * r3.w;
  r0.w = -r0.w * r13.z + 1;
  r3.w = cb4[11].x + cb4[0].x;
  r3.w = 6.28318548 * r3.w;
  sincos(r3.w, r13.x, r14.x);
  r15.x = -r13.x;
  r15.y = r14.x;
  r14.x = dot(cb4[3].yx, r15.xy);
  r15.z = r13.x;
  r14.y = dot(cb4[3].yx, r15.yz);
  r3.w = dot(r14.xy, r14.xy);
  r3.w = sqrt(r3.w);
  r13.xy = r14.xy / r3.ww;
  r14.xyz = cb4[11].yzw * cb4[0].yzw;
  r3.w = 6.28318405 / r14.x;
  r6.w = r3.w * r14.y;
  r8.w = dot(r5.yz, r13.xy);
  r3.w = r8.w * r3.w + r7.w;
  r3.w = 1.00000024 * r3.w;
  sincos(r3.w, r14.x, r15.x);
  r3.w = r15.x * r6.w;
  r13.xy = r13.xy * r3.ww;
  r13.xy = -r13.xy;
  r3.w = r14.x * r6.w;
  r13.z = -r3.w * r14.z + r0.w;
  r12.z = r11.z;
  r12.xyz = r13.xyz + r12.xyz;
  r11.w = r10.z;
  r11.xyz = r12.xyz + r11.xyw;
  r10.w = 1;
  r10.xyz = r11.xyz + r10.xyw;
  r11.xyz = float3(0.125,0.125,0.125) * r10.xyz;
  r10.xyz = -r10.xyz * float3(0.125,0.125,0.125) + float3(0,0,1);
  r10.xyz = cb5[9].zzz * r10.xyz + r11.xyz;
  r7.xyz = r7.xyz * float3(1,1,0.200000003) + r10.xyz;
  r11.xyz = cb0[67].xyz + -r4.xyz;
  r0.w = dot(r11.xyz, r11.xyz);
  r0.w = sqrt(r0.w);
  r0.w = -cb5[9].w + r0.w;
  r0.w = saturate(r0.w / cb5[10].x);
  r0.w = 1 + -r0.w;
  r11.xyz = r7.xyz + -r8.xyz;
  r8.xyz = r0.www * r11.xyz + r8.xyz;
  r0.w = cb5[10].y * v2.w;
  r11.xyz = float3(0,0,1) + -r8.xyz;
  r11.xyz = r0.www * r11.xyz + r8.xyz;
  r11.xyz = r11.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r11.xyz, r11.xyz);
  r0.w = rsqrt(r0.w);
  r11.xyz = r11.xyz * r0.www;
  r0.xyz = r11.yyy * r0.xyz;
  r0.xyz = r11.xxx * v0.xyz + r0.xyz;
  r0.xyz = r11.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r11.yzw = r0.xyz * r0.www;
  r12.xyz = cb5[10].zzz * cb5[1].xyz;
  r3.w = cb5[10].w * cb0[142].z;
  r8.xyzw = float4(1,1,1,1) + -r8.xyxy;
  r13.xyzw = r5.yzyz / cb5[11].yyyy;
  r8.xyzw = r8.xyzw * cb5[11].xxxx + r13.xyzw;
  r13.xyzw = r3.wwww * float4(0.100000001,0.100000001,-0.100000001,-0.100000001) + r8.zwzw;
  r14.xyz = t19.Sample(s0_s, r13.xy).xyz;
  r7.zw = float2(0.418099999,0.354799986) + r13.zw;
  r13.xyz = t19.Sample(s0_s, r7.zw).xyz;
  r13.xyz = r14.xyz + r13.xyz;
  r8.xyzw = r3.wwww * float4(-0.100000001,0.100000001,0.100000001,-0.100000001) + r8.xyzw;
  r8.xyzw = float4(0.864861012,0.148384005,0.651340008,0.751637995) + r8.xyzw;
  r14.xyz = t19.Sample(s0_s, r8.xy).xyz;
  r8.xyz = t19.Sample(s0_s, r8.zw).xyz;
  r8.xyz = r14.xyz + r8.xyz;
  r8.xyz = r13.xyz + r8.xyz;
  r8.xyz = float3(0.25,0.25,0.25) * r8.xyz;
  r3.w = cmp(0 >= v2.z);
  r6.w = v2.z * v2.z;
  r3.w = r3.w ? 0 : r6.w;
  r8.xyz = r8.xyz * r3.www;
  r13.xyzw = -r5.xyzw + r4.zxyz;
  r3.w = max(0, r13.x);
  r3.w = min(500, r3.w);
  r3.w = r3.w / cb5[11].z;
  r5.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[11].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = cb5[12].x * r3.w;
  r3.w = r5.x ? 0 : r3.w;
  r5.x = cb5[12].y * cb0[142].z;
  r5.yz = r5.yz / cb5[12].zz;
  r5.xy = r5.xx * float2(-0.0250000004,-0.00999999978) + r5.yz;
  r14.xyz = t20.Sample(s0_s, r5.xy).xyz;
  r5.z = t21.Sample(s0_s, r5.xy).x;
  r1.zw = r7.xy * cb5[12].ww + r1.zw;
  r1.zw = r1.zw * cb0[130].xy + cb0[129].xy;
  r1.zw = cb0[132].zw * r1.zw;
  r1.zw = max(cb0[133].xy, r1.zw);
  r1.zw = min(cb0[133].zw, r1.zw);
  r7.xyz = t16.Sample(s1_s, r1.zw).xyz;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = cb0[135].zzz * r7.xyz;
  r7.xyz = cb5[3].xyz * r7.xyz;
  r15.xyz = float3(10,10,10) * r7.xyz;
  r1.zw = r2.xy / r2.ww;
  r1.zw = r1.zw * cb0[66].xy + cb0[66].wz;
  r1.z = t13.SampleLevel(s6_s, r1.zw, 0).x;
  r1.w = r1.z * cb0[65].x + cb0[65].y;
  r1.z = r1.z * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r1.z = r1.w + r1.z;
  r1.w = cmp(cb0[31].w < 1);
  r2.x = r2.z * cb0[65].x + cb0[65].y;
  r2.y = r2.z * cb0[65].z + -cb0[65].w;
  r2.y = 1 / r2.y;
  r2.x = r2.x + r2.y;
  r1.w = r1.w ? r2.w : r2.x;
  r1.z = r1.z + -r1.w;
  r1.w = saturate(r1.z / cb5[13].y);
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[13].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.x ? 0 : r1.w;
  r2.x = r13.w * 0.25 + 0.25;
  r2.x = max(0, r2.x);
  r2.x = 2.5 * r2.x;
  r2.y = dot(-cb4[14].xy, -cb4[14].xy);
  r2.y = sqrt(r2.y);
  r2.yz = -cb4[14].xy / r2.yy;
  r5.w = dot(r6.xyz, r6.xyz);
  r5.w = sqrt(r5.w);
  r16.xyz = r6.xyz / r5.www;
  r2.y = dot(r2.yz, -r16.xy);
  r2.y = max(0, r2.y);
  r2.z = cmp(0 >= r2.y);
  r2.y = r2.y * r2.y;
  r2.y = cb5[13].w * r2.y;
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r9.xyz = cb5[14].xxx * r9.xyz + r10.xyz;
  r2.y = dot(r9.xyz, r9.xyz);
  r2.y = sqrt(r2.y);
  r9.xyz = r9.xyz / r2.yyy;
  r2.y = dot(-cb4[14].xyz, r9.xyz);
  r2.y = 1 + -r2.y;
  r2.y = max(0, r2.y);
  r2.z = cmp(0 >= r2.y);
  r2.y = r2.y * r2.y;
  r2.y = r2.y * r2.y;
  r2.y = r2.y * r2.y;
  r2.y = r2.z ? 0 : r2.y;
  r2.z = 1 + r13.w;
  r2.z = max(0, r2.z);
  r2.z = cb5[14].y * r2.z;
  r5.w = dot(r16.xyz, r9.xyz);
  r5.w = max(0, r5.w);
  r2.z = r5.w * r2.z;
  r5.w = 1 + -r16.z;
  r5.w = max(0, r5.w);
  r2.z = r5.w * r2.z;
  r9.xyz = cb0[67].xyz + -r13.yzw;
  r5.w = dot(r9.xyz, r9.xyz);
  r5.w = sqrt(r5.w);
  r5.w = cb5[14].z + r5.w;
  r5.w = cb5[14].z / r5.w;
  r2.z = r5.w * r2.z;
  r2.x = r2.x * r2.y + r2.z;
  r2.x = cb5[14].w * r2.x;
  r2.xyz = cb5[6].xyz * r2.xxx;
  r5.w = saturate(r1.z / cb5[15].y);
  r5.w = cb5[15].z * r5.w;
  r6.w = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb5[15].w * r5.w;
  r5.w = exp2(r5.w);
  r5.w = r6.w ? 0 : r5.w;
  r2.xyz = r1.www * r2.xyz + -cb5[7].xyz;
  r2.xyz = r5.www * r2.xyz + cb5[7].xyz;
  r2.xyz = -r7.xyz * float3(10,10,10) + r2.xyz;
  r2.xyz = r1.www * r2.xyz + r15.xyz;
  r1.zw = saturate(r1.zz / cb5[16].yw);
  r2.xyz = r2.xyz + -r5.zzz;
  r2.xyz = r1.zzz * r2.xyz + r5.zzz;
  r6.w = cmp(0 >= r1.w);
  r7.x = log2(r1.w);
  r7.x = cb5[17].x * r7.x;
  r7.x = exp2(r7.x);
  r6.w = r6.w ? 0 : r7.x;
  r2.xyz = r2.xyz + -r14.xyz;
  r2.xyz = r6.www * r2.xyz + r14.xyz;
  r2.xyz = saturate(r8.xyz * r3.www + r2.xyz);
  r3.w = t22.Sample(s0_s, r5.xy).x;
  r5.x = cb5[17].w + -r5.z;
  r1.z = r1.z * r5.x + r5.z;
  r1.z = r1.z + -r3.w;
  r1.z = saturate(r1.w * r1.z + r3.w);
  r5.xy = saturate(cb5[17].yz);
  r1.z = r1.z * cb0[139].y + cb0[139].x;
  r7.w = min(1, r5.w);
  r1.w = cmp(0 < cb0[215].x);
  r5.zw = mad((int2)v3.xx, int2(36,36), int2(20,23));
  r3.w = t2[r5.z].val[8/4];
  r3.w = cmp(0 < r3.w);
  if (r3.w != 0) {
    r8.xyz = r4.xyz * cb0[211].xyz + cb0[212].xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = min(float3(0.99000001,0.99000001,0.99000001), r8.xyz);
    r8.xyz = cb0[213].xyz * r8.xyz;
    r9.xyz = (int3)r8.xyz;
    r9.w = 0;
    r9.xyzw = t0.Load(r9.xyzw).xyzw;
    r9.xyzw = (uint4)r9.xyzw;
    r3.w = 1 + cb0[213].w;
    r8.xyz = r8.xyz / r9.www;
    r8.xyz = frac(r8.xyz);
    r8.xyz = cb0[213].www * r8.xyz;
    r8.xyz = r9.xyz * r3.www + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
    r8.xyz = cb0[214].xyz * r8.xyz;
    r8.x = t1.SampleLevel(s1_s, r8.xyz, 0).x;
  } else {
    r3.w = mad((int)v3.x, 36, 18);
    r3.w = t2[r3.w].val[12/4];
    r3.w = cmp(0 < r3.w);
    r3.w = r1.w ? r3.w : 0;
    r8.x = r3.w ? cb2[5].x : 1;
  }
  r3.w = 0.0799999982 * r5.y;
  r9.xyz = -r5.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r9.xyz = r5.xxx * r9.xyz + r3.www;
  r5.xyz = -r2.xyz * r5.xxx + r2.xyz;
  r10.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r9.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r9.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r9.w = 0;
  r10.w = r5.x;
  r9.xyzw = r3.wwww ? r9.xyzw : r10.xyzw;
  r10.yz = r3.ww ? float2(0,0) : r5.yz;
  r5.xyz = r11.zwz * r11.zwy;
  r13.yw = r11.ww * r11.zy;
  r3.w = r11.y * r11.y + -r5.x;
  r14.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r11.zwy;
  r13.xz = r5.zy * float2(1,3) + float2(0,-1);
  r13.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r13.xyzw;
  r3.w = 0.429042608 * r3.w;
  r14.x = 0.886227548;
  r5.x = dot(cb2[6].xyzw, r14.xyzw);
  r5.y = dot(cb2[9].xyzw, r13.xyzw);
  r5.x = r5.x + r5.y;
  r5.x = cb2[12].x * r3.w + r5.x;
  r6.w = dot(cb2[7].xyzw, r14.xyzw);
  r12.w = dot(cb2[10].xyzw, r13.xyzw);
  r6.w = r12.w + r6.w;
  r5.y = cb2[12].y * r3.w + r6.w;
  r6.w = dot(cb2[8].xyzw, r14.xyzw);
  r12.w = dot(cb2[11].xyzw, r13.xyzw);
  r6.w = r12.w + r6.w;
  r5.z = cb2[12].z * r3.w + r6.w;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = r1.www ? r5.xyz : 0;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r11.x = 1;
    r13.xyzw = r1.wwww ? cb2[4].wxyz : r11.xyzw;
    r1.w = 1 + -r13.x;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.xyz * r0.www + -r13.yzw;
    r0.xyz = r1.www * r0.xyz + r13.yzw;
    r3.w = saturate(dot(r13.yzw, r11.yzw));
    r6.w = 1 + -r3.w;
    r13.y = r1.w * r6.w + r3.w;
  } else {
    r0.xyz = r11.yzw;
    r13.xy = float2(1,1);
  }
  r14.x = t3[0].val[0/4];
  r14.y = t3[0].val[0/4+1];
  r14.z = t3[0].val[0/4+2];
  r14.w = t3[0].val[0/4+3];
  r0.w = 1;
  r14.x = dot(r14.xyzw, r0.xyzw);
  r15.x = t3[1].val[0/4];
  r15.y = t3[1].val[0/4+1];
  r15.z = t3[1].val[0/4+2];
  r15.w = t3[1].val[0/4+3];
  r14.y = dot(r15.xyzw, r0.xyzw);
  r15.x = t3[2].val[0/4];
  r15.y = t3[2].val[0/4+1];
  r15.z = t3[2].val[0/4+2];
  r15.w = t3[2].val[0/4+3];
  r14.z = dot(r15.xyzw, r0.xyzw);
  r15.xyzw = r0.xyzz * r0.yzzx;
  r16.x = t3[3].val[0/4];
  r16.y = t3[3].val[0/4+1];
  r16.z = t3[3].val[0/4+2];
  r16.w = t3[3].val[0/4+3];
  r16.x = dot(r16.xyzw, r15.xyzw);
  r17.x = t3[4].val[0/4];
  r17.y = t3[4].val[0/4+1];
  r17.z = t3[4].val[0/4+2];
  r17.w = t3[4].val[0/4+3];
  r16.y = dot(r17.xyzw, r15.xyzw);
  r17.x = t3[5].val[0/4];
  r17.y = t3[5].val[0/4+1];
  r17.z = t3[5].val[0/4+2];
  r17.w = t3[5].val[0/4+3];
  r16.z = dot(r17.xyzw, r15.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r14.xyz = r16.xyz + r14.xyz;
  r0.xyz = r0.yzw * r0.xxx + r14.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r13.x * r13.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r5.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r9.xyz;
  r5.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r2.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r2.xyz = max(float3(1,1,1), r2.xyz);
  r1.xy = cb0[131].zw * r1.xy;
  r1.w = v6.w * cb1[3].x + cb1[3].y;
  r1.w = log2(r1.w);
  r1.w = cb1[3].z * r1.w;
  r1.w = max(0, r1.w);
  r1.xyw = (uint3)r1.xyw;
  r3.w = asint(cb1[1].z) + -1;
  r1.w = min((uint)r3.w, (uint)r1.w);
  r1.xy = (uint2)r1.xy >> asuint(cb1[2].xx);
  r1.y = mad((int)r1.w, asint(cb1[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb1[1].x), (int)r1.x);
  r1.y = t2[r5.w].val[12/4];
  if (cb1[0].z != 0) {
    r5.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r5.yzw = r5.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r13.xyzw = cb1[51].xyzw * r4.yyyy;
      r13.xyzw = r4.xxxx * cb1[50].xyzw + r13.xyzw;
      r13.xyzw = r4.zzzz * cb1[52].xyzw + r13.xyzw;
      r13.xyzw = cb1[53].xyzw + r13.xyzw;
      r13.xy = r13.xy / r13.ww;
      r14.xy = cmp(r13.xy >= float2(0,0));
      r14.zw = cmp(float2(1,1) >= r13.xy);
      r14.xy = r14.zw ? r14.xy : 0;
      r1.w = r14.y ? r14.x : 0;
      if (r1.w != 0) {
        r1.w = t5.SampleLevel(s3_s, r13.xy, 0).x;
        r3.w = cmp(r13.z < r1.w);
        r1.w = cmp(0.99000001 < r1.w);
        r1.w = (int)r1.w | (int)r3.w;
        r8.x = r1.w ? 1.000000 : 0;
      } else {
        r8.x = 1;
      }
    } else {
      r8.x = 1;
    }
    if (cb1[9].z != 0) {
      r1.w = cb1[9].z;
      r3.w = 0;
      while (true) {
        r6.w = cmp((uint)r3.w >= asuint(cb1[9].z));
        if (r6.w != 0) break;
        r6.w = dot(cb1[10].xyzw, icb[r3.w+0].xyzw);
        r6.w = cmp(r2.w < r6.w);
        if (r6.w != 0) {
          r1.w = r3.w;
          break;
        }
        r3.w = (int)r3.w + 1;
      }
      r3.w = cmp((uint)r1.w < asuint(cb1[9].z));
      if (r3.w != 0) {
        r3.w = (uint)r1.w << 2;
        r13.xyzw = cb1[r3.w+12].xyzw * r4.yyyy;
        r13.xyzw = r4.xxxx * cb1[r3.w+11].xyzw + r13.xyzw;
        r13.xyzw = r4.zzzz * cb1[r3.w+13].xyzw + r13.xyzw;
        r13.xyzw = cb1[r3.w+14].xyzw + r13.xyzw;
        r14.xyzw = r13.xyxy / r13.wwww;
        r13.xy = cmp(r14.zw >= cb1[r1.w+27].xy);
        r15.xy = cmp(cb1[r1.w+27].zw >= r14.zw);
        r13.xy = r13.xy ? r15.xy : 0;
        r1.w = r13.y ? r13.x : 0;
        if (r1.w != 0) {
          r14.xyzw = r14.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r13.xy = frac(r14.zw);
          r14.xyzw = floor(r14.xyzw);
          r15.xyzw = float4(0.5,1.5,0.5,0.5) + r14.zwzw;
          r15.xyzw = cb1[31].zwzw * r15.xyzw;
          r16.x = t4.SampleLevel(s2_s, r15.xy, 0).x;
          r14.xyzw = float4(1.5,1.5,1.5,0.5) + r14.xyzw;
          r14.xyzw = cb1[31].zwzw * r14.xyzw;
          r16.y = t4.SampleLevel(s2_s, r14.xy, 0).x;
          r16.z = t4.SampleLevel(s2_s, r14.zw, 0).x;
          r16.w = t4.SampleLevel(s2_s, r15.zw, 0).x;
          r1.w = r13.z * 4000 + -1;
          r14.xyzw = saturate(r16.xyzw * float4(4000,4000,4000,4000) + -r1.wwww);
          r13.zw = r14.zy + -r14.wx;
          r13.xz = r13.xx * r13.zw + r14.wx;
          r1.w = r13.z + -r13.x;
          r1.w = r13.y * r1.w + r13.x;
        } else {
          r1.w = 1;
        }
      } else {
        r1.w = 1;
      }
    } else {
      r1.w = 1;
    }
    r5.x = 1;
    r3.w = dot(float4(1,1,1,1), r5.xyzw);
    r8.yzw = r5.yzw;
    r5.x = dot(r8.xyzw, float4(1,1,1,1));
    r5.x = -1 + r5.x;
    r3.w = r3.w * r5.x + 1;
    r5.x = saturate(r2.w * cb1[9].x + cb1[9].y);
    r5.x = r5.x * r5.x;
    r3.w = r3.w + -r1.w;
    r1.w = r5.x * r3.w + r1.w;
    r3.w = min(1, r1.w);
    r3.w = r3.w + r1.w;
    r3.w = cmp(0 < r3.w);
    if (r3.w != 0) {
      r3.w = dot(cb1[4].xyz, cb1[4].xyz);
      r3.w = rsqrt(r3.w);
      r5.xyz = cb1[4].xyz * r3.www;
      r3.w = dot(r11.yzw, r5.xyz);
      r5.w = saturate(r3.w);
      r6.w = max(cb0[226].y, r1.z);
      r11.x = dot(r11.yzw, r6.xyz);
      r5.x = dot(r6.xyz, r5.xyz);
      r5.y = r5.x * 2 + 2;
      r5.y = rsqrt(r5.y);
      r3.w = r11.x + r3.w;
      r3.w = saturate(r3.w * r5.y);
      r5.x = saturate(r5.y * r5.x + r5.y);
      r5.y = 9.99999975e-006 + abs(r11.x);
      r5.y = min(1, r5.y);
      r13.xyz = r9.xyz * r5.www;
      r13.xyz = float3(0.318309873,0.318309873,0.318309873) * r13.xyz;
      r5.z = r6.w * r6.w;
      r11.x = r5.z * r5.z;
      r12.w = r3.w * r11.x + -r3.w;
      r3.w = r12.w * r3.w + 1;
      r3.w = r3.w * r3.w;
      r3.w = 3.14159274 * r3.w;
      r3.w = r11.x / r3.w;
      r6.w = -r6.w * r6.w + 1;
      r11.x = r5.y * r6.w + r5.z;
      r5.z = r5.w * r6.w + r5.z;
      r5.y = r5.y * r5.z;
      r5.y = r5.w * r11.x + r5.y;
      r5.y = rcp(r5.y);
      r3.w = r5.y * r3.w;
      r5.x = 1 + -r5.x;
      r5.y = r5.x * r5.x;
      r5.y = r5.y * r5.y;
      r5.z = r5.y * r5.x;
      r6.w = saturate(50 * r10.y);
      r5.x = -r5.y * r5.x + 1;
      r10.x = r9.w;
      r14.xyz = r5.xxx * r10.xyz;
      r5.xyz = r6.www * r5.zzz + r14.xyz;
      r3.w = 0.5 * r3.w;
      r5.xyz = r3.www * r5.xyz;
      r5.xyz = r5.www * r5.xyz;
      r14.xyz = cb1[5].xyz * r1.www;
      r13.xyz = r14.xyz * r13.xyz;
      r5.xyz = r14.yzx * r5.yzx;
      r13.w = r5.z;
    } else {
      r5.xy = float2(0,0);
      r13.xyzw = float4(0,0,0,0);
    }
    r1.w = asuint(cb1[8].z) >> 8;
    r1.w = (int)r1.y & (int)r1.w;
    r13.xyzw = r1.wwww ? r13.xyzw : float4(0,0,0,0);
    r5.xy = r1.ww ? r5.xy : float2(0,0);
  } else {
    r13.xyzw = float4(0,0,0,0);
    r5.xy = float2(0,0);
  }
  r1.w = (uint)r1.x << 1;
  r1.w = t7.Load(r1.w).x;
  r1.w = min(asuint(cb1[0].x), (uint)r1.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.w = (((uint)r1.x << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r3.w = t7.Load(r3.w).x;
  r1.w = min(asuint(cb1[0].x), (uint)r1.w);
  r5.z = dot(-r6.xyz, r11.yzw);
  r5.z = r5.z + r5.z;
  r14.xyz = r11.yzw * -r5.zzz + -r6.xyz;
  r5.z = max(cb0[226].y, r1.z);
  r5.w = r5.z * r5.z;
  r5.z = -r5.z * r5.z + 1;
  r6.w = dot(r11.yzw, r6.xyz);
  r11.x = r6.w + r6.w;
  r12.w = r11.x * r6.w + -1;
  r14.w = 9.99999975e-006 + abs(r6.w);
  r14.w = min(1, r14.w);
  r15.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  r15.w = r5.w * r5.w;
  r16.x = saturate(50 * r10.y);
  r8.yw = float2(1,1);
  r10.w = r9.w;
  r16.yzw = r13.xyz;
  r17.x = r13.w;
  r17.yz = r5.xy;
  r9.w = 0;
  while (true) {
    r17.w = cmp((uint)r9.w >= (uint)r1.w);
    if (r17.w != 0) break;
    r17.w = (int)r3.w + (int)r9.w;
    r17.w = t8.Load(r17.w).x;
    r18.x = (int)r17.w * 6;
    r18.xyzw = t6.Load(r18.x).xyzw;
    r19.x = mad((int)r17.w, 6, 1);
    r19.xyzw = t6.Load(r19.x).xyzw;
    r20.xy = mad((int2)r17.ww, int2(6,6), int2(2,3));
    r21.xyzw = t6.Load(r20.x).xyzw;
    r20.xyzw = t6.Load(r20.y).xyzw;
    r22.x = cmp(r19.w == 0.000000);
    r22.y = cmp(-2 < r20.x);
    r18.xyz = r18.xyz + -r4.xyz;
    r22.z = dot(r18.xyz, r18.xyz);
    r22.w = rsqrt(r22.z);
    r23.xyz = r22.www * r18.xyz;
    r22.w = r18.w * r18.w;
    r22.z = r22.z * r22.w;
    r22.z = -r22.z * r22.z + 1;
    r22.z = max(0, r22.z);
    r22.z = r22.z * r22.z;
    r24.xyz = r18.xyz * r18.www;
    r18.w = dot(r24.xyz, r24.xyz);
    r18.w = min(1, r18.w);
    r18.w = 1 + -r18.w;
    r18.w = log2(r18.w);
    r18.w = r19.w * r18.w;
    r18.w = exp2(r18.w);
    r18.w = r22.x ? r22.z : r18.w;
    r19.w = dot(r23.xyz, r21.xyz);
    r19.w = r19.w + -r20.x;
    r19.w = saturate(r19.w * r20.y);
    r19.w = r19.w * r19.w;
    r19.w = r19.w * r18.w;
    r18.w = r22.y ? r19.w : r18.w;
    r19.w = cmp(0 < r18.w);
    if (r19.w != 0) {
      r19.w = (int)r21.w & 255;
      r19.w = r19.w ? 1 : 0;
      if (r19.w != 0) {
        r23.xyzw = (int4)r21.wwww & int4(1,2,4,8);
        r23.xyzw = r23.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r19.w = (uint)r21.w >> 4;
        if (1 == 0) r20.x = 0; else if (1+4 < 32) {         r20.x = (uint)r21.w << (32-(1 + 4)); r20.x = (uint)r20.x >> (32-1);        } else r20.x = (uint)r21.w >> 4;
        r24.x = r20.x ? 1 : 0;
        r21.xyz = (int3)r19.www & int3(2,4,8);
        r24.yzw = r21.xyz ? float3(1,1,1) : float3(0,0,0);
        r19.w = dot(r24.xyzw, float4(1,1,1,1));
        r20.x = dot(r23.xyzw, float4(1,1,1,1));
        r20.y = dot(r8.xyyy, r23.xyzw);
        r20.y = -1 + r20.y;
        r20.x = r20.x * r20.y + 1;
        r20.xy = r20.xx * r19.ww;
      } else {
        r20.xy = float2(1,1);
      }
      r19.w = r20.x + r20.y;
      r19.w = cmp(0 < r19.w);
      if (r19.w != 0) {
        r17.w = mad((int)r17.w, 6, 4);
        r23.xyzw = t6.Load(r17.w).xyzw;
        r17.w = f16tof32(r20.w);
        r19.w = 0.5 * r17.w;
        r21.xyz = -r19.www * r23.xyz + r18.xyz;
        r18.xyz = r19.www * r23.xyz + r18.xyz;
        r19.w = cmp(0 < r17.w);
        if (r19.w != 0) {
          r20.y = dot(r21.xyz, r21.xyz);
          r20.w = dot(r18.xyz, r18.xyz);
          r20.y = rsqrt(r20.y);
          r20.w = rsqrt(r20.w);
          r22.y = r20.y * r20.w;
          r22.z = dot(r21.xyz, r18.xyz);
          r22.z = r22.z * r22.y;
          r22.w = r22.z * 0.5 + r22.y;
          r22.w = 0.5 + r22.w;
          r23.y = r22.y / r22.w;
          r22.y = dot(r11.yzw, r21.xyz);
          r22.w = dot(r11.yzw, r18.xyz);
          r20.w = r22.w * r20.w;
          r20.y = r22.y * r20.y + r20.w;
          r23.x = 0.5 * r20.y;
        } else {
          r20.y = dot(r21.xyz, r21.xyz);
          r20.w = 1 + r20.y;
          r23.y = rcp(r20.w);
          r20.y = rsqrt(r20.y);
          r24.xyz = r21.xyz * r20.yyy;
          r23.x = dot(r11.yzw, r24.xyz);
          r22.z = 1;
        }
        r20.y = cmp(0 < r20.z);
        r20.w = r20.z * r20.z;
        r20.w = saturate(r20.w * r23.y);
        r20.w = sqrt(r20.w);
        r22.y = cmp(r23.x < r20.w);
        r22.w = max(r23.x, -r20.w);
        r22.w = r22.w + r20.w;
        r22.w = r22.w * r22.w;
        r20.w = 4 * r20.w;
        r20.w = r22.w / r20.w;
        r20.w = r22.y ? r20.w : r23.x;
        r20.y = saturate(r20.y ? r20.w : r23.x);
        r20.w = r22.x ? r23.y : 1;
        r18.xyz = r18.xyz + -r21.xyz;
        r22.x = dot(r14.xyz, r18.xyz);
        r23.xyz = r22.xxx * r14.xyz + -r18.xyz;
        r22.y = dot(r21.xyz, r23.xyz);
        r22.x = r22.x * r22.x;
        r17.w = r17.w * r17.w + -r22.x;
        r17.w = saturate(r22.y / r17.w);
        r18.xyz = r17.www * r18.xyz + r21.xyz;
        r18.xyz = r19.www ? r18.xyz : r21.xyz;
        r17.w = dot(r18.xyz, r18.xyz);
        r17.w = rsqrt(r17.w);
        r18.xyz = r18.xyz * r17.www;
        r19.w = r20.z * r17.w;
        r19.w = saturate(r19.w * r5.z);
        r17.w = saturate(r23.w * r17.w);
        r20.z = dot(r11.yzw, r18.xyz);
        r18.x = dot(r6.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r20.z + r6.w;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r21.x = cmp(0 < r19.w);
        if (r21.x != 0) {
          r21.y = -r19.w * r19.w + 1;
          r21.y = sqrt(r21.y);
          r21.z = dot(r6.ww, r20.zz);
          r22.x = r21.z + -r18.x;
          r22.y = cmp(r22.x >= r21.y);
          if (r22.y != 0) {
            r18.z = 1;
            r18.y = abs(r6.w);
          } else {
            r22.y = -r22.x * r22.x + 1;
            r22.y = rsqrt(r22.y);
            r22.y = r22.y * r19.w;
            r22.w = -r22.x * r20.z + r6.w;
            r23.x = r22.y * r22.w;
            r22.x = -r22.x * r18.x + r12.w;
            r22.x = r22.y * r22.x;
            r23.y = r20.z * r20.z;
            r23.y = -r6.w * r6.w + -r23.y;
            r23.y = 1 + r23.y;
            r23.y = -r18.x * r18.x + r23.y;
            r21.z = saturate(r21.z * r18.x + r23.y);
            r21.z = sqrt(r21.z);
            r21.z = r22.y * r21.z;
            r23.y = r21.z * r6.w;
            r23.z = r23.y + r23.y;
            r23.w = r20.z * r21.y + r6.w;
            r22.y = r22.y * r22.w + r23.w;
            r22.w = r18.x * r21.y + r22.x;
            r22.w = 1 + r22.w;
            r24.x = r22.w * r21.z;
            r24.y = r22.y * r22.w;
            r24.z = r23.z * r22.y;
            r23.y = r22.y * r23.y;
            r23.y = 0.5 * r23.y;
            r23.y = r24.x * -0.5 + r23.y;
            r23.y = r24.y * r23.y;
            r24.w = -r24.x * 2 + r24.z;
            r24.z = r24.z * r24.w;
            r24.x = r24.x * r24.x + r24.z;
            r24.z = r22.w * r22.w;
            r22.w = r18.x * r21.y + r22.w;
            r22.w = r22.w * -0.5 + -0.5;
            r22.w = r24.y * r22.w;
            r22.w = r23.w * r24.z + r22.w;
            r22.y = r22.y * r22.w + r24.x;
            r22.w = r23.y + r23.y;
            r23.w = r23.y * r23.y;
            r23.w = r22.y * r22.y + r23.w;
            r22.w = r22.w / r23.w;
            r22.y = r22.w * r22.y;
            r22.w = -r22.w * r23.y + 1;
            r21.z = r22.y * r21.z;
            r21.z = r22.w * r23.x + r21.z;
            r22.y = r22.y * r23.z;
            r22.x = r22.w * r22.x + r22.y;
            r20.z = r20.z * r21.y + r21.z;
            r18.x = r18.x * r21.y + r22.x;
            r21.y = r18.x * 2 + 2;
            r21.y = rsqrt(r21.y);
            r20.z = r20.z + r6.w;
            r18.z = saturate(r20.z * r21.y);
            r18.y = saturate(r21.y * r18.x + r21.y);
          }
        }
        r18.x = r20.w * r20.y;
        r22.xyw = r18.xxx * r15.xyz;
        r20.z = cmp(0 < r17.w);
        r17.w = r17.w * r17.w;
        r20.w = r18.y * 3.5999999 + 0.400000006;
        r17.w = r17.w / r20.w;
        r17.w = r5.w * r5.w + r17.w;
        r17.w = min(1, r17.w);
        r8.z = r20.z ? r17.w : r15.w;
        r17.w = 0.25 * r19.w;
        r20.z = (uint)r8.z >> 1;
        r20.z = (int)r20.z + 0x1fbd1df5;
        r19.w = r20.z * 3 + r19.w;
        r17.w = r19.w * r17.w;
        r19.w = 0.00100000005 + r18.y;
        r17.w = r17.w / r19.w;
        r23.x = r17.w + r8.z;
        r23.y = r8.z / r23.x;
        r20.zw = r21.xx ? r23.xy : r8.zw;
        r17.w = cmp(r22.z < 1);
        r21.x = 1.00010002 + -r22.z;
        r21.y = 1 + r22.z;
        r21.x = r21.x / r21.y;
        r21.x = sqrt(r21.x);
        r21.y = 0.25 * r21.x;
        r21.z = (uint)r20.z >> 1;
        r21.z = (int)r21.z + 0x1fbd1df5;
        r21.x = r21.z * 3 + r21.x;
        r21.x = r21.y * r21.x;
        r19.w = r21.x / r19.w;
        r19.w = r20.z + r19.w;
        r19.w = r20.z / r19.w;
        r19.w = sqrt(r19.w);
        r19.w = r20.w * r19.w;
        r17.w = r17.w ? r19.w : r20.w;
        r19.w = r18.z * r8.z + -r18.z;
        r18.z = r19.w * r18.z + 1;
        r18.z = r18.z * r18.z;
        r18.z = 3.14159274 * r18.z;
        r18.z = r8.z / r18.z;
        r17.w = r18.z * r17.w;
        r8.z = sqrt(r8.z);
        r18.z = 1 + -r8.z;
        r19.w = r14.w * r18.z + r8.z;
        r8.z = r20.y * r18.z + r8.z;
        r8.z = r14.w * r8.z;
        r8.z = r20.y * r19.w + r8.z;
        r8.z = rcp(r8.z);
        r8.z = r17.w * r8.z;
        r17.w = 1 + -r18.y;
        r18.y = r17.w * r17.w;
        r18.y = r18.y * r18.y;
        r18.z = r18.y * r17.w;
        r17.w = -r18.y * r17.w + 1;
        r20.yzw = r17.www * r10.wyz;
        r20.yzw = r16.xxx * r18.zzz + r20.yzw;
        r8.z = 0.5 * r8.z;
        r20.yzw = r8.zzz * r20.yzw;
        r18.xyz = r20.yzw * r18.xxx;
        r19.xyz = r19.xyz * r18.www;
        r19.xyz = r19.xyz * r20.xxx;
        r20.xyz = r22.xyw * r19.xyz;
        r18.xyz = r19.xyz * r18.xyz;
      } else {
        r20.xyz = float3(0,0,0);
        r18.xyz = float3(0,0,0);
      }
    } else {
      r20.xyz = float3(0,0,0);
      r18.xyz = float3(0,0,0);
    }
    r8.z = (uint)r21.w >> 8;
    r8.z = (int)r1.y & (int)r8.z;
    r19.xyz = r20.xyz + r16.yzw;
    r18.xyz = r18.xyz + r17.xyz;
    r16.yzw = r8.zzz ? r19.xyz : r16.yzw;
    r17.xyz = r8.zzz ? r18.xyz : r17.xyz;
    r9.w = (int)r9.w + 1;
  }
  r5.xyz = r17.xyz + r16.yzw;
  r8.yzw = r11.xxx * r11.yzw + -r6.xyz;
  r6.w = saturate(r6.w);
  r1.x = (int)r1.x + asint(cb1[0].w);
  r1.y = (uint)r1.x << 1;
  r1.y = t7.Load(r1.y).x;
  r1.y = min(asuint(cb1[0].y), (uint)r1.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t7.Load(r1.x).x;
  r1.w = max(0.00100000005, r1.z);
  r1.w = log2(r1.w);
  r1.w = -r1.w * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.w = r3.w + -r1.w;
  r8.x = 0;
  r6.xyz = float3(0,0,0);
  r5.w = 1;
  r9.w = 0;
  r11.x = 1;
  r12.w = 0;
  while (true) {
    r13.x = cmp((uint)r12.w >= (uint)r1.y);
    if (r13.x != 0) break;
    r13.x = cmp(r5.w < 0.00100000005);
    if (r13.x != 0) {
      break;
    }
    r13.x = (int)r1.x + (int)r12.w;
    r13.x = t8.Load(r13.x).x;
    r13.yzw = -cb3[r13.x+0].xyz + r4.xyz;
    r14.x = dot(r13.yzw, r13.yzw);
    r14.y = sqrt(r14.x);
    r14.z = cmp(r14.y < cb3[r13.x+0].w);
    if (r14.z != 0) {
      r14.z = cmp(0 < cb3[r13.x+341].z);
      if (r14.z != 0) {
        r14.z = (uint)r13.x << 2;
        r15.xyz = cb3[r14.z+1024].xyz * r4.yyy;
        r15.xyz = r4.xxx * cb3[r14.z+1023].xyz + r15.xyz;
        r15.xyz = r4.zzz * cb3[r14.z+1025].xyz + r15.xyz;
        r15.xyz = cb3[r14.z+1026].xyz + r15.xyz;
        r16.yzw = cb3[r14.z+1024].xyz * r8.zzz;
        r16.yzw = r8.yyy * cb3[r14.z+1023].xyz + r16.yzw;
        r16.yzw = r8.www * cb3[r14.z+1025].xyz + r16.yzw;
        r16.yzw = rcp(r16.yzw);
        r17.xyz = -r15.xyz * r16.yzw + -r16.yzw;
        r16.yzw = -r15.xyz * r16.yzw + r16.yzw;
        r16.yzw = max(r17.xyz, r16.yzw);
        r14.z = min(r16.z, r16.w);
        r14.z = min(r16.y, r14.z);
        r16.yzw = r14.zzz * r8.yzw + r4.xyz;
        r17.xyz = cb3[r13.x+682].xyz + cb3[r13.x+0].xyz;
        r17.xyz = -r17.xyz + r16.yzw;
        r14.z = cb3[r13.x+2387].w * 0.699999988;
        r16.yzw = -cb3[r13.x+2387].www * float3(0.5,0.5,0.5) + cb3[r13.x+2387].xyz;
        r18.xyz = cb3[r13.x+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r16.yzw);
        r20.xyz = r15.xyz * cb3[r13.x+2387].xyz + r16.yzw;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r16.yzw < r18.xyz);
        r15.xyz = r15.xyz * cb3[r13.x+2387].xyz + -r16.yzw;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r14.w = dot(r19.xyz, float3(1,1,1));
        r15.x = dot(r15.xyz, float3(1,1,1));
        r14.w = r15.x + r14.w;
        r14.z = 1 / r14.z;
        r14.z = saturate(r14.w * r14.z);
        r14.w = r14.z * -2 + 3;
        r14.z = r14.z * r14.z;
        r15.x = -r14.w * r14.z + 1;
      } else {
        r14.y = saturate(r14.y / cb3[r13.x+0].w);
        r14.z = dot(r8.yzw, r13.yzw);
        r14.x = -cb3[r13.x+0].w * cb3[r13.x+0].w + r14.x;
        r14.x = r14.z * r14.z + -r14.x;
        r14.w = cmp(r14.x >= 0);
        r14.x = sqrt(r14.x);
        r14.x = r14.x + -r14.z;
        r13.yzw = r14.xxx * r8.yzw + r13.yzw;
        r18.yzw = -cb3[r13.x+682].xyz + r13.yzw;
        r13.y = r14.y * 2.5 + -1.5;
        r13.y = max(0, r13.y);
        r13.z = r13.y * r13.y;
        r13.y = -r13.y * 2 + 3;
        r18.x = -r13.z * r13.y + 1;
        r15.xyzw = r14.wwww ? r18.xyzw : r8.xyzw;
        r17.xyz = r15.yzw;
      }
      r17.w = cb3[r13.x+341].y;
      r14.xyzw = t10.SampleLevel(s5_s, r17.xyzw, r3.w).xyzw;
      r13.yzw = cb3[r13.x+341].xxx * r14.xyz;
      r13.yzw = r13.yzw * r15.xxx;
      r6.xyz = r13.yzw * r5.www + r6.xyz;
      r13.y = -r14.w * r15.x + 1;
      r5.w = r13.y * r5.w;
      r13.x = cb3[r13.x+682].w * r15.x;
      r9.w = r13.x * r11.x + r9.w;
      r13.x = 1 + -r15.x;
      r11.x = r13.x * r11.x;
    }
    r12.w = (int)r12.w + 1;
  }
  r13.xyz = cb0[157].xyz * r6.xyz;
  r1.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r13.w = r9.w * r1.x;
  r1.x = cmp(0 < cb1[116].y);
  if (r1.x != 0) {
    r1.x = cb1[116].x + -r1.w;
    r1.x = -1 + r1.x;
    r1.xyw = t9.SampleLevel(s4_s, r8.yzw, r1.x).xyz;
    r3.w = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r3.w = cb1[117].x * r3.w;
    r1.xyw = cb0[187].xyz * r1.xyw;
    r6.x = cmp(cb1[116].z < 1);
    r14.xyz = r5.www * r1.xyw + r13.xyz;
    r14.w = r3.w * r11.x + r13.w;
    r1.xyw = r6.xxx ? float3(0,0,0) : r1.xyw;
    r13.xyzw = r6.xxxx ? r14.xyzw : r13.xyzw;
  } else {
    r1.xyw = float3(0,0,0);
  }
  r3.w = saturate(r1.z * cb0[197].x + cb0[197].y);
  r6.x = r3.w * -2 + 3;
  r3.w = r3.w * r3.w;
  r3.w = r6.x * r3.w;
  r6.x = max(9.99999975e-005, r13.w);
  r0.w = r0.w / r6.x;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r3.w * r0.w + 1;
  r1.xyw = r5.www * r1.xyw;
  r1.xyw = r13.xyz * r0.www + r1.xyw;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r6.xy = r0.ww * float2(32.6650009,11.8149996) + v6.xy;
    r0.w = dot(r6.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r13.xyzw = cb0[1].xyzw * r3.yyyy;
    r13.xyzw = r3.xxxx * cb0[0].xyzw + r13.xyzw;
    r13.xyzw = r3.zzzz * cb0[2].xyzw + r13.xyzw;
    r13.xyzw = cb0[3].xyzw + r13.xyzw;
    r6.xyz = r8.yzw * r2.www + r3.xyz;
    r8.xyzw = cb0[1].xyzw * r6.yyyy;
    r8.xyzw = r6.xxxx * cb0[0].xyzw + r8.xyzw;
    r8.xyzw = r6.zzzz * cb0[2].xyzw + r8.xyzw;
    r8.xyzw = cb0[3].xyzw + r8.xyzw;
    r3.w = rcp(r13.w);
    r6.xyz = r13.xyz * r3.www;
    r3.w = rcp(r8.w);
    r13.xy = r2.ww * cb0[30].zw + r13.zw;
    r2.w = rcp(r13.y);
    r8.xyz = r8.xyz * r3.www + -r6.xyz;
    r3.w = dot(r8.xy, r8.xy);
    r3.w = sqrt(r3.w);
    r5.w = 0.5 * r3.w;
    r13.yz = r6.xy * r5.ww + r8.xy;
    r13.yz = -r3.ww * float2(0.5,0.5) + abs(r13.yz);
    r13.yz = max(float2(0,0), r13.yz);
    r13.yz = r13.yz / abs(r8.xy);
    r13.yz = float2(1,1) + -r13.yz;
    r3.w = min(r13.y, r13.z);
    r3.w = r3.w / r5.w;
    r8.xyz = r8.xyz * r3.www;
    r2.w = -r13.x * r2.w + r6.z;
    r2.w = 4 * r2.w;
    r2.w = max(abs(r8.z), r2.w);
    r13.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r6.xy = cb1[176].xy * r13.xy;
    r8.xy = cb1[176].xy * r8.xy;
    r3.w = 0.0833333358 * r2.w;
    r8.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r8.xyz;
    r6.xyz = r8.xyz * r0.www + r6.xyz;
    r0.w = 1;
    r14.x = 0;
    r15.x = 0;
    r13.xyz = float3(0,0,0);
    r5.w = 0;
    r8.w = 0;
    r9.w = 0;
    r11.x = 0;
    r12.w = 0;
    while (true) {
      r14.w = cmp((uint)r12.w >= 12);
      if (r14.w != 0) break;
      r14.w = (uint)r12.w;
      r17.xyzw = float4(1,2,3,4) + r14.wwww;
      r18.xyzw = r17.xxxy * r8.xyzz + r6.xyzz;
      r19.xyzw = r17.yyzz * r8.xyxy + r6.xyxy;
      r17.xyzw = r17.wwzw * r8.xyzz + r6.xyzz;
      r14.w = r1.z * 0.666666687 + r0.w;
      r15.w = r1.z * 0.666666687 + r14.w;
      r20.x = t14.SampleLevel(s7_s, r18.xy, r0.w).x;
      r20.y = t14.SampleLevel(s7_s, r19.xy, r0.w).x;
      r20.z = t14.SampleLevel(s7_s, r19.zw, r14.w).x;
      r20.w = t14.SampleLevel(s7_s, r17.xy, r14.w).x;
      r17.xy = r18.zw;
      r17.xyzw = r17.xyzw + -r20.xyzw;
      r18.xyzw = r2.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r17.xyzw;
      r18.xyzw = cmp(abs(r18.xyzw) < r3.wwww);
      r16.yz = (int2)r18.zw | (int2)r18.xy;
      r14.w = (int)r16.z | (int)r16.y;
      if (r14.w != 0) {
        r15.x = r17.x;
        r13.xyz = r17.yzw;
        r5.w = r18.x;
        r8.w = r18.y;
        r9.w = r18.z;
        r11.x = -1;
        break;
      }
      r14.x = r17.w;
      r12.w = (int)r12.w + 4;
      r0.w = r15.w;
      r15.x = r17.x;
      r13.xyz = r17.yzw;
      r5.w = r18.x;
      r8.w = r18.y;
      r9.w = r18.z;
      r11.x = r14.w;
    }
    if (r11.x != 0) {
      r13.w = 2;
      r17.xy = r13.yz;
      r17.z = 3;
      r13.yzw = r9.www ? r13.xyw : r17.xyz;
      r15.y = r13.x;
      r15.z = 1;
      r13.xyz = r8.www ? r15.xyz : r13.yzw;
      r14.y = r15.x;
      r14.z = 0;
      r13.xyz = r5.www ? r14.xyz : r13.xyz;
      r0.w = (uint)r12.w;
      r0.w = r13.z + r0.w;
      r2.w = r13.x + -r13.y;
      r2.w = saturate(r13.x / r2.w);
      r0.w = r2.w + r0.w;
      r6.xyz = r8.xyz * r0.www + r6.xyz;
      r6.xy = cb1[176].zw * r6.xy;
      r6.xy = r6.xy * float2(2,-2) + float2(-1,1);
      r6.xy = cb0[66].xy * r6.xy;
      r6.xy = r6.xy / cb0[66].xy;
      r8.xyz = cb0[123].xyw * r6.yyy;
      r8.xyz = r6.xxx * cb0[122].xyw + r8.xyz;
      r8.xyz = r6.zzz * cb0[124].xyw + r8.xyz;
      r8.xyz = cb0[125].xyw + r8.xyz;
      r8.xy = r8.xy / r8.zz;
      r8.zw = r8.xy * cb1[177].xy + cb1[177].zw;
      r6.xy = saturate(abs(r6.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r6.xy, r6.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r6.xy = saturate(abs(r8.xy) * float2(5,5) + float2(-4,-4));
      r2.w = dot(r6.xy, r6.xy);
      r2.w = 1 + -r2.w;
      r2.w = max(0, r2.w);
      r0.w = min(r2.w, r0.w);
      r6.xyz = t15.SampleLevel(s8_s, r8.zw, 0).xyz;
      r6.xyz = min(float3(0,0,0), -r6.xyz);
      r2.w = saturate(-r1.z * 6.5999999 + 2);
      r0.w = r2.w * r0.w;
      r2.w = 1;
      r6.xyz = -r6.xyz * r0.www;
      r6.xyz = cb1[178].xxx * r6.xyz;
      r0.w = -r2.w * r0.w + 1;
      r1.xyw = r1.xyw * r0.www + r6.xyz;
    }
  }
  r8.xyzw = r1.zzzz * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r8.x * r8.x;
  r2.w = -9.27999973 * r6.w;
  r2.w = exp2(r2.w);
  r0.w = min(r2.w, r0.w);
  r0.w = r0.w * r8.x + r8.y;
  r6.xy = r0.ww * float2(-1.03999996,1.03999996) + r8.zw;
  r10.xyz = r10.wyz;
  r0.w = r16.x * r6.y;
  r6.xyz = r10.xyz * r6.xxx + r0.www;
  r0.w = dot(cb1[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r4.w = -1;
    r0.w = dot(cb1[122].xyzw, r4.xyzw);
    r0.w = saturate(abs(r0.w) * cb1[129].x + cb1[129].y);
    r0.w = 1 + -r0.w;
    r8.xyz = -cb1[123].xyz + r4.xyz;
    r2.w = dot(r8.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r8.xyz, cb1[125].xyz);
    r3.w = cb1[125].w + -abs(r3.w);
    r3.w = saturate(cb1[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb1[122].xyz, r11.yzw);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r1.z = -0.200000003 + r1.z;
    r1.z = saturate(10 * r1.z);
    r1.z = 1 + -r1.z;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r1.z;
    r1.z = cmp(0 < r0.w);
    if (r1.z != 0) {
      r8.xyz = -cb0[67].xyz + r4.xyz;
      r1.z = dot(r8.xyz, r8.xyz);
      r1.z = rsqrt(r1.z);
      r8.xyz = r8.xyz * r1.zzz;
      r1.z = dot(r8.xyz, -cb1[122].xyz);
      r1.z = r1.z + r1.z;
      r8.xyz = cb1[122].xyz * r1.zzz + r8.xyz;
      r13.xyz = cb1[127].xyz * r11.zzz;
      r11.xyz = r11.yyy * cb1[126].xyz + r13.xyz;
      r11.xyz = r11.www * cb1[128].xyz + r11.xyz;
      r1.z = dot(r8.xyz, r11.xyz);
      r1.z = r1.z + r1.z;
      r8.xyz = r11.xyz * -r1.zzz + r8.xyz;
      r8.xyz = r8.xyz * cb1[129].zzz + r4.xyz;
      r8.xyz = cb0[70].xyz + r8.xyz;
      r11.xyz = cb0[13].xyz * r8.yyy;
      r8.xyw = r8.xxx * cb0[12].xyz + r11.xyz;
      r8.xyz = r8.zzz * cb0[14].xyz + r8.xyw;
      r8.xyz = cb0[15].xyz + r8.xyz;
      r1.z = asuint(cb0[197].w) << 2;
      r11.xyz = cb1[r1.z+132].xyw * r8.yyy;
      r8.xyw = r8.xxx * cb1[r1.z+131].xyw + r11.xyz;
      r8.xyz = r8.zzz * cb1[r1.z+133].xyw + r8.xyw;
      r8.xyz = cb1[r1.z+134].xyw + r8.xyz;
      r1.z = cb1[141].z ? cb0[197].w : 0;
      r8.xy = r8.xy / r8.zz;
      r8.xy = max(-cb1[141].xy, r8.xy);
      r8.xy = min(cb1[141].xy, r8.xy);
      r8.xy = r8.xy * cb1[r1.z+139].xy + cb1[r1.z+139].zw;
      r8.xyzw = t11.SampleLevel(s5_s, r8.xy, 0).xyzw;
      r0.w = r8.w * r0.w;
    } else {
      r8.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r1.xyw = r0.www * r1.xyw + r8.xyz;
  }
  r1.xyz = r1.xyw * r6.xyz;
  r6.xyz = r10.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r10.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r10.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r1.xyz = r1.xyz * r6.xyz + r5.xyz;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r5.xyz = cb0[5].xyw * r4.yyy;
    r5.xyz = r4.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r4.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r5.xy = r5.xy / r5.zz;
    r6.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r5.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r6.z = cb0[208].z * r0.w;
    r5.xyzw = t12.SampleLevel(s1_s, r6.xyz, 0).xyzw;
    r6.x = v4.w * r5.w;
    r5.xyz = v4.xyz * r5.www + r5.xyz;
  } else {
    r5.xyz = v4.xyz;
    r6.x = v4.w;
  }
  r6.yzw = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r6.yzw = r6.yzw + -r1.xyz;
  r1.xyz = cb0[145].yyy * r6.yzw + r1.xyz;
  r7.xyz = max(float3(0,0,0), r12.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.yz = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r8.x = t2[r6.y].val[0/4];
    r8.y = t2[r6.y].val[0/4+1];
    r8.z = t2[r6.y].val[0/4+2];
    r8.xyz = -r8.xyz + r4.xyz;
    r6.y = t2[r6.z].val[0/4];
    r6.z = t2[r6.z].val[0/4+1];
    r6.w = t2[r6.z].val[0/4+2];
    r6.yzw = float3(1,1,1) + r6.yzw;
    r6.yzw = cmp(r6.yzw < abs(r8.xyz));
    r0.w = (int)r6.z | (int)r6.y;
    r0.w = (int)r6.w | (int)r0.w;
    r1.w = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r4.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r4.x = 1;
    r7.xyzw = r0.wwww ? r4.yzwx : r7.xyzw;
    o0.w = r7.w;
  } else {
    o0.w = r7.w;
  }
  r0.xyz = r0.xyz * r2.xyz + r1.xyz;
  r0.xyz = r0.xyz + r7.xyz;
  r0.xyz = r0.xyz * r6.xxx + r5.xyz;
  r1.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r2.xyz = r3.xyz * r1.www;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, cb0[358].xyz);
  r1.w = -1 + r1.w;
  r1.w = -abs(r1.w) * 0.5 + 1;
  r1.w = max(0, r1.w);
  r2.xyz = cb1[166].xyz + -cb1[165].xyz;
  r2.xyz = r1.www * r2.xyz + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r2.xyz = -cb1[167].xyz + r2.xyz;
  r2.xyz = r1.www * r2.xyz + cb1[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  return;
}