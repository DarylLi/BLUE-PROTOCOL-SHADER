// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t30 : register(t30);

Texture2D<float4> t29 : register(t29);

Texture2D<float4> t28 : register(t28);

Texture2D<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture2D<float4> t25 : register(t25);

Texture3D<float4> t24 : register(t24);

Texture3D<float4> t23 : register(t23);

Texture3D<float4> t22 : register(t22);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

TextureCube<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

TextureCubeArray<float4> t14 : register(t14);

TextureCube<float4> t13 : register(t13);

Buffer<uint4> t12 : register(t12);

Buffer<uint4> t11 : register(t11);

Texture3D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s11_s : register(s11);

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
  float4 cb7[49];
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
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
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
  r1.w = cb7[17].x * r1.z;
  r5.w = cb7[19].z * v3.y + cb7[19].w;
  r6.y = cb7[20].x * r5.w;
  r6.xz = v3.xx;
  r6.xy = cb7[2].xy * r6.xy;
  r7.xy = r6.xy / cb7[20].yy;
  r7.xy = r1.ww * cb7[19].xy + r7.xy;
  r7.z = cb7[20].z * r1.z;
  r7.zw = r7.zz * cb7[19].xy + r6.xy;
  r8.xy = t27.SampleBias(s8_s, r7.zw, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r8.xy = float2(0.200000003,0.200000003) * r8.xy;
  r8.z = cb0[142].z / cb7[20].w;
  r8.w = frac(r8.z);
  r9.xy = r8.xy * r8.ww + r7.xy;
  r9.xy = t27.SampleBias(s8_s, r9.xy, cb0[143].y).xy;
  r9.xy = r9.xy * float2(2,2) + float2(-1,-1);
  r8.w = dot(r9.xy, r9.xy);
  r8.w = 1 + -r8.w;
  r8.w = max(0, r8.w);
  r9.z = sqrt(r8.w);
  r8.z = 0.5 + r8.z;
  r8.z = frac(r8.z);
  r7.xy = r8.xy * r8.zz + r7.xy;
  r7.xy = t27.SampleBias(s8_s, r7.xy, cb0[143].y).xy;
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
  r9.xyz = cb7[21].xxx * r9.xyz + r10.xyz;
  r7.x = 1 + r9.z;
  r8.zw = r6.xy / cb7[21].yy;
  r8.zw = r1.ww * cb7[19].xy + r8.zw;
  r1.w = cb0[142].z / cb7[21].z;
  r7.y = frac(r1.w);
  r10.xy = r8.xy * r7.yy + r8.zw;
  r10.xy = t27.SampleBias(s8_s, r10.xy, cb0[143].y).xy;
  r10.xy = r10.xy * float2(2,2) + float2(-1,-1);
  r7.y = dot(r10.xy, r10.xy);
  r7.y = 1 + -r7.y;
  r7.y = max(0, r7.y);
  r10.z = sqrt(r7.y);
  r1.w = 0.5 + r1.w;
  r1.w = frac(r1.w);
  r8.xy = r8.xy * r1.ww + r8.zw;
  r8.xy = t27.SampleBias(s8_s, r8.xy, cb0[143].y).xy;
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
  r8.xyz = cb7[21].www * r8.xyz + r10.xyz;
  r9.w = 1 + r9.z;
  r8.xyz = float3(-1,-1,1) * r8.xyz;
  r1.w = dot(r9.xyw, r8.xyz);
  r8.xyz = r8.xyz * r7.xxx;
  r8.xyz = r9.xyw * r1.www + -r8.xyz;
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb7[22].xxx * r9.xyz + r8.xyz;
  r8.xyz = r8.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = rsqrt(r1.w);
  r8.xyz = r8.xyz * r1.www;
  r0.xyz = r8.yyy * r0.xyz;
  r0.xyz = r8.xxx * v0.xyz + r0.xyz;
  r0.xyz = r8.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r8.xyz = r0.xyz * r0.www;
  r9.xyz = cb6[6].xyz * cb7[23].zzz + cb7[6].xyz;
  r1.w = dot(cb6[7].xyz, r8.xyz);
  r7.x = saturate(r1.w);
  r7.x = 1 + -r7.x;
  r10.xy = float2(1,1) + -v2.wy;
  r7.y = cmp(0 >= r10.x);
  r8.w = log2(r10.x);
  r9.w = cb7[23].w * r8.w;
  r9.w = exp2(r9.w);
  r9.w = 1 + -r9.w;
  r9.w = r7.y ? 1 : r9.w;
  r10.x = cb5[2].x * cb0[142].z;
  r10.z = cb7[24].x * r10.x;
  r11.xyz = r4.xyz / cb7[25].yyy;
  r12.xy = cb7[25].zz * r11.xy;
  r13.xy = -r12.xy;
  r13.z = -r11.z;
  r11.xyzw = r10.zzzz * cb7[24].zwzw + r13.xzyz;
  r13.xyw = r4.xyz / cb7[26].xxx;
  r14.xy = t28.SampleBias(s9_s, r13.xw, cb0[143].y).xy;
  r14.xy = r14.xy * float2(2,2) + float2(-1,-1);
  r14.xy = cb7[26].yy * -r14.xy + r14.xy;
  r13.xy = t28.SampleBias(s9_s, r13.yw, cb0[143].y).xy;
  r13.xy = r13.xy * float2(2,2) + float2(-1,-1);
  r13.xy = cb7[26].yy * -r13.xy + r13.xy;
  r10.w = -cb7[27].x + cb7[26].w;
  r10.w = saturate(abs(v1.x) * r10.w + cb7[27].x);
  r13.xy = r13.xy + -r14.xy;
  r13.xy = r10.ww * r13.xy + r14.xy;
  r11.xyzw = r13.xyxy + r11.xyzw;
  r12.w = -cb7[27].y + r4.z;
  r12.w = r12.w / cb7[27].z;
  r13.w = -1 + r12.w;
  r13.w = cmp(9.99999975e-006 < abs(r13.w));
  r14.x = cmp(r12.w >= 1);
  r12.w = r14.x ? 1 : r12.w;
  r12.w = r13.w ? r12.w : 1;
  r13.w = cmp(9.99999975e-006 < abs(r12.w));
  r14.x = cmp(r12.w >= 0);
  r12.w = r14.x ? r12.w : 1;
  r12.w = r13.w ? r12.w : 1;
  r13.w = cmp(0 >= r12.w);
  r12.w = log2(r12.w);
  r12.w = cb7[27].w * r12.w;
  r12.w = exp2(r12.w);
  r12.w = min(1, r12.w);
  r12.w = 1 + -r12.w;
  r12.w = r13.w ? 1 : r12.w;
  r12.w = cb7[28].x * r12.w;
  r11.x = t29.SampleLevel(s10_s, r11.xy, r12.w).y;
  r11.y = t29.SampleLevel(s10_s, r11.zw, r12.w).y;
  r11.y = r11.y + -r11.x;
  r11.x = r10.w * r11.y + r11.x;
  r12.z = r13.z;
  r14.xyzw = r10.zzzz * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r12.xzyz;
  r13.xyzw = r14.xyzw + r13.xyxy;
  r10.z = 0.75 * r12.w;
  r11.y = t29.SampleLevel(s10_s, r13.xy, r10.z).y;
  r10.z = t29.SampleLevel(s10_s, r13.zw, r10.z).y;
  r10.z = r10.z + -r11.y;
  r10.z = r10.w * r10.z + r11.y;
  r10.z = r11.x + r10.z;
  r10.w = cmp(0 >= r10.z);
  r10.z = log2(r10.z);
  r10.z = cb7[28].y * r10.z;
  r10.z = exp2(r10.z);
  r10.y = cb7[28].z * r10.y;
  r10.y = r10.z * r10.y;
  r10.y = r10.w ? 0 : r10.y;
  r10.y = -r9.w * r10.y + 1;
  r10.y = r10.y / r9.w;
  r10.y = 1 + -r10.y;
  r10.z = v1.z * 0.5 + 0.5;
  r10.z = saturate(r10.z * cb7[28].w + cb7[29].z);
  r10.w = 1 + -r10.z;
  r11.x = dot(r8.xyz, r5.xyz);
  r11.y = max(0, r11.x);
  r11.z = 1 + -r11.y;
  r11.z = max(9.99999975e-005, abs(r11.z));
  r11.z = log2(r11.z);
  r11.w = cb7[29].w * r11.z;
  r11.w = exp2(r11.w);
  r11.w = r11.w * 0.959999979 + 0.0399999991;
  r11.w = cb7[30].x * r11.w;
  r11.w = max(9.99999975e-006, r11.w);
  r2.xy = r2.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r2.x = t18.SampleLevel(s5_s, r2.xy, 0).x;
  r2.y = r2.x * cb0[65].x + cb0[65].y;
  r2.x = r2.x * cb0[65].z + -cb0[65].w;
  r2.x = 1 / r2.x;
  r2.x = r2.y + r2.x;
  r2.y = cmp(cb0[31].w < 1);
  r12.x = r2.z * cb0[65].x + cb0[65].y;
  r2.z = r2.z * cb0[65].z + -cb0[65].w;
  r2.z = 1 / r2.z;
  r2.z = r12.x + r2.z;
  r2.y = r2.y ? r2.w : r2.z;
  r2.x = r2.x + -r2.y;
  r2.y = saturate(r2.x / r11.w);
  r2.y = 1 + -r2.y;
  r2.y = -r2.y * cb7[30].y + 1;
  r12.xy = r4.xy / cb7[31].yy;
  r12.zw = cb0[142].zz * cb7[30].ww + r12.xy;
  r2.z = t29.SampleBias(s10_s, r12.zw, cb0[143].y).x;
  r12.xy = cb0[142].zz * cb7[31].ww + r12.xy;
  r11.w = t29.SampleBias(s10_s, r12.xy, cb0[143].y).x;
  r2.z = r11.w * r2.z;
  r2.z = cb7[32].x * r2.z;
  r11.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb7[32].y * r2.z;
  r2.z = exp2(r2.z);
  r2.z = r11.w ? 0 : r2.z;
  r2.y = r2.y / r2.z;
  r2.y = cb7[32].z + -r2.y;
  r2.y = 1 + r2.y;
  r2.y = 1 + -r2.y;
  r2.z = t29.SampleBias(s10_s, r7.zw, cb0[143].y).x;
  r7.z = 1 + -r2.z;
  r7.z = r7.z + r7.z;
  r1.z = cb7[32].w * r1.z;
  r6.xy = r1.zz * cb7[19].xy + r6.xy;
  r6.xy = float2(0.5,0.5) + r6.xy;
  r1.z = t29.SampleBias(s10_s, r6.xy, cb0[143].y).x;
  r6.x = 1 + -r1.z;
  r6.x = -r7.z * r6.x + 1;
  r1.z = dot(r2.zz, r1.zz);
  r2.z = cmp(r2.z >= 0.5);
  r1.z = r2.z ? r6.x : r1.z;
  r2.z = cb7[33].x * r10.x;
  r2.z = 6.28318548 * r2.z;
  r2.z = sin(r2.z);
  r2.z = r2.z * 0.5 + 0.5;
  r2.z = r2.z * cb7[33].y + cb7[33].z;
  r6.x = -r2.z + r1.z;
  r6.x = cmp(9.99999975e-006 < abs(r6.x));
  r6.y = cmp(r1.z >= r2.z);
  r6.y = r6.y ? 1.000000 : 0;
  r6.x = r6.x ? r6.y : 1;
  r2.z = cb7[33].w + r2.z;
  r6.y = -r2.z + r1.z;
  r6.y = cmp(9.99999975e-006 < abs(r6.y));
  r1.z = cmp(r1.z >= r2.z);
  r2.z = cb7[34].x * r6.x;
  r1.z = r1.z ? 0 : r2.z;
  r1.z = r6.y ? r1.z : 0;
  r1.z = r2.y / r1.z;
  r1.z = 1 + -r1.z;
  r2.y = saturate(r2.x / cb7[34].z);
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb7[34].w * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r1.z = saturate(r2.y * r1.z);
  r2.z = cmp(0 >= r2.y);
  r2.y = rsqrt(r2.y);
  r2.y = 1 / r2.y;
  r2.y = cb7[35].x * r2.y;
  r1.z = r2.y * r1.z;
  r1.z = r2.z ? 0 : r1.z;
  r2.y = cb7[35].y * r11.z;
  r2.y = exp2(r2.y);
  r2.y = r2.y * cb7[35].w + cb7[35].z;
  r2.x = saturate(r2.x / cb7[36].y);
  r2.x = cb7[36].z * r2.x;
  r2.z = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb7[36].w * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.z ? 0 : r2.x;
  r2.x = saturate(r2.y * r2.x);
  r12.xyz = -cb7[11].xyz + cb7[10].xyz;
  r12.xyz = r2.xxx * r12.xyz + cb7[11].xyz;
  r2.y = dot(r12.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = cb7[37].x * r8.w;
  r2.z = exp2(r2.z);
  r2.z = 1 + -r2.z;
  r2.z = r7.y ? 1 : r2.z;
  r2.x = saturate(r2.x + r1.z);
  r6.x = r2.z * r2.x;
  r2.x = -r2.z * r2.x + 1;
  r7.yzw = r2.yyy + -r12.xyz;
  r2.xyz = r2.xxx * r7.yzw + r12.xyz;
  r2.xyz = r2.xyz + r1.zzz;
  r2.xyz = r10.yyy * r10.www + r2.xyz;
  r7.yzw = -r2.xyz * cb7[37].zzz + r2.xyz;
  r7.yzw = cb6[6].xyz * r7.yzw;
  r7.yzw = r7.yzw * r1.www;
  r1.z = -cb7[20].x * r5.w + 1;
  r1.w = -cb7[37].w + r4.z;
  r1.w = abs(r1.w) / cb7[38].x;
  r1.w = -r1.w * cb7[38].y + 1;
  r6.w = -r1.z * r1.w + 1;
  r1.zw = r6.zw * cb7[13].xy + float2(0.200000003,0.200000003);
  r6.y = cb7[39].x * r10.x;
  r10.xw = cb7[14].xy * r6.yy;
  r1.zw = r10.xw * float2(0.699999988,0.699999988) + r1.zw;
  r6.y = t30.SampleBias(s11_s, r1.zw, cb0[143].y).x;
  r12.y = r6.y * 2 + -1;
  r12.x = 0;
  r11.zw = cb7[40].xx * r12.xy;
  r6.y = frac(cb0[142].z);
  r12.xy = r11.zw * r6.yy + r1.zw;
  r12.xy = t30.SampleBias(s11_s, r12.xy, cb0[143].y).xy;
  r12.xy = r12.xy * float2(2,2) + float2(-1,-1);
  r8.w = dot(r12.xy, r12.xy);
  r8.w = 1 + -r8.w;
  r8.w = max(0, r8.w);
  r12.z = sqrt(r8.w);
  r8.w = 0.5 + cb0[142].z;
  r8.w = frac(r8.w);
  r1.zw = r11.zw * r8.ww + r1.zw;
  r1.zw = t30.SampleBias(s11_s, r1.zw, cb0[143].y).xy;
  r13.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r13.xy, r13.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r13.z = sqrt(r1.z);
  r1.z = r8.w + r8.w;
  r1.w = max(1, r1.z);
  r1.w = -1 + r1.w;
  r1.w = r1.w + r1.w;
  r1.zw = min(float2(1,1), r1.zw);
  r1.w = 1 + -r1.w;
  r1.z = r1.z + r1.z;
  r1.z = min(1, r1.z);
  r1.z = r1.w * r1.z;
  r13.xyz = r13.xyz + -r12.xyz;
  r12.xyz = r1.zzz * r13.xyz + r12.xyz;
  r13.xyz = r12.xyz + r12.xyz;
  r12.xzw = -r12.xyz * float3(2,2,2) + float3(0,0,1);
  r13.xyz = cb7[40].yyy * r12.xzw + r13.xyz;
  r1.w = 1 + r13.z;
  r6.zw = r6.zw * cb7[12].xy + r10.xw;
  r10.xw = r11.zw * r6.yy + r6.zw;
  r10.xw = t30.SampleBias(s11_s, r10.xw, cb0[143].y).xy;
  r14.xy = r10.xw * float2(2,2) + float2(-1,-1);
  r6.y = dot(r14.xy, r14.xy);
  r6.y = 1 + -r6.y;
  r6.y = max(0, r6.y);
  r14.z = sqrt(r6.y);
  r6.yz = r11.zw * r8.ww + r6.zw;
  r6.yz = t30.SampleBias(s11_s, r6.yz, cb0[143].y).xy;
  r15.xy = r6.yz * float2(2,2) + float2(-1,-1);
  r6.y = dot(r15.xy, r15.xy);
  r6.y = 1 + -r6.y;
  r6.y = max(0, r6.y);
  r15.z = sqrt(r6.y);
  r6.yzw = r15.xyz + -r14.xyz;
  r6.yzw = r1.zzz * r6.yzw + r14.xyz;
  r12.xzw = r6.yzw + r6.yzw;
  r14.xyz = -r6.yzw * float3(2,2,2) + float3(0,0,1);
  r12.xzw = cb7[40].zzz * r14.xyz + r12.xzw;
  r13.w = 1 + r13.z;
  r12.xzw = float3(-1,-1,1) * r12.xzw;
  r1.z = dot(r13.xyw, r12.xzw);
  r12.xzw = r12.xzw * r1.www;
  r12.xzw = r13.xyw * r1.zzz + -r12.xzw;
  r1.z = dot(r12.xzw, r12.xzw);
  r1.z = sqrt(r1.z);
  r12.xzw = r12.xzw / r1.zzz;
  r1.z = saturate(dot(r12.xzw, cb6[7].xyz));
  r13.xyz = cb0[67].xyz + -r4.xyz;
  r1.w = dot(r13.xyz, r13.xyz);
  r1.w = sqrt(r1.w);
  r13.xyz = r13.xyz / r1.www;
  r13.xyz = cb6[7].xyz + r13.xyz;
  r1.w = dot(r13.xyz, r13.xyz);
  r1.w = sqrt(r1.w);
  r13.xyz = r13.xyz / r1.www;
  r1.w = saturate(dot(r13.xyz, r12.xzw));
  r6.z = 11 * cb7[41].x;
  r6.z = exp2(r6.z);
  r6.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = r6.z * r1.w;
  r1.w = exp2(r1.w);
  r1.z = r1.z * r1.w;
  r1.z = cb7[41].y * r1.z;
  r12.xzw = cb6[5].xyz * r1.zzz;
  r12.xzw = r6.www ? float3(0,0,0) : r12.xzw;
  r7.yzw = r7.yzw * float3(0.318309844,0.318309844,0.318309844) + r12.xzw;
  r1.z = r6.y + -r12.y;
  r1.z = -0.5 + r1.z;
  r1.z = dot(r1.zz, cb7[42].yy);
  r1.z = v3.y + r1.z;
  r1.z = r1.z * cb7[42].w + -cb7[42].w;
  r1.z = saturate(cb7[43].z + r1.z);
  r1.w = cb7[44].y * r1.z;
  r1.z = -cb7[44].y * r1.z + 1;
  r1.z = cb7[44].w * r1.z + r1.w;
  r6.yzw = r1.zzz * -r7.yzw + r7.yzw;
  r6.yzw = r9.xyz * r7.xxx + r6.yzw;
  r7.xyz = cb7[15].xyz + -r6.yzw;
  r6.yzw = cb7[45].xxx * r7.xyz + r6.yzw;
  r7.xyz = -cb0[67].xyz + r4.xyz;
  r1.z = dot(r7.xyz, r7.xyz);
  r1.w = sqrt(r1.z);
  r1.w = r1.w / cb7[45].w;
  r7.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb7[46].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r8.w = cb7[46].y + -cb7[46].z;
  r1.w = r8.w * r1.w;
  r1.w = r7.w ? 0 : r1.w;
  r1.w = saturate(cb7[46].z + r1.w);
  r7.w = saturate(cb7[47].y * r5.w);
  r5.w = 1 + -r5.w;
  r5.w = saturate(cb7[48].x * r5.w);
  r5.w = r7.w * r5.w;
  r7.w = cb7[48].y + r10.y;
  r7.w = saturate(r7.w * cb7[48].z + r10.z);
  r6.x = r9.w * r6.x;
  r6.x = r7.w * r6.x;
  r9.w = saturate(r6.x * r5.w);
  r2.xyz = saturate(r2.xyz);
  r5.w = saturate(cb7[37].z);
  r6.x = saturate(cb7[45].z);
  r1.w = r1.w * cb0[139].y + cb0[139].x;
  r10.xyz = r4.xyz * cb0[211].xyz + cb0[212].xyz;
  r10.xyz = max(float3(0,0,0), r10.xyz);
  r10.xyz = min(float3(0.99000001,0.99000001,0.99000001), r10.xyz);
  r10.xyz = cb0[213].xyz * r10.xyz;
  r12.xyz = (int3)r10.xyz;
  r12.w = 0;
  r12.xyzw = t0.Load(r12.xyzw).xyzw;
  r12.xyzw = (uint4)r12.xyzw;
  r7.w = 1 + cb0[213].w;
  r10.xyz = r10.xyz / r12.www;
  r10.xyz = frac(r10.xyz);
  r10.xyz = cb0[213].www * r10.xyz;
  r10.xyz = r12.xyz * r7.www + r10.xyz;
  r10.xyz = float3(0.5,0.5,0.5) + r10.xyz;
  r10.xyz = cb0[214].xyz * r10.xyz;
  r7.w = 0.0799999982 * r6.x;
  r12.xyz = -r6.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r12.xyz = r5.www * r12.xyz + r7.www;
  r13.xyz = -r2.xyz * r5.www + r2.xyz;
  r13.xyz = r13.xyz * cb0[136].www + cb0[136].xyz;
  r12.xyz = r12.xyz * cb0[137].www + cb0[137].xyz;
  r5.w = cmp(0 != cb0[183].w);
  r14.xyz = r12.xyz * float3(0.449999988,0.449999988,0.449999988) + r13.xyz;
  r13.xyz = r5.www ? r14.xyz : r13.xyz;
  r12.xyz = r5.www ? float3(0,0,0) : r12.xyz;
  r14.xyz = t1.SampleLevel(s0_s, r10.xyz, 0).zxy;
  r15.xyzw = t2.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r16.xyzw = t4.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r16.xyzw = r16.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r17.xyzw = t6.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r17.xyzw = r17.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = r15.xyzw * r14.yyyy;
  r15.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r15.wxyz;
  r16.xyzw = r16.xyzw * r14.zzzz;
  r16.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r16.wxyz;
  r17.xyzw = r17.xyzw * r14.xxxx;
  r17.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r17.wxyz;
  r18.xyzw = t3.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r18.xyzw = r18.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r19.xyzw = t5.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r19.xyzw = r19.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r20.xyzw = t7.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r20.xyzw = r20.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r18.xyzw = r18.xyzw * r14.yyyy;
  r18.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r18.xyzw;
  r19.xyzw = r19.xyzw * r14.zzzz;
  r19.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r19.xyzw;
  r20.xyzw = r20.xyzw * r14.xxxx;
  r20.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r20.xyzw;
  r21.xyz = r8.yzy * r8.yzx;
  r22.yw = r8.zz * r8.yx;
  r5.w = r8.x * r8.x + -r21.x;
  r23.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r8.yzx;
  r22.xz = r21.zy * float2(1,3) + float2(0,-1);
  r21.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r22.xyzw;
  r5.w = 0.429042608 * r5.w;
  r22.x = r14.y;
  r22.yzw = r15.yzw;
  r23.x = 0.886227548;
  r6.x = dot(r22.xyzw, r23.xyzw);
  r15.yzw = r18.xyz;
  r7.w = dot(r15.xyzw, r21.xyzw);
  r6.x = r7.w + r6.x;
  r15.x = r18.w * r5.w + r6.x;
  r18.x = r14.z;
  r18.yzw = r16.yzw;
  r6.x = dot(r18.xyzw, r23.xyzw);
  r16.yzw = r19.xyz;
  r7.w = dot(r16.xyzw, r21.xyzw);
  r6.x = r7.w + r6.x;
  r15.y = r19.w * r5.w + r6.x;
  r14.yzw = r17.yzw;
  r6.x = dot(r14.xyzw, r23.xyzw);
  r17.yzw = r20.xyz;
  r7.w = dot(r17.xyzw, r21.xyzw);
  r6.x = r7.w + r6.x;
  r15.z = r20.w * r5.w + r6.x;
  r14.xyz = max(float3(0,0,0), r15.xyz);
  r14.xyz = cb0[157].xyz * r14.xyz;
  r5.w = cmp(cb0[186].y != 0.000000);
  if (r5.w != 0) {
    r10.xyz = t8.SampleLevel(s0_s, r10.xyz, 0).xyz;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.w = dot(r10.xyz, r10.xyz);
    r15.x = sqrt(r5.w);
    r5.w = max(9.99999975e-005, r15.x);
    r10.xyz = r10.xyz / r5.www;
    r5.w = 1 + -r15.x;
    r5.w = -r5.w * r5.w + 1;
    r0.xyz = r0.xyz * r0.www + -r10.xyz;
    r0.xyz = r5.www * r0.xyz + r10.xyz;
    r6.x = saturate(dot(r10.xyz, r8.xyz));
    r7.w = 1 + -r6.x;
    r15.y = r5.w * r7.w + r6.x;
  } else {
    r0.xyz = r8.xyz;
    r15.xy = float2(1,1);
  }
  r10.x = t9[0].val[0/4];
  r10.y = t9[0].val[0/4+1];
  r10.z = t9[0].val[0/4+2];
  r10.w = t9[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r16.x = t9[1].val[0/4];
  r16.y = t9[1].val[0/4+1];
  r16.z = t9[1].val[0/4+2];
  r16.w = t9[1].val[0/4+3];
  r10.y = dot(r16.xyzw, r0.xyzw);
  r16.x = t9[2].val[0/4];
  r16.y = t9[2].val[0/4+1];
  r16.z = t9[2].val[0/4+2];
  r16.w = t9[2].val[0/4+3];
  r10.z = dot(r16.xyzw, r0.xyzw);
  r16.xyzw = r0.xyzz * r0.yzzx;
  r17.x = t9[3].val[0/4];
  r17.y = t9[3].val[0/4+1];
  r17.z = t9[3].val[0/4+2];
  r17.w = t9[3].val[0/4+3];
  r17.x = dot(r17.xyzw, r16.xyzw);
  r18.x = t9[4].val[0/4];
  r18.y = t9[4].val[0/4+1];
  r18.z = t9[4].val[0/4+2];
  r18.w = t9[4].val[0/4+3];
  r17.y = dot(r18.xyzw, r16.xyzw);
  r18.x = t9[5].val[0/4];
  r18.y = t9[5].val[0/4+1];
  r18.z = t9[5].val[0/4+2];
  r18.w = t9[5].val[0/4+3];
  r17.z = dot(r18.xyzw, r16.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t9[6].val[0/4];
  r0.z = t9[6].val[0/4+1];
  r0.w = t9[6].val[0/4+2];
  r10.xyz = r17.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r10.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r15.x * r15.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r14.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r13.xyz;
  r10.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r2.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r1.xy = cb0[131].zw * r1.xy;
  r1.xy = (uint2)r1.xy;
  r5.w = v4.w * cb2[3].x + cb2[3].y;
  r5.w = log2(r5.w);
  r5.w = cb2[3].z * r5.w;
  r5.w = max(0, r5.w);
  r5.w = (uint)r5.w;
  r6.x = asint(cb2[1].z) + -1;
  r5.w = min((uint)r6.x, (uint)r5.w);
  r1.xy = (uint2)r1.xy >> asuint(cb2[2].xx);
  r1.y = mad((int)r5.w, asint(cb2[1].y), (int)r1.y);
  r1.x = mad((int)r1.y, asint(cb2[1].x), (int)r1.x);
  r1.y = r11.x + r11.x;
  r5.yzw = r1.yyy * r8.xyz + -r5.xyz;
  r1.y = min(1, r11.y);
  r1.x = (int)r1.x + asint(cb2[0].w);
  r6.x = (uint)r1.x << 1;
  r6.x = t11.Load(r6.x).x;
  r6.x = min(asuint(cb2[0].y), (uint)r6.x);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r1.x = (((uint)r1.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r1.x = t11.Load(r1.x).x;
  r7.w = max(0.00100000005, r1.w);
  r7.w = log2(r7.w);
  r7.w = -r7.w * 1.20000005 + 1;
  r8.w = -1 + cb0[195].z;
  r8.w = r8.w + -r7.w;
  r5.x = 0;
  r10.xyzw = float4(0,0,0,1);
  r11.xyz = float3(0,1,0);
  while (true) {
    r11.w = cmp((uint)r11.z >= (uint)r6.x);
    if (r11.w != 0) break;
    r11.w = cmp(r10.w < 0.00100000005);
    if (r11.w != 0) {
      break;
    }
    r11.w = (int)r1.x + (int)r11.z;
    r11.w = t12.Load(r11.w).x;
    r14.xyz = -cb4[r11.w+0].xyz + r4.xyz;
    r12.w = dot(r14.xyz, r14.xyz);
    r13.w = sqrt(r12.w);
    r14.w = cmp(r13.w < cb4[r11.w+0].w);
    if (r14.w != 0) {
      r14.w = cmp(0 < cb4[r11.w+341].z);
      if (r14.w != 0) {
        r14.w = (uint)r11.w << 2;
        r15.xyz = cb4[r14.w+1024].xyz * r4.yyy;
        r15.xyz = r4.xxx * cb4[r14.w+1023].xyz + r15.xyz;
        r15.xyz = r4.zzz * cb4[r14.w+1025].xyz + r15.xyz;
        r15.xyz = cb4[r14.w+1026].xyz + r15.xyz;
        r16.xyz = cb4[r14.w+1024].xyz * r5.zzz;
        r16.xyz = r5.yyy * cb4[r14.w+1023].xyz + r16.xyz;
        r16.xyz = r5.www * cb4[r14.w+1025].xyz + r16.xyz;
        r16.xyz = rcp(r16.xyz);
        r17.xyz = -r15.xyz * r16.xyz + -r16.xyz;
        r16.xyz = -r15.xyz * r16.xyz + r16.xyz;
        r16.xyz = max(r17.xyz, r16.xyz);
        r14.w = min(r16.y, r16.z);
        r14.w = min(r16.x, r14.w);
        r16.xyz = r14.www * r5.yzw + r4.xyz;
        r17.xyz = cb4[r11.w+682].xyz + cb4[r11.w+0].xyz;
        r16.xyz = -r17.xyz + r16.xyz;
        r14.w = cb4[r11.w+2387].w * 0.699999988;
        r17.xyz = -cb4[r11.w+2387].www * float3(0.5,0.5,0.5) + cb4[r11.w+2387].xyz;
        r18.xyz = cb4[r11.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb4[r11.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb4[r11.w+2387].xyz + -r17.xyz;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r15.w = dot(r19.xyz, float3(1,1,1));
        r15.x = dot(r15.xyz, float3(1,1,1));
        r15.x = r15.w + r15.x;
        r14.w = 1 / r14.w;
        r14.w = saturate(r15.x * r14.w);
        r15.x = r14.w * -2 + 3;
        r14.w = r14.w * r14.w;
        r15.x = -r15.x * r14.w + 1;
      } else {
        r13.w = saturate(r13.w / cb4[r11.w+0].w);
        r14.w = dot(r5.yzw, r14.xyz);
        r12.w = -cb4[r11.w+0].w * cb4[r11.w+0].w + r12.w;
        r12.w = r14.w * r14.w + -r12.w;
        r17.x = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r12.w = r12.w + -r14.w;
        r14.xyz = r12.www * r5.yzw + r14.xyz;
        r14.yzw = -cb4[r11.w+682].xyz + r14.xyz;
        r12.w = r13.w * 2.5 + -1.5;
        r12.w = max(0, r12.w);
        r13.w = r12.w * r12.w;
        r12.w = -r12.w * 2 + 3;
        r14.x = -r13.w * r12.w + 1;
        r15.xyzw = r17.xxxx ? r14.xyzw : r5.xyzw;
        r16.xyz = r15.yzw;
      }
      r16.w = cb4[r11.w+341].y;
      r14.xyzw = t14.SampleLevel(s3_s, r16.xyzw, r8.w).xyzw;
      r14.xyz = cb4[r11.w+341].xxx * r14.xyz;
      r14.xyz = r14.xyz * r15.xxx;
      r10.xyz = r14.xyz * r10.www + r10.xyz;
      r12.w = -r14.w * r15.x + 1;
      r10.w = r12.w * r10.w;
      r11.w = cb4[r11.w+682].w * r15.x;
      r11.x = r11.w * r11.y + r11.x;
      r11.w = 1 + -r15.x;
      r11.y = r11.y * r11.w;
    }
    r11.z = (int)r11.z + 1;
  }
  r14.xyz = cb0[157].xyz * r10.xyz;
  r1.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r14.w = r11.x * r1.x;
  r1.x = cmp(0 < cb2[116].y);
  if (r1.x != 0) {
    r1.x = cb2[116].x + -r7.w;
    r1.x = -1 + r1.x;
    r10.xyz = t13.SampleLevel(s2_s, r5.yzw, r1.x).xyz;
    r1.x = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r1.x = cb2[117].x * r1.x;
    r10.xyz = cb0[187].xyz * r10.xyz;
    r5.x = cmp(cb2[116].z < 1);
    r15.xyz = r10.www * r10.xyz + r14.xyz;
    r15.w = r1.x * r11.y + r14.w;
    r10.xyz = r5.xxx ? float3(0,0,0) : r10.xyz;
    r14.xyzw = r5.xxxx ? r15.xyzw : r14.xyzw;
  } else {
    r10.xyz = float3(0,0,0);
  }
  r1.x = saturate(r1.w * cb0[197].x + cb0[197].y);
  r5.x = r1.x * -2 + 3;
  r1.x = r1.x * r1.x;
  r1.x = r5.x * r1.x;
  r5.x = max(9.99999975e-005, r14.w);
  r0.w = r0.w / r5.x;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r1.x * r0.w + 1;
  r10.xyz = r10.www * r10.xyz;
  r10.xyz = r14.xyz * r0.www + r10.xyz;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r11.xy = r0.ww * float2(32.6650009,11.8149996) + v4.xy;
    r0.w = dot(r11.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r11.xyzw = cb0[1].xyzw * r3.yyyy;
    r11.xyzw = r3.xxxx * cb0[0].xyzw + r11.xyzw;
    r11.xyzw = r3.zzzz * cb0[2].xyzw + r11.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r5.xyz = r5.yzw * r2.www + r3.xyz;
    r14.xyzw = cb0[1].xyzw * r5.yyyy;
    r14.xyzw = r5.xxxx * cb0[0].xyzw + r14.xyzw;
    r5.xyzw = r5.zzzz * cb0[2].xyzw + r14.xyzw;
    r5.xyzw = cb0[3].xyzw + r5.xyzw;
    r1.x = rcp(r11.w);
    r14.xyz = r11.xyz * r1.xxx;
    r1.x = rcp(r5.w);
    r11.xy = r2.ww * cb0[30].zw + r11.zw;
    r2.w = rcp(r11.y);
    r5.xyz = r5.xyz * r1.xxx + -r14.xyz;
    r1.x = dot(r5.xy, r5.xy);
    r1.x = sqrt(r1.x);
    r5.w = 0.5 * r1.x;
    r11.yz = r14.xy * r5.ww + r5.xy;
    r11.yz = -r1.xx * float2(0.5,0.5) + abs(r11.yz);
    r11.yz = max(float2(0,0), r11.yz);
    r11.yz = r11.yz / abs(r5.xy);
    r11.yz = float2(1,1) + -r11.yz;
    r1.x = min(r11.y, r11.z);
    r1.x = r1.x / r5.w;
    r5.xyz = r5.xyz * r1.xxx;
    r1.x = -r11.x * r2.w + r14.z;
    r1.x = 4 * r1.x;
    r1.x = max(abs(r5.z), r1.x);
    r11.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r14.xy = cb2[176].xy * r11.xy;
    r5.xy = cb2[176].xy * r5.xy;
    r2.w = 0.0833333358 * r1.x;
    r5.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r5.xyz;
    r11.xyz = r5.xyz * r0.www + r14.xyz;
    r0.w = 1;
    r15.x = 0;
    r16.x = 0;
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
      r17.xyzw = float4(1,2,3,4) + r11.wwww;
      r18.xyzw = r17.xxxy * r5.xyzz + r11.xyzz;
      r19.xyzw = r17.yyzz * r5.xyxy + r11.xyxy;
      r17.xyzw = r17.wwzw * r5.xyzz + r11.xyzz;
      r11.w = r1.w * 0.666666687 + r0.w;
      r12.w = r1.w * 0.666666687 + r11.w;
      r20.x = t19.SampleLevel(s6_s, r18.xy, r0.w).x;
      r20.y = t19.SampleLevel(s6_s, r19.xy, r0.w).x;
      r20.z = t19.SampleLevel(s6_s, r19.zw, r11.w).x;
      r20.w = t19.SampleLevel(s6_s, r17.xy, r11.w).x;
      r17.xy = r18.zw;
      r17.xyzw = r17.xyzw + -r20.xyzw;
      r18.xyzw = r1.xxxx * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r17.xyzw;
      r18.xyzw = cmp(abs(r18.xyzw) < r2.wwww);
      r19.xy = (int2)r18.zw | (int2)r18.xy;
      r11.w = (int)r19.y | (int)r19.x;
      if (r11.w != 0) {
        r16.x = r17.x;
        r14.xyz = r17.yzw;
        r5.w = r18.x;
        r6.x = r18.y;
        r7.w = r18.z;
        r8.w = -1;
        break;
      }
      r15.x = r17.w;
      r10.w = (int)r10.w + 4;
      r0.w = r12.w;
      r16.x = r17.x;
      r14.xyz = r17.yzw;
      r5.w = r18.x;
      r6.x = r18.y;
      r7.w = r18.z;
      r8.w = r11.w;
    }
    if (r8.w != 0) {
      r14.w = 2;
      r17.xy = r14.yz;
      r17.z = 3;
      r14.yzw = r7.www ? r14.xyw : r17.xyz;
      r16.y = r14.x;
      r16.z = 1;
      r14.xyz = r6.xxx ? r16.xyz : r14.yzw;
      r15.y = r16.x;
      r15.z = 0;
      r14.xyz = r5.www ? r15.xyz : r14.xyz;
      r0.w = (uint)r10.w;
      r0.w = r14.z + r0.w;
      r1.x = r14.x + -r14.y;
      r1.x = saturate(r14.x / r1.x);
      r0.w = r1.x + r0.w;
      r5.xyz = r5.xyz * r0.www + r11.xyz;
      r5.xy = cb2[176].zw * r5.xy;
      r5.xy = r5.xy * float2(2,-2) + float2(-1,1);
      r5.xy = cb0[66].xy * r5.xy;
      r5.xy = r5.xy / cb0[66].xy;
      r11.xyz = cb0[123].xyw * r5.yyy;
      r11.xyz = r5.xxx * cb0[122].xyw + r11.xyz;
      r11.xyz = r5.zzz * cb0[124].xyw + r11.xyz;
      r11.xyz = cb0[125].xyw + r11.xyz;
      r5.zw = r11.xy / r11.zz;
      r11.xy = r5.zw * cb2[177].xy + cb2[177].zw;
      r5.xy = saturate(abs(r5.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r5.xy, r5.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r5.xy = saturate(abs(r5.zw) * float2(5,5) + float2(-4,-4));
      r1.x = dot(r5.xy, r5.xy);
      r1.x = 1 + -r1.x;
      r1.x = max(0, r1.x);
      r0.w = min(r1.x, r0.w);
      r5.xyz = t20.SampleLevel(s7_s, r11.xy, 0).xyz;
      r5.xyz = min(float3(0,0,0), -r5.xyz);
      r1.x = saturate(-r1.w * 6.5999999 + 2);
      r0.w = r1.x * r0.w;
      r1.x = 1;
      r5.xyz = -r5.xyz * r0.www;
      r5.xyz = cb2[178].xxx * r5.xyz;
      r0.w = -r1.x * r0.w + 1;
      r10.xyz = r10.xyz * r0.www + r5.xyz;
    }
  }
  r5.xyzw = r1.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r5.x * r5.x;
  r1.x = -9.27999973 * r1.y;
  r1.x = exp2(r1.x);
  r0.w = min(r1.x, r0.w);
  r0.w = r0.w * r5.x + r5.y;
  r1.xy = r0.ww * float2(-1.03999996,1.03999996) + r5.zw;
  r0.w = 50 * r12.y;
  r0.w = saturate(r0.w);
  r0.w = r0.w * r1.y;
  r5.xyz = r12.xyz * r1.xxx + r0.www;
  r0.w = dot(cb2[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r4.w = -1;
    r0.w = dot(cb2[122].xyzw, r4.xyzw);
    r0.w = saturate(abs(r0.w) * cb2[129].x + cb2[129].y);
    r0.w = 1 + -r0.w;
    r11.xyz = -cb2[123].xyz + r4.xyz;
    r1.x = dot(r11.xyz, cb2[124].xyz);
    r1.x = cb2[124].w + -abs(r1.x);
    r1.y = dot(r11.xyz, cb2[125].xyz);
    r1.y = cb2[125].w + -abs(r1.y);
    r1.xy = saturate(cb2[129].xx * r1.xy);
    r1.x = r1.x * r1.y;
    r0.w = r1.x * r0.w;
    r1.x = dot(cb2[122].xyz, r8.xyz);
    r1.x = saturate(r1.x * cb2[130].x + cb2[130].y);
    r1.y = -0.200000003 + r1.w;
    r1.y = saturate(10 * r1.y);
    r1.y = 1 + -r1.y;
    r0.w = r1.x * r0.w;
    r0.w = r0.w * r1.y;
    r1.x = cmp(0 < r0.w);
    if (r1.x != 0) {
      r1.x = rsqrt(r1.z);
      r1.xyz = r7.xyz * r1.xxx;
      r1.w = dot(r1.xyz, -cb2[122].xyz);
      r1.w = r1.w + r1.w;
      r1.xyz = cb2[122].xyz * r1.www + r1.xyz;
      r7.xyz = cb2[127].xyz * r8.yyy;
      r7.xyz = r8.xxx * cb2[126].xyz + r7.xyz;
      r7.xyz = r8.zzz * cb2[128].xyz + r7.xyz;
      r1.w = dot(r1.xyz, r7.xyz);
      r1.w = r1.w + r1.w;
      r1.xyz = r7.xyz * -r1.www + r1.xyz;
      r1.xyz = r1.xyz * cb2[129].zzz + r4.xyz;
      r1.xyz = cb0[70].xyz + r1.xyz;
      r7.xyz = cb0[13].xyz * r1.yyy;
      r1.xyw = r1.xxx * cb0[12].xyz + r7.xyz;
      r1.xyz = r1.zzz * cb0[14].xyz + r1.xyw;
      r1.xyz = cb0[15].xyz + r1.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r7.xyz = cb2[r1.w+132].xyw * r1.yyy;
      r7.xyz = r1.xxx * cb2[r1.w+131].xyw + r7.xyz;
      r1.xyz = r1.zzz * cb2[r1.w+133].xyw + r7.xyz;
      r1.xyz = cb2[r1.w+134].xyw + r1.xyz;
      r1.w = cb2[141].z ? cb0[197].w : 0;
      r1.xy = r1.xy / r1.zz;
      r1.xy = max(-cb2[141].xy, r1.xy);
      r1.xy = min(cb2[141].xy, r1.xy);
      r1.xy = r1.xy * cb2[r1.w+139].xy + cb2[r1.w+139].zw;
      r1.xyzw = t15.SampleLevel(s3_s, r1.xy, 0).xyzw;
      r0.w = r1.w * r0.w;
    } else {
      r1.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r10.xyz = r0.www * r10.xyz + r1.xyz;
  }
  r1.xyz = r10.xyz * r5.xyz;
  r5.xyz = r12.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r12.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r12.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
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
  r6.x = cmp(0 < r1.w);
  r7.x = r1.w * r5.w;
  r2.w = r7.x * r3.w + r2.w;
  r7.x = -r7.x * r3.w + r3.w;
  r1.w = -r1.w * r5.w + 1;
  r1.w = r1.w * r4.w;
  r7.y = -cb2[146].y + r2.w;
  r7.y = cb2[143].y * r7.y;
  r7.y = max(-127, r7.y);
  r7.y = exp2(-r7.y);
  r7.y = cb2[146].x * r7.y;
  r2.w = -cb2[144].w + r2.w;
  r2.w = cb2[144].y * r2.w;
  r2.xyzw = max(float4(1,1,1,-127), r2.xyzw);
  r2.w = exp2(-r2.w);
  r2.w = cb2[144].z * r2.w;
  r7.y = r6.x ? r7.y : cb2[143].x;
  r2.w = r6.x ? r2.w : cb2[144].x;
  r1.w = r6.x ? r1.w : r4.w;
  r6.x = r6.x ? r7.x : r3.w;
  r7.x = cb2[143].y * r6.x;
  r7.x = max(-127, r7.x);
  r7.z = exp2(-r7.x);
  r7.z = 1 + -r7.z;
  r7.z = r7.z / r7.x;
  r7.w = -r7.x * 0.240226507 + 0.693147182;
  r7.x = cmp(0.00999999978 < abs(r7.x));
  r7.x = r7.x ? r7.z : r7.w;
  r6.x = cb2[144].y * r6.x;
  r6.x = max(-127, r6.x);
  r7.z = exp2(-r6.x);
  r7.z = 1 + -r7.z;
  r7.z = r7.z / r6.x;
  r7.w = -r6.x * 0.240226507 + 0.693147182;
  r6.x = cmp(0.00999999978 < abs(r6.x));
  r6.x = r6.x ? r7.z : r7.w;
  r2.w = r6.x * r2.w;
  r2.w = r7.y * r7.x + r2.w;
  r6.x = r2.w * r1.w;
  r7.xy = cmp(float2(0,0) < cb2[146].zw);
  if (r7.x != 0) {
    r7.x = saturate(r4.w * cb2[150].x + cb2[150].y);
    r7.zw = float2(1,-1) * cb2[149].yx;
    r8.x = dot(r3.xy, r7.zw);
    r8.y = dot(r3.xy, cb2[149].xy);
    r8.z = r3.w;
    r10.xyz = t16.SampleLevel(s4_s, r8.xyz, 0).xyz;
    r8.xyz = t16.SampleLevel(s4_s, r8.xyz, cb2[150].z).xyz;
    r10.xyz = r10.xyz + -r8.xyz;
    r7.xzw = r7.xxx * r10.xyz + r8.xyz;
    r7.xzw = cb2[145].xyz * r7.xzw;
  } else {
    r7.xzw = cb2[145].xyz;
  }
  r8.x = cmp(cb2[147].w >= 0);
  r8.y = cmp(cb2[146].z == 0.000000);
  r8.x = r8.y ? r8.x : 0;
  if (r8.x != 0) {
    r8.xyz = r5.www * r3.xyw;
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
  r1.w = exp2(-r6.x);
  r1.w = min(1, r1.w);
  r8.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r4.w);
  r1.w = r1.w ? r7.y : 0;
  r8.xyzw = r1.wwww ? float4(1,0,0,0) : r8.wxyz;
  r1.w = 1 + -r8.x;
  r7.xyz = r7.xzw * r1.www + r8.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r8.yzw = cb0[5].xyw * r4.yyy;
    r8.yzw = r4.xxx * cb0[4].xyw + r8.yzw;
    r8.yzw = r4.zzz * cb0[6].xyw + r8.yzw;
    r8.yzw = cb0[7].xyw + r8.yzw;
    r8.yz = r8.yz / r8.ww;
    r10.xy = r8.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r8.w * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r10.z = cb0[208].z * r1.w;
    r10.xyzw = t17.SampleLevel(s0_s, r10.xyz, 0).xyzw;
    r7.xyz = r7.xyz * r10.www + r10.xyz;
    r8.x = r10.w * r8.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r8.yzw = cb0[5].xyw * r4.yyy;
    r8.yzw = r4.xxx * cb0[4].xyw + r8.yzw;
    r8.yzw = r4.zzz * cb0[6].xyw + r8.yzw;
    r8.yzw = cb0[7].xyw + r8.yzw;
    r1.w = cmp(0 != cb0[184].x);
    r10.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r8.yz = r8.yz / r8.ww;
    r8.yz = r8.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r10.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r10.xyz;
    r2.w = dot(r10.xyz, r10.xyz);
    r3.w = sqrt(r2.w);
    r3.w = -cb0[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb0[182].x * r3.w;
    r3.w = cb0[181].z * r3.w;
    r11.z = sqrt(r3.w);
    r3.w = cb0[181].y * r11.z;
    r4.w = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r4.w ? r3.w : 1;
    r2.w = rsqrt(r2.w);
    r10.xyz = r10.xyz * r2.www;
    r2.w = -r10.z * r10.z + 1;
    r2.w = sqrt(r2.w);
    r14.y = r10.z * 0.5 + 0.5;
    r10.xy = r10.xy / r2.ww;
    r2.w = 1 + -abs(r10.x);
    r2.w = sqrt(r2.w);
    r4.w = abs(r10.x) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r10.x) + -0.212114394;
    r4.w = r4.w * abs(r10.x) + 1.57072878;
    r5.w = r4.w * r2.w;
    r5.w = r5.w * -2 + 3.14159274;
    r6.x = cmp(r10.x < -r10.x);
    r5.w = r6.x ? r5.w : 0;
    r2.w = r4.w * r2.w + r5.w;
    r4.w = cmp(r10.y < 0);
    r5.w = 6.28318548 + -r2.w;
    r2.w = r4.w ? r5.w : r2.w;
    r14.x = 0.159154937 * r2.w;
    r10.xy = cb0[180].zw * float2(0.5,0.5) + r14.xy;
    r10.zw = float2(1,1) + cb0[180].xy;
    r10.zw = cb0[180].xy / r10.zw;
    r10.xy = r10.xy * r10.zw;
    r11.xy = r1.ww ? r10.xy : r8.yz;
    r10.xyzw = t10.SampleLevel(s1_s, r11.xyz, 0).xyzw;
    r8.yzw = r10.xyz * r3.www;
    r1.w = 1 + -r10.w;
    r1.w = -r3.w * r1.w + 1;
    r8.yzw = cb0[135].zzz * r8.yzw;
    r7.xyz = r8.yzw * r8.xxx + r7.xyz;
    r8.x = r8.x * r1.w;
  }
  r8.yzw = -cb0[148].xyz + r4.xyz;
  r10.xyz = cb0[150].xyz * r8.yzw;
  r11.xyz = -cb0[149].xyz + r4.xyz;
  r11.xyz = cb0[151].xyz * r11.xyz;
  r8.yzw = r8.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.yzw = float3(0.5,0.5,0.5) + -abs(r8.yzw);
  r8.yzw = saturate(float3(6,6,6) * r8.yzw);
  r1.w = r8.y * r8.z;
  r1.w = r1.w * r8.w;
  r14.xyzw = t21.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r15.xyzw = t22.SampleLevel(s0_s, r11.xyz, 0).xyzw;
  r14.xyzw = -r15.xyzw + r14.xyzw;
  r14.xyzw = r1.wwww * r14.xyzw + r15.xyzw;
  r8.yzw = t23.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r10.xyz = t24.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r8.yzw = -r10.xyz + r8.yzw;
  r8.yzw = r1.www * r8.yzw + r10.xyz;
  r1.w = dot(r14.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = 9.99999975e-006 + r1.w;
  r10.xyz = r14.xyz / r1.www;
  r11.yzw = r10.xxx * r8.yzw;
  r15.yzw = r10.yyy * r8.yzw;
  r10.yzw = r10.zzz * r8.yzw;
  r11.x = r14.x;
  r11.x = dot(r11.xyzw, r23.xyzw);
  r15.x = r14.y;
  r11.y = dot(r15.xyzw, r23.xyzw);
  r10.x = r14.z;
  r11.z = dot(r10.xyzw, r23.xyzw);
  r8.yzw = max(float3(0,0,0), r11.xyz);
  r1.w = cmp(0 < cb3[6].w);
  if (r1.w != 0) {
    r10.xyzw = cb3[1].xyzw * r4.yyyy;
    r10.xyzw = r4.xxxx * cb3[0].xyzw + r10.xyzw;
    r10.xyzw = r4.zzzz * cb3[2].xyzw + r10.xyzw;
    r10.xyzw = cb3[3].xyzw + r10.xyzw;
    r10.xy = r10.xy / r10.ww;
    r11.xyzw = t25.SampleLevel(s0_s, r10.xy, 0).xyzw;
    r14.xyz = t26.SampleLevel(s0_s, r10.xy, 0).yzw;
    r15.xyz = float3(6.28318548,12.566371,18.849556) * r10.zzz;
    sincos(r15.xyz, r15.xyz, r16.xyz);
    r16.xyz = float3(1,1,1) + -r16.xyz;
    r1.w = r11.x * r10.z;
    r11.xyz = r15.xyz * r11.yzw;
    r11.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r11.xyz;
    r2.w = dot(r11.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r11.xyz = r16.xyz * r14.xyz;
    r11.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r11.xyz;
    r2.w = dot(r11.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r11.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r11.xyz = exp2(r11.xyz);
    r11.xyz = min(float3(1,1,1), r11.xyz);
    r10.zw = cmp(r10.xy < cb3[4].xy);
    r10.xy = cmp(cb3[4].zw < r10.xy);
    r10.xy = (int2)r10.xy | (int2)r10.zw;
    r1.w = (int)r10.y | (int)r10.x;
    r10.xyz = cb3[6].xyz * r14.www;
    r11.xyz = float3(1,1,1) + -r11.xyz;
    r11.xyz = r1.www ? float3(0,0,0) : r11.xyz;
    r10.xyz = -r10.xyz * r11.xyz + r8.yzw;
    r10.xyz = max(float3(0,0,0), r10.xyz);
    r10.xyz = r13.xyz * r10.xyz;
  } else {
    r10.xyz = r13.xyz * r8.yzw;
  }
  r1.xyz = r1.xyz * r5.xyz + r10.xyz;
  r5.xyz = r12.xyz * float3(0.449999988,0.449999988,0.449999988) + r13.xyz;
  r5.xyz = r5.xyz + -r1.xyz;
  r1.xyz = cb0[145].yyy * r5.xyz + r1.xyz;
  r9.xyz = max(float3(0,0,0), r6.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xyz = -cb1[5].xyz + r4.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r2.w = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r4.yzw = r2.www ? float3(0,1,1) : float3(1,1,0);
    r4.x = 1;
    r9.xyzw = r1.wwww ? r4.yzwx : r9.xyzw;
    o0.w = r9.w;
  } else {
    o0.w = r9.w;
  }
  r0.xyz = r0.xyz * r2.xyz + r1.xyz;
  r0.xyz = r0.xyz + r9.xyz;
  r0.xyz = r0.xyz * r8.xxx + r7.xyz;
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