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

cbuffer cb8 : register(b8)
{
  float4 cb8[39];
}

cbuffer cb7 : register(b7)
{
  float4 cb7[8];
}

cbuffer cb6 : register(b6)
{
  float4 cb6[3];
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
  float4 v2 : TEXCOORD15,
  float4 v3 : COLOR0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
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
  r0.w = cb8[11].x * cb0[142].z;
  r6.y = -0.100000001 * r0.w;
  r7.xyz = r4.xyz / cb8[11].zzz;
  r8.xy = cb8[11].ww * r7.yx;
  r8.z = -r7.z;
  r6.x = 0;
  r6.xyzw = r8.xzyz + r6.xyxy;
  r1.zw = t18.SampleBias(s8_s, r6.xy, cb0[143].y).xy;
  r7.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r7.z = sqrt(r0.w);
  r1.zw = t18.SampleBias(s8_s, r6.zw, cb0[143].y).xy;
  r6.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r6.xyz = r7.xyz + r6.xyz;
  r7.xyz = -cb0[67].xyz + r4.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r1.z = sqrt(r0.w);
  r1.z = r1.z / cb8[12].x;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb8[12].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r1.w = 1 + -cb8[12].z;
  r1.w = r1.z * r1.w + cb8[12].z;
  r8.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = r1.www * r8.xyz + r6.xyz;
  r1.w = cb1[18].x + cb1[18].y;
  r1.w = cb1[18].z + r1.w;
  r1.w = frac(r1.w);
  r1.w = cb0[142].z + r1.w;
  r1.w = cb6[2].x * r1.w;
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r2.x = t9.SampleLevel(s5_s, r2.xy, 0).x;
  r2.y = r2.x * cb0[65].x + cb0[65].y;
  r2.x = r2.x * cb0[65].z + -cb0[65].w;
  r2.x = 1 / r2.x;
  r2.x = r2.y + r2.x;
  r2.y = cmp(cb0[31].w < 1);
  r5.w = r2.z * cb0[65].x + cb0[65].y;
  r2.z = r2.z * cb0[65].z + -cb0[65].w;
  r2.z = 1 / r2.z;
  r2.z = r5.w + r2.z;
  r2.y = r2.y ? r2.w : r2.z;
  r2.x = r2.x + -r2.y;
  r2.y = saturate(r2.x / cb8[13].x);
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb8[13].y * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.z = cb8[13].z * r2.y;
  r2.z = r2.z * r1.w;
  r8.xy = r4.xy / cb8[15].yy;
  r8.xy = float2(-0.5,-0.5) + r8.xy;
  r9.x = dot(r8.xy, cb8[2].xy);
  r9.y = dot(r8.xy, cb8[3].xy);
  r8.xy = float2(0.5,0.5) + r9.xy;
  r8.zw = r2.zz * cb8[14].zw + r8.xy;
  r5.w = cb8[16].w + cb0[143].y;
  r8.zw = t18.SampleBias(s8_s, r8.zw, r5.w).xy;
  r9.xy = r8.zw * float2(2,2) + float2(-1,-1);
  r6.w = dot(r9.xy, r9.xy);
  r6.w = 1 + -r6.w;
  r6.w = max(0, r6.w);
  r9.z = sqrt(r6.w);
  r8.xy = r2.zz * cb8[18].xy + r8.xy;
  r8.xy = t18.SampleBias(s8_s, r8.xy, r5.w).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r2.z = dot(r8.xy, r8.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r8.z = sqrt(r2.z);
  r8.xyz = r9.xyz + r8.xyz;
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r10.xyz = cb8[18].zzz * r9.xyz + r8.xyz;
  r2.z = 1 + r10.z;
  r2.y = cb8[18].w * r2.y;
  r1.w = r2.y * r1.w;
  r11.xy = r4.xy / cb8[19].yy;
  r11.xy = float2(-0.5,-0.5) + r11.xy;
  r12.x = dot(r11.xy, cb8[2].xy);
  r12.y = dot(r11.xy, cb8[3].xy);
  r11.xy = float2(0.5,0.5) + r12.xy;
  r11.zw = r1.ww * cb8[14].zw + r11.xy;
  r11.zw = t18.SampleBias(s8_s, r11.zw, cb0[143].y).xy;
  r12.xy = r11.zw * float2(2,2) + float2(-1,-1);
  r2.y = dot(r12.xy, r12.xy);
  r2.y = 1 + -r2.y;
  r2.y = max(0, r2.y);
  r12.z = sqrt(r2.y);
  r11.xy = r1.ww * cb8[18].xy + r11.xy;
  r11.xy = t18.SampleBias(s8_s, r11.xy, cb0[143].y).xy;
  r11.xy = r11.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r11.xy, r11.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r11.z = sqrt(r1.w);
  r11.xyz = r12.xyz + r11.xyz;
  r12.xyz = float3(0,0,1) + -r11.xyz;
  r13.xyz = cb8[19].zzz * r12.xyz + r11.xyz;
  r10.w = 1 + r10.z;
  r13.xyz = float3(-1,-1,1) * r13.xyz;
  r1.w = dot(r10.xyw, r13.xyz);
  r13.xyz = r13.xyz * r2.zzz;
  r10.xyz = r10.xyw * r1.www + -r13.xyz;
  r13.xyz = float3(0,0,1) + -r10.xyz;
  r10.xyz = cb8[19].www * r13.xyz + r10.xyz;
  r1.w = v1.z * 0.5 + 0.5;
  r1.w = saturate(r1.w * cb8[20].x + cb8[20].w);
  r10.xyz = r10.xyz + -r6.xyz;
  r6.xyz = r1.www * r10.xyz + r6.xyz;
  r6.xyz = r6.xyz * cb0[138].www + cb0[138].xyz;
  r2.y = dot(r6.xyz, r6.xyz);
  r2.y = rsqrt(r2.y);
  r6.xyz = r6.xyz * r2.yyy;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.xyz + r0.xyz;
  r0.xyz = r6.zzz * v1.xyz + r0.xyz;
  r2.y = dot(r0.xyz, r0.xyz);
  r2.y = rsqrt(r2.y);
  r6.yzw = r2.yyy * r0.xyz;
  r10.xyz = cb7[2].yzw * r4.yyy;
  r10.xyz = r4.xxx * cb7[1].yzw + r10.xyz;
  r10.xyz = r4.zzz * cb7[3].yzw + r10.xyz;
  r10.xyz = cb7[4].yzw + r10.xyz;
  r10.xy = r10.xy / r10.zz;
  r10.xy = float2(1,-1) * r10.xy;
  r10.xy = r10.xy / cb7[0].xx;
  r10.zw = saturate(float2(0.5,0.5) + r10.xy);
  r13.xyzw = t19.SampleBias(s9_s, r10.zw, cb0[143].y).xyzw;
  r10.zw = float2(1,1) + -v3.yw;
  r2.z = dot(r6.yzw, r5.xyz);
  r5.w = max(0, r2.z);
  r7.w = 1 + -r5.w;
  r7.w = max(9.99999975e-005, abs(r7.w));
  r7.w = log2(r7.w);
  r8.w = cb8[21].x * r7.w;
  r8.w = exp2(r8.w);
  r8.w = r8.w * 0.959999979 + 0.0399999991;
  r8.w = cb8[21].y * r8.w;
  r8.w = max(9.99999975e-006, r8.w);
  r8.w = saturate(r2.x / r8.w);
  r8.w = 1 + -r8.w;
  r8.w = -r8.w * cb8[21].z + 1;
  r14.xy = r4.xy / cb8[22].zz;
  r14.zw = cb0[142].zz * cb8[22].xx + r14.xy;
  r9.w = t20.SampleBias(s10_s, r14.zw, cb0[143].y).x;
  r14.xy = cb0[142].zz * cb8[23].xx + r14.xy;
  r11.w = t20.SampleBias(s10_s, r14.xy, cb0[143].y).y;
  r9.w = r11.w * r9.w;
  r9.w = cb8[23].y * r9.w;
  r11.w = cmp(0 >= r9.w);
  r9.w = log2(r9.w);
  r9.w = cb8[23].z * r9.w;
  r9.w = exp2(r9.w);
  r9.w = r11.w ? 0 : r9.w;
  r8.w = r8.w / r9.w;
  r8.w = cb8[23].w + -r8.w;
  r8.w = 1 + r8.w;
  r8.w = 1 + -r8.w;
  r14.xy = r4.xy / cb8[24].yy;
  r9.w = t20.SampleBias(s10_s, r14.xy, cb0[143].y).x;
  r11.w = 1 + -r9.w;
  r11.w = r11.w + r11.w;
  r12.w = cb8[24].z * cb0[142].z;
  r15.xy = float2(0.100000001,6.28318548) * r12.ww;
  r15.z = 0;
  r14.xy = r15.xz + r14.xy;
  r12.w = t20.SampleBias(s10_s, r14.xy, cb0[143].y).x;
  r14.x = 1 + -r12.w;
  r11.w = -r11.w * r14.x + 1;
  r12.w = dot(r9.ww, r12.ww);
  r9.w = cmp(r9.w >= 0.5);
  r9.w = r9.w ? r11.w : r12.w;
  r11.w = sin(r15.y);
  r11.w = r11.w * 0.5 + 0.5;
  r11.w = r11.w * cb8[24].w + cb8[25].x;
  r12.w = -r11.w + r9.w;
  r12.w = cmp(9.99999975e-006 < abs(r12.w));
  r14.x = cmp(r9.w >= r11.w);
  r14.x = r14.x ? 1.000000 : 0;
  r12.w = r12.w ? r14.x : 1;
  r11.w = cb8[25].y + r11.w;
  r14.x = -r11.w + r9.w;
  r14.x = cmp(9.99999975e-006 < abs(r14.x));
  r11.w = cmp(r9.w >= r11.w);
  r12.w = cb8[25].z * r12.w;
  r11.w = r11.w ? 0 : r12.w;
  r11.w = r14.x ? r11.w : 0;
  r8.w = r8.w / r11.w;
  r8.w = 1 + -r8.w;
  r11.w = saturate(r2.x / cb8[26].x);
  r12.w = cmp(0 >= r11.w);
  r11.w = log2(r11.w);
  r11.w = cb8[26].y * r11.w;
  r11.w = exp2(r11.w);
  r11.w = r12.w ? 0 : r11.w;
  r8.w = saturate(r11.w * r8.w);
  r12.w = cmp(0 >= r11.w);
  r11.w = rsqrt(r11.w);
  r11.w = 1 / r11.w;
  r11.w = cb8[26].z * r11.w;
  r8.w = r11.w * r8.w;
  r8.w = r10.z * r8.w;
  r8.w = r12.w ? 0 : r8.w;
  r11.w = cb8[26].w * r7.w;
  r11.w = exp2(r11.w);
  r11.w = r11.w * cb8[27].y + cb8[27].x;
  r12.w = saturate(r2.x / cb8[27].w);
  r12.w = cb8[28].x * r12.w;
  r14.x = cmp(0 >= abs(r12.w));
  r12.w = log2(abs(r12.w));
  r12.w = cb8[28].y * r12.w;
  r12.w = exp2(r12.w);
  r12.w = r14.x ? 0 : r12.w;
  r11.w = saturate(r12.w * r11.w);
  r14.xyz = -cb8[8].xyz + cb8[7].xyz;
  r14.xyz = r11.www * r14.xyz + cb8[8].xyz;
  r7.w = cb8[28].z * r7.w;
  r7.w = exp2(r7.w);
  r7.w = r7.w * 0.959999979 + 0.0399999991;
  r7.w = cb8[28].w * r7.w;
  r7.w = max(9.99999975e-006, r7.w);
  r2.x = saturate(r2.x / r7.w);
  r2.x = 1 + -r2.x;
  r2.x = cb8[29].x * r2.x;
  r14.xyz = r10.zzz * r2.xxx + r14.xyz;
  r14.xyz = r14.xyz + r8.www;
  r2.x = -r0.z * r2.y + 1;
  r2.x = cb8[29].y * r2.x;
  r7.w = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb8[29].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r7.w ? 0 : r2.x;
  r2.x = r9.w * r2.x + r2.x;
  r7.w = -cb8[29].w + r2.x;
  r7.w = cmp(9.99999975e-006 < abs(r7.w));
  r9.w = cmp(r2.x >= cb8[29].w);
  r9.w = r9.w ? r2.x : 0;
  r2.x = r7.w ? r9.w : r2.x;
  r2.x = max(0, r2.x);
  r2.x = min(cb8[30].x, r2.x);
  r14.xyz = r1.www * r2.xxx + r14.xyz;
  r2.x = dot(r10.xy, r10.xy);
  r2.x = sqrt(r2.x);
  r2.x = saturate(r2.x * 10 + -4);
  r7.w = 1 + -r13.w;
  r2.x = r2.x * r7.w + r13.w;
  r14.xyz = r14.xyz + -r13.xyz;
  r13.xyz = r2.xxx * r14.xyz + r13.xyz;
  r14.xyz = -r13.xyz * cb8[30].yyy + r13.xyz;
  r14.xyz = cb7[6].xyz * r14.xyz;
  r14.xyz = float3(0.318309844,0.318309844,0.318309844) * r14.xyz;
  r2.x = dot(r6.yzw, cb7[7].xyz);
  r9.xyz = cb8[30].zzz * r9.xyz + r8.xyz;
  r7.w = 1 + r9.z;
  r8.xyz = cb8[30].www * r12.xyz + r11.xyz;
  r9.w = 1 + r9.z;
  r8.xyz = float3(-1,-1,1) * r8.xyz;
  r9.z = dot(r9.xyw, r8.xyz);
  r8.xyz = r8.xyz * r7.www;
  r8.xyz = r9.xyw * r9.zzz + -r8.xyz;
  r7.w = dot(r8.xyz, r8.xyz);
  r7.w = sqrt(r7.w);
  r8.xyz = r8.xyz / r7.www;
  r7.w = saturate(dot(r8.xyz, cb7[7].xyz));
  r9.xyz = cb0[67].xyz + -r4.xyz;
  r9.w = dot(r9.xyz, r9.xyz);
  r9.w = sqrt(r9.w);
  r9.xyz = r9.xyz / r9.www;
  r9.xyz = cb7[7].xyz + r9.xyz;
  r9.w = dot(r9.xyz, r9.xyz);
  r9.w = sqrt(r9.w);
  r9.xyz = r9.xyz / r9.www;
  r8.x = saturate(dot(r9.xyz, r8.xyz));
  r8.y = 11 * cb8[31].y;
  r8.y = exp2(r8.y);
  r8.z = cmp(0 >= r8.x);
  r8.x = log2(r8.x);
  r8.x = r8.y * r8.x;
  r8.x = exp2(r8.x);
  r7.w = r8.x * r7.w;
  r7.w = cb8[31].z * r7.w;
  r9.xyz = cb7[5].xyz * r7.www;
  r8.xyz = r8.zzz ? float3(0,0,0) : r9.xyz;
  r8.xyz = r14.xyz * r2.xxx + r8.xyz;
  r9.xyz = cb8[9].xyz + -r8.xyz;
  r8.xyz = cb8[31].www * r9.xyz + r8.xyz;
  r2.x = cb8[32].y + -cb8[32].z;
  r1.z = saturate(r1.z * r2.x + cb8[32].z);
  r2.x = cmp(0 >= r10.w);
  r7.w = log2(r10.w);
  r9.x = cb8[32].w * r7.w;
  r9.x = exp2(r9.x);
  r9.x = 1 + -r9.x;
  r9.x = r2.x ? 1 : r9.x;
  r9.y = cb8[33].x * cb0[142].z;
  r10.xyw = r4.xyz / cb8[34].yyy;
  r11.xy = cb8[34].zz * r10.xy;
  r12.xy = -r11.xy;
  r12.z = -r10.w;
  r14.xyzw = r9.yyyy * cb8[33].zwzw + r12.xzyz;
  r10.xyw = r4.xyz / cb8[35].xxx;
  r9.zw = t18.SampleBias(s8_s, r10.xw, cb0[143].y).xy;
  r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
  r9.zw = cb8[35].yy * -r9.zw + r9.zw;
  r10.xy = t18.SampleBias(s8_s, r10.yw, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r10.xy = cb8[35].yy * -r10.xy + r10.xy;
  r10.w = -cb8[36].x + cb8[35].w;
  r10.w = saturate(abs(v1.x) * r10.w + cb8[36].x);
  r10.xy = r10.xy + -r9.zw;
  r9.zw = r10.ww * r10.xy + r9.zw;
  r14.xyzw = r14.xyzw + r9.zwzw;
  r10.x = -cb8[36].y + r4.z;
  r10.x = r10.x / cb8[36].z;
  r10.y = -1 + r10.x;
  r10.y = cmp(9.99999975e-006 < abs(r10.y));
  r12.x = cmp(r10.x >= 1);
  r10.x = r12.x ? 1 : r10.x;
  r10.x = r10.y ? r10.x : 1;
  r10.y = cmp(9.99999975e-006 < abs(r10.x));
  r12.x = cmp(r10.x >= 0);
  r10.x = r12.x ? r10.x : 1;
  r10.x = r10.y ? r10.x : 1;
  r10.y = cmp(0 >= r10.x);
  r10.x = log2(r10.x);
  r10.x = cb8[36].w * r10.x;
  r10.x = exp2(r10.x);
  r10.x = min(1, r10.x);
  r10.x = 1 + -r10.x;
  r10.x = r10.y ? 1 : r10.x;
  r10.x = cb8[37].x * r10.x;
  r10.y = t20.SampleLevel(s10_s, r14.xy, r10.x).y;
  r12.x = t20.SampleLevel(s10_s, r14.zw, r10.x).y;
  r12.x = r12.x + -r10.y;
  r10.y = r10.w * r12.x + r10.y;
  r11.z = r12.z;
  r12.xyzw = r9.yyyy * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r11.xzyz;
  r12.xyzw = r12.xyzw + r9.zwzw;
  r9.y = 0.75 * r10.x;
  r9.z = t20.SampleLevel(s10_s, r12.xy, r9.y).y;
  r9.y = t20.SampleLevel(s10_s, r12.zw, r9.y).y;
  r9.y = r9.y + -r9.z;
  r9.y = r10.w * r9.y + r9.z;
  r9.y = r10.y + r9.y;
  r9.z = cmp(0 >= r9.y);
  r9.y = log2(r9.y);
  r9.y = cb8[37].y * r9.y;
  r9.y = exp2(r9.y);
  r9.w = cb8[37].z * r10.z;
  r9.y = r9.y * r9.w;
  r9.y = r9.z ? 0 : r9.y;
  r9.y = -r9.x * r9.y + 1;
  r9.y = r9.y / r9.x;
  r9.y = cb8[37].w + -r9.y;
  r9.y = 1 + r9.y;
  r1.w = saturate(r9.y * cb8[38].x + r1.w);
  r7.w = cb8[38].y * r7.w;
  r7.w = exp2(r7.w);
  r7.w = 1 + -r7.w;
  r2.x = r2.x ? 1 : r7.w;
  r7.w = saturate(r11.w + r8.w);
  r2.x = r7.w * r2.x;
  r2.x = r9.x * r2.x;
  r9.w = saturate(r2.x * r1.w);
  r13.xyz = saturate(r13.xyz);
  r1.w = saturate(cb8[30].y);
  r2.x = saturate(cb8[32].x);
  r1.z = r1.z * cb0[139].y + cb0[139].x;
  r7.w = 0.0799999982 * r2.x;
  r10.xyz = -r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r13.xyz;
  r10.xyz = r1.www * r10.xyz + r7.www;
  r11.xyz = ddx_coarse(v2.xyz);
  r12.xyz = ddy_coarse(v2.xyz);
  r2.x = dot(r11.xyz, r11.xyz);
  r7.w = dot(r12.xyz, r12.xyz);
  r2.x = max(r7.w, r2.x);
  r2.x = log2(r2.x);
  r2.x = cb0[183].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = saturate(r2.x * cb0[183].x + cb0[183].y);
  r1.z = max(r2.x, r1.z);
  r11.xyz = -r13.xyz * r1.www + r13.xyz;
  r11.xyz = r11.xyz * cb0[136].www + cb0[136].xyz;
  r10.xyz = r10.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r12.xyz = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r11.xyz = r1.www ? r12.xyz : r11.xyz;
  r10.xyz = r1.www ? float3(0,0,0) : r10.xyz;
  r1.w = cmp(0 < cb0[215].x);
  r12.xyz = r6.zwz * r6.zwy;
  r14.yw = r6.ww * r6.zy;
  r2.x = r6.y * r6.y + -r12.x;
  r15.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r6.zwy;
  r14.xz = r12.zy * float2(1,3) + float2(0,-1);
  r12.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r14.xyzw;
  r2.x = 0.429042608 * r2.x;
  r15.x = 0.886227548;
  r7.w = dot(cb3[6].xyzw, r15.xyzw);
  r8.w = dot(cb3[9].xyzw, r12.xyzw);
  r7.w = r8.w + r7.w;
  r14.x = cb3[12].x * r2.x + r7.w;
  r7.w = dot(cb3[7].xyzw, r15.xyzw);
  r8.w = dot(cb3[10].xyzw, r12.xyzw);
  r7.w = r8.w + r7.w;
  r14.y = cb3[12].y * r2.x + r7.w;
  r7.w = dot(cb3[8].xyzw, r15.xyzw);
  r8.w = dot(cb3[11].xyzw, r12.xyzw);
  r7.w = r8.w + r7.w;
  r14.z = cb3[12].z * r2.x + r7.w;
  r12.xyz = max(float3(0,0,0), r14.xyz);
  r12.xyz = r1.www ? r12.xyz : 0;
  r2.x = cmp(cb0[186].y != 0.000000);
  if (r2.x != 0) {
    r6.x = 1;
    r14.xyzw = r1.wwww ? cb3[4].wxyz : r6.xyzw;
    r1.w = 1 + -r14.x;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.xyz * r2.yyy + -r14.yzw;
    r16.xyz = r1.www * r0.xyz + r14.yzw;
    r0.x = saturate(dot(r14.yzw, r6.yzw));
    r0.y = 1 + -r0.x;
    r14.y = r1.w * r0.y + r0.x;
  } else {
    r16.xyz = r6.yzw;
    r14.xy = float2(1,1);
  }
  r17.x = t0[0].val[0/4];
  r17.y = t0[0].val[0/4+1];
  r17.z = t0[0].val[0/4+2];
  r17.w = t0[0].val[0/4+3];
  r16.w = 1;
  r0.x = dot(r17.xyzw, r16.xyzw);
  r17.x = t0[1].val[0/4];
  r17.y = t0[1].val[0/4+1];
  r17.z = t0[1].val[0/4+2];
  r17.w = t0[1].val[0/4+3];
  r0.y = dot(r17.xyzw, r16.xyzw);
  r17.x = t0[2].val[0/4];
  r17.y = t0[2].val[0/4+1];
  r17.z = t0[2].val[0/4+2];
  r17.w = t0[2].val[0/4+3];
  r0.z = dot(r17.xyzw, r16.xyzw);
  r17.xyzw = r16.xyzz * r16.yzzx;
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
  r1.w = r16.y * r16.y;
  r1.w = r16.x * r16.x + -r1.w;
  r16.x = t0[6].val[0/4];
  r16.y = t0[6].val[0/4+1];
  r16.z = t0[6].val[0/4+2];
  r0.xyz = r18.xyz + r0.xyz;
  r0.xyz = r16.xyz * r1.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.w = r14.x * r14.y;
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r12.xyz * cb0[157].xyz + r0.xyz;
  r1.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r11.xyz;
  r12.xyz = r13.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r12.xyz = r13.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r12.xyz;
  r12.xyz = r13.xyz * float3(2.75519991,2.75519991,2.75519991) + r12.xyz;
  r12.xyz = float3(1.33200002,1.33200002,1.33200002) + r12.xyz;
  r12.xyz = max(float3(1,1,1), r12.xyz);
  r1.xy = cb0[131].zw * r1.xy;
  r1.xy = (uint2)r1.xy;
  r2.x = v4.w * cb2[3].x + cb2[3].y;
  r2.x = log2(r2.x);
  r2.x = cb2[3].z * r2.x;
  r2.x = max(0, r2.x);
  r2.x = (uint)r2.x;
  r2.y = asint(cb2[1].z) + -1;
  r2.x = min((uint)r2.x, (uint)r2.y);
  r1.xy = (uint2)r1.xy >> asuint(cb2[2].xx);
  r1.y = mad((int)r2.x, asint(cb2[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb2[1].x), (int)r1.x);
  r1.y = r2.z + r2.z;
  r13.yzw = r1.yyy * r6.yzw + -r5.xyz;
  r1.y = min(1, r5.w);
  r1.x = (int)r1.x + asint(cb2[0].w);
  r2.x = (uint)r1.x << 1;
  r2.x = t2.Load(r2.x).x;
  r2.x = min(asuint(cb2[0].y), (uint)r2.x);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t2.Load(r1.x).x;
  r2.y = max(0.00100000005, r1.z);
  r2.y = log2(r2.y);
  r2.y = -r2.y * 1.20000005 + 1;
  r2.z = -1 + cb0[195].z;
  r2.z = r2.z + -r2.y;
  r13.x = 0;
  r5.xyzw = float4(0,0,0,1);
  r6.x = 0;
  r7.w = 1;
  r8.w = 0;
  while (true) {
    r10.w = cmp((uint)r8.w >= (uint)r2.x);
    if (r10.w != 0) break;
    r10.w = cmp(r5.w < 0.00100000005);
    if (r10.w != 0) {
      break;
    }
    r10.w = (int)r1.x + (int)r8.w;
    r10.w = t3.Load(r10.w).x;
    r14.xyz = -cb5[r10.w+0].xyz + r4.xyz;
    r11.w = dot(r14.xyz, r14.xyz);
    r12.w = sqrt(r11.w);
    r14.w = cmp(r12.w < cb5[r10.w+0].w);
    if (r14.w != 0) {
      r14.w = cmp(0 < cb5[r10.w+341].z);
      if (r14.w != 0) {
        r14.w = (uint)r10.w << 2;
        r16.xyz = cb5[r14.w+1024].xyz * r4.yyy;
        r16.xyz = r4.xxx * cb5[r14.w+1023].xyz + r16.xyz;
        r16.xyz = r4.zzz * cb5[r14.w+1025].xyz + r16.xyz;
        r16.xyz = cb5[r14.w+1026].xyz + r16.xyz;
        r17.xyz = cb5[r14.w+1024].xyz * r13.zzz;
        r17.xyz = r13.yyy * cb5[r14.w+1023].xyz + r17.xyz;
        r17.xyz = r13.www * cb5[r14.w+1025].xyz + r17.xyz;
        r17.xyz = rcp(r17.xyz);
        r18.xyz = -r16.xyz * r17.xyz + -r17.xyz;
        r17.xyz = -r16.xyz * r17.xyz + r17.xyz;
        r17.xyz = max(r18.xyz, r17.xyz);
        r14.w = min(r17.y, r17.z);
        r14.w = min(r17.x, r14.w);
        r17.xyz = r14.www * r13.yzw + r4.xyz;
        r18.xyz = cb5[r10.w+682].xyz + cb5[r10.w+0].xyz;
        r17.xyz = -r18.xyz + r17.xyz;
        r14.w = cb5[r10.w+2387].w * 0.699999988;
        r18.xyz = -cb5[r10.w+2387].www * float3(0.5,0.5,0.5) + cb5[r10.w+2387].xyz;
        r19.xyz = cb5[r10.w+2387].xyz * r16.xyz;
        r20.xyz = cmp(r19.xyz < -r18.xyz);
        r21.xyz = r16.xyz * cb5[r10.w+2387].xyz + r18.xyz;
        r21.xyz = abs(r21.xyz);
        r20.xyz = r20.xyz ? r21.xyz : 0;
        r19.xyz = cmp(r18.xyz < r19.xyz);
        r16.xyz = r16.xyz * cb5[r10.w+2387].xyz + -r18.xyz;
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
        r12.w = saturate(r12.w / cb5[r10.w+0].w);
        r14.w = dot(r13.yzw, r14.xyz);
        r11.w = -cb5[r10.w+0].w * cb5[r10.w+0].w + r11.w;
        r11.w = r14.w * r14.w + -r11.w;
        r18.x = cmp(r11.w >= 0);
        r11.w = sqrt(r11.w);
        r11.w = r11.w + -r14.w;
        r14.xyz = r11.www * r13.yzw + r14.xyz;
        r14.yzw = -cb5[r10.w+682].xyz + r14.xyz;
        r11.w = r12.w * 2.5 + -1.5;
        r11.w = max(0, r11.w);
        r12.w = r11.w * r11.w;
        r11.w = -r11.w * 2 + 3;
        r14.x = -r12.w * r11.w + 1;
        r16.xyzw = r18.xxxx ? r14.xyzw : r13.xyzw;
        r17.xyz = r16.yzw;
      }
      r17.w = cb5[r10.w+341].y;
      r14.xyzw = t5.SampleLevel(s3_s, r17.xyzw, r2.z).xyzw;
      r14.xyz = cb5[r10.w+341].xxx * r14.xyz;
      r14.xyz = r14.xyz * r16.xxx;
      r5.xyz = r14.xyz * r5.www + r5.xyz;
      r11.w = -r14.w * r16.x + 1;
      r5.w = r11.w * r5.w;
      r10.w = cb5[r10.w+682].w * r16.x;
      r6.x = r10.w * r7.w + r6.x;
      r10.w = 1 + -r16.x;
      r7.w = r10.w * r7.w;
    }
    r8.w = (int)r8.w + 1;
  }
  r14.xyz = cb0[157].xyz * r5.xyz;
  r1.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r14.w = r6.x * r1.x;
  r1.x = cmp(0 < cb2[116].y);
  if (r1.x != 0) {
    r1.x = cb2[116].x + -r2.y;
    r1.x = -1 + r1.x;
    r2.xyz = t4.SampleLevel(s2_s, r13.yzw, r1.x).xyz;
    r1.x = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r1.x = cb2[117].x * r1.x;
    r2.xyz = cb0[187].xyz * r2.xyz;
    r5.x = cmp(cb2[116].z < 1);
    r16.xyz = r5.www * r2.xyz + r14.xyz;
    r16.w = r1.x * r7.w + r14.w;
    r2.xyz = r5.xxx ? float3(0,0,0) : r2.xyz;
    r14.xyzw = r5.xxxx ? r16.xyzw : r14.xyzw;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r1.x = saturate(r1.z * cb0[197].x + cb0[197].y);
  r5.x = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r5.x * r1.x;
  r5.x = max(9.99999975e-005, r14.w);
  r1.w = r1.w / r5.x;
  r1.w = min(cb0[197].z, r1.w);
  r1.w = -1 + r1.w;
  r1.x = r1.x * r1.w + 1;
  r2.xyz = r5.www * r2.xyz;
  r2.xyz = r14.xyz * r1.xxx + r2.xyz;
  r1.x = cmp(cb0[145].x == 0.000000);
  if (r1.x != 0) {
    r1.x = asuint(cb0[144].y);
    r1.xw = r1.xx * float2(32.6650009,11.8149996) + v4.xy;
    r1.x = dot(r1.xw, float2(0.0671105608,0.00583714992));
    r1.x = frac(r1.x);
    r1.x = 52.9829178 * r1.x;
    r1.x = frac(r1.x);
    r1.x = -0.5 + r1.x;
    r5.xyzw = cb0[1].xyzw * r3.yyyy;
    r5.xyzw = r3.xxxx * cb0[0].xyzw + r5.xyzw;
    r5.xyzw = r3.zzzz * cb0[2].xyzw + r5.xyzw;
    r5.xyzw = cb0[3].xyzw + r5.xyzw;
    r13.xyz = r13.yzw * r2.www + r3.xyz;
    r14.xyzw = cb0[1].xyzw * r13.yyyy;
    r14.xyzw = r13.xxxx * cb0[0].xyzw + r14.xyzw;
    r13.xyzw = r13.zzzz * cb0[2].xyzw + r14.xyzw;
    r13.xyzw = cb0[3].xyzw + r13.xyzw;
    r1.w = rcp(r5.w);
    r14.xyz = r5.xyz * r1.www;
    r1.w = rcp(r13.w);
    r5.xy = r2.ww * cb0[30].zw + r5.zw;
    r2.w = rcp(r5.y);
    r5.yzw = r13.xyz * r1.www + -r14.xyz;
    r1.w = dot(r5.yz, r5.yz);
    r1.w = sqrt(r1.w);
    r6.x = 0.5 * r1.w;
    r13.xy = r14.xy * r6.xx + r5.yz;
    r13.xy = -r1.ww * float2(0.5,0.5) + abs(r13.xy);
    r13.xy = max(float2(0,0), r13.xy);
    r13.xy = r13.xy / abs(r5.yz);
    r13.xy = float2(1,1) + -r13.xy;
    r1.w = min(r13.x, r13.y);
    r1.w = r1.w / r6.x;
    r5.yzw = r5.yzw * r1.www;
    r1.w = -r5.x * r2.w + r14.z;
    r1.w = 4 * r1.w;
    r1.w = max(abs(r5.w), r1.w);
    r13.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r14.xy = cb2[176].xy * r13.xy;
    r5.yz = cb2[176].xy * r5.yz;
    r2.w = 0.0833333358 * r1.w;
    r5.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r5.yzw;
    r13.xyz = r5.xyz * r1.xxx + r14.xyz;
    r1.x = 1;
    r16.x = 0;
    r17.x = 0;
    r14.xyz = float3(0,0,0);
    r5.w = 0;
    r6.x = 0;
    r7.w = 0;
    r8.w = 0;
    r10.w = 0;
    while (true) {
      r11.w = cmp((uint)r10.w >= 12);
      if (r11.w != 0) break;
      r11.w = (uint)r10.w;
      r18.xyzw = float4(1,2,3,4) + r11.wwww;
      r19.xyzw = r18.xxxy * r5.xyzz + r13.xyzz;
      r20.xyzw = r18.yyzz * r5.xyxy + r13.xyxy;
      r18.xyzw = r18.wwzw * r5.xyzz + r13.xyzz;
      r11.w = r1.z * 0.666666687 + r1.x;
      r12.w = r1.z * 0.666666687 + r11.w;
      r21.x = t10.SampleLevel(s6_s, r19.xy, r1.x).x;
      r21.y = t10.SampleLevel(s6_s, r20.xy, r1.x).x;
      r21.z = t10.SampleLevel(s6_s, r20.zw, r11.w).x;
      r21.w = t10.SampleLevel(s6_s, r18.xy, r11.w).x;
      r18.xy = r19.zw;
      r18.xyzw = r18.xyzw + -r21.xyzw;
      r19.xyzw = r1.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r18.xyzw;
      r19.xyzw = cmp(abs(r19.xyzw) < r2.wwww);
      r20.xy = (int2)r19.zw | (int2)r19.xy;
      r11.w = (int)r20.y | (int)r20.x;
      if (r11.w != 0) {
        r17.x = r18.x;
        r14.xyz = r18.yzw;
        r5.w = r19.x;
        r6.x = r19.y;
        r7.w = r19.z;
        r8.w = -1;
        break;
      }
      r16.x = r18.w;
      r10.w = (int)r10.w + 4;
      r1.x = r12.w;
      r17.x = r18.x;
      r14.xyz = r18.yzw;
      r5.w = r19.x;
      r6.x = r19.y;
      r7.w = r19.z;
      r8.w = r11.w;
    }
    if (r8.w != 0) {
      r14.w = 2;
      r18.xy = r14.yz;
      r18.z = 3;
      r14.yzw = r7.www ? r14.xyw : r18.xyz;
      r17.y = r14.x;
      r17.z = 1;
      r14.xyz = r6.xxx ? r17.xyz : r14.yzw;
      r16.y = r17.x;
      r16.z = 0;
      r14.xyz = r5.www ? r16.xyz : r14.xyz;
      r1.x = (uint)r10.w;
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
      r2.xyz = r2.xyz * r1.xxx + r5.xyz;
    }
  }
  r5.xyzw = r1.zzzz * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r1.x = r5.x * r5.x;
  r1.y = -9.27999973 * r1.y;
  r1.y = exp2(r1.y);
  r1.x = min(r1.x, r1.y);
  r1.x = r1.x * r5.x + r5.y;
  r1.xy = r1.xx * float2(-1.03999996,1.03999996) + r5.zw;
  r1.w = 50 * r10.y;
  r1.w = saturate(r1.w);
  r1.y = r1.w * r1.y;
  r1.xyw = r10.xyz * r1.xxx + r1.yyy;
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
    r4.w = dot(cb2[122].xyz, r6.yzw);
    r4.w = saturate(r4.w * cb2[130].x + cb2[130].y);
    r1.z = -0.200000003 + r1.z;
    r1.z = saturate(10 * r1.z);
    r1.z = 1 + -r1.z;
    r2.w = r4.w * r2.w;
    r1.z = r2.w * r1.z;
    r2.w = cmp(0 < r1.z);
    if (r2.w != 0) {
      r0.w = rsqrt(r0.w);
      r5.xyz = r7.xyz * r0.www;
      r0.w = dot(r5.xyz, -cb2[122].xyz);
      r0.w = r0.w + r0.w;
      r5.xyz = cb2[122].xyz * r0.www + r5.xyz;
      r7.xyz = cb2[127].xyz * r6.zzz;
      r6.xyz = r6.yyy * cb2[126].xyz + r7.xyz;
      r6.xyz = r6.www * cb2[128].xyz + r6.xyz;
      r0.w = dot(r5.xyz, r6.xyz);
      r0.w = r0.w + r0.w;
      r5.xyz = r6.xyz * -r0.www + r5.xyz;
      r5.xyz = r5.xyz * cb2[129].zzz + r4.xyz;
      r5.xyz = cb0[70].xyz + r5.xyz;
      r6.xyz = cb0[13].xyz * r5.yyy;
      r5.xyw = r5.xxx * cb0[12].xyz + r6.xyz;
      r5.xyz = r5.zzz * cb0[14].xyz + r5.xyw;
      r5.xyz = cb0[15].xyz + r5.xyz;
      r0.w = asuint(cb0[197].w) << 2;
      r6.xyz = cb2[r0.w+132].xyw * r5.yyy;
      r5.xyw = r5.xxx * cb2[r0.w+131].xyw + r6.xyz;
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
    r2.xyz = r0.www * r2.xyz + r5.xyz;
  }
  r1.xyz = r2.xyz * r1.xyw;
  r2.xyz = r10.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r10.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r10.xyz * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
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
  r6.x = exp2(-r5.z);
  r6.x = 1 + -r6.x;
  r6.x = r6.x / r5.z;
  r6.y = -r5.z * 0.240226507 + 0.693147182;
  r5.z = cmp(0.00999999978 < abs(r5.z));
  r5.z = r5.z ? r6.x : r6.y;
  r5.y = cb2[144].y * r5.y;
  r5.y = max(-127, r5.y);
  r6.x = exp2(-r5.y);
  r6.x = 1 + -r6.x;
  r6.x = r6.x / r5.y;
  r6.y = -r5.y * 0.240226507 + 0.693147182;
  r5.y = cmp(0.00999999978 < abs(r5.y));
  r5.y = r5.y ? r6.x : r6.y;
  r2.w = r5.y * r2.w;
  r2.w = r5.w * r5.z + r2.w;
  r5.y = r2.w * r1.w;
  r5.zw = cmp(float2(0,0) < cb2[146].zw);
  if (r5.z != 0) {
    r5.z = saturate(r4.w * cb2[150].x + cb2[150].y);
    r6.xy = float2(1,-1) * cb2[149].yx;
    r6.x = dot(r3.xy, r6.xy);
    r6.y = dot(r3.xy, cb2[149].xy);
    r6.z = r3.w;
    r7.xyz = t7.SampleLevel(s4_s, r6.xyz, 0).xyz;
    r6.xyz = t7.SampleLevel(s4_s, r6.xyz, cb2[150].z).xyz;
    r7.xyz = r7.xyz + -r6.xyz;
    r6.xyz = r5.zzz * r7.xyz + r6.xyz;
    r6.xyz = cb2[145].xyz * r6.xyz;
  } else {
    r6.xyz = cb2[145].xyz;
  }
  r5.z = cmp(cb2[147].w >= 0);
  r6.w = cmp(cb2[146].z == 0.000000);
  r5.z = r5.z ? r6.w : 0;
  if (r5.z != 0) {
    r7.xyz = r5.xxx * r3.xyw;
    r3.w = saturate(dot(r7.xyz, cb2[147].xyz));
    r3.w = log2(r3.w);
    r3.w = cb2[148].w * r3.w;
    r3.w = exp2(r3.w);
    r7.xyz = cb2[148].xyz * r3.www;
    r1.w = -cb2[147].w + r1.w;
    r1.w = max(0, r1.w);
    r1.w = r2.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r7.xyz = r7.xyz * r1.www;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r5.y);
  r1.w = min(1, r1.w);
  r7.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r4.w);
  r1.w = r1.w ? r5.w : 0;
  r5.xyzw = r1.wwww ? float4(1,0,0,0) : r7.wxyz;
  r1.w = 1 + -r5.x;
  r5.yzw = r6.xyz * r1.www + r5.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r4.yyy;
    r6.xyz = r4.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r4.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r6.xy = r6.xy / r6.zz;
    r7.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r6.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r7.z = cb0[208].z * r1.w;
    r6.xyzw = t8.SampleLevel(s0_s, r7.xyz, 0).xyzw;
    r5.yzw = r5.yzw * r6.www + r6.xyz;
    r5.x = r6.w * r5.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r4.yyy;
    r6.xyz = r4.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r4.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r1.w = cmp(0 != cb0[184].x);
    r7.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r6.xy = r6.xy / r6.zz;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r7.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r7.xyz;
    r2.w = dot(r7.xyz, r7.xyz);
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
    r7.xyz = r7.xyz * r2.www;
    r2.w = -r7.z * r7.z + 1;
    r2.w = sqrt(r2.w);
    r14.y = r7.z * 0.5 + 0.5;
    r6.zw = r7.xy / r2.ww;
    r2.w = 1 + -abs(r6.z);
    r2.w = sqrt(r2.w);
    r4.w = abs(r6.z) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r6.z) + -0.212114394;
    r4.w = r4.w * abs(r6.z) + 1.57072878;
    r7.x = r4.w * r2.w;
    r7.x = r7.x * -2 + 3.14159274;
    r6.z = cmp(r6.z < -r6.z);
    r6.z = r6.z ? r7.x : 0;
    r2.w = r4.w * r2.w + r6.z;
    r4.w = cmp(r6.w < 0);
    r6.z = 6.28318548 + -r2.w;
    r2.w = r4.w ? r6.z : r2.w;
    r14.x = 0.159154937 * r2.w;
    r6.zw = cb0[180].zw * float2(0.5,0.5) + r14.xy;
    r7.xy = float2(1,1) + cb0[180].xy;
    r7.xy = cb0[180].xy / r7.xy;
    r6.zw = r7.xy * r6.zw;
    r13.xy = r1.ww ? r6.zw : r6.xy;
    r6.xyzw = t1.SampleLevel(s1_s, r13.xyz, 0).xyzw;
    r6.xyz = r6.xyz * r3.www;
    r1.w = 1 + -r6.w;
    r1.w = -r3.w * r1.w + 1;
    r6.xyz = cb0[135].zzz * r6.xyz;
    r5.yzw = r6.xyz * r5.xxx + r5.yzw;
    r5.x = r5.x * r1.w;
  }
  r6.xyz = -cb0[148].xyz + r4.xyz;
  r7.xyz = cb0[150].xyz * r6.xyz;
  r13.xyz = -cb0[149].xyz + r4.xyz;
  r13.xyz = cb0[151].xyz * r13.xyz;
  r6.xyz = r6.xyz * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r6.xyz = float3(0.5,0.5,0.5) + -abs(r6.xyz);
  r6.xyz = saturate(float3(6,6,6) * r6.xyz);
  r1.w = r6.x * r6.y;
  r1.w = r1.w * r6.z;
  r6.xyzw = t12.SampleLevel(s0_s, r7.xyz, 0).xyzw;
  r14.xyzw = t13.SampleLevel(s0_s, r13.xyz, 0).xyzw;
  r6.xyzw = -r14.xyzw + r6.xyzw;
  r6.xyzw = r1.wwww * r6.xyzw + r14.xyzw;
  r7.xyz = t14.SampleLevel(s0_s, r7.xyz, 0).xyz;
  r13.xyz = t15.SampleLevel(s0_s, r13.xyz, 0).xyz;
  r7.xyz = -r13.xyz + r7.xyz;
  r7.xyz = r1.www * r7.xyz + r13.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r13.xyz = r6.xyz / r1.www;
  r14.yzw = r13.xxx * r7.xyz;
  r16.yzw = r13.yyy * r7.xyz;
  r7.yzw = r13.zzz * r7.xyz;
  r14.x = r6.x;
  r13.x = dot(r14.xyzw, r15.xyzw);
  r16.x = r6.y;
  r13.y = dot(r16.xyzw, r15.xyzw);
  r7.x = r6.z;
  r13.z = dot(r7.xyzw, r15.xyzw);
  r6.xyz = max(float3(0,0,0), r13.xyz);
  r1.w = cmp(0 < cb4[6].w);
  if (r1.w != 0) {
    r7.xyzw = cb4[1].xyzw * r4.yyyy;
    r7.xyzw = r4.xxxx * cb4[0].xyzw + r7.xyzw;
    r7.xyzw = r4.zzzz * cb4[2].xyzw + r7.xyzw;
    r7.xyzw = cb4[3].xyzw + r7.xyzw;
    r7.xy = r7.xy / r7.ww;
    r13.xyzw = t16.SampleLevel(s0_s, r7.xy, 0).xyzw;
    r14.xyz = t17.SampleLevel(s0_s, r7.xy, 0).yzw;
    r15.xyz = float3(6.28318548,12.566371,18.849556) * r7.zzz;
    sincos(r15.xyz, r15.xyz, r16.xyz);
    r16.xyz = float3(1,1,1) + -r16.xyz;
    r1.w = r13.x * r7.z;
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
    r7.zw = cmp(r7.xy < cb4[4].xy);
    r7.xy = cmp(cb4[4].zw < r7.xy);
    r7.xy = (int2)r7.xy | (int2)r7.zw;
    r1.w = (int)r7.y | (int)r7.x;
    r7.xyz = cb4[6].xyz * r6.www;
    r13.xyz = float3(1,1,1) + -r13.xyz;
    r13.xyz = r1.www ? float3(0,0,0) : r13.xyz;
    r7.xyz = -r7.xyz * r13.xyz + r6.xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.xyz = r11.xyz * r7.xyz;
  } else {
    r7.xyz = r11.xyz * r6.xyz;
  }
  r1.xyz = r1.xyz * r2.xyz + r7.xyz;
  r2.xyz = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r2.xyz = r2.xyz + -r1.xyz;
  r1.xyz = cb0[145].yyy * r2.xyz + r1.xyz;
  r9.xyz = max(float3(0,0,0), r8.xyz);
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
  r0.xyz = r0.xyz * r12.xyz + r1.xyz;
  r0.xyz = r0.xyz + r9.xyz;
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