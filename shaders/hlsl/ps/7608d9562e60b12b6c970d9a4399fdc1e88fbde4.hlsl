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

Texture2D<float4> t11 : register(t11);

Texture3D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

TextureCubeArray<float4> t8 : register(t8);

Buffer<uint4> t7 : register(t7);

Buffer<uint4> t6 : register(t6);

Buffer<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

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

cbuffer cb4 : register(b4)
{
  float4 cb4[18];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[15];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2728];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
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
  r7.xyzw = cb4[8].xxww * cb0[142].zzzz;
  r8.xy = r4.xy / cb4[8].yy;
  r9.xyzw = r7.xyyy * float4(-0.100000001,0.100000001,0.100000001,0.100000001) + r8.xyxy;
  r8.zw = float2(0.864861012,0.148384005) + r9.xy;
  r8.zw = t15.Sample(s0_s, r8.zw).xy;
  r10.xy = r8.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r10.xy, r10.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r10.z = sqrt(r0.w);
  r8.zw = t15.Sample(s0_s, r9.zw).xy;
  r9.xy = r8.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.xy, r9.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r9.z = sqrt(r0.w);
  r7.xy = r7.xx * float2(-0.100000001,-0.100000001) + r8.xy;
  r7.xy = float2(0.418099999,0.354799986) + r7.xy;
  r7.xy = t15.Sample(s0_s, r7.xy).xy;
  r8.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r8.z = sqrt(r0.w);
  r8.xyz = r9.xyz + r8.xyz;
  r8.xyz = r10.xyz + r8.xyz;
  r9.xyz = float3(0.5,0.5,0.5) * r8.xyz;
  r8.xyz = -r8.xyz * float3(0.5,0.5,0.5) + float3(0,0,1);
  r8.xyz = cb4[8].zzz * r8.xyz + r9.xyz;
  r7.xy = r4.xy / cb4[9].xx;
  r9.xyzw = r7.zwww * float4(-0.100000001,0.100000001,0.100000001,0.100000001) + r7.xyxy;
  r9.xy = float2(0.864861012,0.148384005) + r9.xy;
  r9.xy = t16.Sample(s0_s, r9.xy).xy;
  r10.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r10.xy, r10.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r10.z = sqrt(r0.w);
  r9.xy = t16.Sample(s0_s, r9.zw).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r9.xy, r9.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r9.z = sqrt(r0.w);
  r7.xy = r7.zz * float2(-0.100000001,-0.100000001) + r7.xy;
  r7.xy = float2(0.418099999,0.354799986) + r7.xy;
  r7.xy = t16.Sample(s0_s, r7.xy).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r7.z = sqrt(r0.w);
  r7.xyz = r9.xyz + r7.xyz;
  r7.xyz = r10.xyz + r7.xyz;
  r9.xyz = float3(0.333330005,0.333330005,0.333330005) * r7.xyz;
  r7.xyz = -r7.xyz * float3(0.333330005,0.333330005,0.333330005) + float3(0,0,1);
  r7.xyz = cb4[9].yyy * r7.xyz + r9.xyz;
  r9.xyz = float3(1,1,0.200000003) * r7.xyz;
  r0.w = cb3[4].x + cb3[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r10.x, r11.x);
  r12.x = -r10.x;
  r12.y = r11.x;
  r11.x = dot(cb3[3].yx, r12.xy);
  r12.z = r10.x;
  r11.y = dot(cb3[3].yx, r12.yz);
  r0.w = dot(r11.xy, r11.xy);
  r0.w = sqrt(r0.w);
  r10.xy = r11.xy / r0.ww;
  r11.xyz = cb3[4].yzw * cb3[0].yzw;
  r0.w = 6.28318405 / r11.x;
  r3.w = r0.w * r11.y;
  r6.w = dot(r5.yz, r10.xy);
  r7.w = cb3[1].x * cb0[142].z;
  r0.w = r6.w * r0.w + r7.w;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r11.x, r12.x);
  r0.w = r12.x * r3.w;
  r10.xy = r10.xy * r0.ww;
  r10.xy = -r10.xy;
  r0.w = r11.x * r3.w;
  r0.w = -r0.w * r11.z + 1;
  r3.w = cb3[5].x + cb3[0].x;
  r3.w = 6.28318548 * r3.w;
  sincos(r3.w, r11.x, r12.x);
  r13.x = -r11.x;
  r13.y = r12.x;
  r12.x = dot(cb3[3].yx, r13.xy);
  r13.z = r11.x;
  r12.y = dot(cb3[3].yx, r13.yz);
  r3.w = dot(r12.xy, r12.xy);
  r3.w = sqrt(r3.w);
  r11.xy = r12.xy / r3.ww;
  r12.xyz = cb3[5].yzw * cb3[0].yzw;
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
  r0.w = cb3[6].x + cb3[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r11.x, r12.x);
  r13.x = -r11.x;
  r13.y = r12.x;
  r12.x = dot(cb3[3].yx, r13.xy);
  r13.z = r11.x;
  r12.y = dot(cb3[3].yx, r13.yz);
  r0.w = dot(r12.xy, r12.xy);
  r0.w = sqrt(r0.w);
  r11.xy = r12.xy / r0.ww;
  r12.xyz = cb3[6].yzw * cb3[0].yzw;
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
  r3.w = cb3[7].x + cb3[0].x;
  r3.w = 6.28318548 * r3.w;
  sincos(r3.w, r12.x, r13.x);
  r14.x = -r12.x;
  r14.y = r13.x;
  r13.x = dot(cb3[3].yx, r14.xy);
  r14.z = r12.x;
  r13.y = dot(cb3[3].yx, r14.yz);
  r3.w = dot(r13.xy, r13.xy);
  r3.w = sqrt(r3.w);
  r12.xy = r13.xy / r3.ww;
  r13.xyz = cb3[7].yzw * cb3[0].yzw;
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
  r0.w = cb3[8].x + cb3[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r11.x, r12.x);
  r13.x = -r11.x;
  r13.y = r12.x;
  r12.x = dot(cb3[3].yx, r13.xy);
  r13.z = r11.x;
  r12.y = dot(cb3[3].yx, r13.yz);
  r0.w = dot(r12.xy, r12.xy);
  r0.w = sqrt(r0.w);
  r11.xy = r12.xy / r0.ww;
  r12.xyz = cb3[8].yzw * cb3[0].yzw;
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
  r3.w = cb3[9].x + cb3[0].x;
  r3.w = 6.28318548 * r3.w;
  sincos(r3.w, r12.x, r13.x);
  r14.x = -r12.x;
  r14.y = r13.x;
  r13.x = dot(cb3[3].yx, r14.xy);
  r14.z = r12.x;
  r13.y = dot(cb3[3].yx, r14.yz);
  r3.w = dot(r13.xy, r13.xy);
  r3.w = sqrt(r3.w);
  r12.xy = r13.xy / r3.ww;
  r13.xyz = cb3[9].yzw * cb3[0].yzw;
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
  r0.w = cb3[10].x + cb3[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r12.x, r13.x);
  r14.x = -r12.x;
  r14.y = r13.x;
  r13.x = dot(cb3[3].yx, r14.xy);
  r14.z = r12.x;
  r13.y = dot(cb3[3].yx, r14.yz);
  r0.w = dot(r13.xy, r13.xy);
  r0.w = sqrt(r0.w);
  r12.xy = r13.xy / r0.ww;
  r13.xyz = cb3[10].yzw * cb3[0].yzw;
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
  r3.w = cb3[11].x + cb3[0].x;
  r3.w = 6.28318548 * r3.w;
  sincos(r3.w, r13.x, r14.x);
  r15.x = -r13.x;
  r15.y = r14.x;
  r14.x = dot(cb3[3].yx, r15.xy);
  r15.z = r13.x;
  r14.y = dot(cb3[3].yx, r15.yz);
  r3.w = dot(r14.xy, r14.xy);
  r3.w = sqrt(r3.w);
  r13.xy = r14.xy / r3.ww;
  r14.xyz = cb3[11].yzw * cb3[0].yzw;
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
  r10.xyz = cb4[9].zzz * r10.xyz + r11.xyz;
  r7.xyz = r7.xyz * float3(1,1,0.200000003) + r10.xyz;
  r11.xyz = cb0[67].xyz + -r4.xyz;
  r0.w = dot(r11.xyz, r11.xyz);
  r0.w = sqrt(r0.w);
  r0.w = -cb4[9].w + r0.w;
  r0.w = saturate(r0.w / cb4[10].x);
  r0.w = 1 + -r0.w;
  r11.xyz = r7.xyz + -r8.xyz;
  r8.xyz = r0.www * r11.xyz + r8.xyz;
  r0.w = cb4[10].y * v2.w;
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
  r0.xyz = r0.xyz * r0.www;
  r11.xyz = cb4[10].zzz * cb4[1].xyz;
  r0.w = cb4[10].w * cb0[142].z;
  r8.xyzw = float4(1,1,1,1) + -r8.xyxy;
  r12.xyzw = r5.yzyz / cb4[11].yyyy;
  r8.xyzw = r8.xyzw * cb4[11].xxxx + r12.xyzw;
  r12.xyzw = r0.wwww * float4(0.100000001,0.100000001,-0.100000001,-0.100000001) + r8.zwzw;
  r13.xyz = t17.Sample(s0_s, r12.xy).xyz;
  r7.zw = float2(0.418099999,0.354799986) + r12.zw;
  r12.xyz = t17.Sample(s0_s, r7.zw).xyz;
  r12.xyz = r13.xyz + r12.xyz;
  r8.xyzw = r0.wwww * float4(-0.100000001,0.100000001,0.100000001,-0.100000001) + r8.xyzw;
  r8.xyzw = float4(0.864861012,0.148384005,0.651340008,0.751637995) + r8.xyzw;
  r13.xyz = t17.Sample(s0_s, r8.xy).xyz;
  r8.xyz = t17.Sample(s0_s, r8.zw).xyz;
  r8.xyz = r13.xyz + r8.xyz;
  r8.xyz = r12.xyz + r8.xyz;
  r8.xyz = float3(0.25,0.25,0.25) * r8.xyz;
  r0.w = cmp(0 >= v2.z);
  r3.w = v2.z * v2.z;
  r0.w = r0.w ? 0 : r3.w;
  r8.xyz = r8.xyz * r0.www;
  r12.xyzw = -r5.xyzw + r4.zxyz;
  r0.w = max(0, r12.x);
  r0.w = min(500, r0.w);
  r0.w = r0.w / cb4[11].z;
  r3.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[11].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = cb4[12].x * r0.w;
  r0.w = r3.w ? 0 : r0.w;
  r3.w = cb4[12].y * cb0[142].z;
  r5.xy = r5.yz / cb4[12].zz;
  r5.xy = r3.ww * float2(-0.0250000004,-0.00999999978) + r5.xy;
  r13.xyz = t18.Sample(s0_s, r5.xy).xyz;
  r3.w = t19.Sample(s0_s, r5.xy).x;
  r1.zw = r7.xy * cb4[12].ww + r1.zw;
  r1.zw = r1.zw * cb0[130].xy + cb0[129].xy;
  r1.zw = cb0[132].zw * r1.zw;
  r1.zw = max(cb0[133].xy, r1.zw);
  r1.zw = min(cb0[133].zw, r1.zw);
  r7.xyz = t14.Sample(s1_s, r1.zw).xyz;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = cb0[135].zzz * r7.xyz;
  r7.xyz = cb4[3].xyz * r7.xyz;
  r14.xyz = float3(10,10,10) * r7.xyz;
  r1.zw = r2.xy / r2.ww;
  r1.zw = r1.zw * cb0[66].xy + cb0[66].wz;
  r1.z = t11.SampleLevel(s5_s, r1.zw, 0).x;
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
  r1.w = saturate(r1.z / cb4[13].y);
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[13].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.x ? 0 : r1.w;
  r2.x = r12.w * 0.25 + 0.25;
  r2.x = max(0, r2.x);
  r2.x = 2.5 * r2.x;
  r2.y = dot(-cb3[14].xy, -cb3[14].xy);
  r2.y = sqrt(r2.y);
  r2.yz = -cb3[14].xy / r2.yy;
  r5.z = dot(r6.xyz, r6.xyz);
  r5.z = sqrt(r5.z);
  r15.xyz = r6.xyz / r5.zzz;
  r2.y = dot(r2.yz, -r15.xy);
  r2.y = max(0, r2.y);
  r2.z = cmp(0 >= r2.y);
  r2.y = r2.y * r2.y;
  r2.y = cb4[13].w * r2.y;
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r9.xyz = cb4[14].xxx * r9.xyz + r10.xyz;
  r2.y = dot(r9.xyz, r9.xyz);
  r2.y = sqrt(r2.y);
  r9.xyz = r9.xyz / r2.yyy;
  r2.y = dot(-cb3[14].xyz, r9.xyz);
  r2.y = 1 + -r2.y;
  r2.y = max(0, r2.y);
  r2.z = cmp(0 >= r2.y);
  r2.y = r2.y * r2.y;
  r2.y = r2.y * r2.y;
  r2.y = r2.y * r2.y;
  r2.y = r2.z ? 0 : r2.y;
  r2.z = 1 + r12.w;
  r2.z = max(0, r2.z);
  r2.z = cb4[14].y * r2.z;
  r5.z = dot(r15.xyz, r9.xyz);
  r5.z = max(0, r5.z);
  r2.z = r5.z * r2.z;
  r5.z = 1 + -r15.z;
  r5.z = max(0, r5.z);
  r2.z = r5.z * r2.z;
  r9.xyz = cb0[67].xyz + -r12.yzw;
  r5.z = dot(r9.xyz, r9.xyz);
  r5.z = sqrt(r5.z);
  r5.z = cb4[14].z + r5.z;
  r5.z = cb4[14].z / r5.z;
  r2.z = r5.z * r2.z;
  r2.x = r2.x * r2.y + r2.z;
  r2.x = cb4[14].w * r2.x;
  r2.xyz = cb4[6].xyz * r2.xxx;
  r5.z = saturate(r1.z / cb4[15].y);
  r5.z = cb4[15].z * r5.z;
  r5.w = cmp(0 >= r5.z);
  r5.z = log2(r5.z);
  r5.z = cb4[15].w * r5.z;
  r5.z = exp2(r5.z);
  r5.z = r5.w ? 0 : r5.z;
  r2.xyz = r1.www * r2.xyz + -cb4[7].xyz;
  r2.xyz = r5.zzz * r2.xyz + cb4[7].xyz;
  r2.xyz = -r7.xyz * float3(10,10,10) + r2.xyz;
  r2.xyz = r1.www * r2.xyz + r14.xyz;
  r1.zw = saturate(r1.zz / cb4[16].yw);
  r2.xyz = r2.xyz + -r3.www;
  r2.xyz = r1.zzz * r2.xyz + r3.www;
  r5.w = cmp(0 >= r1.w);
  r6.w = log2(r1.w);
  r6.w = cb4[17].x * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r5.w ? 0 : r6.w;
  r2.xyz = r2.xyz + -r13.xyz;
  r2.xyz = r5.www * r2.xyz + r13.xyz;
  r2.xyz = saturate(r8.xyz * r0.www + r2.xyz);
  r0.w = t20.Sample(s0_s, r5.xy).x;
  r5.x = cb4[17].w + -r3.w;
  r1.z = r1.z * r5.x + r3.w;
  r1.z = r1.z + -r0.w;
  r0.w = saturate(r1.w * r1.z + r0.w);
  r1.zw = saturate(cb4[17].yz);
  r0.w = r0.w * cb0[139].y + cb0[139].x;
  r5.w = min(1, r5.z);
  r7.xy = mad((int2)v3.xx, int2(36,36), int2(20,23));
  r3.w = t2[r7.x].val[8/4];
  r3.w = cmp(0 < r3.w);
  if (r3.w != 0) {
    r7.xzw = r4.xyz * cb0[211].xyz + cb0[212].xyz;
    r7.xzw = max(float3(0,0,0), r7.xzw);
    r7.xzw = min(float3(0.99000001,0.99000001,0.99000001), r7.xzw);
    r7.xzw = cb0[213].xyz * r7.xzw;
    r8.xyz = (int3)r7.xzw;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r3.w = 1 + cb0[213].w;
    r7.xzw = r7.xzw / r8.www;
    r7.xzw = frac(r7.xzw);
    r7.xzw = cb0[213].www * r7.xzw;
    r7.xzw = r8.xyz * r3.www + r7.xzw;
    r7.xzw = float3(0.5,0.5,0.5) + r7.xzw;
    r7.xzw = cb0[214].xyz * r7.xzw;
    r8.x = t1.SampleLevel(s1_s, r7.xzw, 0).x;
  } else {
    r8.x = 1;
  }
  r3.w = 0.0799999982 * r1.w;
  r7.xzw = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r7.xzw = r1.zzz * r7.xzw + r3.www;
  r2.xyz = -r2.xyz * r1.zzz + r2.xyz;
  r9.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r2.xyz = r7.xzw * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r10.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r10.w = 0;
  r9.w = r2.x;
  r9.xyzw = r1.zzzz ? r10.xyzw : r9.xyzw;
  r10.yz = r1.zz ? float2(0,0) : r2.yz;
  r1.xy = cb0[131].zw * r1.xy;
  r1.z = v6.w * cb1[3].x + cb1[3].y;
  r1.z = log2(r1.z);
  r1.z = cb1[3].z * r1.z;
  r1.z = max(0, r1.z);
  r1.xyz = (uint3)r1.xyz;
  r1.w = asint(cb1[1].z) + -1;
  r1.z = min((uint)r1.z, (uint)r1.w);
  r1.xy = (uint2)r1.xy >> asuint(cb1[2].xx);
  r1.y = mad((int)r1.z, asint(cb1[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb1[1].x), (int)r1.x);
  r1.y = t2[r7.y].val[12/4];
  if (cb1[0].z != 0) {
    r2.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r7.yzw = r2.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r12.xyzw = cb1[51].xyzw * r4.yyyy;
      r12.xyzw = r4.xxxx * cb1[50].xyzw + r12.xyzw;
      r12.xyzw = r4.zzzz * cb1[52].xyzw + r12.xyzw;
      r12.xyzw = cb1[53].xyzw + r12.xyzw;
      r1.zw = r12.xy / r12.ww;
      r2.xy = cmp(r1.zw >= float2(0,0));
      r12.xy = cmp(float2(1,1) >= r1.zw);
      r2.xy = r2.xy ? r12.xy : 0;
      r2.x = r2.y ? r2.x : 0;
      if (r2.x != 0) {
        r1.z = t4.SampleLevel(s3_s, r1.zw, 0).x;
        r1.w = cmp(r12.z < r1.z);
        r1.z = cmp(0.99000001 < r1.z);
        r1.z = (int)r1.z | (int)r1.w;
        r8.x = r1.z ? 1.000000 : 0;
      } else {
        r8.x = 1;
      }
    } else {
      r8.x = 1;
    }
    if (cb1[9].z != 0) {
      r1.z = cb1[9].z;
      r1.w = 0;
      while (true) {
        r2.x = cmp((uint)r1.w >= asuint(cb1[9].z));
        if (r2.x != 0) break;
        r2.x = dot(cb1[10].xyzw, icb[r1.w+0].xyzw);
        r2.x = cmp(r2.w < r2.x);
        if (r2.x != 0) {
          r1.z = r1.w;
          break;
        }
        r1.w = (int)r1.w + 1;
      }
      r1.w = cmp((uint)r1.z < asuint(cb1[9].z));
      if (r1.w != 0) {
        r1.w = (uint)r1.z << 2;
        r12.xyzw = cb1[r1.w+12].xyzw * r4.yyyy;
        r12.xyzw = r4.xxxx * cb1[r1.w+11].xyzw + r12.xyzw;
        r12.xyzw = r4.zzzz * cb1[r1.w+13].xyzw + r12.xyzw;
        r12.xyzw = cb1[r1.w+14].xyzw + r12.xyzw;
        r13.xyzw = r12.xyxy / r12.wwww;
        r2.xy = cmp(r13.zw >= cb1[r1.z+27].xy);
        r1.zw = cmp(cb1[r1.z+27].zw >= r13.zw);
        r1.zw = r1.zw ? r2.xy : 0;
        r1.z = r1.w ? r1.z : 0;
        if (r1.z != 0) {
          r13.xyzw = r13.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r1.zw = frac(r13.zw);
          r13.xyzw = floor(r13.xyzw);
          r14.xyzw = float4(0.5,1.5,0.5,0.5) + r13.zwzw;
          r14.xyzw = cb1[31].zwzw * r14.xyzw;
          r15.x = t3.SampleLevel(s2_s, r14.xy, 0).x;
          r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
          r13.xyzw = cb1[31].zwzw * r13.xyzw;
          r15.y = t3.SampleLevel(s2_s, r13.xy, 0).x;
          r15.z = t3.SampleLevel(s2_s, r13.zw, 0).x;
          r15.w = t3.SampleLevel(s2_s, r14.zw, 0).x;
          r2.x = r12.z * 4000 + -1;
          r12.xyzw = saturate(r15.xyzw * float4(4000,4000,4000,4000) + -r2.xxxx);
          r2.xy = r12.zy + -r12.wx;
          r2.xy = r1.zz * r2.xy + r12.wx;
          r1.z = r2.y + -r2.x;
          r1.z = r1.w * r1.z + r2.x;
        } else {
          r1.z = 1;
        }
      } else {
        r1.z = 1;
      }
    } else {
      r1.z = 1;
    }
    r7.x = 1;
    r1.w = dot(float4(1,1,1,1), r7.xyzw);
    r8.yzw = r7.yzw;
    r2.x = dot(r8.xyzw, float4(1,1,1,1));
    r2.x = -1 + r2.x;
    r1.w = r1.w * r2.x + 1;
    r2.x = saturate(r2.w * cb1[9].x + cb1[9].y);
    r2.x = r2.x * r2.x;
    r1.w = r1.w + -r1.z;
    r1.z = r2.x * r1.w + r1.z;
    r1.w = min(1, r1.z);
    r1.w = r1.z + r1.w;
    r1.w = cmp(0 < r1.w);
    if (r1.w != 0) {
      r1.w = dot(cb1[4].xyz, cb1[4].xyz);
      r1.w = rsqrt(r1.w);
      r2.xyz = cb1[4].xyz * r1.www;
      r1.w = dot(r0.xyz, r2.xyz);
      r3.w = saturate(r1.w);
      r6.w = max(cb0[226].y, r0.w);
      r7.x = dot(r0.xyz, r6.xyz);
      r2.x = dot(r6.xyz, r2.xyz);
      r2.y = r2.x * 2 + 2;
      r2.y = rsqrt(r2.y);
      r1.w = r7.x + r1.w;
      r1.w = saturate(r1.w * r2.y);
      r2.x = saturate(r2.y * r2.x + r2.y);
      r2.y = 9.99999975e-006 + abs(r7.x);
      r2.y = min(1, r2.y);
      r7.xyz = r9.xyz * r3.www;
      r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
      r2.z = r6.w * r6.w;
      r7.w = r2.z * r2.z;
      r11.w = r1.w * r7.w + -r1.w;
      r1.w = r11.w * r1.w + 1;
      r1.w = r1.w * r1.w;
      r1.w = 3.14159274 * r1.w;
      r1.w = r7.w / r1.w;
      r6.w = -r6.w * r6.w + 1;
      r7.w = r2.y * r6.w + r2.z;
      r2.z = r3.w * r6.w + r2.z;
      r2.y = r2.y * r2.z;
      r2.y = r3.w * r7.w + r2.y;
      r2.y = rcp(r2.y);
      r1.w = r2.y * r1.w;
      r2.x = 1 + -r2.x;
      r2.y = r2.x * r2.x;
      r2.y = r2.y * r2.y;
      r2.z = r2.y * r2.x;
      r6.w = saturate(50 * r10.y);
      r2.x = -r2.y * r2.x + 1;
      r10.x = r9.w;
      r12.xyz = r2.xxx * r10.xyz;
      r2.xyz = r6.www * r2.zzz + r12.xyz;
      r1.w = 0.5 * r1.w;
      r2.xyz = r1.www * r2.xyz;
      r2.xyz = r3.www * r2.xyz;
      r12.xyz = cb1[5].xyz * r1.zzz;
      r7.xyz = r12.xyz * r7.xyz;
      r2.xyz = r12.yzx * r2.yzx;
      r7.w = r2.z;
    } else {
      r2.xy = float2(0,0);
      r7.xyzw = float4(0,0,0,0);
    }
    r1.z = asuint(cb1[8].z) >> 8;
    r1.z = (int)r1.y & (int)r1.z;
    r7.xyzw = r1.zzzz ? r7.xyzw : float4(0,0,0,0);
    r1.zw = r1.zz ? r2.xy : float2(0,0);
  } else {
    r7.xyzw = float4(0,0,0,0);
    r1.zw = float2(0,0);
  }
  r2.x = (uint)r1.x << 1;
  r2.x = t6.Load(r2.x).x;
  r2.x = min(asuint(cb1[0].x), (uint)r2.x);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.y = (((uint)r1.x << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r2.y = t6.Load(r2.y).x;
  r2.x = min(asuint(cb1[0].x), (uint)r2.x);
  r2.z = dot(-r6.xyz, r0.xyz);
  r2.z = r2.z + r2.z;
  r12.xyz = r0.xyz * -r2.zzz + -r6.xyz;
  r2.z = max(cb0[226].y, r0.w);
  r3.w = r2.z * r2.z;
  r2.z = -r2.z * r2.z + 1;
  r6.w = dot(r0.xyz, r6.xyz);
  r11.w = r6.w + r6.w;
  r12.w = r11.w * r6.w + -1;
  r13.x = 9.99999975e-006 + abs(r6.w);
  r13.x = min(1, r13.x);
  r13.yzw = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  r14.x = r3.w * r3.w;
  r14.y = saturate(50 * r10.y);
  r8.yw = float2(1,1);
  r10.w = r9.w;
  r15.xyz = r7.xyz;
  r16.x = r7.w;
  r16.yz = r1.zw;
  r9.w = 0;
  while (true) {
    r14.z = cmp((uint)r9.w >= (uint)r2.x);
    if (r14.z != 0) break;
    r14.z = (int)r2.y + (int)r9.w;
    r14.z = t7.Load(r14.z).x;
    r14.w = (int)r14.z * 6;
    r17.xyzw = t5.Load(r14.w).xyzw;
    r14.w = mad((int)r14.z, 6, 1);
    r18.xyzw = t5.Load(r14.w).xyzw;
    r19.xy = mad((int2)r14.zz, int2(6,6), int2(2,3));
    r20.xyzw = t5.Load(r19.x).xyzw;
    r19.xyzw = t5.Load(r19.y).xyzw;
    r14.w = cmp(r18.w == 0.000000);
    r15.w = cmp(-2 < r19.x);
    r17.xyz = r17.xyz + -r4.xyz;
    r16.w = dot(r17.xyz, r17.xyz);
    r21.x = rsqrt(r16.w);
    r21.xyz = r21.xxx * r17.xyz;
    r21.w = r17.w * r17.w;
    r16.w = r21.w * r16.w;
    r16.w = -r16.w * r16.w + 1;
    r16.w = max(0, r16.w);
    r16.w = r16.w * r16.w;
    r22.xyz = r17.xyz * r17.www;
    r17.w = dot(r22.xyz, r22.xyz);
    r17.w = min(1, r17.w);
    r17.w = 1 + -r17.w;
    r17.w = log2(r17.w);
    r17.w = r18.w * r17.w;
    r17.w = exp2(r17.w);
    r16.w = r14.w ? r16.w : r17.w;
    r17.w = dot(r21.xyz, r20.xyz);
    r17.w = r17.w + -r19.x;
    r17.w = saturate(r17.w * r19.y);
    r17.w = r17.w * r17.w;
    r17.w = r17.w * r16.w;
    r15.w = r15.w ? r17.w : r16.w;
    r16.w = cmp(0 < r15.w);
    if (r16.w != 0) {
      r16.w = (int)r20.w & 255;
      r16.w = r16.w ? 1 : 0;
      if (r16.w != 0) {
        r21.xyzw = (int4)r20.wwww & int4(1,2,4,8);
        r21.xyzw = r21.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r16.w = (uint)r20.w >> 4;
        if (1 == 0) r17.w = 0; else if (1+4 < 32) {         r17.w = (uint)r20.w << (32-(1 + 4)); r17.w = (uint)r17.w >> (32-1);        } else r17.w = (uint)r20.w >> 4;
        r22.x = r17.w ? 1 : 0;
        r20.xyz = (int3)r16.www & int3(2,4,8);
        r22.yzw = r20.xyz ? float3(1,1,1) : float3(0,0,0);
        r16.w = dot(r22.xyzw, float4(1,1,1,1));
        r17.w = dot(r21.xyzw, float4(1,1,1,1));
        r18.w = dot(r8.xyyy, r21.xyzw);
        r18.w = -1 + r18.w;
        r17.w = r17.w * r18.w + 1;
        r19.xy = r17.ww * r16.ww;
      } else {
        r19.xy = float2(1,1);
      }
      r16.w = r19.x + r19.y;
      r16.w = cmp(0 < r16.w);
      if (r16.w != 0) {
        r14.z = mad((int)r14.z, 6, 4);
        r21.xyzw = t5.Load(r14.z).xyzw;
        r14.z = f16tof32(r19.w);
        r16.w = 0.5 * r14.z;
        r20.xyz = -r16.www * r21.xyz + r17.xyz;
        r17.xyz = r16.www * r21.xyz + r17.xyz;
        r16.w = cmp(0 < r14.z);
        if (r16.w != 0) {
          r17.w = dot(r20.xyz, r20.xyz);
          r18.w = dot(r17.xyz, r17.xyz);
          r17.w = rsqrt(r17.w);
          r18.w = rsqrt(r18.w);
          r19.y = r18.w * r17.w;
          r19.w = dot(r20.xyz, r17.xyz);
          r19.w = r19.w * r19.y;
          r21.x = r19.w * 0.5 + r19.y;
          r21.x = 0.5 + r21.x;
          r21.y = r19.y / r21.x;
          r19.y = dot(r0.xyz, r20.xyz);
          r21.z = dot(r0.xyz, r17.xyz);
          r18.w = r21.z * r18.w;
          r17.w = r19.y * r17.w + r18.w;
          r21.x = 0.5 * r17.w;
        } else {
          r17.w = dot(r20.xyz, r20.xyz);
          r18.w = 1 + r17.w;
          r21.y = rcp(r18.w);
          r17.w = rsqrt(r17.w);
          r22.xyz = r20.xyz * r17.www;
          r21.x = dot(r0.xyz, r22.xyz);
          r19.w = 1;
        }
        r17.w = cmp(0 < r19.z);
        r18.w = r19.z * r19.z;
        r18.w = saturate(r18.w * r21.y);
        r18.w = sqrt(r18.w);
        r19.y = cmp(r21.x < r18.w);
        r21.z = max(r21.x, -r18.w);
        r21.z = r21.z + r18.w;
        r21.z = r21.z * r21.z;
        r18.w = 4 * r18.w;
        r18.w = r21.z / r18.w;
        r18.w = r19.y ? r18.w : r21.x;
        r17.w = saturate(r17.w ? r18.w : r21.x);
        r14.w = r14.w ? r21.y : 1;
        r17.xyz = r17.xyz + -r20.xyz;
        r18.w = dot(r12.xyz, r17.xyz);
        r21.xyz = r18.www * r12.xyz + -r17.xyz;
        r19.y = dot(r20.xyz, r21.xyz);
        r18.w = r18.w * r18.w;
        r14.z = r14.z * r14.z + -r18.w;
        r14.z = saturate(r19.y / r14.z);
        r17.xyz = r14.zzz * r17.xyz + r20.xyz;
        r17.xyz = r16.www ? r17.xyz : r20.xyz;
        r14.z = dot(r17.xyz, r17.xyz);
        r14.z = rsqrt(r14.z);
        r17.xyz = r17.xyz * r14.zzz;
        r16.w = r19.z * r14.z;
        r16.w = saturate(r16.w * r2.z);
        r14.z = saturate(r21.w * r14.z);
        r18.w = dot(r0.xyz, r17.xyz);
        r17.x = dot(r6.xyz, r17.xyz);
        r17.y = r17.x * 2 + 2;
        r17.y = rsqrt(r17.y);
        r17.z = r18.w + r6.w;
        r17.z = saturate(r17.z * r17.y);
        r17.y = saturate(r17.y * r17.x + r17.y);
        r19.y = cmp(0 < r16.w);
        if (r19.y != 0) {
          r19.z = -r16.w * r16.w + 1;
          r19.z = sqrt(r19.z);
          r20.x = dot(r6.ww, r18.ww);
          r20.y = r20.x + -r17.x;
          r20.z = cmp(r20.y >= r19.z);
          if (r20.z != 0) {
            r17.z = 1;
            r17.y = abs(r6.w);
          } else {
            r20.z = -r20.y * r20.y + 1;
            r20.z = rsqrt(r20.z);
            r20.z = r20.z * r16.w;
            r21.x = -r20.y * r18.w + r6.w;
            r21.y = r21.x * r20.z;
            r20.y = -r20.y * r17.x + r12.w;
            r21.z = r18.w * r18.w;
            r21.z = -r6.w * r6.w + -r21.z;
            r21.z = 1 + r21.z;
            r21.z = -r17.x * r17.x + r21.z;
            r20.x = saturate(r20.x * r17.x + r21.z);
            r20.x = sqrt(r20.x);
            r20.xy = r20.zz * r20.xy;
            r21.z = r20.x * r6.w;
            r21.w = r21.z + r21.z;
            r22.x = r18.w * r19.z + r6.w;
            r20.z = r20.z * r21.x + r22.x;
            r21.x = r17.x * r19.z + r20.y;
            r21.x = 1 + r21.x;
            r22.yz = r21.xx * r20.xz;
            r22.w = r21.w * r20.z;
            r21.z = r20.z * r21.z;
            r21.z = 0.5 * r21.z;
            r21.z = r22.y * -0.5 + r21.z;
            r23.x = -r22.y * 2 + r22.w;
            r22.w = r23.x * r22.w;
            r22.y = r22.y * r22.y + r22.w;
            r22.w = r21.x * r21.x;
            r21.x = r17.x * r19.z + r21.x;
            r21.x = r21.x * -0.5 + -0.5;
            r21.xz = r22.zz * r21.xz;
            r21.x = r22.x * r22.w + r21.x;
            r20.z = r20.z * r21.x + r22.y;
            r21.x = r21.z + r21.z;
            r22.x = r21.z * r21.z;
            r22.x = r20.z * r20.z + r22.x;
            r21.x = r21.x / r22.x;
            r20.z = r21.x * r20.z;
            r21.x = -r21.x * r21.z + 1;
            r20.x = r20.z * r20.x;
            r20.x = r21.x * r21.y + r20.x;
            r20.z = r20.z * r21.w;
            r20.y = r21.x * r20.y + r20.z;
            r18.w = r18.w * r19.z + r20.x;
            r17.x = r17.x * r19.z + r20.y;
            r19.z = r17.x * 2 + 2;
            r19.z = rsqrt(r19.z);
            r18.w = r18.w + r6.w;
            r17.z = saturate(r18.w * r19.z);
            r17.y = saturate(r19.z * r17.x + r19.z);
          }
        }
        r14.w = r14.w * r17.w;
        r20.xyz = r14.www * r13.yzw;
        r17.x = cmp(0 < r14.z);
        r14.z = r14.z * r14.z;
        r18.w = r17.y * 3.5999999 + 0.400000006;
        r14.z = r14.z / r18.w;
        r14.z = r3.w * r3.w + r14.z;
        r14.z = min(1, r14.z);
        r8.z = r17.x ? r14.z : r14.x;
        r14.z = 0.25 * r16.w;
        r17.x = (uint)r8.z >> 1;
        r17.x = (int)r17.x + 0x1fbd1df5;
        r16.w = r17.x * 3 + r16.w;
        r14.z = r16.w * r14.z;
        r16.w = 0.00100000005 + r17.y;
        r14.z = r14.z / r16.w;
        r21.x = r14.z + r8.z;
        r21.y = r8.z / r21.x;
        r19.yz = r19.yy ? r21.xy : r8.zw;
        r14.z = cmp(r19.w < 1);
        r17.x = 1.00010002 + -r19.w;
        r18.w = 1 + r19.w;
        r17.x = r17.x / r18.w;
        r17.x = sqrt(r17.x);
        r18.w = 0.25 * r17.x;
        r19.w = (uint)r19.y >> 1;
        r19.w = (int)r19.w + 0x1fbd1df5;
        r17.x = r19.w * 3 + r17.x;
        r17.x = r18.w * r17.x;
        r16.w = r17.x / r16.w;
        r16.w = r19.y + r16.w;
        r16.w = r19.y / r16.w;
        r16.w = sqrt(r16.w);
        r16.w = r19.z * r16.w;
        r14.z = r14.z ? r16.w : r19.z;
        r16.w = r17.z * r8.z + -r17.z;
        r16.w = r16.w * r17.z + 1;
        r16.w = r16.w * r16.w;
        r16.w = 3.14159274 * r16.w;
        r16.w = r8.z / r16.w;
        r14.z = r16.w * r14.z;
        r8.z = sqrt(r8.z);
        r16.w = 1 + -r8.z;
        r17.x = r13.x * r16.w + r8.z;
        r8.z = r17.w * r16.w + r8.z;
        r8.z = r13.x * r8.z;
        r8.z = r17.w * r17.x + r8.z;
        r8.z = rcp(r8.z);
        r8.z = r14.z * r8.z;
        r14.z = 1 + -r17.y;
        r16.w = r14.z * r14.z;
        r16.w = r16.w * r16.w;
        r17.x = r16.w * r14.z;
        r14.z = -r16.w * r14.z + 1;
        r17.yzw = r14.zzz * r10.wyz;
        r17.xyz = r14.yyy * r17.xxx + r17.yzw;
        r8.z = 0.5 * r8.z;
        r17.xyz = r8.zzz * r17.xyz;
        r17.xyz = r17.xyz * r14.www;
        r18.xyz = r18.xyz * r15.www;
        r18.xyz = r18.xyz * r19.xxx;
        r19.xyz = r20.xyz * r18.xyz;
        r17.xyz = r18.xyz * r17.xyz;
      } else {
        r19.xyz = float3(0,0,0);
        r17.xyz = float3(0,0,0);
      }
    } else {
      r19.xyz = float3(0,0,0);
      r17.xyz = float3(0,0,0);
    }
    r8.z = (uint)r20.w >> 8;
    r8.z = (int)r1.y & (int)r8.z;
    r18.xyz = r19.xyz + r15.xyz;
    r17.xyz = r17.xyz + r16.xyz;
    r15.xyz = r8.zzz ? r18.xyz : r15.xyz;
    r16.xyz = r8.zzz ? r17.xyz : r16.xyz;
    r9.w = (int)r9.w + 1;
  }
  r1.yzw = r16.xyz + r15.xyz;
  r7.yzw = r11.www * r0.xyz + -r6.xyz;
  r6.w = saturate(r6.w);
  r1.x = (int)r1.x + asint(cb1[0].w);
  r2.x = (uint)r1.x << 1;
  r2.x = t6.Load(r2.x).x;
  r2.x = min(asuint(cb1[0].y), (uint)r2.x);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t6.Load(r1.x).x;
  r2.y = max(0.00100000005, r0.w);
  r2.y = log2(r2.y);
  r2.y = -r2.y * 1.20000005 + 1;
  r2.z = -1 + cb0[195].z;
  r2.y = r2.z + -r2.y;
  r7.x = 0;
  r6.xyz = float3(0,0,0);
  r2.z = 1;
  r3.w = 0;
  while (true) {
    r8.x = cmp((uint)r3.w >= (uint)r2.x);
    if (r8.x != 0) break;
    r8.x = cmp(r2.z < 0.00100000005);
    if (r8.x != 0) {
      break;
    }
    r8.x = (int)r1.x + (int)r3.w;
    r8.x = t7.Load(r8.x).x;
    r8.yzw = -cb2[r8.x+0].xyz + r4.xyz;
    r9.w = dot(r8.yzw, r8.yzw);
    r11.w = sqrt(r9.w);
    r12.x = cmp(r11.w < cb2[r8.x+0].w);
    if (r12.x != 0) {
      r12.x = cmp(0 < cb2[r8.x+341].z);
      if (r12.x != 0) {
        r12.x = (uint)r8.x << 2;
        r12.yzw = cb2[r12.x+1024].xyz * r4.yyy;
        r12.yzw = r4.xxx * cb2[r12.x+1023].xyz + r12.yzw;
        r12.yzw = r4.zzz * cb2[r12.x+1025].xyz + r12.yzw;
        r12.yzw = cb2[r12.x+1026].xyz + r12.yzw;
        r13.xyz = cb2[r12.x+1024].xyz * r7.zzz;
        r13.xyz = r7.yyy * cb2[r12.x+1023].xyz + r13.xyz;
        r13.xyz = r7.www * cb2[r12.x+1025].xyz + r13.xyz;
        r13.xyz = rcp(r13.xyz);
        r14.xzw = -r12.yzw * r13.xyz + -r13.xyz;
        r13.xyz = -r12.yzw * r13.xyz + r13.xyz;
        r13.xyz = max(r14.xzw, r13.xyz);
        r12.x = min(r13.y, r13.z);
        r12.x = min(r13.x, r12.x);
        r13.xyz = r12.xxx * r7.yzw + r4.xyz;
        r14.xzw = cb2[r8.x+682].xyz + cb2[r8.x+0].xyz;
        r13.xyz = -r14.xzw + r13.xyz;
        r12.x = cb2[r8.x+2387].w * 0.699999988;
        r14.xzw = -cb2[r8.x+2387].www * float3(0.5,0.5,0.5) + cb2[r8.x+2387].xyz;
        r15.xyz = cb2[r8.x+2387].xyz * r12.yzw;
        r16.xyz = cmp(r15.xyz < -r14.xzw);
        r17.xyz = r12.yzw * cb2[r8.x+2387].xyz + r14.xzw;
        r17.xyz = abs(r17.xyz);
        r16.xyz = r16.xyz ? r17.xyz : 0;
        r15.xyz = cmp(r14.xzw < r15.xyz);
        r12.yzw = r12.yzw * cb2[r8.x+2387].xyz + -r14.xzw;
        r12.yzw = abs(r12.yzw);
        r12.yzw = r15.xyz ? r12.yzw : 0;
        r14.x = dot(r16.xyz, float3(1,1,1));
        r12.y = dot(r12.yzw, float3(1,1,1));
        r12.y = r14.x + r12.y;
        r12.x = 1 / r12.x;
        r12.x = saturate(r12.y * r12.x);
        r12.y = r12.x * -2 + 3;
        r12.x = r12.x * r12.x;
        r12.x = -r12.y * r12.x + 1;
      } else {
        r11.w = saturate(r11.w / cb2[r8.x+0].w);
        r14.x = dot(r7.yzw, r8.yzw);
        r9.w = -cb2[r8.x+0].w * cb2[r8.x+0].w + r9.w;
        r9.w = r14.x * r14.x + -r9.w;
        r14.z = cmp(r9.w >= 0);
        r9.w = sqrt(r9.w);
        r9.w = r9.w + -r14.x;
        r8.yzw = r9.www * r7.yzw + r8.yzw;
        r15.yzw = -cb2[r8.x+682].xyz + r8.yzw;
        r8.y = r11.w * 2.5 + -1.5;
        r8.y = max(0, r8.y);
        r8.z = r8.y * r8.y;
        r8.y = -r8.y * 2 + 3;
        r15.x = -r8.z * r8.y + 1;
        r12.xyzw = r14.zzzz ? r15.xyzw : r7.xyzw;
        r13.xyz = r12.yzw;
      }
      r13.w = cb2[r8.x+341].y;
      r13.xyzw = t8.SampleLevel(s4_s, r13.xyzw, r2.y).xyzw;
      r8.xyz = cb2[r8.x+341].xxx * r13.xyz;
      r8.xyz = r8.xyz * r12.xxx;
      r6.xyz = r8.xyz * r2.zzz + r6.xyz;
      r8.x = -r13.w * r12.x + 1;
      r2.z = r8.x * r2.z;
    }
    r3.w = (int)r3.w + 1;
  }
  r2.xyz = cb0[157].xyz * r6.xyz;
  r1.x = saturate(r0.w * cb0[197].x + cb0[197].y);
  r3.w = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r3.w * r1.x;
  r3.w = min(0, cb0[197].z);
  r3.w = -1 + r3.w;
  r1.x = r1.x * r3.w + 1;
  r2.xyz = r2.xyz * r1.xxx;
  r1.x = cmp(cb0[145].x == 0.000000);
  if (r1.x != 0) {
    r1.x = asuint(cb0[144].y);
    r6.xy = r1.xx * float2(32.6650009,11.8149996) + v6.xy;
    r1.x = dot(r6.xy, float2(0.0671105608,0.00583714992));
    r1.x = frac(r1.x);
    r1.x = 52.9829178 * r1.x;
    r1.x = frac(r1.x);
    r1.x = -0.5 + r1.x;
    r8.xyzw = cb0[1].xyzw * r3.yyyy;
    r8.xyzw = r3.xxxx * cb0[0].xyzw + r8.xyzw;
    r8.xyzw = r3.zzzz * cb0[2].xyzw + r8.xyzw;
    r8.xyzw = cb0[3].xyzw + r8.xyzw;
    r6.xyz = r7.yzw * r2.www + r3.xyz;
    r7.xyzw = cb0[1].xyzw * r6.yyyy;
    r7.xyzw = r6.xxxx * cb0[0].xyzw + r7.xyzw;
    r7.xyzw = r6.zzzz * cb0[2].xyzw + r7.xyzw;
    r7.xyzw = cb0[3].xyzw + r7.xyzw;
    r3.w = rcp(r8.w);
    r6.xyz = r8.xyz * r3.www;
    r3.w = rcp(r7.w);
    r8.xy = r2.ww * cb0[30].zw + r8.zw;
    r2.w = rcp(r8.y);
    r7.xyz = r7.xyz * r3.www + -r6.xyz;
    r3.w = dot(r7.xy, r7.xy);
    r3.w = sqrt(r3.w);
    r7.w = 0.5 * r3.w;
    r8.yz = r6.xy * r7.ww + r7.xy;
    r8.yz = -r3.ww * float2(0.5,0.5) + abs(r8.yz);
    r8.yz = max(float2(0,0), r8.yz);
    r8.yz = r8.yz / abs(r7.xy);
    r8.yz = float2(1,1) + -r8.yz;
    r3.w = min(r8.y, r8.z);
    r3.w = r3.w / r7.w;
    r7.xyz = r7.xyz * r3.www;
    r2.w = -r8.x * r2.w + r6.z;
    r2.w = 4 * r2.w;
    r2.w = max(abs(r7.z), r2.w);
    r8.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r6.xy = cb1[176].xy * r8.xy;
    r7.xy = cb1[176].xy * r7.xy;
    r3.w = 0.0833333358 * r2.w;
    r7.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r7.xyz;
    r6.xyz = r7.xyz * r1.xxx + r6.xyz;
    r1.x = 1;
    r8.xyz = float3(0,0,0);
    r7.w = 0;
    r9.w = 0;
    r11.w = 0;
    r12.xw = float2(0,0);
    r13.xw = float2(0,0);
    while (true) {
      r14.x = cmp((uint)r13.w >= 12);
      if (r14.x != 0) break;
      r14.x = (uint)r13.w;
      r15.xyzw = float4(1,2,3,4) + r14.xxxx;
      r16.xyzw = r15.xxxy * r7.xyzz + r6.xyzz;
      r17.xyzw = r15.yyzz * r7.xyxy + r6.xyxy;
      r15.xyzw = r15.wwzw * r7.xyzz + r6.xyzz;
      r14.x = r0.w * 0.666666687 + r1.x;
      r14.z = r0.w * 0.666666687 + r14.x;
      r18.x = t12.SampleLevel(s6_s, r16.xy, r1.x).x;
      r18.y = t12.SampleLevel(s6_s, r17.xy, r1.x).x;
      r18.z = t12.SampleLevel(s6_s, r17.zw, r14.x).x;
      r18.w = t12.SampleLevel(s6_s, r15.xy, r14.x).x;
      r15.xy = r16.zw;
      r15.xyzw = r15.xyzw + -r18.xyzw;
      r16.xyzw = r2.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r15.xyzw;
      r16.xyzw = cmp(abs(r16.xyzw) < r3.wwww);
      r14.xw = (int2)r16.zw | (int2)r16.xy;
      r14.x = (int)r14.w | (int)r14.x;
      if (r14.x != 0) {
        r13.x = r15.x;
        r8.xyz = r15.yzw;
        r7.w = r16.x;
        r9.w = r16.y;
        r11.w = r16.z;
        r12.w = -1;
        break;
      }
      r12.x = r15.w;
      r13.w = (int)r13.w + 4;
      r1.x = r14.z;
      r13.x = r15.x;
      r8.xyz = r15.yzw;
      r7.w = r16.x;
      r9.w = r16.y;
      r11.w = r16.z;
      r12.w = r14.x;
    }
    if (r12.w != 0) {
      r8.w = 2;
      r15.xy = r8.yz;
      r15.z = 3;
      r8.yzw = r11.www ? r8.xyw : r15.xyz;
      r13.y = r8.x;
      r13.z = 1;
      r8.xyz = r9.www ? r13.xyz : r8.yzw;
      r12.y = r13.x;
      r12.z = 0;
      r8.xyz = r7.www ? r12.xyz : r8.xyz;
      r1.x = (uint)r13.w;
      r1.x = r8.z + r1.x;
      r2.w = r8.x + -r8.y;
      r2.w = saturate(r8.x / r2.w);
      r1.x = r2.w + r1.x;
      r6.xyz = r7.xyz * r1.xxx + r6.xyz;
      r6.xy = cb1[176].zw * r6.xy;
      r6.xy = r6.xy * float2(2,-2) + float2(-1,1);
      r6.xy = cb0[66].xy * r6.xy;
      r6.xy = r6.xy / cb0[66].xy;
      r7.xyz = cb0[123].xyw * r6.yyy;
      r7.xyz = r6.xxx * cb0[122].xyw + r7.xyz;
      r7.xyz = r6.zzz * cb0[124].xyw + r7.xyz;
      r7.xyz = cb0[125].xyw + r7.xyz;
      r7.xy = r7.xy / r7.zz;
      r7.zw = r7.xy * cb1[177].xy + cb1[177].zw;
      r6.xy = saturate(abs(r6.xy) * float2(5,5) + float2(-4,-4));
      r1.x = dot(r6.xy, r6.xy);
      r1.x = 1 + -r1.x;
      r1.x = max(0, r1.x);
      r6.xy = saturate(abs(r7.xy) * float2(5,5) + float2(-4,-4));
      r2.w = dot(r6.xy, r6.xy);
      r2.w = 1 + -r2.w;
      r2.w = max(0, r2.w);
      r1.x = min(r2.w, r1.x);
      r6.xyz = t13.SampleLevel(s7_s, r7.zw, 0).xyz;
      r6.xyz = min(float3(0,0,0), -r6.xyz);
      r2.w = saturate(-r0.w * 6.5999999 + 2);
      r1.x = r2.w * r1.x;
      r2.w = 1;
      r6.xyz = -r6.xyz * r1.xxx;
      r6.xyz = cb1[178].xxx * r6.xyz;
      r1.x = -r2.w * r1.x + 1;
      r2.xyz = r2.xyz * r1.xxx + r6.xyz;
    }
  }
  r7.xyzw = r0.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r1.x = r7.x * r7.x;
  r2.w = -9.27999973 * r6.w;
  r2.w = exp2(r2.w);
  r1.x = min(r2.w, r1.x);
  r1.x = r1.x * r7.x + r7.y;
  r6.xy = r1.xx * float2(-1.03999996,1.03999996) + r7.zw;
  r10.xyz = r10.wyz;
  r1.x = r14.y * r6.y;
  r6.xyz = r10.xyz * r6.xxx + r1.xxx;
  r1.x = dot(cb1[122].xyz, float3(1,1,1));
  r1.x = cmp(9.99999975e-005 < abs(r1.x));
  if (r1.x != 0) {
    r4.w = -1;
    r1.x = dot(cb1[122].xyzw, r4.xyzw);
    r1.x = saturate(abs(r1.x) * cb1[129].x + cb1[129].y);
    r1.x = 1 + -r1.x;
    r7.xyz = -cb1[123].xyz + r4.xyz;
    r2.w = dot(r7.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r7.xyz, cb1[125].xyz);
    r3.w = cb1[125].w + -abs(r3.w);
    r3.w = saturate(cb1[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r1.x = r2.w * r1.x;
    r2.w = dot(cb1[122].xyz, r0.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r0.w = -0.200000003 + r0.w;
    r0.w = saturate(10 * r0.w);
    r0.w = 1 + -r0.w;
    r1.x = r2.w * r1.x;
    r0.w = r1.x * r0.w;
    r1.x = cmp(0 < r0.w);
    if (r1.x != 0) {
      r7.xyz = -cb0[67].xyz + r4.xyz;
      r1.x = dot(r7.xyz, r7.xyz);
      r1.x = rsqrt(r1.x);
      r7.xyz = r7.xyz * r1.xxx;
      r1.x = dot(r7.xyz, -cb1[122].xyz);
      r1.x = r1.x + r1.x;
      r7.xyz = cb1[122].xyz * r1.xxx + r7.xyz;
      r8.xyz = cb1[127].xyz * r0.yyy;
      r8.xyz = r0.xxx * cb1[126].xyz + r8.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r8.xyz;
      r1.x = dot(r7.xyz, r0.xyz);
      r1.x = r1.x + r1.x;
      r0.xyz = r0.xyz * -r1.xxx + r7.xyz;
      r0.xyz = r0.xyz * cb1[129].zzz + r4.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r7.xyz = cb0[13].xyz * r0.yyy;
      r7.xyz = r0.xxx * cb0[12].xyz + r7.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r7.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r1.x = asuint(cb0[197].w) << 2;
      r7.xyz = cb1[r1.x+132].xyw * r0.yyy;
      r7.xyz = r0.xxx * cb1[r1.x+131].xyw + r7.xyz;
      r0.xyz = r0.zzz * cb1[r1.x+133].xyw + r7.xyz;
      r0.xyz = cb1[r1.x+134].xyw + r0.xyz;
      r1.x = cb1[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb1[141].xy, r0.xy);
      r0.xy = min(cb1[141].xy, r0.xy);
      r0.xy = r0.xy * cb1[r1.x+139].xy + cb1[r1.x+139].zw;
      r7.xyzw = t9.SampleLevel(s4_s, r0.xy, 0).xyzw;
      r0.x = r7.w * r0.w;
    } else {
      r7.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r2.xyz = r0.xxx * r2.xyz + r7.xyz;
  }
  r0.xyz = r2.xyz * r6.xyz;
  r2.xyz = r10.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r10.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r10.xyz * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r2.xyz = max(float3(1,1,1), r2.xyz);
  r0.xyz = r0.xyz * r2.xyz + r1.yzw;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r1.xyz = cb0[5].xyw * r4.yyy;
    r1.xyz = r4.xxx * cb0[4].xyw + r1.xyz;
    r1.xyz = r4.zzz * cb0[6].xyw + r1.xyz;
    r1.xyz = cb0[7].xyw + r1.xyz;
    r1.xy = r1.xy / r1.zz;
    r2.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r1.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r2.z = cb0[208].z * r0.w;
    r1.xyzw = t10.SampleLevel(s1_s, r2.xyz, 0).xyzw;
    r2.x = v4.w * r1.w;
    r1.xyz = v4.xyz * r1.www + r1.xyz;
  } else {
    r1.xyz = v4.xyz;
    r2.x = v4.w;
  }
  r2.yzw = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r2.yzw = r2.yzw + -r0.xyz;
  r0.xyz = cb0[145].yyy * r2.yzw + r0.xyz;
  r5.xyz = max(float3(0,0,0), r11.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r2.yz = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r2.y].val[0/4];
    r6.y = t2[r2.y].val[0/4+1];
    r6.z = t2[r2.y].val[0/4+2];
    r6.xyz = -r6.xyz + r4.xyz;
    r2.y = t2[r2.z].val[0/4];
    r2.z = t2[r2.z].val[0/4+1];
    r2.w = t2[r2.z].val[0/4+2];
    r2.yzw = float3(1,1,1) + r2.yzw;
    r2.yzw = cmp(r2.yzw < abs(r6.xyz));
    r0.w = (int)r2.z | (int)r2.y;
    r0.w = (int)r2.w | (int)r0.w;
    r1.w = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r4.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r4.x = 1;
    r5.xyzw = r0.wwww ? r4.yzwx : r5.xyzw;
    o0.w = r5.w;
  } else {
    o0.w = r5.w;
  }
  r0.xyz = r5.xyz + r0.xyz;
  r0.xyz = r0.xyz * r2.xxx + r1.xyz;
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