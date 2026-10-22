// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

Texture3D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

TextureCube<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

TextureCubeArray<float4> t3 : register(t3);

Buffer<uint4> t2 : register(t2);

Buffer<uint4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

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

cbuffer cb7 : register(b7)
{
  float4 cb7[54];
}

cbuffer cb6 : register(b6)
{
  float4 cb6[8];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[3];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[2728];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
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
  float4 v0 : TEXCOORD0,
  float3 v1 : PARTICLE_LIGHTING_OFFSET0,
  float4 v2 : TANGENTX0,
  float4 v3 : TANGENTZ0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v3.xyz * v2.zxy;
  r0.xyz = v3.zxy * v2.xyz + -r0.xyz;
  r0.xyz = v3.www * r0.xyz;
  r1.xy = -cb0[129].xy + v4.xy;
  r1.zw = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v4.ww * r1.zw;
  r2.zw = v4.zw;
  r3.xyw = float3(2,-2,1);
  r3.z = v4.w;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r3.xyzw = cb0[45].xyzw * v4.yyyy;
  r3.xyzw = v4.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v4.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = -r3.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.z = cb1[18].x + cb1[18].y;
  r1.z = cb1[18].z + r1.z;
  r1.z = frac(r1.z);
  r1.z = cb0[142].z + r1.z;
  r1.z = cb5[2].x * r1.z;
  r1.w = cb7[20].x * r1.z;
  r5.w = cb7[22].z * v0.y + cb7[22].w;
  r6.y = cb7[23].x * r5.w;
  r6.xz = v0.xx;
  r6.xy = cb7[2].xy * r6.xy;
  r7.xy = r6.xy / cb7[23].yy;
  r7.xy = r1.ww * cb7[22].xy + r7.xy;
  r7.z = cb7[23].z * r1.z;
  r7.zw = r7.zz * cb7[22].xy + r6.xy;
  r8.xy = t16.SampleBias(s7_s, r7.zw, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r8.xy = float2(0.200000003,0.200000003) * r8.xy;
  r8.z = cb0[142].z / cb7[23].w;
  r8.w = frac(r8.z);
  r9.xy = r8.xy * r8.ww + r7.xy;
  r9.xy = t16.SampleBias(s7_s, r9.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r8.w = dot(r9.xy, r9.xy);
  r8.w = 1 + -r8.w;
  r8.w = max(0, r8.w);
  r9.z = sqrt(r8.w);
  r8.z = 0.5 + r8.z;
  r8.z = frac(r8.z);
  r7.xy = r8.xy * r8.zz + r7.xy;
  r7.xy = t16.SampleBias(s7_s, r7.xy, cb0[143].y).xy;
  r10.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r7.x = dot(r10.xy, r10.xy);
  r7.x = 1 + -r7.x;
  r7.x = max(0, r7.x);
  r10.z = sqrt(r7.x);
  r7.x = r8.z + r8.z;
  r7.y = max(1, r7.x);
  r7.y = -1 + r7.y;
  r7.y = r7.y + r7.y;
  r7.xy = min(float2(1,1), r7.xy);
  r7.y = 1 + -r7.y;
  r7.x = r7.x + r7.x;
  r7.x = min(1, r7.x);
  r7.x = r7.y * r7.x;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r7.xxx * r10.xyz + r9.xyz;
  r10.xyz = r9.xyz + r9.xyz;
  r9.xyz = -r9.xyz * float3(2,2,2) + float3(0,0,1);
  r9.xyz = cb7[24].xxx * r9.xyz + r10.xyz;
  r7.x = 1 + r9.z;
  r8.zw = r6.xy / cb7[24].yy;
  r8.zw = r1.ww * cb7[22].xy + r8.zw;
  r1.w = cb0[142].z / cb7[24].z;
  r7.y = frac(r1.w);
  r10.xy = r8.xy * r7.yy + r8.zw;
  r10.xy = t16.SampleBias(s7_s, r10.xy, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r7.y = dot(r10.xy, r10.xy);
  r7.y = 1 + -r7.y;
  r7.y = max(0, r7.y);
  r10.z = sqrt(r7.y);
  r1.w = 0.5 + r1.w;
  r1.w = frac(r1.w);
  r8.xy = r8.xy * r1.ww + r8.zw;
  r8.xy = t16.SampleBias(s7_s, r8.xy, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r7.y = dot(r8.xy, r8.xy);
  r7.y = 1 + -r7.y;
  r7.y = max(0, r7.y);
  r8.z = sqrt(r7.y);
  r1.w = r1.w + r1.w;
  r7.y = max(1, r1.w);
  r7.y = -1 + r7.y;
  r7.y = r7.y + r7.y;
  r7.y = min(1, r7.y);
  r7.y = 1 + -r7.y;
  r1.w = min(1, r1.w);
  r1.w = r1.w + r1.w;
  r1.w = min(1, r1.w);
  r1.w = r7.y * r1.w;
  r8.xyz = r8.xyz + -r10.xyz;
  r8.xyz = r1.www * r8.xyz + r10.xyz;
  r10.xyz = r8.xyz + r8.xyz;
  r8.xyz = -r8.xyz * float3(2,2,2) + float3(0,0,1);
  r8.xyz = cb7[24].www * r8.xyz + r10.xyz;
  r9.w = 1 + r9.z;
  r8.xyz = float3(-1,-1,1) * r8.xyz;
  r1.w = dot(r9.xyw, r8.xyz);
  r8.xyz = r8.xyz * r7.xxx;
  r8.xyz = r9.xyw * r1.www + -r8.xyz;
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb7[25].xxx * r9.xyz + r8.xyz;
  r1.w = -cb7[23].x * r5.w + 1;
  r7.x = -cb7[25].y + r4.z;
  r7.x = abs(r7.x) / cb7[25].z;
  r7.x = -r7.x * cb7[25].w + 1;
  r6.w = -r1.w * r7.x + 1;
  r7.xy = r6.zw * cb7[4].xy + float2(0.200000003,0.200000003);
  r1.w = cb5[2].x * cb0[142].z;
  r8.w = cb7[26].z * r1.w;
  r9.xy = cb7[5].xy * r8.ww;
  r7.xy = r9.xy * float2(0.699999988,0.699999988) + r7.xy;
  r8.w = t17.SampleBias(s8_s, r7.xy, cb0[143].y).x;
  r10.y = r8.w * 2 + -1;
  r10.x = 0;
  r9.zw = cb7[27].zz * r10.xy;
  r8.w = frac(cb0[142].z);
  r10.xy = r9.zw * r8.ww + r7.xy;
  r10.xy = t17.SampleBias(s8_s, r10.xy, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r10.w = dot(r10.xy, r10.xy);
  r10.w = 1 + -r10.w;
  r10.w = max(0, r10.w);
  r10.z = sqrt(r10.w);
  r10.w = 0.5 + cb0[142].z;
  r10.w = frac(r10.w);
  r7.xy = r9.zw * r10.ww + r7.xy;
  r7.xy = t17.SampleBias(s8_s, r7.xy, cb0[143].y).xy;
  r11.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r7.x = dot(r11.xy, r11.xy);
  r7.x = 1 + -r7.x;
  r7.x = max(0, r7.x);
  r11.z = sqrt(r7.x);
  r7.x = r10.w + r10.w;
  r7.y = max(1, r7.x);
  r7.y = -1 + r7.y;
  r7.y = r7.y + r7.y;
  r7.xy = min(float2(1,1), r7.xy);
  r7.y = 1 + -r7.y;
  r7.x = r7.x + r7.x;
  r7.x = min(1, r7.x);
  r7.x = r7.y * r7.x;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r7.xxx * r11.xyz + r10.xyz;
  r11.xyz = r10.xyz + r10.xyz;
  r12.xyz = -r10.xyz * float3(2,2,2) + float3(0,0,1);
  r13.xyz = cb7[24].xxx * r12.xyz + r11.xyz;
  r7.y = 1 + r13.z;
  r6.zw = r6.zw * cb7[3].xy + r9.xy;
  r9.xy = r9.zw * r8.ww + r6.zw;
  r9.xy = t17.SampleBias(s8_s, r9.xy, cb0[143].y).xy;
  r14.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r8.w = dot(r14.xy, r14.xy);
  r8.w = 1 + -r8.w;
  r8.w = max(0, r8.w);
  r14.z = sqrt(r8.w);
  r6.zw = r9.zw * r10.ww + r6.zw;
  r6.zw = t17.SampleBias(s8_s, r6.zw, cb0[143].y).xy;
  r9.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r6.z = dot(r9.xy, r9.xy);
  r6.z = 1 + -r6.z;
  r6.z = max(0, r6.z);
  r9.z = sqrt(r6.z);
  r9.xyz = r9.xyz + -r14.xyz;
  r9.xyz = r7.xxx * r9.xyz + r14.xyz;
  r10.xzw = r9.xyz + r9.xyz;
  r9.yzw = -r9.xyz * float3(2,2,2) + float3(0,0,1);
  r14.xyz = cb7[24].www * r9.yzw + r10.xzw;
  r13.w = 1 + r13.z;
  r14.xyz = float3(-1,-1,1) * r14.xyz;
  r6.z = dot(r13.xyw, r14.xyz);
  r14.xyz = r14.xyz * r7.yyy;
  r13.xyz = r13.xyw * r6.zzz + -r14.xyz;
  r14.xyz = float3(0,0,1) + -r13.xyz;
  r13.xyz = cb7[25].xxx * r14.xyz + r13.xyz;
  r6.z = r9.x + -r10.y;
  r6.w = -0.5 + r6.z;
  r6.w = dot(r6.ww, cb7[28].zz);
  r6.w = v0.y + r6.w;
  r6.w = r6.w * cb7[29].x + -cb7[29].x;
  r6.w = saturate(cb7[29].w + r6.w);
  r7.x = cb7[30].z * r6.w;
  r6.w = -cb7[30].z * r6.w + 1;
  r6.w = cb7[31].x * r6.w + r7.x;
  r13.xyz = r13.xyz + -r8.xyz;
  r8.xyz = r6.www * r13.xyz + r8.xyz;
  r8.xyz = r8.xyz * cb0[138].www + cb0[138].xyz;
  r7.x = dot(r8.xyz, r8.xyz);
  r7.x = rsqrt(r7.x);
  r8.xyz = r8.xyz * r7.xxx;
  r0.xyz = r8.yyy * r0.xyz;
  r0.xyz = r8.xxx * v2.yzx + r0.xyz;
  r0.xyz = r8.zzz * v3.yzx + r0.xyz;
  r7.x = dot(r0.xyz, r0.xyz);
  r7.x = rsqrt(r7.x);
  r0.xyz = r7.xxx * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r8.xyz = cb6[6].xyz * cb7[32].zzz + cb7[9].xyz;
  r0.w = dot(cb6[7].yzx, r0.xyz);
  r7.x = saturate(r0.w);
  r7.x = 1 + -r7.x;
  r7.y = v3.z * 0.5 + 0.5;
  r7.y = saturate(r7.y * cb7[37].w + cb7[38].z);
  r8.w = dot(r0.zxy, r5.xyz);
  r9.x = max(0, r8.w);
  r10.y = 1 + -r9.x;
  r10.y = max(9.99999975e-005, abs(r10.y));
  r11.w = log2(r10.y);
  r12.w = cb7[38].w * r11.w;
  r12.w = exp2(r12.w);
  r12.w = r12.w * 0.959999979 + 0.0399999991;
  r12.w = cb7[39].x * r12.w;
  r12.w = max(9.99999975e-006, r12.w);
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r2.x = t7.SampleLevel(s4_s, r2.xy, 0).x;
  r2.y = r2.x * cb0[65].x + cb0[65].y;
  r2.x = r2.x * cb0[65].z + -cb0[65].w;
  r2.x = 1 / r2.x;
  r2.x = r2.y + r2.x;
  r2.y = cmp(cb0[31].w < 1);
  r13.x = r2.z * cb0[65].x + cb0[65].y;
  r2.z = r2.z * cb0[65].z + -cb0[65].w;
  r2.z = 1 / r2.z;
  r2.z = r13.x + r2.z;
  r2.y = r2.y ? r2.w : r2.z;
  r2.x = r2.x + -r2.y;
  r2.y = saturate(r2.x / r12.w);
  r2.y = 1 + -r2.y;
  r2.y = -r2.y * cb7[39].y + 1;
  r13.xy = r4.xy / cb7[40].yy;
  r13.zw = cb0[142].zz * cb7[39].ww + r13.xy;
  r2.z = t18.SampleBias(s9_s, r13.zw, cb0[143].y).x;
  r13.xy = cb0[142].zz * cb7[40].ww + r13.xy;
  r12.w = t18.SampleBias(s9_s, r13.xy, cb0[143].y).x;
  r2.z = r12.w * r2.z;
  r2.z = cb7[41].x * r2.z;
  r12.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb7[41].y * r2.z;
  r2.z = exp2(r2.z);
  r2.z = r12.w ? 0 : r2.z;
  r2.y = r2.y / r2.z;
  r2.y = cb7[41].z + -r2.y;
  r2.y = 1 + r2.y;
  r2.y = 1 + -r2.y;
  r2.z = t18.SampleBias(s9_s, r7.zw, cb0[143].y).x;
  r7.z = 1 + -r2.z;
  r7.z = r7.z + r7.z;
  r1.z = cb7[41].w * r1.z;
  r6.xy = r1.zz * cb7[22].xy + r6.xy;
  r6.xy = float2(0.5,0.5) + r6.xy;
  r1.z = t18.SampleBias(s9_s, r6.xy, cb0[143].y).x;
  r6.x = 1 + -r1.z;
  r6.x = -r7.z * r6.x + 1;
  r1.z = dot(r2.zz, r1.zz);
  r2.z = cmp(r2.z >= 0.5);
  r1.z = r2.z ? r6.x : r1.z;
  r1.w = cb7[42].x * r1.w;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * cb7[42].y + cb7[42].z;
  r2.z = r1.z + -r1.w;
  r2.z = cmp(9.99999975e-006 < abs(r2.z));
  r6.x = cmp(r1.z >= r1.w);
  r6.x = r6.x ? 1.000000 : 0;
  r2.z = r2.z ? r6.x : 1;
  r1.w = cb7[42].w + r1.w;
  r6.x = r1.z + -r1.w;
  r6.x = cmp(9.99999975e-006 < abs(r6.x));
  r1.z = cmp(r1.z >= r1.w);
  r1.w = cb7[43].x * r2.z;
  r1.z = r1.z ? 0 : r1.w;
  r1.z = r6.x ? r1.z : 0;
  r1.z = r2.y / r1.z;
  r1.z = 1 + -r1.z;
  r1.w = saturate(r2.x / cb7[43].z);
  r2.y = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb7[43].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.y ? 0 : r1.w;
  r1.z = saturate(r1.z * r1.w);
  r2.y = cmp(0 >= r1.w);
  r1.w = rsqrt(r1.w);
  r1.w = 1 / r1.w;
  r1.w = cb7[44].x * r1.w;
  r1.z = r1.z * r1.w;
  r1.z = r2.y ? 0 : r1.z;
  r1.w = cb7[44].y * r11.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * cb7[44].w + cb7[44].z;
  r2.x = saturate(r2.x / cb7[45].y);
  r2.x = cb7[45].z * r2.x;
  r2.y = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb7[45].w * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.y ? 0 : r2.x;
  r1.w = saturate(r2.x * r1.w);
  r2.xyz = -cb7[14].xyz + cb7[13].xyz;
  r2.xyz = r1.www * r2.xyz + cb7[14].xyz;
  r6.x = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = saturate(r1.z + r1.w);
  r6.y = 1 + -r1.w;
  r13.xyz = r6.xxx + -r2.xyz;
  r2.xyz = r6.yyy * r13.xyz + r2.xyz;
  r2.xyz = r2.xyz + r1.zzz;
  r13.xyz = cb7[17].xyz + -r2.xyz;
  r2.xyz = r6.www * r13.xyz + r2.xyz;
  r13.xyz = -r2.xyz * cb7[47].yyy + r2.xyz;
  r13.xyz = cb6[6].xyz * r13.xyz;
  r13.xyz = r13.xyz * r0.www;
  r11.xyz = cb7[47].zzz * r12.xyz + r11.xyz;
  r0.w = 1 + r11.z;
  r9.yzw = cb7[47].www * r9.yzw + r10.xzw;
  r11.w = 1 + r11.z;
  r9.yzw = float3(-1,-1,1) * r9.yzw;
  r1.z = dot(r11.xyw, r9.yzw);
  r9.yzw = r9.yzw * r0.www;
  r9.yzw = r11.xyw * r1.zzz + -r9.yzw;
  r0.w = dot(r9.yzw, r9.yzw);
  r0.w = sqrt(r0.w);
  r9.yzw = r9.yzw / r0.www;
  r0.w = saturate(dot(r9.yzw, cb6[7].xyz));
  r10.xzw = cb0[67].xyz + -r4.xyz;
  r1.z = dot(r10.xzw, r10.xzw);
  r1.z = sqrt(r1.z);
  r10.xzw = r10.xzw / r1.zzz;
  r10.xzw = cb6[7].xyz + r10.xzw;
  r1.z = dot(r10.xzw, r10.xzw);
  r1.z = sqrt(r1.z);
  r10.xzw = r10.xzw / r1.zzz;
  r1.z = saturate(dot(r10.xzw, r9.yzw));
  r6.x = 11 * cb7[48].y;
  r6.x = exp2(r6.x);
  r6.y = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = r6.x * r1.z;
  r1.z = exp2(r1.z);
  r0.w = r1.z * r0.w;
  r0.w = cb7[48].z * r0.w;
  r9.yzw = cb6[5].xyz * r0.www;
  r9.yzw = r6.yyy ? float3(0,0,0) : r9.yzw;
  r9.yzw = r13.xyz * float3(0.318309844,0.318309844,0.318309844) + r9.yzw;
  r9.yzw = r6.www * -r9.yzw + r9.yzw;
  r7.xzw = r8.xyz * r7.xxx + r9.yzw;
  r8.xyz = cb7[18].xyz + -r7.xzw;
  r7.xzw = cb7[48].www * r8.xyz + r7.xzw;
  r8.xyz = -cb0[67].xyz + r4.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r1.z = sqrt(r0.w);
  r1.z = r1.z / cb7[49].z;
  r6.x = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb7[49].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r6.y = cb7[50].x + -cb7[50].y;
  r1.z = r6.y * r1.z;
  r1.z = r6.x ? 0 : r1.z;
  r1.z = cb7[50].y + r1.z;
  r6.x = cb7[50].z + -r1.z;
  r1.z = saturate(r6.w * r6.x + r1.z);
  r6.x = saturate(cb7[51].y * r5.w);
  r5.w = 1 + -r5.w;
  r5.w = saturate(cb7[52].x * r5.w);
  r5.w = r6.x * r5.w;
  r6.x = saturate(cb7[52].y * cb7[52].z + r7.y);
  r1.w = r6.x * r1.w;
  r6.x = 1 + -r10.y;
  r6.x = saturate(r6.x * 3 + -0.299999952);
  r6.y = r6.z * cb7[28].x + v0.x;
  r6.y = r6.y * 2 + -1;
  r6.y = 1 + -abs(r6.y);
  r6.y = r6.y * cb7[53].x + -cb7[53].x;
  r6.y = saturate(cb7[53].z + r6.y);
  r6.y = cb7[53].w * r6.y;
  r6.x = r6.x * r6.y + -r1.w;
  r1.w = r6.w * r6.x + r1.w;
  r6.w = saturate(r5.w * r1.w);
  r2.xyz = saturate(r2.xyz);
  r1.w = saturate(cb7[47].y);
  r5.w = saturate(cb7[49].y);
  r1.z = r1.z * cb0[139].y + cb0[139].x;
  r7.y = 0.0799999982 * r5.w;
  r9.yzw = -r5.www * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r9.yzw = r1.www * r9.yzw + r7.yyy;
  r2.xyz = -r2.xyz * r1.www + r2.xyz;
  r2.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r9.yzw = r9.yzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r10.xyz = r9.yzw * float3(0.449999988,0.449999988,0.449999988) + r2.xyz;
  r2.xyz = r1.www ? r10.xyz : r2.xyz;
  r9.yzw = r1.www ? float3(0,0,0) : r9.yzw;
  r1.xy = cb0[131].zw * r1.xy;
  r1.w = v4.w * cb2[3].x + cb2[3].y;
  r1.w = log2(r1.w);
  r1.w = cb2[3].z * r1.w;
  r1.w = max(0, r1.w);
  r1.xyw = (uint3)r1.xyw;
  r5.w = asint(cb2[1].z) + -1;
  r1.w = min((uint)r5.w, (uint)r1.w);
  r1.xy = (uint2)r1.xy >> asuint(cb2[2].xx);
  r1.y = mad((int)r1.w, asint(cb2[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb2[1].x), (int)r1.x);
  r1.y = r8.w + r8.w;
  r5.yzw = r1.yyy * r0.zxy + -r5.xyz;
  r1.y = min(1, r9.x);
  r1.x = (int)r1.x + asint(cb2[0].w);
  r1.w = (uint)r1.x << 1;
  r1.w = t1.Load(r1.w).x;
  r1.w = min(asuint(cb2[0].y), (uint)r1.w);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t1.Load(r1.x).x;
  r7.y = max(0.00100000005, r1.z);
  r7.y = log2(r7.y);
  r7.y = -r7.y * 1.20000005 + 1;
  r8.w = -1 + cb0[195].z;
  r7.y = r8.w + -r7.y;
  r5.x = 0;
  r10.xyz = float3(0,0,0);
  r8.w = 1;
  r9.x = 0;
  while (true) {
    r10.w = cmp((uint)r9.x >= (uint)r1.w);
    if (r10.w != 0) break;
    r10.w = cmp(r8.w < 0.00100000005);
    if (r10.w != 0) {
      break;
    }
    r10.w = (int)r1.x + (int)r9.x;
    r10.w = t2.Load(r10.w).x;
    r11.xyz = -cb4[r10.w+0].xyz + r4.xyz;
    r11.w = dot(r11.xyz, r11.xyz);
    r12.x = sqrt(r11.w);
    r12.y = cmp(r12.x < cb4[r10.w+0].w);
    if (r12.y != 0) {
      r12.y = cmp(0 < cb4[r10.w+341].z);
      if (r12.y != 0) {
        r12.y = (uint)r10.w << 2;
        r13.xyz = cb4[r12.y+1024].xyz * r4.yyy;
        r13.xyz = r4.xxx * cb4[r12.y+1023].xyz + r13.xyz;
        r13.xyz = r4.zzz * cb4[r12.y+1025].xyz + r13.xyz;
        r13.xyz = cb4[r12.y+1026].xyz + r13.xyz;
        r14.xyz = cb4[r12.y+1024].xyz * r5.zzz;
        r14.xyz = r5.yyy * cb4[r12.y+1023].xyz + r14.xyz;
        r12.yzw = r5.www * cb4[r12.y+1025].xyz + r14.xyz;
        r12.yzw = rcp(r12.yzw);
        r14.xyz = -r13.xyz * r12.yzw + -r12.yzw;
        r12.yzw = -r13.xyz * r12.yzw + r12.yzw;
        r12.yzw = max(r14.xyz, r12.yzw);
        r12.z = min(r12.z, r12.w);
        r12.y = min(r12.y, r12.z);
        r12.yzw = r12.yyy * r5.yzw + r4.xyz;
        r14.xyz = cb4[r10.w+682].xyz + cb4[r10.w+0].xyz;
        r14.xyz = -r14.xyz + r12.yzw;
        r12.y = cb4[r10.w+2387].w * 0.699999988;
        r15.xyz = -cb4[r10.w+2387].www * float3(0.5,0.5,0.5) + cb4[r10.w+2387].xyz;
        r16.xyz = cb4[r10.w+2387].xyz * r13.xyz;
        r17.xyz = cmp(r16.xyz < -r15.xyz);
        r18.xyz = r13.xyz * cb4[r10.w+2387].xyz + r15.xyz;
        r18.xyz = abs(r18.xyz);
        r17.xyz = r17.xyz ? r18.xyz : 0;
        r16.xyz = cmp(r15.xyz < r16.xyz);
        r13.xyz = r13.xyz * cb4[r10.w+2387].xyz + -r15.xyz;
        r13.xyz = abs(r13.xyz);
        r13.xyz = r16.xyz ? r13.xyz : 0;
        r12.z = dot(r17.xyz, float3(1,1,1));
        r12.w = dot(r13.xyz, float3(1,1,1));
        r12.z = r12.z + r12.w;
        r12.y = 1 / r12.y;
        r12.y = saturate(r12.z * r12.y);
        r12.z = r12.y * -2 + 3;
        r12.y = r12.y * r12.y;
        r13.x = -r12.z * r12.y + 1;
      } else {
        r12.x = saturate(r12.x / cb4[r10.w+0].w);
        r12.y = dot(r5.yzw, r11.xyz);
        r11.w = -cb4[r10.w+0].w * cb4[r10.w+0].w + r11.w;
        r11.w = r12.y * r12.y + -r11.w;
        r12.z = cmp(r11.w >= 0);
        r11.w = sqrt(r11.w);
        r11.w = r11.w + -r12.y;
        r11.xyz = r11.www * r5.yzw + r11.xyz;
        r11.yzw = -cb4[r10.w+682].xyz + r11.xyz;
        r12.x = r12.x * 2.5 + -1.5;
        r12.x = max(0, r12.x);
        r12.y = r12.x * r12.x;
        r12.x = -r12.x * 2 + 3;
        r11.x = -r12.y * r12.x + 1;
        r13.xyzw = r12.zzzz ? r11.xyzw : r5.xyzw;
        r14.xyz = r13.yzw;
      }
      r14.w = cb4[r10.w+341].y;
      r11.xyzw = t3.SampleLevel(s2_s, r14.xyzw, r7.y).xyzw;
      r11.xyz = cb4[r10.w+341].xxx * r11.xyz;
      r11.xyz = r11.xyz * r13.xxx;
      r10.xyz = r11.xyz * r8.www + r10.xyz;
      r10.w = -r11.w * r13.x + 1;
      r8.w = r10.w * r8.w;
    }
    r9.x = (int)r9.x + 1;
  }
  r10.xyz = cb0[157].xyz * r10.xyz;
  r1.x = saturate(r1.z * cb0[197].x + cb0[197].y);
  r1.w = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.w * r1.x;
  r1.w = min(0, cb0[197].z);
  r1.w = -1 + r1.w;
  r1.x = r1.x * r1.w + 1;
  r10.xyz = r10.xyz * r1.xxx;
  r1.x = cmp(cb0[145].x == 0.000000);
  if (r1.x != 0) {
    r1.x = asuint(cb0[144].y);
    r1.xw = r1.xx * float2(32.6650009,11.8149996) + v4.xy;
    r1.x = dot(r1.xw, float2(0.0671105608,0.00583714992));
    r1.x = frac(r1.x);
    r1.x = 52.9829178 * r1.x;
    r1.x = frac(r1.x);
    r1.x = -0.5 + r1.x;
    r11.xyzw = cb0[1].xyzw * r3.yyyy;
    r11.xyzw = r3.xxxx * cb0[0].xyzw + r11.xyzw;
    r11.xyzw = r3.zzzz * cb0[2].xyzw + r11.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r5.xyz = r5.yzw * r2.www + r3.xyz;
    r12.xyzw = cb0[1].xyzw * r5.yyyy;
    r12.xyzw = r5.xxxx * cb0[0].xyzw + r12.xyzw;
    r5.xyzw = r5.zzzz * cb0[2].xyzw + r12.xyzw;
    r5.xyzw = cb0[3].xyzw + r5.xyzw;
    r1.w = rcp(r11.w);
    r12.xyz = r11.xyz * r1.www;
    r1.w = rcp(r5.w);
    r11.xy = r2.ww * cb0[30].zw + r11.zw;
    r2.w = rcp(r11.y);
    r5.xyz = r5.xyz * r1.www + -r12.xyz;
    r1.w = dot(r5.xy, r5.xy);
    r1.w = sqrt(r1.w);
    r5.w = 0.5 * r1.w;
    r11.yz = r12.xy * r5.ww + r5.xy;
    r11.yz = -r1.ww * float2(0.5,0.5) + abs(r11.yz);
    r11.yz = max(float2(0,0), r11.yz);
    r11.yz = r11.yz / abs(r5.xy);
    r11.yz = float2(1,1) + -r11.yz;
    r1.w = min(r11.y, r11.z);
    r1.w = r1.w / r5.w;
    r5.xyz = r5.xyz * r1.www;
    r1.w = -r11.x * r2.w + r12.z;
    r1.w = 4 * r1.w;
    r1.w = max(abs(r5.z), r1.w);
    r11.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.xy = cb2[176].xy * r11.xy;
    r5.xy = cb2[176].xy * r5.xy;
    r2.w = 0.0833333358 * r1.w;
    r5.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r5.xyz;
    r11.xyz = r5.xyz * r1.xxx + r12.xyz;
    r1.x = 1;
    r13.x = 0;
    r14.x = 0;
    r12.xyz = float3(0,0,0);
    r5.w = 0;
    r7.y = 0;
    r8.w = 0;
    r9.x = 0;
    r10.w = 0;
    while (true) {
      r11.w = cmp((uint)r10.w >= 12);
      if (r11.w != 0) break;
      r11.w = (uint)r10.w;
      r15.xyzw = float4(1,2,3,4) + r11.wwww;
      r16.xyzw = r15.xxxy * r5.xyzz + r11.xyzz;
      r17.xyzw = r15.yyzz * r5.xyxy + r11.xyxy;
      r15.xyzw = r15.wwzw * r5.xyzz + r11.xyzz;
      r11.w = r1.z * 0.666666687 + r1.x;
      r13.w = r1.z * 0.666666687 + r11.w;
      r18.x = t8.SampleLevel(s5_s, r16.xy, r1.x).x;
      r18.y = t8.SampleLevel(s5_s, r17.xy, r1.x).x;
      r18.z = t8.SampleLevel(s5_s, r17.zw, r11.w).x;
      r18.w = t8.SampleLevel(s5_s, r15.xy, r11.w).x;
      r15.xy = r16.zw;
      r15.xyzw = r15.xyzw + -r18.xyzw;
      r16.xyzw = r1.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r15.xyzw;
      r16.xyzw = cmp(abs(r16.xyzw) < r2.wwww);
      r17.xy = (int2)r16.zw | (int2)r16.xy;
      r11.w = (int)r17.y | (int)r17.x;
      if (r11.w != 0) {
        r14.x = r15.x;
        r12.xyz = r15.yzw;
        r5.w = r16.x;
        r7.y = r16.y;
        r8.w = r16.z;
        r9.x = -1;
        break;
      }
      r13.x = r15.w;
      r10.w = (int)r10.w + 4;
      r1.x = r13.w;
      r14.x = r15.x;
      r12.xyz = r15.yzw;
      r5.w = r16.x;
      r7.y = r16.y;
      r8.w = r16.z;
      r9.x = r11.w;
    }
    if (r9.x != 0) {
      r12.w = 2;
      r15.xy = r12.yz;
      r15.z = 3;
      r12.yzw = r8.www ? r12.xyw : r15.xyz;
      r14.y = r12.x;
      r14.z = 1;
      r12.xyz = r7.yyy ? r14.xyz : r12.yzw;
      r13.y = r14.x;
      r13.z = 0;
      r12.xyz = r5.www ? r13.xyz : r12.xyz;
      r1.x = (uint)r10.w;
      r1.x = r12.z + r1.x;
      r1.w = r12.x + -r12.y;
      r1.w = saturate(r12.x / r1.w);
      r1.x = r1.x + r1.w;
      r5.xyz = r5.xyz * r1.xxx + r11.xyz;
      r1.xw = cb2[176].zw * r5.xy;
      r1.xw = r1.xw * float2(2,-2) + float2(-1,1);
      r1.xw = cb0[66].xy * r1.xw;
      r1.xw = r1.xw / cb0[66].xy;
      r5.xyw = cb0[123].xyw * r1.www;
      r5.xyw = r1.xxx * cb0[122].xyw + r5.xyw;
      r5.xyz = r5.zzz * cb0[124].xyw + r5.xyw;
      r5.xyz = cb0[125].xyw + r5.xyz;
      r5.xy = r5.xy / r5.zz;
      r5.zw = r5.xy * cb2[177].xy + cb2[177].zw;
      r1.xw = saturate(abs(r1.xw) * float2(5,5) + float2(-4,-4));
      r1.x = dot(r1.xw, r1.xw);
      r1.x = 1 + -r1.x;
      r5.xy = saturate(abs(r5.xy) * float2(5,5) + float2(-4,-4));
      r1.w = dot(r5.xy, r5.xy);
      r1.w = 1 + -r1.w;
      r1.xw = max(float2(0,0), r1.xw);
      r1.x = min(r1.x, r1.w);
      r5.xyz = t9.SampleLevel(s6_s, r5.zw, 0).xyz;
      r5.xyz = min(float3(0,0,0), -r5.xyz);
      r1.w = saturate(-r1.z * 6.5999999 + 2);
      r1.x = r1.x * r1.w;
      r1.w = 1;
      r5.xyz = -r5.xyz * r1.xxx;
      r5.xyz = cb2[178].xxx * r5.xyz;
      r1.x = -r1.w * r1.x + 1;
      r10.xyz = r10.xyz * r1.xxx + r5.xyz;
    }
  }
  r5.xyzw = r1.zzzz * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r1.x = r5.x * r5.x;
  r1.y = -9.27999973 * r1.y;
  r1.y = exp2(r1.y);
  r1.x = min(r1.x, r1.y);
  r1.x = r1.x * r5.x + r5.y;
  r1.xy = r1.xx * float2(-1.03999996,1.03999996) + r5.zw;
  r1.w = 50 * r9.z;
  r1.w = saturate(r1.w);
  r1.y = r1.w * r1.y;
  r1.xyw = r9.yzw * r1.xxx + r1.yyy;
  r2.w = dot(cb2[122].xyz, float3(1,1,1));
  r2.w = cmp(9.99999975e-005 < abs(r2.w));
  if (r2.w != 0) {
    r4.w = -1;
    r2.w = dot(cb2[122].xyzw, r4.xyzw);
    r2.w = saturate(abs(r2.w) * cb2[129].x + cb2[129].y);
    r2.w = 1 + -r2.w;
    r5.xyz = -cb2[123].xyz + r4.xyz;
    r4.w = dot(r5.xyz, cb2[124].xyz);
    r4.w = cb2[124].w + -abs(r4.w);
    r4.w = saturate(cb2[129].x * r4.w);
    r5.x = dot(r5.xyz, cb2[125].xyz);
    r5.x = cb2[125].w + -abs(r5.x);
    r5.x = saturate(cb2[129].x * r5.x);
    r4.w = r5.x * r4.w;
    r2.w = r4.w * r2.w;
    r4.w = dot(cb2[122].yzx, r0.xyz);
    r4.w = saturate(r4.w * cb2[130].x + cb2[130].y);
    r1.z = -0.200000003 + r1.z;
    r1.z = saturate(10 * r1.z);
    r1.z = 1 + -r1.z;
    r2.w = r4.w * r2.w;
    r1.z = r2.w * r1.z;
    r2.w = cmp(0 < r1.z);
    if (r2.w != 0) {
      r0.w = rsqrt(r0.w);
      r5.xyz = r8.xyz * r0.www;
      r0.w = dot(r5.xyz, -cb2[122].xyz);
      r0.w = r0.w + r0.w;
      r5.xyz = cb2[122].xyz * r0.www + r5.xyz;
      r8.xyz = cb2[127].xyz * r0.xxx;
      r8.xyz = r0.zzz * cb2[126].xyz + r8.xyz;
      r8.xyz = r0.yyy * cb2[128].xyz + r8.xyz;
      r0.w = dot(r5.xyz, r8.xyz);
      r0.w = r0.w + r0.w;
      r5.xyz = r8.xyz * -r0.www + r5.xyz;
      r5.xyz = r5.xyz * cb2[129].zzz + r4.xyz;
      r5.xyz = cb0[70].xyz + r5.xyz;
      r8.xyz = cb0[13].xyz * r5.yyy;
      r5.xyw = r5.xxx * cb0[12].xyz + r8.xyz;
      r5.xyz = r5.zzz * cb0[14].xyz + r5.xyw;
      r5.xyz = cb0[15].xyz + r5.xyz;
      r0.w = asuint(cb0[197].w) << 2;
      r8.xyz = cb2[r0.w+132].xyw * r5.yyy;
      r5.xyw = r5.xxx * cb2[r0.w+131].xyw + r8.xyz;
      r5.xyz = r5.zzz * cb2[r0.w+133].xyw + r5.xyw;
      r5.xyz = cb2[r0.w+134].xyw + r5.xyz;
      r0.w = cb2[141].z ? cb0[197].w : 0;
      r5.xy = r5.xy / r5.zz;
      r5.xy = max(-cb2[141].xy, r5.xy);
      r5.xy = min(cb2[141].xy, r5.xy);
      r5.xy = r5.xy * cb2[r0.w+139].xy + cb2[r0.w+139].zw;
      r5.xyzw = t4.SampleLevel(s2_s, r5.xy, 0).xyzw;
      r0.w = r5.w * r1.z;
    } else {
      r5.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r10.xyz = r0.www * r10.xyz + r5.xyz;
  }
  r1.xyz = r10.xyz * r1.xyw;
  r5.xyz = r9.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r9.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r9.yzw * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
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
  r7.y = cmp(0 < r1.w);
  r8.x = r1.w * r5.w;
  r2.w = r8.x * r3.w + r2.w;
  r8.x = -r8.x * r3.w + r3.w;
  r1.w = -r1.w * r5.w + 1;
  r1.w = r1.w * r4.w;
  r8.y = -cb2[146].y + r2.w;
  r8.y = cb2[143].y * r8.y;
  r8.y = max(-127, r8.y);
  r8.y = exp2(-r8.y);
  r8.y = cb2[146].x * r8.y;
  r2.w = -cb2[144].w + r2.w;
  r2.w = cb2[144].y * r2.w;
  r2.w = max(-127, r2.w);
  r2.w = exp2(-r2.w);
  r2.w = cb2[144].z * r2.w;
  r8.y = r7.y ? r8.y : cb2[143].x;
  r2.w = r7.y ? r2.w : cb2[144].x;
  r1.w = r7.y ? r1.w : r4.w;
  r7.y = r7.y ? r8.x : r3.w;
  r8.x = cb2[143].y * r7.y;
  r8.x = max(-127, r8.x);
  r8.z = exp2(-r8.x);
  r8.z = 1 + -r8.z;
  r8.z = r8.z / r8.x;
  r8.w = -r8.x * 0.240226507 + 0.693147182;
  r8.x = cmp(0.00999999978 < abs(r8.x));
  r8.x = r8.x ? r8.z : r8.w;
  r7.y = cb2[144].y * r7.y;
  r7.y = max(-127, r7.y);
  r8.z = exp2(-r7.y);
  r8.z = 1 + -r8.z;
  r8.z = r8.z / r7.y;
  r8.w = -r7.y * 0.240226507 + 0.693147182;
  r7.y = cmp(0.00999999978 < abs(r7.y));
  r7.y = r7.y ? r8.z : r8.w;
  r2.w = r7.y * r2.w;
  r2.w = r8.y * r8.x + r2.w;
  r7.y = r2.w * r1.w;
  r8.xy = cmp(float2(0,0) < cb2[146].zw);
  if (r8.x != 0) {
    r8.x = saturate(r4.w * cb2[150].x + cb2[150].y);
    r8.zw = float2(1,-1) * cb2[149].yx;
    r10.x = dot(r3.xy, r8.zw);
    r10.y = dot(r3.xy, cb2[149].xy);
    r10.z = r3.w;
    r11.xyz = t5.SampleLevel(s3_s, r10.xyz, 0).xyz;
    r10.xyz = t5.SampleLevel(s3_s, r10.xyz, cb2[150].z).xyz;
    r11.xyz = r11.xyz + -r10.xyz;
    r8.xzw = r8.xxx * r11.xyz + r10.xyz;
    r8.xzw = cb2[145].xyz * r8.xzw;
  } else {
    r8.xzw = cb2[145].xyz;
  }
  r9.x = cmp(cb2[147].w >= 0);
  r10.x = cmp(cb2[146].z == 0.000000);
  r9.x = r9.x ? r10.x : 0;
  if (r9.x != 0) {
    r10.xyz = r5.www * r3.xyw;
    r3.w = saturate(dot(r10.xyz, cb2[147].xyz));
    r3.w = log2(r3.w);
    r3.w = cb2[148].w * r3.w;
    r3.w = exp2(r3.w);
    r10.xyz = cb2[148].xyz * r3.www;
    r1.w = -cb2[147].w + r1.w;
    r1.w = max(0, r1.w);
    r1.w = r2.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r10.xyz = r10.xyz * r1.www;
  } else {
    r10.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r7.y);
  r1.w = min(1, r1.w);
  r10.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r4.w);
  r1.w = r1.w ? r8.y : 0;
  r10.xyzw = r1.wwww ? float4(1,0,0,0) : r10.wxyz;
  r1.w = 1 + -r10.x;
  r8.xyz = r8.xzw * r1.www + r10.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r10.yzw = cb0[5].xyw * r4.yyy;
    r10.yzw = r4.xxx * cb0[4].xyw + r10.yzw;
    r10.yzw = r4.zzz * cb0[6].xyw + r10.yzw;
    r10.yzw = cb0[7].xyw + r10.yzw;
    r10.yz = r10.yz / r10.ww;
    r11.xy = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r10.w * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r11.z = cb0[208].z * r1.w;
    r11.xyzw = t6.SampleLevel(s0_s, r11.xyz, 0).xyzw;
    r8.xyz = r8.xyz * r11.www + r11.xyz;
    r10.x = r11.w * r10.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r10.yzw = cb0[5].xyw * r4.yyy;
    r10.yzw = r4.xxx * cb0[4].xyw + r10.yzw;
    r10.yzw = r4.zzz * cb0[6].xyw + r10.yzw;
    r10.yzw = cb0[7].xyw + r10.yzw;
    r1.w = cmp(0 != cb0[184].x);
    r11.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r10.yz = r10.yz / r10.ww;
    r10.yz = r10.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r11.xyz;
    r2.w = dot(r11.xyz, r11.xyz);
    r3.w = sqrt(r2.w);
    r3.w = -cb0[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb0[182].x * r3.w;
    r3.w = cb0[181].z * r3.w;
    r12.z = sqrt(r3.w);
    r3.w = cb0[181].y * r12.z;
    r4.w = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r4.w ? r3.w : 1;
    r2.w = rsqrt(r2.w);
    r11.xyz = r11.xyz * r2.www;
    r2.w = -r11.z * r11.z + 1;
    r2.w = sqrt(r2.w);
    r13.y = r11.z * 0.5 + 0.5;
    r11.xy = r11.xy / r2.ww;
    r2.w = 1 + -abs(r11.x);
    r2.w = sqrt(r2.w);
    r4.w = abs(r11.x) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r11.x) + -0.212114394;
    r4.w = r4.w * abs(r11.x) + 1.57072878;
    r5.w = r4.w * r2.w;
    r5.w = r5.w * -2 + 3.14159274;
    r7.y = cmp(r11.x < -r11.x);
    r5.w = r7.y ? r5.w : 0;
    r2.w = r4.w * r2.w + r5.w;
    r4.w = cmp(r11.y < 0);
    r5.w = 6.28318548 + -r2.w;
    r2.w = r4.w ? r5.w : r2.w;
    r13.x = 0.159154937 * r2.w;
    r11.xy = cb0[180].zw * float2(0.5,0.5) + r13.xy;
    r11.zw = float2(1,1) + cb0[180].xy;
    r11.zw = cb0[180].xy / r11.zw;
    r11.xy = r11.xy * r11.zw;
    r12.xy = r1.ww ? r11.xy : r10.yz;
    r11.xyzw = t0.SampleLevel(s1_s, r12.xyz, 0).xyzw;
    r10.yzw = r11.xyz * r3.www;
    r1.w = 1 + -r11.w;
    r1.w = -r3.w * r1.w + 1;
    r10.yzw = cb0[135].zzz * r10.yzw;
    r8.xyz = r10.yzw * r10.xxx + r8.xyz;
    r10.x = r10.x * r1.w;
  }
  r10.yzw = v1.xyz + r4.xyz;
  r11.xyz = -cb0[148].xyz + r10.yzw;
  r12.xyz = cb0[150].xyz * r11.xyz;
  r13.xyz = -cb0[149].xyz + r10.yzw;
  r13.xyz = cb0[151].xyz * r13.xyz;
  r11.xyz = r11.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r11.xyz = float3(0.5,0.5,0.5) + -abs(r11.xyz);
  r11.xyz = saturate(float3(6,6,6) * r11.xyz);
  r1.w = r11.x * r11.y;
  r1.w = r1.w * r11.z;
  r11.xyzw = t10.SampleLevel(s0_s, r12.xyz, 0).xyzw;
  r14.xyzw = t11.SampleLevel(s0_s, r13.xyz, 0).xyzw;
  r11.xyzw = -r14.xyzw + r11.xyzw;
  r11.xyzw = r1.wwww * r11.xyzw + r14.xyzw;
  r12.xyz = t12.SampleLevel(s0_s, r12.xyz, 0).xyz;
  r13.xyz = t13.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r12.xyz = -r13.xyz + r12.xyz;
  r12.xyz = r1.www * r12.xyz + r13.xyz;
  r1.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r13.xyz = r11.xyz / r1.www;
  r14.yzw = r13.xxx * r12.xyz;
  r15.yzw = r13.yyy * r12.xyz;
  r12.yzw = r13.zzz * r12.xyz;
  r13.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.xyz;
  r14.x = r11.x;
  r13.x = 0.886227548;
  r0.x = dot(r14.xyzw, r13.xyzw);
  r15.x = r11.y;
  r0.y = dot(r15.xyzw, r13.xyzw);
  r12.x = r11.z;
  r0.z = dot(r12.xyzw, r13.xyzw);
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.w = cmp(0 < cb3[6].w);
  if (r1.w != 0) {
    r12.xyzw = cb3[1].xyzw * r10.zzzz;
    r12.xyzw = r10.yyyy * cb3[0].xyzw + r12.xyzw;
    r12.xyzw = r10.wwww * cb3[2].xyzw + r12.xyzw;
    r12.xyzw = cb3[3].xyzw + r12.xyzw;
    r10.yz = r12.xy / r12.ww;
    r13.xyzw = t14.SampleLevel(s0_s, r10.yz, 0).xyzw;
    r11.xyz = t15.SampleLevel(s0_s, r10.yz, 0).yzw;
    r12.xyw = float3(6.28318548,12.566371,18.849556) * r12.zzz;
    sincos(r12.xyw, r14.xyz, r15.xyz);
    r12.xyw = float3(1,1,1) + -r15.xyz;
    r1.w = r13.x * r12.z;
    r13.xyz = r14.xyz * r13.yzw;
    r13.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r13.xyz;
    r2.w = dot(r13.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r11.xyz = r12.xyw * r11.xyz;
    r11.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r11.xyz;
    r2.w = dot(r11.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r11.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r11.xyz = exp2(r11.xyz);
    r11.xyz = min(float3(1,1,1), r11.xyz);
    r12.xy = cmp(r10.yz < cb3[4].xy);
    r10.yz = cmp(cb3[4].zw < r10.yz);
    r10.yz = (int2)r10.yz | (int2)r12.xy;
    r1.w = (int)r10.z | (int)r10.y;
    r10.yzw = cb3[6].xyz * r11.www;
    r11.xyz = float3(1,1,1) + -r11.xyz;
    r11.xyz = r1.www ? float3(0,0,0) : r11.xyz;
    r10.yzw = -r10.yzw * r11.xyz + r0.xyz;
    r10.yzw = max(float3(0,0,0), r10.yzw);
    r10.yzw = r10.yzw * r2.xyz;
  } else {
    r10.yzw = r2.xyz * r0.xyz;
  }
  r0.xyz = r1.xyz * r5.xyz + r10.yzw;
  r1.xyz = r9.yzw * float3(0.449999988,0.449999988,0.449999988) + r2.xyz;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r1.xyz + r0.xyz;
  r6.xyz = max(float3(0,0,0), r7.xzw);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r1.xyz = -cb1[5].xyz + r4.xyz;
    r2.xyz = float3(1,1,1) + cb1[19].xyz;
    r1.xyz = cmp(r2.xyz < abs(r1.xyz));
    r1.x = (int)r1.y | (int)r1.x;
    r1.x = (int)r1.z | (int)r1.x;
    r1.y = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r2.yzw = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r6.xyzw = r1.xxxx ? r2.yzwx : r6.xyzw;
    o0.w = r6.w;
  } else {
    o0.w = r6.w;
  }
  r0.xyz = r6.xyz + r0.xyz;
  r0.xyz = r0.xyz * r10.xxx + r8.xyz;
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