// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 v0 : TEXCOORD0,
  float3 v1 : PARTICLE_LIGHTING_OFFSET0,
  float4 v2 : TANGENTX0,
  float4 v3 : TANGENTZ0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v3.zxy * v2.yzx;
  r0.xyz = v3.yzx * v2.zxy + -r0.xyz;
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
  r8.xy = t16.SampleBias(s8_s, r7.zw, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r8.xy = float2(0.200000003,0.200000003) * r8.xy;
  r8.z = cb0[142].z / cb7[23].w;
  r8.w = frac(r8.z);
  r9.xy = r8.xy * r8.ww + r7.xy;
  r9.xy = t16.SampleBias(s8_s, r9.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r8.w = dot(r9.xy, r9.xy);
  r8.w = 1 + -r8.w;
  r8.w = max(0, r8.w);
  r9.z = sqrt(r8.w);
  r8.z = 0.5 + r8.z;
  r8.z = frac(r8.z);
  r7.xy = r8.xy * r8.zz + r7.xy;
  r7.xy = t16.SampleBias(s8_s, r7.xy, cb0[143].y).xy;
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
  r10.xy = t16.SampleBias(s8_s, r10.xy, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r7.y = dot(r10.xy, r10.xy);
  r7.y = 1 + -r7.y;
  r7.y = max(0, r7.y);
  r10.z = sqrt(r7.y);
  r1.w = 0.5 + r1.w;
  r1.w = frac(r1.w);
  r8.xy = r8.xy * r1.ww + r8.zw;
  r8.xy = t16.SampleBias(s8_s, r8.xy, cb0[143].y).xy;
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
  r1.w = t17.SampleBias(s9_s, r7.xy, cb0[143].y).x;
  r10.y = r1.w * 2 + -1;
  r10.x = 0;
  r9.zw = cb7[27].zz * r10.xy;
  r1.w = frac(cb0[142].z);
  r10.xy = r9.zw * r1.ww + r7.xy;
  r10.xy = t17.SampleBias(s9_s, r10.xy, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r8.w = dot(r10.xy, r10.xy);
  r8.w = 1 + -r8.w;
  r8.w = max(0, r8.w);
  r10.z = sqrt(r8.w);
  r8.w = 0.5 + cb0[142].z;
  r8.w = frac(r8.w);
  r7.xy = r9.zw * r8.ww + r7.xy;
  r7.xy = t17.SampleBias(s9_s, r7.xy, cb0[143].y).xy;
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
  r9.xy = t17.SampleBias(s9_s, r9.xy, cb0[143].y).xy;
  r13.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r13.xy, r13.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r13.z = sqrt(r1.w);
  r6.zw = r9.zw * r8.ww + r6.zw;
  r6.zw = t17.SampleBias(s9_s, r6.zw, cb0[143].y).xy;
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
  r6.z = v0.y + r6.z;
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
  r0.xyz = r8.xxx * v2.xyz + r0.xyz;
  r0.xyz = r8.zzz * v3.xyz + r0.xyz;
  r6.w = dot(r0.xyz, r0.xyz);
  r6.w = rsqrt(r6.w);
  r0.xyz = r6.www * r0.xyz;
  r8.yzw = r0.xyz * r0.www;
  r12.xyz = cb6[6].xyz * cb7[32].zzz + cb7[9].xyz;
  r6.w = dot(cb6[7].xyz, r8.yzw);
  r7.x = saturate(r6.w);
  r7.x = 1 + -r7.x;
  r7.y = dot(r8.yzw, r5.xyz);
  r9.x = max(0, r7.y);
  r10.y = 1 + -r9.x;
  r10.y = max(9.99999975e-005, abs(r10.y));
  r11.w = log2(r10.y);
  r11.w = cb7[32].w * r11.w;
  r11.w = exp2(r11.w);
  r11.w = r11.w * cb7[33].y + cb7[33].x;
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r2.x = t9.SampleLevel(s5_s, r2.xy, 0).x;
  r2.y = r2.x * cb0[65].x + cb0[65].y;
  r2.x = r2.x * cb0[65].z + -cb0[65].w;
  r2.x = 1 / r2.x;
  r2.x = r2.y + r2.x;
  r2.y = cmp(cb0[31].w < 1);
  r12.w = r2.z * cb0[65].x + cb0[65].y;
  r2.z = r2.z * cb0[65].z + -cb0[65].w;
  r2.z = 1 / r2.z;
  r2.z = r12.w + r2.z;
  r2.y = r2.y ? r2.w : r2.z;
  r2.x = r2.x + -r2.y;
  r2.x = saturate(r2.x / cb7[33].w);
  r2.x = cb7[34].x * r2.x;
  r2.y = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb7[34].y * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.y ? 0 : r2.x;
  r2.x = saturate(r11.w * r2.x);
  r14.xyz = -cb7[13].xyz + cb7[12].xyz;
  r14.xyz = r2.xxx * r14.xyz + cb7[13].xyz;
  r2.y = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = 1 + -r2.x;
  r15.xyz = r2.yyy + -r14.xyz;
  r14.xyz = r2.zzz * r15.xyz + r14.xyz;
  r2.y = v3.z * 0.5 + 0.5;
  r2.y = saturate(r2.y * cb7[34].w + cb7[35].z);
  r2.z = t18.SampleBias(s10_s, r7.zw, cb0[143].y).x;
  r7.z = 1 + -r2.z;
  r7.z = r7.z + r7.z;
  r1.z = cb7[35].w * r1.z;
  r6.xy = r1.zz * cb7[22].xy + r6.xy;
  r6.xy = float2(0.5,0.5) + r6.xy;
  r1.z = t18.SampleBias(s10_s, r6.xy, cb0[143].y).x;
  r6.x = 1 + -r1.z;
  r6.x = -r7.z * r6.x + 1;
  r1.z = dot(r2.zz, r1.zz);
  r2.z = cmp(r2.z >= 0.5);
  r1.z = r2.z ? r6.x : r1.z;
  r2.z = -r0.z * r0.w + 1;
  r2.z = cb7[36].x * r2.z;
  r6.x = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb7[36].y * r2.z;
  r2.z = exp2(r2.z);
  r2.z = r6.x ? 0 : r2.z;
  r1.z = r1.z * r2.z + r2.z;
  r2.z = -cb7[36].z + r1.z;
  r2.z = cmp(9.99999975e-006 < abs(r2.z));
  r6.x = cmp(r1.z >= cb7[36].z);
  r6.x = r6.x ? r1.z : 0;
  r1.z = r2.z ? r6.x : r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(cb7[36].w, r1.z);
  r14.xyz = r2.yyy * r1.zzz + r14.xyz;
  r15.xyz = cb7[16].xyz + -r14.xyz;
  r14.xyz = r6.zzz * r15.xyz + r14.xyz;
  r15.xyz = -r14.xyz * cb7[38].xxx + r14.xyz;
  r15.xyz = cb6[6].xyz * r15.xyz;
  r6.xyw = r15.xyz * r6.www;
  r11.xyz = cb7[38].yyy * r10.xzw + r11.xyz;
  r1.z = 1 + r11.z;
  r9.yzw = cb7[38].zzz * r9.yzw + r13.xyz;
  r11.w = 1 + r11.z;
  r9.yzw = float3(-1,-1,1) * r9.yzw;
  r2.z = dot(r11.xyw, r9.yzw);
  r9.yzw = r9.yzw * r1.zzz;
  r9.yzw = r11.xyw * r2.zzz + -r9.yzw;
  r1.z = dot(r9.yzw, r9.yzw);
  r1.z = sqrt(r1.z);
  r9.yzw = r9.yzw / r1.zzz;
  r1.z = saturate(dot(r9.yzw, cb6[7].xyz));
  r10.xzw = cb0[67].xyz + -r4.xyz;
  r2.z = dot(r10.xzw, r10.xzw);
  r2.z = sqrt(r2.z);
  r10.xzw = r10.xzw / r2.zzz;
  r10.xzw = cb6[7].xyz + r10.xzw;
  r2.z = dot(r10.xzw, r10.xzw);
  r2.z = sqrt(r2.z);
  r10.xzw = r10.xzw / r2.zzz;
  r2.z = saturate(dot(r10.xzw, r9.yzw));
  r7.z = 11 * cb7[39].x;
  r7.z = exp2(r7.z);
  r7.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = r7.z * r2.z;
  r2.z = exp2(r2.z);
  r1.z = r2.z * r1.z;
  r1.z = cb7[39].y * r1.z;
  r9.yzw = cb6[5].xyz * r1.zzz;
  r9.yzw = r7.www ? float3(0,0,0) : r9.yzw;
  r6.xyw = r6.xyw * float3(0.318309844,0.318309844,0.318309844) + r9.yzw;
  r6.xyw = r6.zzz * -r6.xyw + r6.xyw;
  r6.xyw = r12.xyz * r7.xxx + r6.xyw;
  r7.xzw = cb7[17].xyz + -r6.xyw;
  r6.xyw = cb7[39].zzz * r7.xzw + r6.xyw;
  r7.xzw = -cb0[67].xyz + r4.xyz;
  r1.z = dot(r7.xzw, r7.xzw);
  r2.z = sqrt(r1.z);
  r2.z = r2.z / cb7[40].y;
  r9.y = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb7[40].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r9.z = -cb7[41].x + cb7[40].w;
  r2.z = r9.z * r2.z;
  r2.z = r9.y ? 0 : r2.z;
  r2.z = cb7[41].x + r2.z;
  r9.y = cb7[41].y + -r2.z;
  r2.z = saturate(r6.z * r9.y + r2.z);
  r9.y = saturate(cb7[42].x * r5.w);
  r5.w = 1 + -r5.w;
  r5.w = saturate(cb7[42].w * r5.w);
  r5.w = r9.y * r5.w;
  r2.y = saturate(cb7[48].x * cb7[48].y + r2.y);
  r2.x = r2.y * r2.x;
  r2.y = 1 + -r10.y;
  r2.y = saturate(r2.y * 3 + -0.299999952);
  r1.w = r1.w * cb7[28].x + v0.x;
  r1.w = r1.w * 2 + -1;
  r1.w = 1 + -abs(r1.w);
  r1.w = r1.w * cb7[48].w + -cb7[48].w;
  r1.w = saturate(cb7[49].y + r1.w);
  r1.w = cb7[49].z * r1.w;
  r1.w = r2.y * r1.w + -r2.x;
  r1.w = r6.z * r1.w + r2.x;
  r10.w = saturate(r5.w * r1.w);
  r14.xyz = saturate(r14.xyz);
  r1.w = saturate(cb7[38].x);
  r2.x = saturate(cb7[40].x);
  r2.y = r2.z * cb0[139].y + cb0[139].x;
  r2.z = 0.0799999982 * r2.x;
  r9.yzw = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r14.xyz;
  r9.yzw = r1.www * r9.yzw + r2.zzz;
  r11.xyz = -r14.xyz * r1.www + r14.xyz;
  r11.xyz = r11.xyz * cb0[136].www + cb0[136].xyz;
  r9.yzw = r9.yzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r12.xyz = r9.yzw * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r11.xyz = r1.www ? r12.xyz : r11.xyz;
  r9.yzw = r1.www ? float3(0,0,0) : r9.yzw;
  r1.w = cmp(0 < cb0[215].x);
  r12.xyz = r8.zwz * r8.zwy;
  r13.yw = r8.ww * r8.zy;
  r2.x = r8.y * r8.y + -r12.x;
  r15.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r8.zwy;
  r13.xz = r12.zy * float2(1,3) + float2(0,-1);
  r12.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r13.xyzw;
  r2.x = 0.429042608 * r2.x;
  r15.x = 0.886227548;
  r2.z = dot(cb3[6].xyzw, r15.xyzw);
  r5.w = dot(cb3[9].xyzw, r12.xyzw);
  r2.z = r5.w + r2.z;
  r13.x = cb3[12].x * r2.x + r2.z;
  r2.z = dot(cb3[7].xyzw, r15.xyzw);
  r5.w = dot(cb3[10].xyzw, r12.xyzw);
  r2.z = r5.w + r2.z;
  r13.y = cb3[12].y * r2.x + r2.z;
  r2.z = dot(cb3[8].xyzw, r15.xyzw);
  r5.w = dot(cb3[11].xyzw, r12.xyzw);
  r2.z = r5.w + r2.z;
  r13.z = cb3[12].z * r2.x + r2.z;
  r12.xyz = max(float3(0,0,0), r13.xyz);
  r12.xyz = r1.www ? r12.xyz : 0;
  r2.x = cmp(cb0[186].y != 0.000000);
  if (r2.x != 0) {
    r8.x = 1;
    r13.xyzw = r1.wwww ? cb3[4].wxyz : r8.xyzw;
    r1.w = 1 + -r13.x;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.xyz * r0.www + -r13.yzw;
    r0.xyz = r1.www * r0.xyz + r13.yzw;
    r2.x = saturate(dot(r13.yzw, r8.yzw));
    r2.z = 1 + -r2.x;
    r13.y = r1.w * r2.z + r2.x;
  } else {
    r0.xyz = r8.yzw;
    r13.xy = float2(1,1);
  }
  r16.x = t0[0].val[0/4];
  r16.y = t0[0].val[0/4+1];
  r16.z = t0[0].val[0/4+2];
  r16.w = t0[0].val[0/4+3];
  r0.w = 1;
  r16.x = dot(r16.xyzw, r0.xyzw);
  r17.x = t0[1].val[0/4];
  r17.y = t0[1].val[0/4+1];
  r17.z = t0[1].val[0/4+2];
  r17.w = t0[1].val[0/4+3];
  r16.y = dot(r17.xyzw, r0.xyzw);
  r17.x = t0[2].val[0/4];
  r17.y = t0[2].val[0/4+1];
  r17.z = t0[2].val[0/4+2];
  r17.w = t0[2].val[0/4+3];
  r16.z = dot(r17.xyzw, r0.xyzw);
  r17.xyzw = r0.xyzz * r0.yzzx;
  r18.x = t0[3].val[0/4];
  r18.y = t0[3].val[0/4+1];
  r18.z = t0[3].val[0/4+2];
  r18.w = t0[3].val[0/4+3];
  r18.x = dot(r18.xyzw, r17.xyzw);
  r19.x = t0[4].val[0/4];
  r19.y = t0[4].val[0/4+1];
  r19.z = t0[4].val[0/4+2];
  r19.w = t0[4].val[0/4+3];
  r18.y = dot(r19.xyzw, r17.xyzw);
  r19.x = t0[5].val[0/4];
  r19.y = t0[5].val[0/4+1];
  r19.z = t0[5].val[0/4+2];
  r19.w = t0[5].val[0/4+3];
  r18.z = dot(r19.xyzw, r17.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t0[6].val[0/4];
  r0.z = t0[6].val[0/4+1];
  r0.w = t0[6].val[0/4+2];
  r16.xyz = r18.xyz + r16.xyz;
  r0.xyz = r0.yzw * r0.xxx + r16.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r13.x * r13.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r12.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r11.xyz;
  r12.xyz = r14.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r12.xyz = r14.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r12.xyz;
  r12.xyz = r14.xyz * float3(2.75519991,2.75519991,2.75519991) + r12.xyz;
  r12.xyz = float3(1.33200002,1.33200002,1.33200002) + r12.xyz;
  r12.xyz = max(float3(1,1,1), r12.xyz);
  r1.xy = cb0[131].zw * r1.xy;
  r1.w = v4.w * cb2[3].x + cb2[3].y;
  r1.w = log2(r1.w);
  r1.w = cb2[3].z * r1.w;
  r1.w = max(0, r1.w);
  r1.xyw = (uint3)r1.xyw;
  r2.x = asint(cb2[1].z) + -1;
  r1.w = min((uint)r2.x, (uint)r1.w);
  r1.xy = (uint2)r1.xy >> asuint(cb2[2].xx);
  r1.y = mad((int)r1.w, asint(cb2[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb2[1].x), (int)r1.x);
  r1.y = r7.y + r7.y;
  r5.yzw = r1.yyy * r8.yzw + -r5.xyz;
  r1.y = min(1, r9.x);
  r1.x = (int)r1.x + asint(cb2[0].w);
  r1.w = (uint)r1.x << 1;
  r1.w = t2.Load(r1.w).x;
  r1.w = min(asuint(cb2[0].y), (uint)r1.w);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t2.Load(r1.x).x;
  r2.x = max(0.00100000005, r2.y);
  r2.x = log2(r2.x);
  r2.x = -r2.x * 1.20000005 + 1;
  r2.z = -1 + cb0[195].z;
  r2.z = r2.z + -r2.x;
  r5.x = 0;
  r13.xyz = float3(0,0,0);
  r6.z = 1;
  r7.y = 0;
  r8.x = 1;
  r9.x = 0;
  while (true) {
    r11.w = cmp((uint)r9.x >= (uint)r1.w);
    if (r11.w != 0) break;
    r11.w = cmp(r6.z < 0.00100000005);
    if (r11.w != 0) {
      break;
    }
    r11.w = (int)r1.x + (int)r9.x;
    r11.w = t3.Load(r11.w).x;
    r14.xyz = -cb4[r11.w+0].xyz + r4.xyz;
    r12.w = dot(r14.xyz, r14.xyz);
    r13.w = sqrt(r12.w);
    r14.w = cmp(r13.w < cb4[r11.w+0].w);
    if (r14.w != 0) {
      r14.w = cmp(0 < cb4[r11.w+341].z);
      if (r14.w != 0) {
        r14.w = (uint)r11.w << 2;
        r16.xyz = cb4[r14.w+1024].xyz * r4.yyy;
        r16.xyz = r4.xxx * cb4[r14.w+1023].xyz + r16.xyz;
        r16.xyz = r4.zzz * cb4[r14.w+1025].xyz + r16.xyz;
        r16.xyz = cb4[r14.w+1026].xyz + r16.xyz;
        r17.xyz = cb4[r14.w+1024].xyz * r5.zzz;
        r17.xyz = r5.yyy * cb4[r14.w+1023].xyz + r17.xyz;
        r17.xyz = r5.www * cb4[r14.w+1025].xyz + r17.xyz;
        r17.xyz = rcp(r17.xyz);
        r18.xyz = -r16.xyz * r17.xyz + -r17.xyz;
        r17.xyz = -r16.xyz * r17.xyz + r17.xyz;
        r17.xyz = max(r18.xyz, r17.xyz);
        r14.w = min(r17.y, r17.z);
        r14.w = min(r17.x, r14.w);
        r17.xyz = r14.www * r5.yzw + r4.xyz;
        r18.xyz = cb4[r11.w+682].xyz + cb4[r11.w+0].xyz;
        r17.xyz = -r18.xyz + r17.xyz;
        r14.w = cb4[r11.w+2387].w * 0.699999988;
        r18.xyz = -cb4[r11.w+2387].www * float3(0.5,0.5,0.5) + cb4[r11.w+2387].xyz;
        r19.xyz = cb4[r11.w+2387].xyz * r16.xyz;
        r20.xyz = cmp(r19.xyz < -r18.xyz);
        r21.xyz = r16.xyz * cb4[r11.w+2387].xyz + r18.xyz;
        r21.xyz = abs(r21.xyz);
        r20.xyz = r20.xyz ? r21.xyz : 0;
        r19.xyz = cmp(r18.xyz < r19.xyz);
        r16.xyz = r16.xyz * cb4[r11.w+2387].xyz + -r18.xyz;
        r16.xyz = abs(r16.xyz);
        r16.xyz = r19.xyz ? r16.xyz : 0;
        r16.w = dot(r20.xyz, float3(1,1,1));
        r16.x = dot(r16.xyz, float3(1,1,1));
        r16.x = r16.w + r16.x;
        r14.w = 1 / r14.w;
        r14.w = saturate(r16.x * r14.w);
        r16.x = r14.w * -2 + 3;
        r14.w = r14.w * r14.w;
        r16.x = -r16.x * r14.w + 1;
      } else {
        r13.w = saturate(r13.w / cb4[r11.w+0].w);
        r14.w = dot(r5.yzw, r14.xyz);
        r12.w = -cb4[r11.w+0].w * cb4[r11.w+0].w + r12.w;
        r12.w = r14.w * r14.w + -r12.w;
        r18.x = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r12.w = r12.w + -r14.w;
        r14.xyz = r12.www * r5.yzw + r14.xyz;
        r14.yzw = -cb4[r11.w+682].xyz + r14.xyz;
        r12.w = r13.w * 2.5 + -1.5;
        r12.w = max(0, r12.w);
        r13.w = r12.w * r12.w;
        r12.w = -r12.w * 2 + 3;
        r14.x = -r13.w * r12.w + 1;
        r16.xyzw = r18.xxxx ? r14.xyzw : r5.xyzw;
        r17.xyz = r16.yzw;
      }
      r17.w = cb4[r11.w+341].y;
      r14.xyzw = t5.SampleLevel(s3_s, r17.xyzw, r2.z).xyzw;
      r14.xyz = cb4[r11.w+341].xxx * r14.xyz;
      r14.xyz = r14.xyz * r16.xxx;
      r13.xyz = r14.xyz * r6.zzz + r13.xyz;
      r12.w = -r14.w * r16.x + 1;
      r6.z = r12.w * r6.z;
      r11.w = cb4[r11.w+682].w * r16.x;
      r7.y = r11.w * r8.x + r7.y;
      r11.w = 1 + -r16.x;
      r8.x = r11.w * r8.x;
    }
    r9.x = (int)r9.x + 1;
  }
  r13.xyz = cb0[157].xyz * r13.xyz;
  r1.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r13.w = r7.y * r1.x;
  r1.x = cmp(0 < cb2[116].y);
  if (r1.x != 0) {
    r1.x = cb2[116].x + -r2.x;
    r1.x = -1 + r1.x;
    r14.xyz = t4.SampleLevel(s2_s, r5.yzw, r1.x).xyz;
    r1.x = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r1.x = cb2[117].x * r1.x;
    r14.xyz = cb0[187].xyz * r14.xyz;
    r1.w = cmp(cb2[116].z < 1);
    r16.xyz = r6.zzz * r14.xyz + r13.xyz;
    r16.w = r1.x * r8.x + r13.w;
    r14.xyz = r1.www ? float3(0,0,0) : r14.xyz;
    r13.xyzw = r1.wwww ? r16.xyzw : r13.xyzw;
  } else {
    r14.xyz = float3(0,0,0);
  }
  r1.x = saturate(r2.y * cb0[197].x + cb0[197].y);
  r1.w = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r1.w * r1.x;
  r1.w = max(9.99999975e-005, r13.w);
  r0.w = r0.w / r1.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r1.x * r0.w + 1;
  r14.xyz = r14.xyz * r6.zzz;
  r13.xyz = r13.xyz * r0.www + r14.xyz;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r1.xw = r0.ww * float2(32.6650009,11.8149996) + v4.xy;
    r0.w = dot(r1.xw, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r14.xyzw = cb0[1].xyzw * r3.yyyy;
    r14.xyzw = r3.xxxx * cb0[0].xyzw + r14.xyzw;
    r14.xyzw = r3.zzzz * cb0[2].xyzw + r14.xyzw;
    r14.xyzw = cb0[3].xyzw + r14.xyzw;
    r5.xyz = r5.yzw * r2.www + r3.xyz;
    r16.xyzw = cb0[1].xyzw * r5.yyyy;
    r16.xyzw = r5.xxxx * cb0[0].xyzw + r16.xyzw;
    r5.xyzw = r5.zzzz * cb0[2].xyzw + r16.xyzw;
    r5.xyzw = cb0[3].xyzw + r5.xyzw;
    r1.x = rcp(r14.w);
    r16.xyz = r14.xyz * r1.xxx;
    r1.x = rcp(r5.w);
    r2.xz = r2.ww * cb0[30].zw + r14.zw;
    r1.w = rcp(r2.z);
    r5.xyz = r5.xyz * r1.xxx + -r16.xyz;
    r1.x = dot(r5.xy, r5.xy);
    r1.x = sqrt(r1.x);
    r2.z = 0.5 * r1.x;
    r14.xy = r16.xy * r2.zz + r5.xy;
    r14.xy = -r1.xx * float2(0.5,0.5) + abs(r14.xy);
    r14.xy = max(float2(0,0), r14.xy);
    r14.xy = r14.xy / abs(r5.xy);
    r14.xy = float2(1,1) + -r14.xy;
    r1.x = min(r14.x, r14.y);
    r1.x = r1.x / r2.z;
    r5.xyz = r5.xyz * r1.xxx;
    r1.x = -r2.x * r1.w + r16.z;
    r1.x = 4 * r1.x;
    r1.x = max(abs(r5.z), r1.x);
    r2.xz = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r16.xy = cb2[176].xy * r2.xz;
    r5.xy = cb2[176].xy * r5.xy;
    r1.w = 0.0833333358 * r1.x;
    r2.xzw = float3(0.0416666679,-0.0416666679,0.0833333358) * r5.xyz;
    r5.xyz = r2.xzw * r0.www + r16.xyz;
    r0.w = 1;
    r16.x = 0;
    r17.x = 0;
    r14.xyz = float3(0,0,0);
    r5.w = 0;
    r6.z = 0;
    r7.y = 0;
    r8.x = 0;
    r9.x = 0;
    while (true) {
      r11.w = cmp((uint)r9.x >= 12);
      if (r11.w != 0) break;
      r11.w = (uint)r9.x;
      r18.xyzw = float4(1,2,3,4) + r11.wwww;
      r19.xyzw = r18.xxxy * r2.xzww + r5.xyzz;
      r20.xyzw = r18.yyzz * r2.xzxz + r5.xyxy;
      r18.xyzw = r18.wwzw * r2.xzww + r5.xyzz;
      r11.w = r2.y * 0.666666687 + r0.w;
      r12.w = r2.y * 0.666666687 + r11.w;
      r21.x = t10.SampleLevel(s6_s, r19.xy, r0.w).x;
      r21.y = t10.SampleLevel(s6_s, r20.xy, r0.w).x;
      r21.z = t10.SampleLevel(s6_s, r20.zw, r11.w).x;
      r21.w = t10.SampleLevel(s6_s, r18.xy, r11.w).x;
      r18.xy = r19.zw;
      r18.xyzw = r18.xyzw + -r21.xyzw;
      r19.xyzw = r1.xxxx * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r18.xyzw;
      r19.xyzw = cmp(abs(r19.xyzw) < r1.wwww);
      r20.xy = (int2)r19.zw | (int2)r19.xy;
      r11.w = (int)r20.y | (int)r20.x;
      if (r11.w != 0) {
        r17.x = r18.x;
        r14.xyz = r18.yzw;
        r5.w = r19.x;
        r6.z = r19.y;
        r7.y = r19.z;
        r8.x = -1;
        break;
      }
      r16.x = r18.w;
      r9.x = (int)r9.x + 4;
      r0.w = r12.w;
      r17.x = r18.x;
      r14.xyz = r18.yzw;
      r5.w = r19.x;
      r6.z = r19.y;
      r7.y = r19.z;
      r8.x = r11.w;
    }
    if (r8.x != 0) {
      r14.w = 2;
      r18.xy = r14.yz;
      r18.z = 3;
      r14.yzw = r7.yyy ? r14.xyw : r18.xyz;
      r17.y = r14.x;
      r17.z = 1;
      r14.xyz = r6.zzz ? r17.xyz : r14.yzw;
      r16.y = r17.x;
      r16.z = 0;
      r14.xyz = r5.www ? r16.xyz : r14.xyz;
      r0.w = (uint)r9.x;
      r0.w = r14.z + r0.w;
      r1.x = r14.x + -r14.y;
      r1.x = saturate(r14.x / r1.x);
      r0.w = r1.x + r0.w;
      r2.xzw = r2.xzw * r0.www + r5.xyz;
      r1.xw = cb2[176].zw * r2.xz;
      r1.xw = r1.xw * float2(2,-2) + float2(-1,1);
      r1.xw = cb0[66].xy * r1.xw;
      r1.xw = r1.xw / cb0[66].xy;
      r5.xyz = cb0[123].xyw * r1.www;
      r5.xyz = r1.xxx * cb0[122].xyw + r5.xyz;
      r2.xzw = r2.www * cb0[124].xyw + r5.xyz;
      r2.xzw = cb0[125].xyw + r2.xzw;
      r2.xz = r2.xz / r2.ww;
      r5.xy = r2.xz * cb2[177].xy + cb2[177].zw;
      r1.xw = saturate(abs(r1.xw) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r1.xw, r1.xw);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r1.xw = saturate(abs(r2.xz) * float2(5,5) + float2(-4,-4));
      r1.x = dot(r1.xw, r1.xw);
      r1.x = 1 + -r1.x;
      r1.x = max(0, r1.x);
      r0.w = min(r1.x, r0.w);
      r2.xzw = t11.SampleLevel(s7_s, r5.xy, 0).xyz;
      r2.xzw = min(float3(0,0,0), -r2.xzw);
      r1.x = saturate(-r2.y * 6.5999999 + 2);
      r0.w = r1.x * r0.w;
      r1.x = 1;
      r2.xzw = -r2.xzw * r0.www;
      r2.xzw = cb2[178].xxx * r2.xzw;
      r0.w = -r1.x * r0.w + 1;
      r13.xyz = r13.xyz * r0.www + r2.xzw;
    }
  }
  r5.xyzw = r2.yyyy * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r5.x * r5.x;
  r1.x = -9.27999973 * r1.y;
  r1.x = exp2(r1.x);
  r0.w = min(r1.x, r0.w);
  r0.w = r0.w * r5.x + r5.y;
  r1.xy = r0.ww * float2(-1.03999996,1.03999996) + r5.zw;
  r0.w = 50 * r9.z;
  r0.w = saturate(r0.w);
  r0.w = r0.w * r1.y;
  r1.xyw = r9.yzw * r1.xxx + r0.www;
  r0.w = dot(cb2[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r4.w = -1;
    r0.w = dot(cb2[122].xyzw, r4.xyzw);
    r0.w = saturate(abs(r0.w) * cb2[129].x + cb2[129].y);
    r0.w = 1 + -r0.w;
    r2.xzw = -cb2[123].xyz + r4.xyz;
    r4.w = dot(r2.xzw, cb2[124].xyz);
    r4.w = cb2[124].w + -abs(r4.w);
    r4.w = saturate(cb2[129].x * r4.w);
    r2.x = dot(r2.xzw, cb2[125].xyz);
    r2.x = cb2[125].w + -abs(r2.x);
    r2.x = saturate(cb2[129].x * r2.x);
    r2.x = r4.w * r2.x;
    r0.w = r2.x * r0.w;
    r2.x = dot(cb2[122].xyz, r8.yzw);
    r2.x = saturate(r2.x * cb2[130].x + cb2[130].y);
    r2.y = -0.200000003 + r2.y;
    r2.y = saturate(10 * r2.y);
    r2.y = 1 + -r2.y;
    r0.w = r2.x * r0.w;
    r0.w = r0.w * r2.y;
    r2.x = cmp(0 < r0.w);
    if (r2.x != 0) {
      r1.z = rsqrt(r1.z);
      r2.xyz = r7.xzw * r1.zzz;
      r1.z = dot(r2.xyz, -cb2[122].xyz);
      r1.z = r1.z + r1.z;
      r2.xyz = cb2[122].xyz * r1.zzz + r2.xyz;
      r5.xyz = cb2[127].xyz * r8.zzz;
      r5.xyz = r8.yyy * cb2[126].xyz + r5.xyz;
      r5.xyz = r8.www * cb2[128].xyz + r5.xyz;
      r1.z = dot(r2.xyz, r5.xyz);
      r1.z = r1.z + r1.z;
      r2.xyz = r5.xyz * -r1.zzz + r2.xyz;
      r2.xyz = r2.xyz * cb2[129].zzz + r4.xyz;
      r2.xyz = cb0[70].xyz + r2.xyz;
      r5.xyz = cb0[13].xyz * r2.yyy;
      r2.xyw = r2.xxx * cb0[12].xyz + r5.xyz;
      r2.xyz = r2.zzz * cb0[14].xyz + r2.xyw;
      r2.xyz = cb0[15].xyz + r2.xyz;
      r1.z = asuint(cb0[197].w) << 2;
      r5.xyz = cb2[r1.z+132].xyw * r2.yyy;
      r2.xyw = r2.xxx * cb2[r1.z+131].xyw + r5.xyz;
      r2.xyz = r2.zzz * cb2[r1.z+133].xyw + r2.xyw;
      r2.xyz = cb2[r1.z+134].xyw + r2.xyz;
      r1.z = cb2[141].z ? cb0[197].w : 0;
      r2.xy = r2.xy / r2.zz;
      r2.xy = max(-cb2[141].xy, r2.xy);
      r2.xy = min(cb2[141].xy, r2.xy);
      r2.xy = r2.xy * cb2[r1.z+139].xy + cb2[r1.z+139].zw;
      r2.xyzw = t6.SampleLevel(s3_s, r2.xy, 0).xyzw;
      r0.w = r2.w * r0.w;
    } else {
      r2.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r13.xyz = r0.www * r13.xyz + r2.xyz;
  }
  r1.xyz = r13.xyz * r1.xyw;
  r2.xyz = r9.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r9.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r9.yzw * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
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
  r5.x = rsqrt(r4.w);
  r4.w = r5.x * r4.w;
  r1.w = max(cb2[143].w, r1.w);
  r5.y = cmp(0 < r1.w);
  r5.z = r1.w * r5.x;
  r2.w = r5.z * r3.w + r2.w;
  r5.z = -r5.z * r3.w + r3.w;
  r1.w = -r1.w * r5.x + 1;
  r1.w = r1.w * r4.w;
  r5.w = -cb2[146].y + r2.w;
  r5.w = cb2[143].y * r5.w;
  r5.w = max(-127, r5.w);
  r5.w = exp2(-r5.w);
  r5.w = cb2[146].x * r5.w;
  r2.w = -cb2[144].w + r2.w;
  r2.w = cb2[144].y * r2.w;
  r2.xyzw = max(float4(1,1,1,-127), r2.xyzw);
  r2.w = exp2(-r2.w);
  r2.w = cb2[144].z * r2.w;
  r5.w = r5.y ? r5.w : cb2[143].x;
  r2.w = r5.y ? r2.w : cb2[144].x;
  r1.w = r5.y ? r1.w : r4.w;
  r5.y = r5.y ? r5.z : r3.w;
  r5.z = cb2[143].y * r5.y;
  r5.z = max(-127, r5.z);
  r6.z = exp2(-r5.z);
  r6.z = 1 + -r6.z;
  r6.z = r6.z / r5.z;
  r7.x = -r5.z * 0.240226507 + 0.693147182;
  r5.z = cmp(0.00999999978 < abs(r5.z));
  r5.z = r5.z ? r6.z : r7.x;
  r5.y = cb2[144].y * r5.y;
  r5.y = max(-127, r5.y);
  r6.z = exp2(-r5.y);
  r6.z = 1 + -r6.z;
  r6.z = r6.z / r5.y;
  r7.x = -r5.y * 0.240226507 + 0.693147182;
  r5.y = cmp(0.00999999978 < abs(r5.y));
  r5.y = r5.y ? r6.z : r7.x;
  r2.w = r5.y * r2.w;
  r2.w = r5.w * r5.z + r2.w;
  r5.y = r2.w * r1.w;
  r5.zw = cmp(float2(0,0) < cb2[146].zw);
  if (r5.z != 0) {
    r5.z = saturate(r4.w * cb2[150].x + cb2[150].y);
    r7.xy = float2(1,-1) * cb2[149].yx;
    r7.x = dot(r3.xy, r7.xy);
    r7.y = dot(r3.xy, cb2[149].xy);
    r7.z = r3.w;
    r8.xyz = t7.SampleLevel(s4_s, r7.xyz, 0).xyz;
    r7.xyz = t7.SampleLevel(s4_s, r7.xyz, cb2[150].z).xyz;
    r8.xyz = r8.xyz + -r7.xyz;
    r7.xyz = r5.zzz * r8.xyz + r7.xyz;
    r7.xyz = cb2[145].xyz * r7.xyz;
  } else {
    r7.xyz = cb2[145].xyz;
  }
  r5.z = cmp(cb2[147].w >= 0);
  r6.z = cmp(cb2[146].z == 0.000000);
  r5.z = r5.z ? r6.z : 0;
  if (r5.z != 0) {
    r8.xyz = r5.xxx * r3.xyw;
    r3.w = saturate(dot(r8.xyz, cb2[147].xyz));
    r3.w = log2(r3.w);
    r3.w = cb2[148].w * r3.w;
    r3.w = exp2(r3.w);
    r8.xyz = cb2[148].xyz * r3.www;
    r1.w = -cb2[147].w + r1.w;
    r1.w = max(0, r1.w);
    r1.w = r2.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r8.xyz = r8.xyz * r1.www;
  } else {
    r8.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r5.y);
  r1.w = min(1, r1.w);
  r8.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r4.w);
  r1.w = r1.w ? r5.w : 0;
  r5.xyzw = r1.wwww ? float4(1,0,0,0) : r8.wxyz;
  r1.w = 1 + -r5.x;
  r5.yzw = r7.xyz * r1.www + r5.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r7.xyz = cb0[5].xyw * r4.yyy;
    r7.xyz = r4.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r4.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r7.xy = r7.xy / r7.zz;
    r8.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r7.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r8.z = cb0[208].z * r1.w;
    r7.xyzw = t8.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r5.yzw = r5.yzw * r7.www + r7.xyz;
    r5.x = r7.w * r5.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r7.xyz = cb0[5].xyw * r4.yyy;
    r7.xyz = r4.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r4.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r1.w = cmp(0 != cb0[184].x);
    r8.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r7.xy = r7.xy / r7.zz;
    r7.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r8.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r8.xyz;
    r2.w = dot(r8.xyz, r8.xyz);
    r3.w = sqrt(r2.w);
    r3.w = -cb0[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb0[182].x * r3.w;
    r3.w = cb0[181].z * r3.w;
    r13.z = sqrt(r3.w);
    r3.w = cb0[181].y * r13.z;
    r4.w = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r4.w ? r3.w : 1;
    r2.w = rsqrt(r2.w);
    r8.xyz = r8.xyz * r2.www;
    r2.w = -r8.z * r8.z + 1;
    r2.w = sqrt(r2.w);
    r14.y = r8.z * 0.5 + 0.5;
    r7.zw = r8.xy / r2.ww;
    r2.w = 1 + -abs(r7.z);
    r2.w = sqrt(r2.w);
    r4.w = abs(r7.z) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r7.z) + -0.212114394;
    r4.w = r4.w * abs(r7.z) + 1.57072878;
    r6.z = r4.w * r2.w;
    r6.z = r6.z * -2 + 3.14159274;
    r7.z = cmp(r7.z < -r7.z);
    r6.z = r7.z ? r6.z : 0;
    r2.w = r4.w * r2.w + r6.z;
    r4.w = cmp(r7.w < 0);
    r6.z = 6.28318548 + -r2.w;
    r2.w = r4.w ? r6.z : r2.w;
    r14.x = 0.159154937 * r2.w;
    r7.zw = cb0[180].zw * float2(0.5,0.5) + r14.xy;
    r8.xy = float2(1,1) + cb0[180].xy;
    r8.xy = cb0[180].xy / r8.xy;
    r7.zw = r8.xy * r7.zw;
    r13.xy = r1.ww ? r7.zw : r7.xy;
    r7.xyzw = t1.SampleLevel(s1_s, r13.xyz, 0).xyzw;
    r7.xyz = r7.xyz * r3.www;
    r1.w = 1 + -r7.w;
    r1.w = -r3.w * r1.w + 1;
    r7.xyz = cb0[135].zzz * r7.xyz;
    r5.yzw = r7.xyz * r5.xxx + r5.yzw;
    r5.x = r5.x * r1.w;
  }
  r7.xyz = v1.xyz + r4.xyz;
  r8.xyz = -cb0[148].xyz + r7.xyz;
  r13.xyz = cb0[150].xyz * r8.xyz;
  r7.xyz = -cb0[149].xyz + r7.xyz;
  r7.xyz = cb0[151].xyz * r7.xyz;
  r8.xyz = r8.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.xyz = float3(0.5,0.5,0.5) + -abs(r8.xyz);
  r8.xyz = saturate(float3(6,6,6) * r8.xyz);
  r1.w = r8.x * r8.y;
  r1.w = r1.w * r8.z;
  r8.xyz = t12.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r14.xyz = t13.SampleLevel(s0_s, r7.xyz, 0).xyz;
  r8.xyz = -r14.xyz + r8.xyz;
  r8.xyz = r1.www * r8.xyz + r14.xyz;
  r13.xyz = t14.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r7.xyz = t15.SampleLevel(s0_s, r7.xyz, 0).xyz;
  r13.xyz = r13.xyz + -r7.xyz;
  r7.xyz = r1.www * r13.xyz + r7.xyz;
  r1.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r13.xyz = r8.xyz / r1.www;
  r14.yzw = r13.xxx * r7.xyz;
  r16.yzw = r13.yyy * r7.xyz;
  r7.yzw = r13.zzz * r7.xyz;
  r14.x = r8.x;
  r13.x = dot(r14.xyzw, r15.xyzw);
  r16.x = r8.y;
  r13.y = dot(r16.xyzw, r15.xyzw);
  r7.x = r8.z;
  r13.z = dot(r7.xyzw, r15.xyzw);
  r7.xyz = max(float3(0,0,0), r13.xyz);
  r7.xyz = r11.xyz * r7.xyz;
  r1.xyz = r1.xyz * r2.xyz + r7.xyz;
  r2.xyz = r9.yzw * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = cb0[145].yyy * r2.xyz + r1.xyz;
  r10.xyz = max(float3(0,0,0), r6.xyw);
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
    r10.xyzw = r1.wwww ? r2.yzwx : r10.xyzw;
    o0.w = r10.w;
  } else {
    o0.w = r10.w;
  }
  r0.xyz = r0.xyz * r12.xyz + r1.xyz;
  r0.xyz = r0.xyz + r10.xyz;
  r0.xyz = r0.xyz * r5.xxx + r5.yzw;
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