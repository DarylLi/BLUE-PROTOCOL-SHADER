// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t24 : register(t24);

Texture2D<float4> t23 : register(t23);

Texture2D<float4> t22 : register(t22);

Texture2D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture3D<float4> t15 : register(t15);

Texture3D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

TextureCube<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

TextureCubeArray<float4> t5 : register(t5);

TextureCube<float4> t4 : register(t4);

Buffer<uint4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s10_s : register(s10);

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

cbuffer cb8 : register(b8)
{
  float4 cb8[18];
}

cbuffer cb7 : register(b7)
{
  float4 cb7[8];
}

cbuffer cb6 : register(b6)
{
  float4 cb6[12];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[2728];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[179];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
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
  float4 v3 : TEXCOORD1,
  float3 v4 : TEXCOORD9,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = -cb0[129].xy + v5.xy;
  r1.zw = cb0[130].zw * r1.xy;
  r2.xy = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v5.ww * r2.xy;
  r2.zw = v5.zw;
  r3.xyw = float3(2,-2,1);
  r3.z = v5.w;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r3.xyzw = cb0[45].xyzw * v5.yyyy;
  r3.xyzw = v5.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v5.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r5.xyz = -cb0[70].xyz + v4.xyz;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = -r3.xyz * r0.www;
  r7.xyz = cb8[6].xww * cb0[142].zzz;
  r8.xy = r4.xy / cb8[6].yy;
  r7.xw = r7.xx * float2(0.100000001,0.100000001) + r8.xy;
  r7.xw = t19.Sample(s0_s, r7.xw).xy;
  r8.xy = r7.xw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r8.xy, r8.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r8.z = sqrt(r0.w);
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r10.xyz = cb8[6].zzz * r9.xyz + r8.xyz;
  r7.xw = r5.xy / cb8[7].xx;
  r11.xyzw = r7.yzzz * float4(-0.100000001,0.100000001,0.100000001,0.100000001) + r7.xwxw;
  r11.xy = float2(0.864861012,0.148384005) + r11.xy;
  r11.xy = t20.Sample(s0_s, r11.xy).xy;
  r12.xy = r11.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r12.xy, r12.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r12.z = sqrt(r0.w);
  r11.xy = t20.Sample(s0_s, r11.zw).xy;
  r11.xy = r11.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r11.xy, r11.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r11.z = sqrt(r0.w);
  r7.xy = r7.yy * float2(-0.100000001,-0.100000001) + r7.xw;
  r7.xy = float2(0.418099999,0.354799986) + r7.xy;
  r7.xy = t20.Sample(s0_s, r7.xy).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r7.z = sqrt(r0.w);
  r7.xyz = r11.xyz + r7.xyz;
  r7.xyz = r12.xyz + r7.xyz;
  r11.xyz = float3(0.333330005,0.333330005,0.333330005) * r7.xyz;
  r7.xyz = -r7.xyz * float3(0.333330005,0.333330005,0.333330005) + float3(0,0,1);
  r12.xyz = cb8[7].yyy * r7.xyz + r11.xyz;
  r0.w = cb6[4].x + cb6[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r13.x, r14.x);
  r15.x = -r13.x;
  r15.y = r14.x;
  r14.x = dot(cb6[3].yx, r15.xy);
  r15.z = r13.x;
  r14.y = dot(cb6[3].yx, r15.yz);
  r0.w = dot(r14.xy, r14.xy);
  r0.w = sqrt(r0.w);
  r13.xy = r14.xy / r0.ww;
  r14.xyz = cb6[4].yzw * cb6[0].yzw;
  r0.w = 6.28318405 / r14.x;
  r5.w = r0.w * r14.y;
  r6.w = dot(r5.xy, r13.xy);
  r7.w = cb6[1].x * cb0[142].z;
  r0.w = r6.w * r0.w + r7.w;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r14.x, r15.x);
  r0.w = r15.x * r5.w;
  r13.xy = r13.xy * r0.ww;
  r13.xy = -r13.xy;
  r0.w = r14.x * r5.w;
  r0.w = -r0.w * r14.z + 1;
  r5.w = cb6[5].x + cb6[0].x;
  r5.w = 6.28318548 * r5.w;
  sincos(r5.w, r14.x, r15.x);
  r16.x = -r14.x;
  r16.y = r15.x;
  r15.x = dot(cb6[3].yx, r16.xy);
  r16.z = r14.x;
  r15.y = dot(cb6[3].yx, r16.yz);
  r5.w = dot(r15.xy, r15.xy);
  r5.w = sqrt(r5.w);
  r14.xy = r15.xy / r5.ww;
  r15.xyz = cb6[5].yzw * cb6[0].yzw;
  r5.w = 6.28318405 / r15.x;
  r6.w = r5.w * r15.y;
  r8.w = dot(r5.xy, r14.xy);
  r5.w = r8.w * r5.w + r7.w;
  r5.w = 1.00000024 * r5.w;
  sincos(r5.w, r15.x, r16.x);
  r5.w = r16.x * r6.w;
  r14.xy = r14.xy * r5.ww;
  r14.xy = -r14.xy;
  r5.w = r15.x * r6.w;
  r14.z = -r5.w * r15.z + r0.w;
  r13.zw = float2(1,1);
  r13.xyz = r14.xyz + r13.xyz;
  r0.w = cb6[6].x + cb6[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r14.x, r15.x);
  r16.x = -r14.x;
  r16.y = r15.x;
  r15.x = dot(cb6[3].yx, r16.xy);
  r16.z = r14.x;
  r15.y = dot(cb6[3].yx, r16.yz);
  r0.w = dot(r15.xy, r15.xy);
  r0.w = sqrt(r0.w);
  r14.xy = r15.xy / r0.ww;
  r15.xyz = cb6[6].yzw * cb6[0].yzw;
  r0.w = 6.28318405 / r15.x;
  r5.w = r0.w * r15.y;
  r6.w = dot(r5.xy, r14.xy);
  r0.w = r6.w * r0.w + r7.w;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r15.x, r16.x);
  r0.w = r16.x * r5.w;
  r14.xy = r14.xy * r0.ww;
  r14.xy = -r14.xy;
  r0.w = r15.x * r5.w;
  r0.w = -r0.w * r15.z + 1;
  r5.w = cb6[7].x + cb6[0].x;
  r5.w = 6.28318548 * r5.w;
  sincos(r5.w, r15.x, r16.x);
  r17.x = -r15.x;
  r17.y = r16.x;
  r16.x = dot(cb6[3].yx, r17.xy);
  r17.z = r15.x;
  r16.y = dot(cb6[3].yx, r17.yz);
  r5.w = dot(r16.xy, r16.xy);
  r5.w = sqrt(r5.w);
  r15.xy = r16.xy / r5.ww;
  r16.xyz = cb6[7].yzw * cb6[0].yzw;
  r5.w = 6.28318405 / r16.x;
  r6.w = r5.w * r16.y;
  r8.w = dot(r5.xy, r15.xy);
  r5.w = r8.w * r5.w + r7.w;
  r5.w = 1.00000024 * r5.w;
  sincos(r5.w, r16.x, r17.x);
  r5.w = r17.x * r6.w;
  r15.xy = r15.xy * r5.ww;
  r15.xy = -r15.xy;
  r5.w = r16.x * r6.w;
  r15.z = -r5.w * r16.z + r0.w;
  r14.z = r13.z;
  r14.xyz = r15.xyz + r14.xyz;
  r13.xyz = r14.xyz + r13.xyw;
  r0.w = cb6[8].x + cb6[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r14.x, r15.x);
  r16.x = -r14.x;
  r16.y = r15.x;
  r15.x = dot(cb6[3].yx, r16.xy);
  r16.z = r14.x;
  r15.y = dot(cb6[3].yx, r16.yz);
  r0.w = dot(r15.xy, r15.xy);
  r0.w = sqrt(r0.w);
  r14.xy = r15.xy / r0.ww;
  r15.xyz = cb6[8].yzw * cb6[0].yzw;
  r0.w = 6.28318405 / r15.x;
  r5.w = r0.w * r15.y;
  r6.w = dot(r5.xy, r14.xy);
  r0.w = r6.w * r0.w + r7.w;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r15.x, r16.x);
  r0.w = r16.x * r5.w;
  r14.xy = r14.xy * r0.ww;
  r14.xy = -r14.xy;
  r0.w = r15.x * r5.w;
  r0.w = -r0.w * r15.z + 1;
  r5.w = cb6[9].x + cb6[0].x;
  r5.w = 6.28318548 * r5.w;
  sincos(r5.w, r15.x, r16.x);
  r17.x = -r15.x;
  r17.y = r16.x;
  r16.x = dot(cb6[3].yx, r17.xy);
  r17.z = r15.x;
  r16.y = dot(cb6[3].yx, r17.yz);
  r5.w = dot(r16.xy, r16.xy);
  r5.w = sqrt(r5.w);
  r15.xy = r16.xy / r5.ww;
  r16.xyz = cb6[9].yzw * cb6[0].yzw;
  r5.w = 6.28318405 / r16.x;
  r6.w = r5.w * r16.y;
  r8.w = dot(r5.xy, r15.xy);
  r5.w = r8.w * r5.w + r7.w;
  r5.w = 1.00000024 * r5.w;
  sincos(r5.w, r16.x, r17.x);
  r5.w = r17.x * r6.w;
  r15.xy = r15.xy * r5.ww;
  r15.xy = -r15.xy;
  r5.w = r16.x * r6.w;
  r15.z = -r5.w * r16.z + r0.w;
  r14.z = 1;
  r14.xyz = r15.xyz + r14.xyz;
  r0.w = cb6[10].x + cb6[0].x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r15.x, r16.x);
  r17.x = -r15.x;
  r17.y = r16.x;
  r16.x = dot(cb6[3].yx, r17.xy);
  r17.z = r15.x;
  r16.y = dot(cb6[3].yx, r17.yz);
  r0.w = dot(r16.xy, r16.xy);
  r0.w = sqrt(r0.w);
  r15.xy = r16.xy / r0.ww;
  r16.xyz = cb6[10].yzw * cb6[0].yzw;
  r0.w = 6.28318405 / r16.x;
  r5.w = r0.w * r16.y;
  r6.w = dot(r5.xy, r15.xy);
  r0.w = r6.w * r0.w + r7.w;
  r0.w = 1.00000024 * r0.w;
  sincos(r0.w, r16.x, r17.x);
  r0.w = r17.x * r5.w;
  r15.xy = r15.xy * r0.ww;
  r15.xy = -r15.xy;
  r0.w = r16.x * r5.w;
  r0.w = -r0.w * r16.z + 1;
  r5.w = cb6[11].x + cb6[0].x;
  r5.w = 6.28318548 * r5.w;
  sincos(r5.w, r16.x, r17.x);
  r18.x = -r16.x;
  r18.y = r17.x;
  r17.x = dot(cb6[3].yx, r18.xy);
  r18.z = r16.x;
  r17.y = dot(cb6[3].yx, r18.yz);
  r5.w = dot(r17.xy, r17.xy);
  r5.w = sqrt(r5.w);
  r16.xy = r17.xy / r5.ww;
  r17.xyz = cb6[11].yzw * cb6[0].yzw;
  r5.w = 6.28318405 / r17.x;
  r6.w = r5.w * r17.y;
  r8.w = dot(r5.xy, r16.xy);
  r5.w = r8.w * r5.w + r7.w;
  r5.w = 1.00000024 * r5.w;
  sincos(r5.w, r17.x, r18.x);
  r5.w = r18.x * r6.w;
  r16.xy = r16.xy * r5.ww;
  r16.xy = -r16.xy;
  r5.w = r17.x * r6.w;
  r16.z = -r5.w * r17.z + r0.w;
  r15.z = r14.z;
  r15.xyz = r16.xyz + r15.xyz;
  r14.w = r13.z;
  r14.xyz = r15.xyz + r14.xyw;
  r13.w = 1;
  r13.xyz = r14.xyz + r13.xyw;
  r14.xyz = float3(0.125,0.125,0.125) * r13.xyz;
  r13.xyz = -r13.xyz * float3(0.125,0.125,0.125) + float3(0,0,1);
  r13.xyz = cb8[7].zzz * r13.xyz + r14.xyz;
  r12.xyz = r12.xyz * float3(1,1,0.200000003) + r13.xyz;
  r13.xyz = cb0[67].xyz + -r4.xyz;
  r0.w = dot(r13.xyz, r13.xyz);
  r0.w = sqrt(r0.w);
  r5.w = -cb8[7].w + r0.w;
  r5.w = saturate(r5.w / cb8[8].x);
  r5.w = 1 + -r5.w;
  r14.xyz = r12.xyz + -r10.xyz;
  r10.xyz = r5.www * r14.xyz + r10.xyz;
  r6.w = cb8[8].y * v2.w;
  r14.xyz = float3(0,0,1) + -r10.xyz;
  r14.xyz = r6.www * r14.xyz + r10.xyz;
  r14.xyz = r14.xyz * cb0[138].www + cb0[138].xyz;
  r6.w = dot(r14.xyz, r14.xyz);
  r6.w = rsqrt(r6.w);
  r14.xyz = r14.xyz * r6.www;
  r0.xyz = r14.yyy * r0.xyz;
  r0.xyz = r14.xxx * v0.xyz + r0.xyz;
  r0.xyz = r14.zzz * v1.xyz + r0.xyz;
  r6.w = dot(r0.xyz, r0.xyz);
  r6.w = rsqrt(r6.w);
  r14.yzw = r6.www * r0.xyz;
  r15.xyz = cb7[2].yzw * r4.yyy;
  r15.xyz = r4.xxx * cb7[1].yzw + r15.xyz;
  r15.xyz = r4.zzz * cb7[3].yzw + r15.xyz;
  r15.xyz = cb7[4].yzw + r15.xyz;
  r10.zw = r15.xy / r15.zz;
  r10.zw = float2(1,-1) * r10.zw;
  r10.zw = r10.zw / cb7[0].xx;
  r12.zw = saturate(float2(0.5,0.5) + r10.zw);
  r15.xyzw = t21.SampleBias(s9_s, r12.zw, cb0[143].y).xyzw;
  r7.w = cb8[8].z * cb0[142].z;
  r16.xyzw = float4(1,1,1,1) + -r10.xyxy;
  r17.xyzw = r5.xyxy / cb8[9].xxxx;
  r16.xyzw = r16.xyzw * cb8[8].wwww + r17.xyzw;
  r17.xyzw = r7.wwww * float4(0.100000001,0.100000001,-0.100000001,-0.100000001) + r16.zwzw;
  r18.xyz = t22.Sample(s0_s, r17.xy).xyz;
  r10.xy = float2(0.418099999,0.354799986) + r17.zw;
  r17.xyz = t22.Sample(s0_s, r10.xy).xyz;
  r17.xyz = r18.xyz + r17.xyz;
  r16.xyzw = r7.wwww * float4(-0.100000001,0.100000001,0.100000001,-0.100000001) + r16.xyzw;
  r16.xyzw = float4(0.864861012,0.148384005,0.651340008,0.751637995) + r16.xyzw;
  r18.xyz = t22.Sample(s0_s, r16.xy).xyz;
  r16.xyz = t22.Sample(s0_s, r16.zw).xyz;
  r16.xyz = r18.xyz + r16.xyz;
  r16.xyz = r17.xyz + r16.xyz;
  r16.xyz = float3(0.25,0.25,0.25) * r16.xyz;
  r7.w = cmp(0 >= v2.z);
  r8.w = v2.z * v2.z;
  r7.w = r7.w ? 0 : r8.w;
  r16.xyz = r16.xyz * r7.www;
  r5.z = -r5.z + r4.z;
  r5.z = max(0, r5.z);
  r5.z = min(500, r5.z);
  r5.z = r5.z / cb8[9].y;
  r7.w = cmp(0 >= r5.z);
  r5.z = log2(r5.z);
  r5.z = cb8[9].z * r5.z;
  r5.z = exp2(r5.z);
  r5.z = min(1, r5.z);
  r5.z = cb8[9].w * r5.z;
  r5.z = r7.w ? 0 : r5.z;
  r10.xy = cb8[10].xx * r12.xy;
  r12.xy = r1.xy * cb0[130].zw + r10.xy;
  r12.xy = r12.xy * cb0[130].xy + cb0[129].xy;
  r12.xy = cb0[132].zw * r12.xy;
  r12.xy = max(cb0[133].xy, r12.xy);
  r12.xy = min(cb0[133].zw, r12.xy);
  r7.w = t9.SampleLevel(s6_s, r12.xy, 0).x;
  r8.w = r7.w * cb0[65].x + cb0[65].y;
  r7.w = r7.w * cb0[65].z + -cb0[65].w;
  r7.w = 1 / r7.w;
  r7.w = r8.w + r7.w;
  r8.w = cmp(cb0[31].w < 1);
  r9.w = r2.z * cb0[65].x + cb0[65].y;
  r2.z = r2.z * cb0[65].z + -cb0[65].w;
  r2.z = 1 / r2.z;
  r2.z = r9.w + r2.z;
  r2.z = r8.w ? r2.w : r2.z;
  r7.w = saturate(r7.w + -r2.z);
  r1.zw = r7.ww * r10.xy + r1.zw;
  r1.zw = r1.zw * cb0[130].xy + cb0[129].xy;
  r1.zw = cb0[132].zw * r1.zw;
  r1.zw = max(cb0[133].xy, r1.zw);
  r1.zw = min(cb0[133].zw, r1.zw);
  r12.xyz = t16.Sample(s1_s, r1.zw).xyz;
  r12.xyz = r12.xyz * r12.xyz;
  r12.xyz = r12.xyz * r12.xyz;
  r12.xyz = cb0[135].zzz * r12.xyz;
  r12.xyz = cb8[2].xyz * r12.xyz;
  r17.xyz = float3(10,10,10) * r12.xyz;
  r7.w = dot(r14.yzw, r6.xyz);
  r8.w = max(0, r7.w);
  r9.w = 1 + -r8.w;
  r9.w = max(9.99999975e-005, abs(r9.w));
  r9.w = log2(r9.w);
  r9.w = cb8[10].y * r9.w;
  r9.w = exp2(r9.w);
  r9.w = r9.w * cb8[10].w + cb8[10].z;
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r2.x = t9.SampleLevel(s6_s, r2.xy, 0).x;
  r2.y = r2.x * cb0[65].x + cb0[65].y;
  r2.x = r2.x * cb0[65].z + -cb0[65].w;
  r2.x = 1 / r2.x;
  r2.x = r2.y + r2.x;
  r2.x = r2.x + -r2.z;
  r2.y = saturate(r2.x / cb8[11].y);
  r2.y = cb8[11].z * r2.y;
  r10.x = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb8[11].w * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r10.x ? 0 : r2.y;
  r9.w = r9.w * r2.y;
  r18.xyz = r9.www * -cb8[4].xyz + cb8[4].xyz;
  r1.z = t9.SampleLevel(s6_s, r1.zw, 0).x;
  r1.w = r1.z * cb0[65].x + cb0[65].y;
  r1.z = r1.z * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r1.z = r1.w + r1.z;
  r1.z = r1.z + -r2.z;
  r1.z = saturate(r1.z / cb8[12].x);
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb8[12].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r12.xyz = -r12.xyz * float3(10,10,10) + r18.xyz;
  r12.xyz = r1.zzz * r12.xyz + r17.xyz;
  r1.zw = r5.xy / cb8[12].zz;
  r2.z = cb8[12].w * v3.x;
  r1.zw = -cb6[3].xy * r2.zz + r1.zw;
  r2.z = t23.SampleBias(s10_s, r1.zw, cb0[143].y).x;
  r1.zw = cb8[13].xx + r1.zw;
  r1.z = t23.SampleBias(s10_s, r1.zw, cb0[143].y).x;
  r1.w = 0.628318548 * cb0[142].z;
  r1.w = sin(r1.w);
  r1.z = r1.z + -r2.z;
  r1.z = r1.w * r1.z + r2.z;
  r1.z = r2.y * r1.z;
  r1.w = saturate(r2.x / cb8[13].z);
  r1.w = 1 + -r1.w;
  r1.z = r1.z * r1.w;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb8[13].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = cb8[14].x * r1.z;
  r1.z = r1.w ? 0 : r1.z;
  r5.xy = r5.xy / cb8[14].yy;
  r1.w = t24.Sample(s0_s, r5.xy).x;
  r2.x = saturate(r2.x / cb8[14].w);
  r2.x = 1 + -r2.x;
  r1.w = r2.x * r1.w;
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb8[15].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = cb8[15].y * r1.w;
  r1.w = r2.x ? 0 : r1.w;
  r1.z = r1.z + r1.w;
  r12.xyz = r12.xyz + r1.zzz;
  r5.xyz = r16.xyz * r5.zzz + r12.xyz;
  r1.z = dot(r10.zw, r10.zw);
  r1.z = sqrt(r1.z);
  r1.z = saturate(r1.z * 10 + -4);
  r1.w = 1 + -r15.w;
  r1.z = r1.z * r1.w + r15.w;
  r5.xyz = r5.xyz + -r15.xyz;
  r5.xyz = r1.zzz * r5.xyz + r15.xyz;
  r10.xyz = -r5.xyz * cb8[15].zzz + r5.xyz;
  r10.xyz = cb7[6].xyz * r10.xyz;
  r10.xyz = float3(0.318309844,0.318309844,0.318309844) * r10.xyz;
  r1.z = dot(r14.yzw, cb7[7].xyz);
  r8.xyz = cb8[15].www * r9.xyz + r8.xyz;
  r7.xyz = cb8[16].xxx * r7.xyz + r11.xyz;
  r7.xyz = r7.xyz + -r8.xyz;
  r7.xyz = r5.www * r7.xyz + r8.xyz;
  r1.w = saturate(dot(r7.xyz, cb7[7].xyz));
  r8.xyz = r13.xyz / r0.www;
  r8.xyz = cb7[7].xyz + r8.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r0.w = saturate(dot(r8.xyz, r7.xyz));
  r2.x = 11 * cb8[16].z;
  r2.x = exp2(r2.x);
  r2.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = r2.x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w * r0.w;
  r0.w = cb8[16].w * r0.w;
  r7.xyz = cb7[5].xyz * r0.www;
  r7.xyz = r2.zzz ? float3(0,0,0) : r7.xyz;
  r7.xyz = r10.xyz * r1.zzz + r7.xyz;
  r8.xyz = cb8[5].xyz + -r7.xyz;
  r7.xyz = cb8[17].xxx * r8.xyz + r7.xyz;
  r5.xyz = saturate(r5.xyz);
  r0.w = saturate(cb8[15].z);
  r1.zw = saturate(cb8[17].yz);
  r1.w = r1.w * cb0[139].y + cb0[139].x;
  r9.w = min(1, r2.y);
  r2.x = 0.0799999982 * r1.z;
  r8.xyz = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r2.xyz = r0.www * r8.xyz + r2.xxx;
  r8.xyz = -r5.xyz * r0.www + r5.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r2.xyz = r2.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r10.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r0.www ? r10.xyz : r8.xyz;
  r2.xyz = r0.www ? float3(0,0,0) : r2.xyz;
  r0.w = cmp(0 < cb0[215].x);
  r10.xyz = r14.zwz * r14.zwy;
  r11.yw = r14.ww * r14.zy;
  r1.z = r14.y * r14.y + -r10.x;
  r12.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r14.zwy;
  r11.xz = r10.zy * float2(1,3) + float2(0,-1);
  r10.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r11.xyzw;
  r1.z = 0.429042608 * r1.z;
  r12.x = 0.886227548;
  r5.w = dot(cb3[6].xyzw, r12.xyzw);
  r11.x = dot(cb3[9].xyzw, r10.xyzw);
  r5.w = r11.x + r5.w;
  r11.x = cb3[12].x * r1.z + r5.w;
  r5.w = dot(cb3[7].xyzw, r12.xyzw);
  r11.w = dot(cb3[10].xyzw, r10.xyzw);
  r5.w = r11.w + r5.w;
  r11.y = cb3[12].y * r1.z + r5.w;
  r5.w = dot(cb3[8].xyzw, r12.xyzw);
  r10.x = dot(cb3[11].xyzw, r10.xyzw);
  r5.w = r10.x + r5.w;
  r11.z = cb3[12].z * r1.z + r5.w;
  r10.xyz = max(float3(0,0,0), r11.xyz);
  r10.xyz = r0.www ? r10.xyz : 0;
  r1.z = cmp(cb0[186].y != 0.000000);
  if (r1.z != 0) {
    r14.x = 1;
    r11.xyzw = r0.wwww ? cb3[4].wxyz : r14.xyzw;
    r0.w = 1 + -r11.x;
    r0.w = -r0.w * r0.w + 1;
    r0.xyz = r0.xyz * r6.www + -r11.yzw;
    r13.xyz = r0.www * r0.xyz + r11.yzw;
    r0.x = saturate(dot(r11.yzw, r14.yzw));
    r0.y = 1 + -r0.x;
    r11.y = r0.w * r0.y + r0.x;
  } else {
    r13.xyz = r14.yzw;
    r11.xy = float2(1,1);
  }
  r0.x = t0[0].val[0/4];
  r0.y = t0[0].val[0/4+1];
  r0.z = t0[0].val[0/4+2];
  r0.w = t0[0].val[0/4+3];
  r13.w = 1;
  r0.x = dot(r0.xyzw, r13.xyzw);
  r15.x = t0[1].val[0/4];
  r15.y = t0[1].val[0/4+1];
  r15.z = t0[1].val[0/4+2];
  r15.w = t0[1].val[0/4+3];
  r0.y = dot(r15.xyzw, r13.xyzw);
  r15.x = t0[2].val[0/4];
  r15.y = t0[2].val[0/4+1];
  r15.z = t0[2].val[0/4+2];
  r15.w = t0[2].val[0/4+3];
  r0.z = dot(r15.xyzw, r13.xyzw);
  r15.xyzw = r13.xyzz * r13.yzzx;
  r16.x = t0[3].val[0/4];
  r16.y = t0[3].val[0/4+1];
  r16.z = t0[3].val[0/4+2];
  r16.w = t0[3].val[0/4+3];
  r16.x = dot(r16.xyzw, r15.xyzw);
  r17.x = t0[4].val[0/4];
  r17.y = t0[4].val[0/4+1];
  r17.z = t0[4].val[0/4+2];
  r17.w = t0[4].val[0/4+3];
  r16.y = dot(r17.xyzw, r15.xyzw);
  r17.x = t0[5].val[0/4];
  r17.y = t0[5].val[0/4+1];
  r17.z = t0[5].val[0/4+2];
  r17.w = t0[5].val[0/4+3];
  r16.z = dot(r17.xyzw, r15.xyzw);
  r0.w = r13.y * r13.y;
  r0.w = r13.x * r13.x + -r0.w;
  r13.x = t0[6].val[0/4];
  r13.y = t0[6].val[0/4+1];
  r13.z = t0[6].val[0/4+2];
  r0.xyz = r16.xyz + r0.xyz;
  r0.xyz = r13.xyz * r0.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r11.x * r11.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r10.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r10.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r5.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r1.xy = cb0[131].zw * r1.xy;
  r1.z = v5.w * cb2[3].x + cb2[3].y;
  r1.z = log2(r1.z);
  r1.z = cb2[3].z * r1.z;
  r1.z = max(0, r1.z);
  r1.xyz = (uint3)r1.xyz;
  r5.w = asint(cb2[1].z) + -1;
  r1.z = min((uint)r5.w, (uint)r1.z);
  r1.xy = (uint2)r1.xy >> asuint(cb2[2].xx);
  r1.y = mad((int)r1.z, asint(cb2[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb2[1].x), (int)r1.x);
  r1.y = r7.w + r7.w;
  r6.yzw = r1.yyy * r14.yzw + -r6.xyz;
  r1.y = min(1, r8.w);
  r1.x = (int)r1.x + asint(cb2[0].w);
  r1.z = (uint)r1.x << 1;
  r1.z = t2.Load(r1.z).x;
  r1.z = min(asuint(cb2[0].y), (uint)r1.z);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t2.Load(r1.x).x;
  r5.w = max(0.00100000005, r1.w);
  r5.w = log2(r5.w);
  r5.w = -r5.w * 1.20000005 + 1;
  r7.w = -1 + cb0[195].z;
  r7.w = r7.w + -r5.w;
  r6.x = 0;
  r8.w = 1;
  r10.xyzw = float4(0,0,0,0);
  r11.xy = float2(1,0);
  while (true) {
    r11.z = cmp((uint)r11.y >= (uint)r1.z);
    if (r11.z != 0) break;
    r11.z = cmp(r8.w < 0.00100000005);
    if (r11.z != 0) {
      break;
    }
    r11.z = (int)r1.x + (int)r11.y;
    r11.z = t3.Load(r11.z).x;
    r13.xyz = -cb5[r11.z+0].xyz + r4.xyz;
    r11.w = dot(r13.xyz, r13.xyz);
    r13.w = sqrt(r11.w);
    r14.x = cmp(r13.w < cb5[r11.z+0].w);
    if (r14.x != 0) {
      r14.x = cmp(0 < cb5[r11.z+341].z);
      if (r14.x != 0) {
        r14.x = (uint)r11.z << 2;
        r15.xyz = cb5[r14.x+1024].xyz * r4.yyy;
        r15.xyz = r4.xxx * cb5[r14.x+1023].xyz + r15.xyz;
        r15.xyz = r4.zzz * cb5[r14.x+1025].xyz + r15.xyz;
        r15.xyz = cb5[r14.x+1026].xyz + r15.xyz;
        r16.xyz = cb5[r14.x+1024].xyz * r6.zzz;
        r16.xyz = r6.yyy * cb5[r14.x+1023].xyz + r16.xyz;
        r16.xyz = r6.www * cb5[r14.x+1025].xyz + r16.xyz;
        r16.xyz = rcp(r16.xyz);
        r17.xyz = -r15.xyz * r16.xyz + -r16.xyz;
        r16.xyz = -r15.xyz * r16.xyz + r16.xyz;
        r16.xyz = max(r17.xyz, r16.xyz);
        r14.x = min(r16.y, r16.z);
        r14.x = min(r16.x, r14.x);
        r16.xyz = r14.xxx * r6.yzw + r4.xyz;
        r17.xyz = cb5[r11.z+682].xyz + cb5[r11.z+0].xyz;
        r16.xyz = -r17.xyz + r16.xyz;
        r14.x = cb5[r11.z+2387].w * 0.699999988;
        r17.xyz = -cb5[r11.z+2387].www * float3(0.5,0.5,0.5) + cb5[r11.z+2387].xyz;
        r18.xyz = cb5[r11.z+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb5[r11.z+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb5[r11.z+2387].xyz + -r17.xyz;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r15.w = dot(r19.xyz, float3(1,1,1));
        r15.x = dot(r15.xyz, float3(1,1,1));
        r15.x = r15.w + r15.x;
        r14.x = 1 / r14.x;
        r14.x = saturate(r15.x * r14.x);
        r15.x = r14.x * -2 + 3;
        r14.x = r14.x * r14.x;
        r15.x = -r15.x * r14.x + 1;
      } else {
        r13.w = saturate(r13.w / cb5[r11.z+0].w);
        r14.x = dot(r6.yzw, r13.xyz);
        r11.w = -cb5[r11.z+0].w * cb5[r11.z+0].w + r11.w;
        r11.w = r14.x * r14.x + -r11.w;
        r17.x = cmp(r11.w >= 0);
        r11.w = sqrt(r11.w);
        r11.w = r11.w + -r14.x;
        r13.xyz = r11.www * r6.yzw + r13.xyz;
        r18.yzw = -cb5[r11.z+682].xyz + r13.xyz;
        r11.w = r13.w * 2.5 + -1.5;
        r11.w = max(0, r11.w);
        r13.x = r11.w * r11.w;
        r11.w = -r11.w * 2 + 3;
        r18.x = -r13.x * r11.w + 1;
        r15.xyzw = r17.xxxx ? r18.xyzw : r6.xyzw;
        r16.xyz = r15.yzw;
      }
      r16.w = cb5[r11.z+341].y;
      r13.xyzw = t5.SampleLevel(s4_s, r16.xyzw, r7.w).xyzw;
      r13.xyz = cb5[r11.z+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r15.xxx;
      r10.xyz = r13.xyz * r8.www + r10.xyz;
      r11.w = -r13.w * r15.x + 1;
      r8.w = r11.w * r8.w;
      r11.z = cb5[r11.z+682].w * r15.x;
      r10.w = r11.z * r11.x + r10.w;
      r11.z = 1 + -r15.x;
      r11.x = r11.x * r11.z;
    }
    r11.y = (int)r11.y + 1;
  }
  r13.xyz = cb0[157].xyz * r10.xyz;
  r1.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r13.w = r10.w * r1.x;
  r1.x = cmp(0 < cb2[116].y);
  if (r1.x != 0) {
    r1.x = cb2[116].x + -r5.w;
    r1.x = -1 + r1.x;
    r10.xyz = t4.SampleLevel(s3_s, r6.yzw, r1.x).xyz;
    r1.x = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r1.x = cb2[117].x * r1.x;
    r10.xyz = cb0[187].xyz * r10.xyz;
    r1.z = cmp(cb2[116].z < 1);
    r15.xyz = r8.www * r10.xyz + r13.xyz;
    r15.w = r1.x * r11.x + r13.w;
    r10.xyz = r1.zzz ? float3(0,0,0) : r10.xyz;
    r13.xyzw = r1.zzzz ? r15.xyzw : r13.xyzw;
  } else {
    r10.xyz = float3(0,0,0);
  }
  r1.x = saturate(r1.w * cb0[197].x + cb0[197].y);
  r1.z = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.z * r1.x;
  r1.z = max(9.99999975e-005, r13.w);
  r0.w = r0.w / r1.z;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r1.x * r0.w + 1;
  r10.xyz = r10.xyz * r8.www;
  r10.xyz = r13.xyz * r0.www + r10.xyz;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r1.xz = r0.ww * float2(32.6650009,11.8149996) + v5.xy;
    r0.w = dot(r1.xz, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r11.xyzw = cb0[1].xyzw * r3.yyyy;
    r11.xyzw = r3.xxxx * cb0[0].xyzw + r11.xyzw;
    r11.xyzw = r3.zzzz * cb0[2].xyzw + r11.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r6.xyz = r6.yzw * r2.www + r3.xyz;
    r13.xyzw = cb0[1].xyzw * r6.yyyy;
    r13.xyzw = r6.xxxx * cb0[0].xyzw + r13.xyzw;
    r6.xyzw = r6.zzzz * cb0[2].xyzw + r13.xyzw;
    r6.xyzw = cb0[3].xyzw + r6.xyzw;
    r1.x = rcp(r11.w);
    r13.xyz = r11.xyz * r1.xxx;
    r1.x = rcp(r6.w);
    r11.xy = r2.ww * cb0[30].zw + r11.zw;
    r1.z = rcp(r11.y);
    r6.xyz = r6.xyz * r1.xxx + -r13.xyz;
    r1.x = dot(r6.xy, r6.xy);
    r1.x = sqrt(r1.x);
    r2.w = 0.5 * r1.x;
    r11.yz = r13.xy * r2.ww + r6.xy;
    r11.yz = -r1.xx * float2(0.5,0.5) + abs(r11.yz);
    r11.yz = max(float2(0,0), r11.yz);
    r11.yz = r11.yz / abs(r6.xy);
    r11.yz = float2(1,1) + -r11.yz;
    r1.x = min(r11.y, r11.z);
    r1.x = r1.x / r2.w;
    r6.xyz = r6.xyz * r1.xxx;
    r1.x = -r11.x * r1.z + r13.z;
    r1.x = 4 * r1.x;
    r1.x = max(abs(r6.z), r1.x);
    r11.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb2[176].xy * r11.xy;
    r6.xy = cb2[176].xy * r6.xy;
    r1.z = 0.0833333358 * r1.x;
    r6.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r6.xyz;
    r11.xyz = r6.xyz * r0.www + r13.xyz;
    r0.w = 1;
    r15.x = 0;
    r16.x = 0;
    r13.xyz = float3(0,0,0);
    r2.w = 0;
    r5.w = 0;
    r6.w = 0;
    r7.w = 0;
    r8.w = 0;
    while (true) {
      r10.w = cmp((uint)r8.w >= 12);
      if (r10.w != 0) break;
      r10.w = (uint)r8.w;
      r17.xyzw = float4(1,2,3,4) + r10.wwww;
      r18.xyzw = r17.xxxy * r6.xyzz + r11.xyzz;
      r19.xyzw = r17.yyzz * r6.xyxy + r11.xyxy;
      r17.xyzw = r17.wwzw * r6.xyzz + r11.xyzz;
      r10.w = r1.w * 0.666666687 + r0.w;
      r11.w = r1.w * 0.666666687 + r10.w;
      r20.x = t10.SampleLevel(s7_s, r18.xy, r0.w).x;
      r20.y = t10.SampleLevel(s7_s, r19.xy, r0.w).x;
      r20.z = t10.SampleLevel(s7_s, r19.zw, r10.w).x;
      r20.w = t10.SampleLevel(s7_s, r17.xy, r10.w).x;
      r17.xy = r18.zw;
      r17.xyzw = r17.xyzw + -r20.xyzw;
      r18.xyzw = r1.xxxx * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r17.xyzw;
      r18.xyzw = cmp(abs(r18.xyzw) < r1.zzzz);
      r19.xy = (int2)r18.zw | (int2)r18.xy;
      r10.w = (int)r19.y | (int)r19.x;
      if (r10.w != 0) {
        r16.x = r17.x;
        r13.xyz = r17.yzw;
        r2.w = r18.x;
        r5.w = r18.y;
        r6.w = r18.z;
        r7.w = -1;
        break;
      }
      r15.x = r17.w;
      r8.w = (int)r8.w + 4;
      r0.w = r11.w;
      r16.x = r17.x;
      r13.xyz = r17.yzw;
      r2.w = r18.x;
      r5.w = r18.y;
      r6.w = r18.z;
      r7.w = r10.w;
    }
    if (r7.w != 0) {
      r13.w = 2;
      r17.xy = r13.yz;
      r17.z = 3;
      r13.yzw = r6.www ? r13.xyw : r17.xyz;
      r16.y = r13.x;
      r16.z = 1;
      r13.xyz = r5.www ? r16.xyz : r13.yzw;
      r15.y = r16.x;
      r15.z = 0;
      r13.xyz = r2.www ? r15.xyz : r13.xyz;
      r0.w = (uint)r8.w;
      r0.w = r13.z + r0.w;
      r1.x = r13.x + -r13.y;
      r1.x = saturate(r13.x / r1.x);
      r0.w = r1.x + r0.w;
      r6.xyz = r6.xyz * r0.www + r11.xyz;
      r1.xz = cb2[176].zw * r6.xy;
      r1.xz = r1.xz * float2(2,-2) + float2(-1,1);
      r1.xz = cb0[66].xy * r1.xz;
      r1.xz = r1.xz / cb0[66].xy;
      r6.xyw = cb0[123].xyw * r1.zzz;
      r6.xyw = r1.xxx * cb0[122].xyw + r6.xyw;
      r6.xyz = r6.zzz * cb0[124].xyw + r6.xyw;
      r6.xyz = cb0[125].xyw + r6.xyz;
      r6.xy = r6.xy / r6.zz;
      r6.zw = r6.xy * cb2[177].xy + cb2[177].zw;
      r1.xz = saturate(abs(r1.xz) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r1.xz, r1.xz);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r1.xz = saturate(abs(r6.xy) * float2(5,5) + float2(-4,-4));
      r1.x = dot(r1.xz, r1.xz);
      r1.x = 1 + -r1.x;
      r1.x = max(0, r1.x);
      r0.w = min(r1.x, r0.w);
      r6.xyz = t11.SampleLevel(s8_s, r6.zw, 0).xyz;
      r6.xyz = min(float3(0,0,0), -r6.xyz);
      r1.x = saturate(-r1.w * 6.5999999 + 2);
      r0.w = r1.x * r0.w;
      r1.x = 1;
      r6.xyz = -r6.xyz * r0.www;
      r6.xyz = cb2[178].xxx * r6.xyz;
      r0.w = -r1.x * r0.w + 1;
      r10.xyz = r10.xyz * r0.www + r6.xyz;
    }
  }
  r6.xyzw = r1.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r6.x * r6.x;
  r1.x = -9.27999973 * r1.y;
  r1.x = exp2(r1.x);
  r0.w = min(r1.x, r0.w);
  r0.w = r0.w * r6.x + r6.y;
  r1.xy = r0.ww * float2(-1.03999996,1.03999996) + r6.zw;
  r0.w = 50 * r2.y;
  r0.w = saturate(r0.w);
  r0.w = r0.w * r1.y;
  r1.xyz = r2.xyz * r1.xxx + r0.www;
  r0.w = dot(cb2[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r4.w = -1;
    r0.w = dot(cb2[122].xyzw, r4.xyzw);
    r0.w = saturate(abs(r0.w) * cb2[129].x + cb2[129].y);
    r0.w = 1 + -r0.w;
    r6.xyz = -cb2[123].xyz + r4.xyz;
    r2.w = dot(r6.xyz, cb2[124].xyz);
    r2.w = cb2[124].w + -abs(r2.w);
    r2.w = saturate(cb2[129].x * r2.w);
    r4.w = dot(r6.xyz, cb2[125].xyz);
    r4.w = cb2[125].w + -abs(r4.w);
    r4.w = saturate(cb2[129].x * r4.w);
    r2.w = r4.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb2[122].xyz, r14.yzw);
    r2.w = saturate(r2.w * cb2[130].x + cb2[130].y);
    r1.w = -0.200000003 + r1.w;
    r1.w = saturate(10 * r1.w);
    r1.w = 1 + -r1.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r1.w;
    r1.w = cmp(0 < r0.w);
    if (r1.w != 0) {
      r6.xyz = -cb0[67].xyz + r4.xyz;
      r1.w = dot(r6.xyz, r6.xyz);
      r1.w = rsqrt(r1.w);
      r6.xyz = r6.xyz * r1.www;
      r1.w = dot(r6.xyz, -cb2[122].xyz);
      r1.w = r1.w + r1.w;
      r6.xyz = cb2[122].xyz * r1.www + r6.xyz;
      r11.xyz = cb2[127].xyz * r14.zzz;
      r11.xyz = r14.yyy * cb2[126].xyz + r11.xyz;
      r11.xyz = r14.www * cb2[128].xyz + r11.xyz;
      r1.w = dot(r6.xyz, r11.xyz);
      r1.w = r1.w + r1.w;
      r6.xyz = r11.xyz * -r1.www + r6.xyz;
      r6.xyz = r6.xyz * cb2[129].zzz + r4.xyz;
      r6.xyz = cb0[70].xyz + r6.xyz;
      r11.xyz = cb0[13].xyz * r6.yyy;
      r6.xyw = r6.xxx * cb0[12].xyz + r11.xyz;
      r6.xyz = r6.zzz * cb0[14].xyz + r6.xyw;
      r6.xyz = cb0[15].xyz + r6.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r11.xyz = cb2[r1.w+132].xyw * r6.yyy;
      r6.xyw = r6.xxx * cb2[r1.w+131].xyw + r11.xyz;
      r6.xyz = r6.zzz * cb2[r1.w+133].xyw + r6.xyw;
      r6.xyz = cb2[r1.w+134].xyw + r6.xyz;
      r1.w = cb2[141].z ? cb0[197].w : 0;
      r6.xy = r6.xy / r6.zz;
      r6.xy = max(-cb2[141].xy, r6.xy);
      r6.xy = min(cb2[141].xy, r6.xy);
      r6.xy = r6.xy * cb2[r1.w+139].xy + cb2[r1.w+139].zw;
      r6.xyzw = t6.SampleLevel(s4_s, r6.xy, 0).xyzw;
      r0.w = r6.w * r0.w;
    } else {
      r6.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r10.xyz = r0.www * r10.xyz + r6.xyz;
  }
  r1.xyz = r10.xyz * r1.xyz;
  r6.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r0.w);
  r2.w = dot(r3.xyz, cb0[60].xyz);
  r1.w = r1.w / r2.w;
  r1.w = cb0[210].z * r1.w;
  r1.w = max(0, r1.w);
  r2.w = min(cb2[143].z, cb0[67].z);
  r4.w = cb0[67].z + -r2.w;
  r3.w = r4.w + r3.z;
  r4.w = dot(r3.xyw, r3.xyw);
  r5.w = rsqrt(r4.w);
  r4.w = r5.w * r4.w;
  r1.w = max(cb2[143].w, r1.w);
  r6.w = cmp(0 < r1.w);
  r7.w = r1.w * r5.w;
  r2.w = r7.w * r3.w + r2.w;
  r7.w = -r7.w * r3.w + r3.w;
  r1.w = -r1.w * r5.w + 1;
  r1.w = r1.w * r4.w;
  r8.w = -cb2[146].y + r2.w;
  r8.w = cb2[143].y * r8.w;
  r8.w = max(-127, r8.w);
  r8.w = exp2(-r8.w);
  r8.w = cb2[146].x * r8.w;
  r2.w = -cb2[144].w + r2.w;
  r2.w = cb2[144].y * r2.w;
  r2.w = max(-127, r2.w);
  r2.w = exp2(-r2.w);
  r2.w = cb2[144].z * r2.w;
  r8.w = r6.w ? r8.w : cb2[143].x;
  r2.w = r6.w ? r2.w : cb2[144].x;
  r1.w = r6.w ? r1.w : r4.w;
  r6.w = r6.w ? r7.w : r3.w;
  r7.w = cb2[143].y * r6.w;
  r7.w = max(-127, r7.w);
  r10.x = exp2(-r7.w);
  r10.x = 1 + -r10.x;
  r10.x = r10.x / r7.w;
  r10.y = -r7.w * 0.240226507 + 0.693147182;
  r7.w = cmp(0.00999999978 < abs(r7.w));
  r7.w = r7.w ? r10.x : r10.y;
  r6.w = cb2[144].y * r6.w;
  r6.xyzw = max(float4(1,1,1,-127), r6.xyzw);
  r10.x = exp2(-r6.w);
  r10.x = 1 + -r10.x;
  r10.x = r10.x / r6.w;
  r10.y = -r6.w * 0.240226507 + 0.693147182;
  r6.w = cmp(0.00999999978 < abs(r6.w));
  r6.w = r6.w ? r10.x : r10.y;
  r2.w = r6.w * r2.w;
  r2.w = r8.w * r7.w + r2.w;
  r6.w = r2.w * r1.w;
  r10.xy = cmp(float2(0,0) < cb2[146].zw);
  if (r10.x != 0) {
    r7.w = saturate(r4.w * cb2[150].x + cb2[150].y);
    r10.xz = float2(1,-1) * cb2[149].yx;
    r11.x = dot(r3.xy, r10.xz);
    r11.y = dot(r3.xy, cb2[149].xy);
    r11.z = r3.w;
    r10.xzw = t7.SampleLevel(s5_s, r11.xyz, 0).xyz;
    r11.xyz = t7.SampleLevel(s5_s, r11.xyz, cb2[150].z).xyz;
    r10.xzw = -r11.xyz + r10.xzw;
    r10.xzw = r7.www * r10.xzw + r11.xyz;
    r10.xzw = cb2[145].xyz * r10.xzw;
  } else {
    r10.xzw = cb2[145].xyz;
  }
  r7.w = cmp(cb2[147].w >= 0);
  r8.w = cmp(cb2[146].z == 0.000000);
  r7.w = r7.w ? r8.w : 0;
  if (r7.w != 0) {
    r11.xyz = r5.www * r3.xyw;
    r3.w = saturate(dot(r11.xyz, cb2[147].xyz));
    r3.w = log2(r3.w);
    r3.w = cb2[148].w * r3.w;
    r3.w = exp2(r3.w);
    r11.xyz = cb2[148].xyz * r3.www;
    r1.w = -cb2[147].w + r1.w;
    r1.w = max(0, r1.w);
    r1.w = r2.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r11.xyz = r11.xyz * r1.www;
  } else {
    r11.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r6.w);
  r1.w = min(1, r1.w);
  r11.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r4.w);
  r1.w = r1.w ? r10.y : 0;
  r11.xyzw = r1.wwww ? float4(1,0,0,0) : r11.wxyz;
  r1.w = 1 + -r11.x;
  r10.xyz = r10.xzw * r1.www + r11.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r11.yzw = cb0[5].xyw * r4.yyy;
    r11.yzw = r4.xxx * cb0[4].xyw + r11.yzw;
    r11.yzw = r4.zzz * cb0[6].xyw + r11.yzw;
    r11.yzw = cb0[7].xyw + r11.yzw;
    r11.yz = r11.yz / r11.ww;
    r13.xy = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r11.w * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r13.z = cb0[208].z * r1.w;
    r13.xyzw = t8.SampleLevel(s1_s, r13.xyz, 0).xyzw;
    r10.xyz = r10.xyz * r13.www + r13.xyz;
    r11.x = r13.w * r11.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r11.yzw = cb0[5].xyw * r4.yyy;
    r11.yzw = r4.xxx * cb0[4].xyw + r11.yzw;
    r11.yzw = r4.zzz * cb0[6].xyw + r11.yzw;
    r11.yzw = cb0[7].xyw + r11.yzw;
    r1.w = cmp(0 != cb0[184].x);
    r13.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r11.yz = r11.yz / r11.ww;
    r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r13.xyz;
    r2.w = dot(r13.xyz, r13.xyz);
    r3.w = sqrt(r2.w);
    r3.w = -cb0[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb0[182].x * r3.w;
    r3.w = cb0[181].z * r3.w;
    r14.z = sqrt(r3.w);
    r3.w = cb0[181].y * r14.z;
    r4.w = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r4.w ? r3.w : 1;
    r2.w = rsqrt(r2.w);
    r13.xyz = r13.xyz * r2.www;
    r2.w = -r13.z * r13.z + 1;
    r2.w = sqrt(r2.w);
    r15.y = r13.z * 0.5 + 0.5;
    r13.xy = r13.xy / r2.ww;
    r2.w = 1 + -abs(r13.x);
    r2.w = sqrt(r2.w);
    r4.w = abs(r13.x) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r13.x) + -0.212114394;
    r4.w = r4.w * abs(r13.x) + 1.57072878;
    r5.w = r4.w * r2.w;
    r5.w = r5.w * -2 + 3.14159274;
    r6.w = cmp(r13.x < -r13.x);
    r5.w = r6.w ? r5.w : 0;
    r2.w = r4.w * r2.w + r5.w;
    r4.w = cmp(r13.y < 0);
    r5.w = 6.28318548 + -r2.w;
    r2.w = r4.w ? r5.w : r2.w;
    r15.x = 0.159154937 * r2.w;
    r13.xy = cb0[180].zw * float2(0.5,0.5) + r15.xy;
    r13.zw = float2(1,1) + cb0[180].xy;
    r13.zw = cb0[180].xy / r13.zw;
    r13.xy = r13.xy * r13.zw;
    r14.xy = r1.ww ? r13.xy : r11.yz;
    r13.xyzw = t1.SampleLevel(s2_s, r14.xyz, 0).xyzw;
    r11.yzw = r13.xyz * r3.www;
    r1.w = 1 + -r13.w;
    r1.w = -r3.w * r1.w + 1;
    r11.yzw = cb0[135].zzz * r11.yzw;
    r10.xyz = r11.yzw * r11.xxx + r10.xyz;
    r11.x = r11.x * r1.w;
  }
  r11.yzw = -cb0[148].xyz + r4.xyz;
  r13.xyz = cb0[150].xyz * r11.yzw;
  r14.xyz = -cb0[149].xyz + r4.xyz;
  r14.xyz = cb0[151].xyz * r14.xyz;
  r11.yzw = r11.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r11.yzw = float3(0.5,0.5,0.5) + -abs(r11.yzw);
  r11.yzw = saturate(float3(6,6,6) * r11.yzw);
  r1.w = r11.y * r11.z;
  r1.w = r1.w * r11.w;
  r15.xyzw = t12.SampleLevel(s1_s, r13.xyz, 0).xyzw;
  r16.xyzw = t13.SampleLevel(s1_s, r14.xyz, 0).xyzw;
  r15.xyzw = -r16.xyzw + r15.xyzw;
  r15.xyzw = r1.wwww * r15.xyzw + r16.xyzw;
  r11.yzw = t14.SampleLevel(s1_s, r13.xyz, 0).xyz;
  r13.xyz = t15.SampleLevel(s1_s, r14.xyz, 0).xyz;
  r11.yzw = -r13.xyz + r11.yzw;
  r11.yzw = r1.www * r11.yzw + r13.xyz;
  r1.w = dot(r15.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r13.xyz = r15.xyz / r1.www;
  r14.yzw = r13.xxx * r11.yzw;
  r16.yzw = r13.yyy * r11.yzw;
  r13.yzw = r13.zzz * r11.yzw;
  r14.x = r15.x;
  r14.x = dot(r14.xyzw, r12.xyzw);
  r16.x = r15.y;
  r14.y = dot(r16.xyzw, r12.xyzw);
  r13.x = r15.z;
  r14.z = dot(r13.xyzw, r12.xyzw);
  r11.yzw = max(float3(0,0,0), r14.xyz);
  r1.w = cmp(0 < cb4[6].w);
  if (r1.w != 0) {
    r12.xyzw = cb4[1].xyzw * r4.yyyy;
    r12.xyzw = r4.xxxx * cb4[0].xyzw + r12.xyzw;
    r12.xyzw = r4.zzzz * cb4[2].xyzw + r12.xyzw;
    r12.xyzw = cb4[3].xyzw + r12.xyzw;
    r12.xy = r12.xy / r12.ww;
    r13.xyzw = t17.SampleLevel(s1_s, r12.xy, 0).xyzw;
    r14.xyz = t18.SampleLevel(s1_s, r12.xy, 0).yzw;
    r15.xyz = float3(6.28318548,12.566371,18.849556) * r12.zzz;
    sincos(r15.xyz, r15.xyz, r16.xyz);
    r16.xyz = float3(1,1,1) + -r16.xyz;
    r1.w = r13.x * r12.z;
    r13.xyz = r15.xyz * r13.yzw;
    r13.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r13.xyz;
    r2.w = dot(r13.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r13.xyz = r16.xyz * r14.xyz;
    r13.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r13.xyz;
    r2.w = dot(r13.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r13.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r13.xyz = exp2(r13.xyz);
    r13.xyz = min(float3(1,1,1), r13.xyz);
    r12.zw = cmp(r12.xy < cb4[4].xy);
    r12.xy = cmp(cb4[4].zw < r12.xy);
    r12.xy = (int2)r12.xy | (int2)r12.zw;
    r1.w = (int)r12.y | (int)r12.x;
    r12.xyz = cb4[6].xyz * r15.www;
    r13.xyz = float3(1,1,1) + -r13.xyz;
    r13.xyz = r1.www ? float3(0,0,0) : r13.xyz;
    r12.xyz = -r12.xyz * r13.xyz + r11.yzw;
    r12.xyz = max(float3(0,0,0), r12.xyz);
    r12.xyz = r12.xyz * r8.xyz;
  } else {
    r12.xyz = r11.yzw * r8.xyz;
  }
  r1.xyz = r1.xyz * r6.xyz + r12.xyz;
  r2.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = cb0[145].yyy * r2.xyz + r1.xyz;
  r9.xyz = max(float3(0,0,0), r7.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r2.xyz = -cb1[5].xyz + r4.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r2.xyz = cmp(r6.xyz < abs(r2.xyz));
    r1.w = (int)r2.y | (int)r2.x;
    r1.w = (int)r2.z | (int)r1.w;
    r2.x = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r9.xyzw = r1.wwww ? r2.yzwx : r9.xyzw;
    o0.w = r9.w;
  } else {
    o0.w = r9.w;
  }
  r0.xyz = r0.xyz * r5.xyz + r1.xyz;
  r0.xyz = r0.xyz + r9.xyz;
  r0.xyz = r0.xyz * r11.xxx + r10.xyz;
  r1.xyz = cb0[135].yyy * r0.xyz;
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r2.xyz = r3.xyz * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, cb0[358].xyz);
  r1.w = -1 + r1.w;
  r1.w = -abs(r1.w) * 0.5 + 1;
  r1.w = max(0, r1.w);
  r2.xyz = cb2[166].xyz + -cb2[165].xyz;
  r2.xyz = r1.www * r2.xyz + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r2.xyz = -cb2[167].xyz + r2.xyz;
  r2.xyz = r1.www * r2.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  return;
}