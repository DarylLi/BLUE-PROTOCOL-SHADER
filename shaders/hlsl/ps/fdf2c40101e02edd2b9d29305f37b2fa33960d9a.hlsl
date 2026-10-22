// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

cbuffer cb7 : register(b7)
{
  float4 cb7[50];
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
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD3,
  float3 v3 : PARTICLE_LIGHTING_OFFSET0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
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
  r5.w = cb7[22].z * v2.y + cb7[22].w;
  r6.y = cb7[23].x * r5.w;
  r6.xz = v2.xx;
  r6.xy = cb7[2].xy * r6.xy;
  r7.xy = r6.xy / cb7[23].yy;
  r7.xy = r1.ww * cb7[22].xy + r7.xy;
  r7.z = cb7[23].z * r1.z;
  r7.zw = r7.zz * cb7[22].xy + r6.xy;
  r8.xy = t18.SampleBias(s8_s, r7.zw, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r8.xy = float2(0.200000003,0.200000003) * r8.xy;
  r8.z = cb0[142].z / cb7[23].w;
  r8.w = frac(r8.z);
  r9.xy = r8.xy * r8.ww + r7.xy;
  r9.xy = t18.SampleBias(s8_s, r9.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r8.w = dot(r9.xy, r9.xy);
  r8.w = 1 + -r8.w;
  r8.w = max(0, r8.w);
  r9.z = sqrt(r8.w);
  r8.z = 0.5 + r8.z;
  r8.z = frac(r8.z);
  r7.xy = r8.xy * r8.zz + r7.xy;
  r7.xy = t18.SampleBias(s8_s, r7.xy, cb0[143].y).xy;
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
  r10.xy = t18.SampleBias(s8_s, r10.xy, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r7.y = dot(r10.xy, r10.xy);
  r7.y = 1 + -r7.y;
  r7.y = max(0, r7.y);
  r10.z = sqrt(r7.y);
  r1.w = 0.5 + r1.w;
  r1.w = frac(r1.w);
  r8.xy = r8.xy * r1.ww + r8.zw;
  r8.xy = t18.SampleBias(s8_s, r8.xy, cb0[143].y).xy;
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
  r1.w = cb7[26].z * r1.w;
  r9.xy = cb7[5].xy * r1.ww;
  r7.xy = r9.xy * float2(0.699999988,0.699999988) + r7.xy;
  r1.w = t19.SampleBias(s9_s, r7.xy, cb0[143].y).x;
  r10.y = r1.w * 2 + -1;
  r10.x = 0;
  r9.zw = cb7[27].zz * r10.xy;
  r1.w = frac(cb0[142].z);
  r10.xy = r9.zw * r1.ww + r7.xy;
  r10.xy = t19.SampleBias(s9_s, r10.xy, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r8.w = dot(r10.xy, r10.xy);
  r8.w = 1 + -r8.w;
  r8.w = max(0, r8.w);
  r10.z = sqrt(r8.w);
  r8.w = 0.5 + cb0[142].z;
  r8.w = frac(r8.w);
  r7.xy = r9.zw * r8.ww + r7.xy;
  r7.xy = t19.SampleBias(s9_s, r7.xy, cb0[143].y).xy;
  r11.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r7.x = dot(r11.xy, r11.xy);
  r7.x = 1 + -r7.x;
  r7.x = max(0, r7.x);
  r11.z = sqrt(r7.x);
  r7.x = r8.w + r8.w;
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
  r10.xzw = -r10.xyz * float3(2,2,2) + float3(0,0,1);
  r12.xyz = cb7[24].xxx * r10.xzw + r11.xyz;
  r7.y = 1 + r12.z;
  r6.zw = r6.zw * cb7[3].xy + r9.xy;
  r9.xy = r9.zw * r1.ww + r6.zw;
  r9.xy = t19.SampleBias(s9_s, r9.xy, cb0[143].y).xy;
  r13.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r13.xy, r13.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r13.z = sqrt(r1.w);
  r6.zw = r9.zw * r8.ww + r6.zw;
  r6.zw = t19.SampleBias(s9_s, r6.zw, cb0[143].y).xy;
  r9.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r9.xy, r9.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r9.z = sqrt(r1.w);
  r9.xyz = r9.xyz + -r13.xyz;
  r9.xyz = r7.xxx * r9.xyz + r13.xyz;
  r13.xyz = r9.xyz + r9.xyz;
  r9.yzw = -r9.xyz * float3(2,2,2) + float3(0,0,1);
  r14.xyz = cb7[24].www * r9.yzw + r13.xyz;
  r12.w = 1 + r12.z;
  r14.xyz = float3(-1,-1,1) * r14.xyz;
  r1.w = dot(r12.xyw, r14.xyz);
  r14.xyz = r14.xyz * r7.yyy;
  r12.xyz = r12.xyw * r1.www + -r14.xyz;
  r14.xyz = float3(0,0,1) + -r12.xyz;
  r12.xyz = cb7[25].xxx * r14.xyz + r12.xyz;
  r1.w = r9.x + -r10.y;
  r6.z = -0.5 + r1.w;
  r6.z = dot(r6.zz, cb7[28].zz);
  r6.z = v2.y + r6.z;
  r6.z = r6.z * cb7[29].x + -cb7[29].x;
  r6.z = saturate(cb7[29].w + r6.z);
  r6.w = cb7[30].z * r6.z;
  r6.z = -cb7[30].z * r6.z + 1;
  r6.z = cb7[31].x * r6.z + r6.w;
  r12.xyz = r12.xyz + -r8.xyz;
  r8.xyz = r6.zzz * r12.xyz + r8.xyz;
  r8.xyz = r8.xyz * cb0[138].www + cb0[138].xyz;
  r6.w = dot(r8.xyz, r8.xyz);
  r6.w = rsqrt(r6.w);
  r8.xyz = r8.xyz * r6.www;
  r0.xyz = r8.yyy * r0.xyz;
  r0.xyz = r8.xxx * v0.xyz + r0.xyz;
  r0.xyz = r8.zzz * v1.xyz + r0.xyz;
  r6.w = dot(r0.xyz, r0.xyz);
  r6.w = rsqrt(r6.w);
  r0.xyz = r6.www * r0.xyz;
  r8.xyz = r0.xyz * r0.www;
  r12.xyz = cb6[6].xyz * cb7[32].zzz + cb7[9].xyz;
  r0.x = dot(cb6[7].xyz, r8.xyz);
  r0.y = saturate(r0.x);
  r0.y = 1 + -r0.y;
  r6.w = dot(r8.xyz, r5.xyz);
  r7.x = max(0, r6.w);
  r7.y = 1 + -r7.x;
  r7.y = max(9.99999975e-005, abs(r7.y));
  r9.x = log2(r7.y);
  r9.x = cb7[32].w * r9.x;
  r9.x = exp2(r9.x);
  r9.x = r9.x * cb7[33].y + cb7[33].x;
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r2.x = t9.SampleLevel(s5_s, r2.xy, 0).x;
  r2.y = r2.x * cb0[65].x + cb0[65].y;
  r2.x = r2.x * cb0[65].z + -cb0[65].w;
  r2.x = 1 / r2.x;
  r2.x = r2.y + r2.x;
  r2.y = cmp(cb0[31].w < 1);
  r10.y = r2.z * cb0[65].x + cb0[65].y;
  r2.z = r2.z * cb0[65].z + -cb0[65].w;
  r2.z = 1 / r2.z;
  r2.z = r10.y + r2.z;
  r2.y = r2.y ? r2.w : r2.z;
  r2.x = r2.x + -r2.y;
  r2.x = saturate(r2.x / cb7[33].w);
  r2.x = cb7[34].x * r2.x;
  r2.y = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb7[34].y * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.y ? 0 : r2.x;
  r2.x = saturate(r9.x * r2.x);
  r14.xyz = -cb7[13].xyz + cb7[12].xyz;
  r14.xyz = r2.xxx * r14.xyz + cb7[13].xyz;
  r2.y = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = 1 + -r2.x;
  r15.xyz = r2.yyy + -r14.xyz;
  r14.xyz = r2.zzz * r15.xyz + r14.xyz;
  r2.y = v1.z * 0.5 + 0.5;
  r2.y = saturate(r2.y * cb7[34].w + cb7[35].z);
  r2.z = t20.SampleBias(s10_s, r7.zw, cb0[143].y).x;
  r7.z = 1 + -r2.z;
  r7.z = r7.z + r7.z;
  r1.z = cb7[35].w * r1.z;
  r6.xy = r1.zz * cb7[22].xy + r6.xy;
  r6.xy = float2(0.5,0.5) + r6.xy;
  r1.z = t20.SampleBias(s10_s, r6.xy, cb0[143].y).x;
  r6.x = 1 + -r1.z;
  r6.x = -r7.z * r6.x + 1;
  r1.z = dot(r2.zz, r1.zz);
  r2.z = cmp(r2.z >= 0.5);
  r1.z = r2.z ? r6.x : r1.z;
  r0.z = -r0.z * r0.w + 1;
  r0.z = cb7[36].x * r0.z;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb7[36].y * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r1.z * r0.z + r0.z;
  r0.w = -cb7[36].z + r0.z;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.z = cmp(r0.z >= cb7[36].z);
  r1.z = r1.z ? r0.z : 0;
  r0.z = r0.w ? r1.z : r0.z;
  r0.z = max(0, r0.z);
  r0.z = min(cb7[36].w, r0.z);
  r14.xyz = r2.yyy * r0.zzz + r14.xyz;
  r15.xyz = cb7[16].xyz + -r14.xyz;
  r14.xyz = r6.zzz * r15.xyz + r14.xyz;
  r15.xyz = -r14.xyz * cb7[38].xxx + r14.xyz;
  r15.xyz = cb6[6].xyz * r15.xyz;
  r0.xzw = r15.xyz * r0.xxx;
  r10.xyz = cb7[38].yyy * r10.xzw + r11.xyz;
  r1.z = 1 + r10.z;
  r9.xyz = cb7[38].zzz * r9.yzw + r13.xyz;
  r10.w = 1 + r10.z;
  r9.xyz = float3(-1,-1,1) * r9.xyz;
  r2.z = dot(r10.xyw, r9.xyz);
  r9.xyz = r9.xyz * r1.zzz;
  r9.xyz = r10.xyw * r2.zzz + -r9.xyz;
  r1.z = dot(r9.xyz, r9.xyz);
  r1.z = sqrt(r1.z);
  r9.xyz = r9.xyz / r1.zzz;
  r1.z = saturate(dot(r9.xyz, cb6[7].xyz));
  r10.xyz = cb0[67].xyz + -r4.xyz;
  r2.z = dot(r10.xyz, r10.xyz);
  r2.z = sqrt(r2.z);
  r10.xyz = r10.xyz / r2.zzz;
  r10.xyz = cb6[7].xyz + r10.xyz;
  r2.z = dot(r10.xyz, r10.xyz);
  r2.z = sqrt(r2.z);
  r10.xyz = r10.xyz / r2.zzz;
  r2.z = saturate(dot(r10.xyz, r9.xyz));
  r6.x = 11 * cb7[39].x;
  r6.x = exp2(r6.x);
  r6.y = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = r6.x * r2.z;
  r2.z = exp2(r2.z);
  r1.z = r2.z * r1.z;
  r1.z = cb7[39].y * r1.z;
  r9.xyz = cb6[5].xyz * r1.zzz;
  r9.xyz = r6.yyy ? float3(0,0,0) : r9.xyz;
  r0.xzw = r0.xzw * float3(0.318309844,0.318309844,0.318309844) + r9.xyz;
  r0.xzw = r6.zzz * -r0.xzw + r0.xzw;
  r0.xyz = r12.xyz * r0.yyy + r0.xzw;
  r9.xyz = cb7[17].xyz + -r0.xyz;
  r0.xyz = cb7[39].zzz * r9.xyz + r0.xyz;
  r9.xyz = -cb0[67].xyz + r4.xyz;
  r0.w = dot(r9.xyz, r9.xyz);
  r1.z = sqrt(r0.w);
  r1.z = r1.z / cb7[40].y;
  r2.z = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb7[40].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r6.x = -cb7[41].x + cb7[40].w;
  r1.z = r6.x * r1.z;
  r1.z = r2.z ? 0 : r1.z;
  r1.z = cb7[41].x + r1.z;
  r2.z = cb7[41].y + -r1.z;
  r1.z = saturate(r6.z * r2.z + r1.z);
  r2.z = saturate(cb7[42].x * r5.w);
  r5.w = 1 + -r5.w;
  r5.w = saturate(cb7[42].w * r5.w);
  r2.z = r5.w * r2.z;
  r2.y = saturate(cb7[48].x * cb7[48].y + r2.y);
  r2.x = r2.y * r2.x;
  r2.y = 1 + -r7.y;
  r2.y = saturate(r2.y * 3 + -0.299999952);
  r1.w = r1.w * cb7[28].x + v2.x;
  r1.w = r1.w * 2 + -1;
  r1.w = 1 + -abs(r1.w);
  r1.w = r1.w * cb7[48].w + -cb7[48].w;
  r1.w = saturate(cb7[49].y + r1.w);
  r1.w = cb7[49].z * r1.w;
  r1.w = r2.y * r1.w + -r2.x;
  r1.w = r6.z * r1.w + r2.x;
  r10.w = saturate(r2.z * r1.w);
  r14.xyz = saturate(r14.xyz);
  r1.w = saturate(cb7[38].x);
  r2.x = saturate(cb7[40].x);
  r1.z = r1.z * cb0[139].y + cb0[139].x;
  r2.y = 0.0799999982 * r2.x;
  r6.xyz = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r14.xyz;
  r2.xyz = r1.www * r6.xyz + r2.yyy;
  r6.xyz = -r14.xyz * r1.www + r14.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r2.xyz = r2.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.yzw = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r7.yzw : r6.xyz;
  r2.xyz = r1.www ? float3(0,0,0) : r2.xyz;
  r11.x = t0[0].val[0/4];
  r11.y = t0[0].val[0/4+1];
  r11.z = t0[0].val[0/4+2];
  r11.w = t0[0].val[0/4+3];
  r8.w = 1;
  r11.x = dot(r11.xyzw, r8.xyzw);
  r12.x = t0[1].val[0/4];
  r12.y = t0[1].val[0/4+1];
  r12.z = t0[1].val[0/4+2];
  r12.w = t0[1].val[0/4+3];
  r11.y = dot(r12.xyzw, r8.xyzw);
  r12.x = t0[2].val[0/4];
  r12.y = t0[2].val[0/4+1];
  r12.z = t0[2].val[0/4+2];
  r12.w = t0[2].val[0/4+3];
  r11.z = dot(r12.xyzw, r8.xyzw);
  r12.xyzw = r8.xyzz * r8.yzzx;
  r13.x = t0[3].val[0/4];
  r13.y = t0[3].val[0/4+1];
  r13.z = t0[3].val[0/4+2];
  r13.w = t0[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r15.x = t0[4].val[0/4];
  r15.y = t0[4].val[0/4+1];
  r15.z = t0[4].val[0/4+2];
  r15.w = t0[4].val[0/4+3];
  r13.y = dot(r15.xyzw, r12.xyzw);
  r15.x = t0[5].val[0/4];
  r15.y = t0[5].val[0/4+1];
  r15.z = t0[5].val[0/4+2];
  r15.w = t0[5].val[0/4+3];
  r13.z = dot(r15.xyzw, r12.xyzw);
  r1.w = r8.y * r8.y;
  r1.w = r8.x * r8.x + -r1.w;
  r7.y = t0[6].val[0/4];
  r7.z = t0[6].val[0/4+1];
  r7.w = t0[6].val[0/4+2];
  r11.xyz = r13.xyz + r11.xyz;
  r7.yzw = r7.yzw * r1.www + r11.xyz;
  r7.yzw = max(float3(0,0,0), r7.yzw);
  r7.yzw = cb0[187].xyz * r7.yzw;
  r7.yzw = r7.yzw * r6.xyz;
  r11.xyz = r14.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r11.xyz = r14.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r11.xyz;
  r11.xyz = r14.xyz * float3(2.75519991,2.75519991,2.75519991) + r11.xyz;
  r11.xyz = float3(1.33200002,1.33200002,1.33200002) + r11.xyz;
  r11.xyz = max(float3(1,1,1), r11.xyz);
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
  r1.y = r6.w + r6.w;
  r5.yzw = r1.yyy * r8.xyz + -r5.xyz;
  r1.y = min(1, r7.x);
  r1.x = (int)r1.x + asint(cb2[0].w);
  r1.w = (uint)r1.x << 1;
  r1.w = t2.Load(r1.w).x;
  r1.w = min(asuint(cb2[0].y), (uint)r1.w);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t2.Load(r1.x).x;
  r6.w = max(0.00100000005, r1.z);
  r6.w = log2(r6.w);
  r6.w = -r6.w * 1.20000005 + 1;
  r7.x = -1 + cb0[195].z;
  r7.x = r7.x + -r6.w;
  r5.x = 0;
  r12.xyz = float3(0,0,0);
  r8.w = 1;
  r9.w = 0;
  while (true) {
    r11.w = cmp((uint)r9.w >= (uint)r1.w);
    if (r11.w != 0) break;
    r11.w = cmp(r8.w < 0.00100000005);
    if (r11.w != 0) {
      break;
    }
    r11.w = (int)r1.x + (int)r9.w;
    r11.w = t3.Load(r11.w).x;
    r13.xyz = -cb4[r11.w+0].xyz + r4.xyz;
    r12.w = dot(r13.xyz, r13.xyz);
    r13.w = sqrt(r12.w);
    r14.x = cmp(r13.w < cb4[r11.w+0].w);
    if (r14.x != 0) {
      r14.x = cmp(0 < cb4[r11.w+341].z);
      if (r14.x != 0) {
        r14.x = (uint)r11.w << 2;
        r14.yzw = cb4[r14.x+1024].xyz * r4.yyy;
        r14.yzw = r4.xxx * cb4[r14.x+1023].xyz + r14.yzw;
        r14.yzw = r4.zzz * cb4[r14.x+1025].xyz + r14.yzw;
        r14.yzw = cb4[r14.x+1026].xyz + r14.yzw;
        r15.xyz = cb4[r14.x+1024].xyz * r5.zzz;
        r15.xyz = r5.yyy * cb4[r14.x+1023].xyz + r15.xyz;
        r15.xyz = r5.www * cb4[r14.x+1025].xyz + r15.xyz;
        r15.xyz = rcp(r15.xyz);
        r16.xyz = -r14.yzw * r15.xyz + -r15.xyz;
        r15.xyz = -r14.yzw * r15.xyz + r15.xyz;
        r15.xyz = max(r16.xyz, r15.xyz);
        r14.x = min(r15.y, r15.z);
        r14.x = min(r15.x, r14.x);
        r15.xyz = r14.xxx * r5.yzw + r4.xyz;
        r16.xyz = cb4[r11.w+682].xyz + cb4[r11.w+0].xyz;
        r15.xyz = -r16.xyz + r15.xyz;
        r14.x = cb4[r11.w+2387].w * 0.699999988;
        r16.xyz = -cb4[r11.w+2387].www * float3(0.5,0.5,0.5) + cb4[r11.w+2387].xyz;
        r17.xyz = cb4[r11.w+2387].xyz * r14.yzw;
        r18.xyz = cmp(r17.xyz < -r16.xyz);
        r19.xyz = r14.yzw * cb4[r11.w+2387].xyz + r16.xyz;
        r19.xyz = abs(r19.xyz);
        r18.xyz = r18.xyz ? r19.xyz : 0;
        r17.xyz = cmp(r16.xyz < r17.xyz);
        r14.yzw = r14.yzw * cb4[r11.w+2387].xyz + -r16.xyz;
        r14.yzw = abs(r14.yzw);
        r14.yzw = r17.xyz ? r14.yzw : 0;
        r16.x = dot(r18.xyz, float3(1,1,1));
        r14.y = dot(r14.yzw, float3(1,1,1));
        r14.y = r16.x + r14.y;
        r14.x = 1 / r14.x;
        r14.x = saturate(r14.y * r14.x);
        r14.y = r14.x * -2 + 3;
        r14.x = r14.x * r14.x;
        r14.x = -r14.y * r14.x + 1;
      } else {
        r13.w = saturate(r13.w / cb4[r11.w+0].w);
        r16.x = dot(r5.yzw, r13.xyz);
        r12.w = -cb4[r11.w+0].w * cb4[r11.w+0].w + r12.w;
        r12.w = r16.x * r16.x + -r12.w;
        r16.y = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r12.w = r12.w + -r16.x;
        r13.xyz = r12.www * r5.yzw + r13.xyz;
        r17.yzw = -cb4[r11.w+682].xyz + r13.xyz;
        r12.w = r13.w * 2.5 + -1.5;
        r12.w = max(0, r12.w);
        r13.x = r12.w * r12.w;
        r12.w = -r12.w * 2 + 3;
        r17.x = -r13.x * r12.w + 1;
        r14.xyzw = r16.yyyy ? r17.xyzw : r5.xyzw;
        r15.xyz = r14.yzw;
      }
      r15.w = cb4[r11.w+341].y;
      r13.xyzw = t5.SampleLevel(s3_s, r15.xyzw, r7.x).xyzw;
      r13.xyz = cb4[r11.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r14.xxx;
      r12.xyz = r13.xyz * r8.www + r12.xyz;
      r11.w = -r13.w * r14.x + 1;
      r8.w = r11.w * r8.w;
    }
    r9.w = (int)r9.w + 1;
  }
  r12.xyz = cb0[157].xyz * r12.xyz;
  r1.x = cmp(0 < cb2[116].y);
  if (r1.x != 0) {
    r1.x = cb2[116].x + -r6.w;
    r1.x = -1 + r1.x;
    r13.xyz = t4.SampleLevel(s2_s, r5.yzw, r1.x).xyz;
    r13.xyz = cb0[187].xyz * r13.xyz;
    r1.x = cmp(cb2[116].z < 1);
    r14.xyz = r8.www * r13.xyz + r12.xyz;
    r13.xyz = r1.xxx ? float3(0,0,0) : r13.xyz;
    r12.xyz = r1.xxx ? r14.xyz : r12.xyz;
  } else {
    r13.xyz = float3(0,0,0);
  }
  r1.x = saturate(r1.z * cb0[197].x + cb0[197].y);
  r1.w = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.w * r1.x;
  r1.w = min(0, cb0[197].z);
  r1.w = -1 + r1.w;
  r1.x = r1.x * r1.w + 1;
  r13.xyz = r13.xyz * r8.www;
  r12.xyz = r12.xyz * r1.xxx + r13.xyz;
  r1.x = cmp(cb0[145].x == 0.000000);
  if (r1.x != 0) {
    r1.x = asuint(cb0[144].y);
    r1.xw = r1.xx * float2(32.6650009,11.8149996) + v4.xy;
    r1.x = dot(r1.xw, float2(0.0671105608,0.00583714992));
    r1.x = frac(r1.x);
    r1.x = 52.9829178 * r1.x;
    r1.x = frac(r1.x);
    r1.x = -0.5 + r1.x;
    r13.xyzw = cb0[1].xyzw * r3.yyyy;
    r13.xyzw = r3.xxxx * cb0[0].xyzw + r13.xyzw;
    r13.xyzw = r3.zzzz * cb0[2].xyzw + r13.xyzw;
    r13.xyzw = cb0[3].xyzw + r13.xyzw;
    r5.xyz = r5.yzw * r2.www + r3.xyz;
    r14.xyzw = cb0[1].xyzw * r5.yyyy;
    r14.xyzw = r5.xxxx * cb0[0].xyzw + r14.xyzw;
    r5.xyzw = r5.zzzz * cb0[2].xyzw + r14.xyzw;
    r5.xyzw = cb0[3].xyzw + r5.xyzw;
    r1.w = rcp(r13.w);
    r14.xyz = r13.xyz * r1.www;
    r1.w = rcp(r5.w);
    r13.xy = r2.ww * cb0[30].zw + r13.zw;
    r2.w = rcp(r13.y);
    r5.xyz = r5.xyz * r1.www + -r14.xyz;
    r1.w = dot(r5.xy, r5.xy);
    r1.w = sqrt(r1.w);
    r5.w = 0.5 * r1.w;
    r13.yz = r14.xy * r5.ww + r5.xy;
    r13.yz = -r1.ww * float2(0.5,0.5) + abs(r13.yz);
    r13.yz = max(float2(0,0), r13.yz);
    r13.yz = r13.yz / abs(r5.xy);
    r13.yz = float2(1,1) + -r13.yz;
    r1.w = min(r13.y, r13.z);
    r1.w = r1.w / r5.w;
    r5.xyz = r5.xyz * r1.www;
    r1.w = -r13.x * r2.w + r14.z;
    r1.w = 4 * r1.w;
    r1.w = max(abs(r5.z), r1.w);
    r13.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r14.xy = cb2[176].xy * r13.xy;
    r5.xy = cb2[176].xy * r5.xy;
    r2.w = 0.0833333358 * r1.w;
    r5.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r5.xyz;
    r13.xyz = r5.xyz * r1.xxx + r14.xyz;
    r1.x = 1;
    r15.x = 0;
    r16.x = 0;
    r14.xyz = float3(0,0,0);
    r5.w = 0;
    r6.w = 0;
    r7.x = 0;
    r8.w = 0;
    r9.w = 0;
    while (true) {
      r11.w = cmp((uint)r9.w >= 12);
      if (r11.w != 0) break;
      r11.w = (uint)r9.w;
      r17.xyzw = float4(1,2,3,4) + r11.wwww;
      r18.xyzw = r17.xxxy * r5.xyzz + r13.xyzz;
      r19.xyzw = r17.yyzz * r5.xyxy + r13.xyxy;
      r17.xyzw = r17.wwzw * r5.xyzz + r13.xyzz;
      r11.w = r1.z * 0.666666687 + r1.x;
      r12.w = r1.z * 0.666666687 + r11.w;
      r20.x = t10.SampleLevel(s6_s, r18.xy, r1.x).x;
      r20.y = t10.SampleLevel(s6_s, r19.xy, r1.x).x;
      r20.z = t10.SampleLevel(s6_s, r19.zw, r11.w).x;
      r20.w = t10.SampleLevel(s6_s, r17.xy, r11.w).x;
      r17.xy = r18.zw;
      r17.xyzw = r17.xyzw + -r20.xyzw;
      r18.xyzw = r1.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r17.xyzw;
      r18.xyzw = cmp(abs(r18.xyzw) < r2.wwww);
      r19.xy = (int2)r18.zw | (int2)r18.xy;
      r11.w = (int)r19.y | (int)r19.x;
      if (r11.w != 0) {
        r16.x = r17.x;
        r14.xyz = r17.yzw;
        r5.w = r18.x;
        r6.w = r18.y;
        r7.x = r18.z;
        r8.w = -1;
        break;
      }
      r15.x = r17.w;
      r9.w = (int)r9.w + 4;
      r1.x = r12.w;
      r16.x = r17.x;
      r14.xyz = r17.yzw;
      r5.w = r18.x;
      r6.w = r18.y;
      r7.x = r18.z;
      r8.w = r11.w;
    }
    if (r8.w != 0) {
      r14.w = 2;
      r17.xy = r14.yz;
      r17.z = 3;
      r14.yzw = r7.xxx ? r14.xyw : r17.xyz;
      r16.y = r14.x;
      r16.z = 1;
      r14.xyz = r6.www ? r16.xyz : r14.yzw;
      r15.y = r16.x;
      r15.z = 0;
      r14.xyz = r5.www ? r15.xyz : r14.xyz;
      r1.x = (uint)r9.w;
      r1.x = r14.z + r1.x;
      r1.w = r14.x + -r14.y;
      r1.w = saturate(r14.x / r1.w);
      r1.x = r1.x + r1.w;
      r5.xyz = r5.xyz * r1.xxx + r13.xyz;
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
      r5.xyz = t11.SampleLevel(s7_s, r5.zw, 0).xyz;
      r5.xyz = min(float3(0,0,0), -r5.xyz);
      r1.w = saturate(-r1.z * 6.5999999 + 2);
      r1.x = r1.x * r1.w;
      r1.w = 1;
      r5.xyz = -r5.xyz * r1.xxx;
      r5.xyz = cb2[178].xxx * r5.xyz;
      r1.x = -r1.w * r1.x + 1;
      r12.xyz = r12.xyz * r1.xxx + r5.xyz;
    }
  }
  r5.xyzw = r1.zzzz * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r1.x = r5.x * r5.x;
  r1.y = -9.27999973 * r1.y;
  r1.y = exp2(r1.y);
  r1.x = min(r1.x, r1.y);
  r1.x = r1.x * r5.x + r5.y;
  r1.xy = r1.xx * float2(-1.03999996,1.03999996) + r5.zw;
  r1.w = 50 * r2.y;
  r1.w = saturate(r1.w);
  r1.y = r1.w * r1.y;
  r1.xyw = r2.xyz * r1.xxx + r1.yyy;
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
    r4.w = dot(cb2[122].xyz, r8.xyz);
    r4.w = saturate(r4.w * cb2[130].x + cb2[130].y);
    r1.z = -0.200000003 + r1.z;
    r1.z = saturate(10 * r1.z);
    r1.z = 1 + -r1.z;
    r2.w = r4.w * r2.w;
    r1.z = r2.w * r1.z;
    r2.w = cmp(0 < r1.z);
    if (r2.w != 0) {
      r0.w = rsqrt(r0.w);
      r5.xyz = r9.xyz * r0.www;
      r0.w = dot(r5.xyz, -cb2[122].xyz);
      r0.w = r0.w + r0.w;
      r5.xyz = cb2[122].xyz * r0.www + r5.xyz;
      r9.xyz = cb2[127].xyz * r8.yyy;
      r9.xyz = r8.xxx * cb2[126].xyz + r9.xyz;
      r9.xyz = r8.zzz * cb2[128].xyz + r9.xyz;
      r0.w = dot(r5.xyz, r9.xyz);
      r0.w = r0.w + r0.w;
      r5.xyz = r9.xyz * -r0.www + r5.xyz;
      r5.xyz = r5.xyz * cb2[129].zzz + r4.xyz;
      r5.xyz = cb0[70].xyz + r5.xyz;
      r9.xyz = cb0[13].xyz * r5.yyy;
      r5.xyw = r5.xxx * cb0[12].xyz + r9.xyz;
      r5.xyz = r5.zzz * cb0[14].xyz + r5.xyw;
      r5.xyz = cb0[15].xyz + r5.xyz;
      r0.w = asuint(cb0[197].w) << 2;
      r9.xyz = cb2[r0.w+132].xyw * r5.yyy;
      r5.xyw = r5.xxx * cb2[r0.w+131].xyw + r9.xyz;
      r5.xyz = r5.zzz * cb2[r0.w+133].xyw + r5.xyw;
      r5.xyz = cb2[r0.w+134].xyw + r5.xyz;
      r0.w = cb2[141].z ? cb0[197].w : 0;
      r5.xy = r5.xy / r5.zz;
      r5.xy = max(-cb2[141].xy, r5.xy);
      r5.xy = min(cb2[141].xy, r5.xy);
      r5.xy = r5.xy * cb2[r0.w+139].xy + cb2[r0.w+139].zw;
      r5.xyzw = t6.SampleLevel(s3_s, r5.xy, 0).xyzw;
      r0.w = r5.w * r1.z;
    } else {
      r5.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r12.xyz = r0.www * r12.xyz + r5.xyz;
  }
  r1.xyz = r12.xyz * r1.xyw;
  r5.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
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
  r6.w = cmp(0 < r1.w);
  r7.x = r1.w * r5.w;
  r2.w = r7.x * r3.w + r2.w;
  r7.x = -r7.x * r3.w + r3.w;
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
  r6.w = r6.w ? r7.x : r3.w;
  r7.x = cb2[143].y * r6.w;
  r7.x = max(-127, r7.x);
  r9.x = exp2(-r7.x);
  r9.x = 1 + -r9.x;
  r9.x = r9.x / r7.x;
  r9.y = -r7.x * 0.240226507 + 0.693147182;
  r7.x = cmp(0.00999999978 < abs(r7.x));
  r7.x = r7.x ? r9.x : r9.y;
  r6.w = cb2[144].y * r6.w;
  r6.w = max(-127, r6.w);
  r9.x = exp2(-r6.w);
  r9.x = 1 + -r9.x;
  r9.x = r9.x / r6.w;
  r9.y = -r6.w * 0.240226507 + 0.693147182;
  r6.w = cmp(0.00999999978 < abs(r6.w));
  r6.w = r6.w ? r9.x : r9.y;
  r2.w = r6.w * r2.w;
  r2.w = r8.w * r7.x + r2.w;
  r6.w = r2.w * r1.w;
  r9.xy = cmp(float2(0,0) < cb2[146].zw);
  if (r9.x != 0) {
    r7.x = saturate(r4.w * cb2[150].x + cb2[150].y);
    r9.xz = float2(1,-1) * cb2[149].yx;
    r12.x = dot(r3.xy, r9.xz);
    r12.y = dot(r3.xy, cb2[149].xy);
    r12.z = r3.w;
    r9.xzw = t7.SampleLevel(s4_s, r12.xyz, 0).xyz;
    r12.xyz = t7.SampleLevel(s4_s, r12.xyz, cb2[150].z).xyz;
    r9.xzw = -r12.xyz + r9.xzw;
    r9.xzw = r7.xxx * r9.xzw + r12.xyz;
    r9.xzw = cb2[145].xyz * r9.xzw;
  } else {
    r9.xzw = cb2[145].xyz;
  }
  r7.x = cmp(cb2[147].w >= 0);
  r8.w = cmp(cb2[146].z == 0.000000);
  r7.x = r7.x ? r8.w : 0;
  if (r7.x != 0) {
    r12.xyz = r5.www * r3.xyw;
    r3.w = saturate(dot(r12.xyz, cb2[147].xyz));
    r3.w = log2(r3.w);
    r3.w = cb2[148].w * r3.w;
    r3.w = exp2(r3.w);
    r12.xyz = cb2[148].xyz * r3.www;
    r1.w = -cb2[147].w + r1.w;
    r1.w = max(0, r1.w);
    r1.w = r2.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r12.xyz = r12.xyz * r1.www;
  } else {
    r12.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r6.w);
  r1.w = min(1, r1.w);
  r12.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r4.w);
  r1.w = r1.w ? r9.y : 0;
  r12.xyzw = r1.wwww ? float4(1,0,0,0) : r12.wxyz;
  r1.w = 1 + -r12.x;
  r9.xyz = r9.xzw * r1.www + r12.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r12.yzw = cb0[5].xyw * r4.yyy;
    r12.yzw = r4.xxx * cb0[4].xyw + r12.yzw;
    r12.yzw = r4.zzz * cb0[6].xyw + r12.yzw;
    r12.yzw = cb0[7].xyw + r12.yzw;
    r12.yz = r12.yz / r12.ww;
    r13.xy = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r12.w * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r13.z = cb0[208].z * r1.w;
    r13.xyzw = t8.SampleLevel(s0_s, r13.xyz, 0).xyzw;
    r9.xyz = r9.xyz * r13.www + r13.xyz;
    r12.x = r13.w * r12.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r12.yzw = cb0[5].xyw * r4.yyy;
    r12.yzw = r4.xxx * cb0[4].xyw + r12.yzw;
    r12.yzw = r4.zzz * cb0[6].xyw + r12.yzw;
    r12.yzw = cb0[7].xyw + r12.yzw;
    r1.w = cmp(0 != cb0[184].x);
    r13.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r12.yz = r12.yz / r12.ww;
    r12.yz = r12.yz * float2(0.5,-0.5) + float2(0.5,0.5);
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
    r14.xy = r1.ww ? r13.xy : r12.yz;
    r13.xyzw = t1.SampleLevel(s1_s, r14.xyz, 0).xyzw;
    r12.yzw = r13.xyz * r3.www;
    r1.w = 1 + -r13.w;
    r1.w = -r3.w * r1.w + 1;
    r12.yzw = cb0[135].zzz * r12.yzw;
    r9.xyz = r12.yzw * r12.xxx + r9.xyz;
    r12.x = r12.x * r1.w;
  }
  r12.yzw = v3.xyz + r4.xyz;
  r13.xyz = -cb0[148].xyz + r12.yzw;
  r14.xyz = cb0[150].xyz * r13.xyz;
  r15.xyz = -cb0[149].xyz + r12.yzw;
  r15.xyz = cb0[151].xyz * r15.xyz;
  r13.xyz = r13.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r13.xyz = float3(0.5,0.5,0.5) + -abs(r13.xyz);
  r13.xyz = saturate(float3(6,6,6) * r13.xyz);
  r1.w = r13.x * r13.y;
  r1.w = r1.w * r13.z;
  r13.xyzw = t12.SampleLevel(s0_s, r14.xyz, 0).xyzw;
  r16.xyzw = t13.SampleLevel(s0_s, r15.xyz, 0).xyzw;
  r13.xyzw = -r16.xyzw + r13.xyzw;
  r13.xyzw = r1.wwww * r13.xyzw + r16.xyzw;
  r14.xyz = t14.SampleLevel(s0_s, r14.xyz, 0).xyz;
  r15.xyz = t15.SampleLevel(s0_s, r15.xyz, 0).xyz;
  r14.xyz = -r15.xyz + r14.xyz;
  r14.xyz = r1.www * r14.xyz + r15.xyz;
  r1.w = dot(r13.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r15.xyz = r13.xyz / r1.www;
  r16.yzw = r15.xxx * r14.xyz;
  r17.yzw = r15.yyy * r14.xyz;
  r14.yzw = r15.zzz * r14.xyz;
  r8.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r8.yzx;
  r16.x = r13.x;
  r8.x = 0.886227548;
  r15.x = dot(r16.xyzw, r8.xyzw);
  r17.x = r13.y;
  r15.y = dot(r17.xyzw, r8.xyzw);
  r14.x = r13.z;
  r15.z = dot(r14.xyzw, r8.xyzw);
  r8.xyz = max(float3(0,0,0), r15.xyz);
  r1.w = cmp(0 < cb3[6].w);
  if (r1.w != 0) {
    r14.xyzw = cb3[1].xyzw * r12.zzzz;
    r14.xyzw = r12.yyyy * cb3[0].xyzw + r14.xyzw;
    r14.xyzw = r12.wwww * cb3[2].xyzw + r14.xyzw;
    r14.xyzw = cb3[3].xyzw + r14.xyzw;
    r12.yz = r14.xy / r14.ww;
    r15.xyzw = t16.SampleLevel(s0_s, r12.yz, 0).xyzw;
    r13.xyz = t17.SampleLevel(s0_s, r12.yz, 0).yzw;
    r14.xyw = float3(6.28318548,12.566371,18.849556) * r14.zzz;
    sincos(r14.xyw, r16.xyz, r17.xyz);
    r14.xyw = float3(1,1,1) + -r17.xyz;
    r1.w = r15.x * r14.z;
    r15.xyz = r16.xyz * r15.yzw;
    r15.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r15.xyz;
    r2.w = dot(r15.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r13.xyz = r14.xyw * r13.xyz;
    r13.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r13.xyz;
    r2.w = dot(r13.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r13.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r13.xyz = exp2(r13.xyz);
    r13.xyz = min(float3(1,1,1), r13.xyz);
    r14.xy = cmp(r12.yz < cb3[4].xy);
    r12.yz = cmp(cb3[4].zw < r12.yz);
    r12.yz = (int2)r12.yz | (int2)r14.xy;
    r1.w = (int)r12.z | (int)r12.y;
    r12.yzw = cb3[6].xyz * r13.www;
    r13.xyz = float3(1,1,1) + -r13.xyz;
    r13.xyz = r1.www ? float3(0,0,0) : r13.xyz;
    r12.yzw = -r12.yzw * r13.xyz + r8.xyz;
    r12.yzw = max(float3(0,0,0), r12.yzw);
    r12.yzw = r12.yzw * r6.xyz;
  } else {
    r12.yzw = r8.xyz * r6.xyz;
  }
  r1.xyz = r1.xyz * r5.xyz + r12.yzw;
  r2.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = cb0[145].yyy * r2.xyz + r1.xyz;
  r10.xyz = max(float3(0,0,0), r0.xyz);
  r0.x = cmp(0 < cb0[140].x);
  if (r0.x != 0) {
    r0.xyz = -cb1[5].xyz + r4.xyz;
    r2.xyz = float3(1,1,1) + cb1[19].xyz;
    r0.xyz = cmp(r2.xyz < abs(r0.xyz));
    r0.x = (int)r0.y | (int)r0.x;
    r0.x = (int)r0.z | (int)r0.x;
    r0.y = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r0.y = 0.00200000009 * r0.y;
    r0.y = frac(r0.y);
    r0.y = cmp(0.5 < r0.y);
    r2.yzw = r0.yyy ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r10.xyzw = r0.xxxx ? r2.yzwx : r10.xyzw;
    o0.w = r10.w;
  } else {
    o0.w = r10.w;
  }
  r0.xyz = r7.yzw * r11.xyz + r1.xyz;
  r0.xyz = r0.xyz + r10.xyz;
  r0.xyz = r0.xyz * r12.xxx + r9.xyz;
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