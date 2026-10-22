// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

Texture2D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

struct t8_t {
  float val[4];
};
StructuredBuffer<t8_t> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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

cbuffer cb4 : register(b4)
{
  float4 cb4[84];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[168];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[363];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  nointerpolation uint v5 : PRIMITIVE_ID0,
  float4 v6 : TEXCOORD7,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000},
                              { 17.000000, 0, 0, 0},
                              { 27.000000, 0, 0, 0},
                              { 37.000000, 0, 0, 0},
                              { 48.500000, 0, 0, 0},
                              { 60.000000, 0, 0, 0},
                              { 86.500000, 0, 0, 0},
                              { 113.000000, 0, 0, 0},
                              { 139.000000, 0, 0, 0},
                              { 165.000000, 0, 0, 0},
                              { 173.000000, 0, 0, 0},
                              { 181.000000, 0, 0, 0},
                              { 191.500000, 0, 0, 0},
                              { 202.000000, 0, 0, 0},
                              { 230.500000, 0, 0, 0},
                              { 259.000000, 0, 0, 0},
                              { 284.500000, 0, 0, 0},
                              { 310.000000, 0, 0, 0},
                              { 325.500000, 0, 0, 0},
                              { 341.000000, 0, 0, 0},
                              { 360.000000, 0, 0, 0} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[3];
  float4 x1[3];
  float4 x2[3];
  float4 x3[3];
  float4 x4[3];
  float4 x5[3];
  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v7.yyyy;
  r1.xyzw = v7.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v7.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r0.xyz, r3.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r1.w = 10 * r0.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.99000001 + 0.00999999978;
  r4.xy = -cb0[129].xy + v7.xy;
  r4.zw = cb0[130].zw * r4.xy;
  r5.xyz = cb4[2].yyy * cb0[5].xyw;
  r5.xyz = cb4[2].xxx * cb0[4].xyw + r5.xyz;
  r5.xyz = cb4[2].zzz * cb0[6].xyw + r5.xyz;
  r5.xyz = cb0[7].xyw + r5.xyz;
  r5.xy = r5.xy / r5.zz;
  r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r4.xy = r4.xy * cb0[130].zw + -r5.xy;
  r5.xyz = -cb4[2].xyz + cb0[67].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb4[47].y;
  r2.w = max(cb4[47].z, r2.w);
  r2.w = min(1, r2.w);
  r2.w = -cb4[47].z + r2.w;
  r2.w = saturate(cb4[48].x * r2.w);
  r3.w = cb4[48].y + -cb4[48].z;
  r3.w = r2.w * r3.w + cb4[48].z;
  r5.x = 0.00100000005 * r3.w;
  r3.w = r3.w * 0.000500000024 + r4.x;
  r4.x = 1 / r5.x;
  r6.x = r4.x * r3.w;
  r3.w = cb0[130].x / cb0[130].y;
  r3.w = r5.x * r3.w;
  r4.x = r3.w * 0.5 + r4.y;
  r3.w = 1 / r3.w;
  r6.y = r4.x * r3.w;
  r4.xy = float2(-0.5,-0.5) + r6.xy;
  r3.w = dot(r4.xy, r4.xy);
  r3.w = sqrt(r3.w);
  r3.w = -r3.w * 2 + 1;
  r4.x = 2.33299994 * r3.w;
  r4.x = r4.x * r4.x;
  r4.x = 1.44269514 * r4.x;
  r4.x = exp2(r4.x);
  r4.x = 1 / r4.x;
  r4.y = cmp(9.99999975e-006 < abs(r3.w));
  r3.w = cmp(r3.w >= 0);
  r4.x = 1 + -r4.x;
  r3.w = r3.w ? r4.x : 0;
  r3.w = r3.w ? r4.y : 0;
  r4.x = r3.w * 5 + -5;
  r4.xy = saturate(cb4[51].yw + r4.xx);
  r4.x = 1 + -r4.x;
  r4.x = r4.x * r4.y + -r3.w;
  r3.w = r2.w * r4.x + r3.w;
  r5.xyz = -cb4[6].xyz + cb4[5].xyz;
  r5.xyz = r2.www * r5.xyz + cb4[6].xyz;
  r5.xyz = r5.xyz * r3.www;
  r5.xyz = r5.xyz * r1.www;
  r0.w = cb4[52].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb4[52].z + cb4[52].y;
  r4.xy = cb0[142].zz * float2(0.200000003,0.00999999978) + v3.yy;
  r6.xy = r4.xy + r4.xy;
  r6.z = 2 * v3.x;
  r1.w = t13.SampleBias(s3_s, r6.zx, cb0[143].y).x;
  r4.xy = v3.xy * float2(2,2) + float2(-1,-1);
  r2.w = min(abs(r4.y), abs(r4.x));
  r3.w = max(abs(r4.y), abs(r4.x));
  r3.w = 1 / r3.w;
  r2.w = r3.w * r2.w;
  r3.w = r2.w * r2.w;
  r5.w = r3.w * 0.0208350997 + -0.0851330012;
  r5.w = r3.w * r5.w + 0.180141002;
  r5.w = r3.w * r5.w + -0.330299497;
  r3.w = r3.w * r5.w + 0.999866009;
  r5.w = r3.w * r2.w;
  r6.x = cmp(abs(r4.x) < abs(r4.y));
  r5.w = r5.w * -2 + 1.57079637;
  r5.w = r6.x ? r5.w : 0;
  r2.w = r2.w * r3.w + r5.w;
  r3.w = cmp(r4.x < -r4.x);
  r3.w = r3.w ? -3.141593 : 0;
  r2.w = r3.w + r2.w;
  r3.w = min(r4.y, r4.x);
  r5.w = max(r4.y, r4.x);
  r3.w = cmp(r3.w < -r3.w);
  r5.w = cmp(r5.w >= -r5.w);
  r3.w = r3.w ? r5.w : 0;
  r2.w = r3.w ? -r2.w : r2.w;
  r2.w = 0.159154952 * r2.w;
  r7.x = frac(r2.w);
  r4.xy = r4.xy * r4.xy;
  r2.w = r4.x + r4.y;
  r2.w = sqrt(r2.w);
  r7.yz = cb0[142].zz * float2(-0.400000006,-0.300000012) + r2.ww;
  r4.xy = t14.SampleBias(s4_s, r7.xy, cb0[143].y).xy;
  r4.xy = float2(-0.5,-0.5) + r4.xy;
  r4.xy = cb4[53].xx * r4.xy;
  r4.xy = r4.xy * float2(2,2) + v3.xy;
  r3.w = t13.SampleBias(s3_s, r4.xy, cb0[143].y).x;
  r8.xy = float2(0.5,0.5) * r7.xz;
  r4.xy = t14.SampleBias(s4_s, r8.xy, cb0[143].y).xy;
  r4.xy = float2(-0.5,-0.5) + r4.xy;
  r4.xy = cb4[53].xx * r4.xy;
  r4.xy = r4.xy * float2(2,2) + v3.xy;
  r4.x = t13.SampleBias(s3_s, r4.xy, cb0[143].y).x;
  r3.w = r4.x * r3.w;
  r4.x = r3.w * r1.w;
  r4.x = saturate(r4.x + r4.x);
  r4.y = cmp(0 >= r4.x);
  r4.x = log2(r4.x);
  r5.w = cb4[53].y * r4.x;
  r5.w = exp2(r5.w);
  r5.w = 0.5 * r5.w;
  r5.w = r4.y ? 0 : r5.w;
  r1.w = r1.w * r3.w + -0.5;
  r1.w = saturate(r1.w + r1.w);
  r1.w = 1 + -r1.w;
  r3.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r6.x = cb4[53].y * r1.w;
  r6.x = exp2(r6.x);
  r6.x = 1 + -r6.x;
  r6.x = r3.w ? 1 : r6.x;
  r9.x = 500 * r6.x;
  r6.x = r6.x * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r6.x = r6.x + -r5.w;
  r5.w = r9.x * r6.x + r5.w;
  r6.x = dot(-cb0[18].xyz, r0.xyz);
  r6.x = 1 + -r6.x;
  r5.w = r6.x * r5.w;
  r5.w = r5.w * cb4[53].w + -cb4[53].w;
  r5.w = saturate(cb4[54].z + r5.w);
  r4.z = t14.SampleBias(s4_s, r4.zw, cb0[143].y).x;
  r4.z = -r4.z * 0.5 + 1;
  r4.z = r4.z * r6.x + cb4[63].x;
  r4.z = -1 + r4.z;
  r4.z = saturate(ceil(r4.z));
  r9.xyz = cb4[9].xyz * r4.zzz;
  r10.xyz = r5.www * cb4[8].xyz + r9.xyz;
  r10.xyz = cb4[55].xxx * r10.xyz;
  r10.xyz = r10.xyz * r0.www;
  r9.xyz = cb4[54].www * r9.xyz;
  r9.xyz = max(r10.xyz, r9.xyz);
  r10.xyzw = t15.SampleBias(s5_s, v3.xy, cb0[143].y).xyzw;
  r11.xyz = cb4[11].xyz * r10.zzz;
  r12.xyz = cb4[63].yyy * r11.xyz;
  r4.w = cb0[142].z * cb4[64].x + v3.x;
  r13.x = cb4[64].w * r4.w;
  r4.w = cb0[142].z * cb4[65].x + v3.y;
  r13.y = cb4[65].y * r4.w;
  r4.w = t16.SampleBias(s6_s, r13.xy, cb0[143].y).x;
  r4.w = -0.5 + r4.w;
  r4.w = r4.w + r4.w;
  r7.yz = cb4[66].xz * r4.ww;
  r4.w = t17.SampleBias(s7_s, v3.xy, cb0[143].y).y;
  r4.w = r4.w * cb4[66].w + cb4[67].x;
  r7.yz = r7.yz * r4.ww + v3.xy;
  r4.w = t14.SampleBias(s4_s, r7.yz, cb0[143].y).x;
  r4.w = -1 + r4.w;
  r7.yz = cb4[68].xy + r4.ww;
  r7.yz = saturate(ceil(r7.yz));
  r8.yw = float2(1,1) + -r7.yz;
  r5.w = r8.y * r7.z;
  r11.xyz = -r11.xyz * cb4[63].yyy + cb4[16].xyz;
  r11.xyz = r5.www * r11.xyz + r12.xyz;
  r12.xy = cb4[69].yz + r4.ww;
  r12.xy = saturate(ceil(r12.xy));
  r12.xz = float2(1,1) + -r12.xy;
  r4.w = r12.x * r12.y;
  r11.xyz = r4.www * -r11.xyz + r11.xyz;
  r9.xyz = r11.xyz + r9.xyz;
  r6.y = t13.SampleBias(s3_s, r6.zy, cb0[143].y).x;
  r6.zw = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r2.ww;
  r7.w = r6.z;
  r7.xy = t14.SampleBias(s4_s, r7.xw, cb0[143].y).xy;
  r7.xy = float2(-0.5,-0.5) + r7.xy;
  r7.xy = cb4[53].xx * r7.xy;
  r7.xy = r7.xy * float2(2,2) + v3.xy;
  r2.w = t13.SampleBias(s3_s, r7.xy, cb0[143].y).x;
  r8.z = 0.5 * r6.w;
  r6.zw = t14.SampleBias(s4_s, r8.xz, cb0[143].y).xy;
  r6.zw = float2(-0.5,-0.5) + r6.zw;
  r6.zw = cb4[53].xx * r6.zw;
  r6.zw = r6.zw * float2(2,2) + v3.xy;
  r6.z = t13.SampleBias(s3_s, r6.zw, cb0[143].y).x;
  r2.w = r6.z * r2.w;
  r6.z = r6.y * r2.w;
  r6.z = saturate(r6.z + r6.z);
  r6.w = cmp(0 >= r6.z);
  r6.z = log2(r6.z);
  r7.x = cb4[69].w * r6.z;
  r7.x = exp2(r7.x);
  r7.x = 0.5 * r7.x;
  r2.w = r6.y * r2.w + -0.5;
  r2.w = saturate(r2.w + r2.w);
  r2.w = 1 + -r2.w;
  r6.y = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r7.y = cb4[69].w * r2.w;
  r7.y = exp2(r7.y);
  r7.y = 1 + -r7.y;
  r7.xy = r6.wy ? float2(0,1) : r7.xy;
  r8.x = 500 * r7.y;
  r7.y = r7.y * 0.5 + 0.5;
  r8.x = saturate(r8.x);
  r7.y = r7.y + -r7.x;
  r7.x = r8.x * r7.y + r7.x;
  r7.x = r7.x * r6.x;
  r7.x = r7.x * cb4[70].y + -cb4[70].y;
  r7.x = saturate(cb4[71].x + r7.x);
  r8.xyz = cb4[21].xyz * r4.zzz;
  r7.xyw = r7.xxx * cb4[18].xyz + r8.xyz;
  r7.xyw = cb4[55].zzz * r7.xyw;
  r8.xyz = cb4[55].yyy * r8.xyz;
  r7.xyw = max(r8.xyz, r7.xyw);
  r7.xyw = r9.xyz + r7.xyw;
  r8.x = cb4[71].y * r4.x;
  r8.x = exp2(r8.x);
  r8.x = 0.5 * r8.x;
  r8.x = r4.y ? 0 : r8.x;
  r8.y = cb4[71].y * r1.w;
  r8.y = exp2(r8.y);
  r8.y = 1 + -r8.y;
  r8.y = r3.w ? 1 : r8.y;
  r9.x = 500 * r8.y;
  r8.y = r8.y * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r8.y = r8.y + -r8.x;
  r8.x = r9.x * r8.y + r8.x;
  r8.x = r8.x * r6.x;
  r8.x = r8.x * cb4[71].w + -cb4[71].w;
  r8.x = saturate(cb4[72].z + r8.x);
  r9.xyz = cb4[24].xyz * r4.zzz;
  r8.xyz = r8.xxx * cb4[23].xyz + r9.xyz;
  r8.xyz = cb4[56].zzz * r8.xyz;
  r8.xyz = r8.xyz * r0.www;
  r9.xyz = cb4[56].yyy * r9.xyz;
  r8.xyz = max(r9.xyz, r8.xyz);
  r7.xyw = r8.xyz + r7.xyw;
  r8.x = cb4[72].w * r4.x;
  r8.x = exp2(r8.x);
  r8.x = 0.5 * r8.x;
  r8.x = r4.y ? 0 : r8.x;
  r8.y = cb4[72].w * r1.w;
  r8.y = exp2(r8.y);
  r8.y = 1 + -r8.y;
  r8.y = r3.w ? 1 : r8.y;
  r9.x = 500 * r8.y;
  r8.y = r8.y * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r8.y = r8.y + -r8.x;
  r8.x = r9.x * r8.y + r8.x;
  r8.x = r8.x * r6.x;
  r8.x = r8.x * cb4[73].y + -cb4[73].y;
  r8.x = saturate(cb4[74].x + r8.x);
  r9.xyz = cb4[27].xyz * r4.zzz;
  r8.xyz = r8.xxx * cb4[26].xyz + r9.xyz;
  r8.xyz = cb4[57].zzz * r8.xyz;
  r8.xyz = r8.xyz * r0.www;
  r9.xyz = cb4[57].yyy * r9.xyz;
  r8.xyz = max(r9.xyz, r8.xyz);
  r7.xyw = r8.xyz + r7.xyw;
  r4.x = cb4[74].y * r4.x;
  r4.x = exp2(r4.x);
  r4.x = 0.5 * r4.x;
  r4.x = r4.y ? 0 : r4.x;
  r1.w = cb4[74].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r3.w ? 1 : r1.w;
  r8.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r8.x = saturate(r8.x);
  r1.w = r1.w + -r4.x;
  r1.w = r8.x * r1.w + r4.x;
  r1.w = r1.w * r6.x;
  r1.w = r1.w * cb4[74].w + -cb4[74].w;
  r1.w = saturate(cb4[75].z + r1.w);
  r8.xyz = cb4[30].xyz * r4.zzz;
  r9.xyz = r1.www * cb4[29].xyz + r8.xyz;
  r9.xyz = cb4[58].zzz * r9.xyz;
  r9.xyz = r9.xyz * r0.www;
  r8.xyz = cb4[58].yyy * r8.xyz;
  r8.xyz = max(r9.xyz, r8.xyz);
  r7.xyw = r8.xyz + r7.xyw;
  r0.w = cb4[75].w * r6.z;
  r0.w = exp2(r0.w);
  r0.w = 0.5 * r0.w;
  r0.w = r6.w ? 0 : r0.w;
  r1.w = cb4[75].w * r2.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r6.y ? 1 : r1.w;
  r4.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r4.x = saturate(r4.x);
  r1.w = r1.w + -r0.w;
  r0.w = r4.x * r1.w + r0.w;
  r0.w = r0.w * r6.x;
  r0.w = r0.w * cb4[76].y + -cb4[76].y;
  r0.w = saturate(cb4[77].x + r0.w);
  r6.xyz = cb4[35].xyz * r4.zzz;
  r8.xyz = r0.www * cb4[32].xyz + r6.xyz;
  r8.xyz = cb4[59].zzz * r8.xyz;
  r6.xyz = cb4[59].yyy * r6.xyz;
  r6.xyz = max(r8.xyz, r6.xyz);
  r6.xyz = r7.xyw + r6.xyz;
  r7.xyw = r4.zzz * float3(0,0.166666999,0) + -r6.xyz;
  r6.xyz = cb4[60].yyy * r7.xyw + r6.xyz;
  r6.xyz = cb4[60].www * -r6.xyz + r6.xyz;
  r7.xyw = r4.zzz * float3(3,3,3) + -r6.xyz;
  r6.xyz = cb4[61].yyy * r7.xyw + r6.xyz;
  r7.xyw = r4.zzz * float3(7,6.30000019,0) + -r6.xyz;
  r6.xyz = cb4[61].www * r7.xyw + r6.xyz;
  r4.xyz = r4.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r4.xyz = r4.xyz + -r6.xyz;
  r4.xyz = cb4[62].yyy * r4.xyz + r6.xyz;
  r4.xyz = r5.xyz * cb4[50].xxx + r4.xyz;
  r5.xyz = cb4[36].xyz + -r4.xyz;
  r4.xyz = cb4[77].yyy * r5.xyz + r4.xyz;
  r5.xyz = t18.SampleBias(s8_s, v3.xy, cb0[143].y).xyz;
  r0.w = -1 + cb0[143].y;
  r6.xyz = t19.SampleBias(s9_s, v3.xy, r0.w).xyz;
  r7.xyw = -cb4[40].xyz + cb4[39].xyz;
  r7.xyw = r6.zzz * r7.xyw + cb4[40].xyz;
  r8.xyz = cb4[42].xyz + -r7.xyw;
  r6.yzw = r6.yyy * r8.xyz + r7.xyw;
  r7.xyw = cb4[44].xyz + -r6.yzw;
  r6.xyz = r6.xxx * r7.xyw + r6.yzw;
  r7.xyw = t17.SampleBias(s7_s, v3.xy, r0.w).xyz;
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = r7.www * r6.xyz + float3(1,1,1);
  r8.xyz = r6.xyz * r5.xyz;
  r9.xyz = cb3[12].xyz + -cb3[11].xyz;
  r9.xyz = cb4[77].www * r9.xyz + cb3[11].xyz;
  r11.xyz = r9.xyz * r8.xyz;
  r12.xw = mad((int2)v5.xx, int2(36,36), int2(27,23));
  r13.x = t8[r12.x].val[0/4];
  r13.y = t8[r12.x].val[0/4+1];
  r0.w = -r13.x + r2.z;
  r0.w = max(0, r0.w);
  r1.w = max(cb4[78].x, r13.y);
  r0.w = r0.w / r1.w;
  r0.w = min(1, r0.w);
  r13.xyz = r5.xyz * r6.xyz + -r11.xyz;
  r11.xyz = r0.www * r13.xyz + r11.xyz;
  r1.w = r7.y * 0.75 + 0.25;
  r13.xyz = r11.xyz * r1.www;
  r14.xyz = cmp(float3(0,0,0) >= r13.xyz);
  r15.xyz = log2(r13.xyz);
  r15.xyz = float3(0.454545438,0.454545438,0.454545438) * r15.xyz;
  r15.xyz = exp2(r15.xyz);
  r14.xyz = r14.xyz ? float3(0,0,0) : r15.xyz;
  r15.xyz = float3(1,1,1) + -r14.xyz;
  r15.xyz = r15.xyz + r15.xyz;
  r16.xyz = t20.SampleBias(s10_s, v4.xy, cb0[143].y).xyz;
  r16.xyz = cb4[78].yyy * r16.xyz;
  r17.xyz = cmp(float3(0,0,0) >= r16.xyz);
  r16.xyz = log2(r16.xyz);
  r16.xyz = float3(0.454545438,0.454545438,0.454545438) * r16.xyz;
  r16.xyz = exp2(r16.xyz);
  r16.xyz = r17.xyz ? float3(0,0,0) : r16.xyz;
  r17.xyz = float3(1,1,1) + -r16.xyz;
  r15.xyz = -r15.xyz * r17.xyz + float3(1,1,1);
  r18.xyz = r16.xyz * r14.xyz;
  r18.xyz = r18.xyz + r18.xyz;
  r14.xyz = cmp(r14.xyz >= float3(0.5,0.5,0.5));
  r14.xyz = r14.xyz ? r15.xyz : r18.xyz;
  r15.xyz = cmp(float3(0,0,0) >= r14.xyz);
  r14.xyz = log2(r14.xyz);
  r14.xyz = float3(2.20000005,2.20000005,2.20000005) * r14.xyz;
  r14.xyz = exp2(r14.xyz);
  r14.xyz = r15.xyz ? float3(0,0,0) : r14.xyz;
  r11.xyz = -r11.xyz * r1.www + r14.xyz;
  r11.xyz = r10.xxx * r11.xyz + r13.xyz;
  r13.xyz = cb4[16].xyz + -r11.xyz;
  r11.xyz = r5.www * r13.xyz + r11.xyz;
  r11.xyz = saturate(r4.www * -r11.xyz + r11.xyz);
  r2.w = saturate(r0.w + r0.w);
  r2.w = r7.y * r2.w;
  r3.w = t8[r12.w].val[12/4];
  r5.x = firstbithigh((int)r3.w);
  r6.x = cmp((int)r5.x == -1);
  r5.x = (int)-r5.x + 31;
  r5.x = r6.x ? -1 : r5.x;
  r5.x = r3.w ? r5.x : 0;
  r6.x = saturate(dot(cb0[r5.x+358].xyz, r0.xyz));
  r13.xyz = cb0[67].xyz + -r2.xyz;
  r6.w = dot(r13.xyz, r13.xyz);
  r6.w = sqrt(r6.w);
  r13.xyz = r13.xyz / r6.www;
  r13.xyz = cb0[r5.x+358].xyz + r13.xyz;
  r6.w = dot(r13.xyz, r13.xyz);
  r6.w = sqrt(r6.w);
  r13.xyz = r13.xyz / r6.www;
  r6.w = saturate(dot(r13.xyz, r0.xyz));
  r7.y = 11 * cb4[79].x;
  r7.y = exp2(r7.y);
  r7.w = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = r7.y * r6.w;
  r6.w = exp2(r6.w);
  r6.x = r6.x * r6.w;
  r6.x = r7.w ? 0 : r6.x;
  r6.w = cb4[79].y * r10.y;
  r6.x = r6.x * r6.w;
  r6.w = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r6.w = cb4[81].y * r6.w;
  r7.y = cb4[81].z * r8.w + r7.z;
  r7.z = cb4[81].w * r10.w;
  r7.y = r7.y * r7.z;
  r7.z = cb4[82].x * r12.z + r12.y;
  r7.y = r7.y * r7.z;
  r12.w = saturate(r7.y * r6.w);
  r6.w = cmp(r8.y >= r8.z);
  r6.w = r6.w ? 1.000000 : 0;
  r13.xy = r8.zy;
  r13.zw = float2(-1,0.666666687);
  r14.xy = r5.yz * r6.yz + -r13.xy;
  r14.zw = float2(1,-1);
  r13.xyzw = r6.wwww * r14.xyzw + r13.xyzw;
  r5.y = cmp(r8.x >= r13.x);
  r5.y = r5.y ? 1.000000 : 0;
  r14.xyz = r13.xyw;
  r14.w = r8.x;
  r13.xyw = r14.wyx;
  r13.xyzw = r13.xyzw + -r14.xyzw;
  r13.xyzw = r5.yyyy * r13.xyzw + r14.xyzw;
  r5.y = min(r13.w, r13.y);
  r5.y = r13.x + -r5.y;
  r5.z = r13.w + -r13.y;
  r6.y = r5.y * 6 + 1.00000001e-010;
  r5.z = r5.z / r6.y;
  r5.z = r13.z + r5.z;
  r6.y = 360 * abs(r5.z);
  r6.zw = float2(0,1.40129846e-045);
  while (true) {
    r7.y = cmp((int)r6.w >= 21);
    if (r7.y != 0) break;
    r7.y = cmp(icb[r6.w+3].x >= r6.y);
    if (r7.y != 0) {
      r6.z = r6.w;
      break;
    }
    r6.w = (int)r6.w + 1;
    r6.z = 0;
  }
  r6.y = (int)r6.z + -1;
  r6.w = (int)r6.y & 0x80000000;
  r7.y = max((int)-r6.y, (int)r6.y);
  r7.z = (int)r7.y & 3;
  r7.w = -(int)r7.z;
  r6.w = r6.w ? r7.w : r7.z;
  r7.z = (int)r6.y ^ 4;
  r7.y = (uint)r7.y >> 2;
  r7.w = -(int)r7.y;
  r7.z = (int)r7.z & 0x80000000;
  r7.y = r7.z ? r7.w : r7.y;
  r7.z = (int)r6.z & 0x80000000;
  r7.w = max((int)-r6.z, (int)r6.z);
  r8.w = (int)r7.w & 3;
  r9.w = -(int)r8.w;
  r7.z = r7.z ? r9.w : r8.w;
  r8.w = (int)r6.z ^ 4;
  r7.w = (uint)r7.w >> 2;
  r9.w = -(int)r7.w;
  r8.w = (int)r8.w & 0x80000000;
  r7.w = r8.w ? r9.w : r7.w;
  r8.w = dot(cb0[r7.y+328].xyzw, icb[r6.w+0].xyzw);
  r9.w = dot(cb0[r7.y+338].xyzw, icb[r6.w+0].xyzw);
  r6.w = dot(cb0[r7.y+348].xyzw, icb[r6.w+0].xyzw);
  x0[0].x = r8.w;
  x0[1].x = r9.w;
  x0[2].x = r6.w;
  r6.w = dot(cb0[r7.w+328].xyzw, icb[r7.z+0].xyzw);
  r7.y = dot(cb0[r7.w+338].xyzw, icb[r7.z+0].xyzw);
  r7.z = dot(cb0[r7.w+348].xyzw, icb[r7.z+0].xyzw);
  x1[0].x = r6.w;
  x1[1].x = r7.y;
  x1[2].x = r7.z;
  r6.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.y = -0.200000003 + r6.w;
  r7.y = 10 * r7.y;
  r7.y = max(0, r7.y);
  r7.y = min(6, r7.y);
  r7.z = (int)r7.y;
  r7.w = (int)r7.z + 1;
  r8.xy = (int2)r7.zw & int2(3,3);
  r7.zw = (uint2)r7.zw >> int2(2,2);
  r8.z = dot(cb0[r7.z+334].xyzw, icb[r8.x+0].xyzw);
  r8.w = dot(cb0[r7.z+344].xyzw, icb[r8.x+0].xyzw);
  r9.w = dot(cb0[r7.z+354].xyzw, icb[r8.x+0].xyzw);
  x2[0].x = r8.z;
  x2[1].x = r8.w;
  x2[2].x = r9.w;
  r8.z = dot(cb0[r7.w+334].xyzw, icb[r8.y+0].xyzw);
  r8.w = dot(cb0[r7.w+344].xyzw, icb[r8.y+0].xyzw);
  r9.w = dot(cb0[r7.w+354].xyzw, icb[r8.y+0].xyzw);
  x3[0].x = r8.z;
  x3[1].x = r8.w;
  x3[2].x = r9.w;
  r8.z = dot(cb0[r7.z+336].xyzw, icb[r8.x+0].xyzw);
  r8.w = dot(cb0[r7.z+346].xyzw, icb[r8.x+0].xyzw);
  r7.z = dot(cb0[r7.z+356].xyzw, icb[r8.x+0].xyzw);
  x4[0].x = r8.z;
  x4[1].x = r8.w;
  x4[2].x = r7.z;
  r7.z = dot(cb0[r7.w+336].xyzw, icb[r8.y+0].xyzw);
  r8.x = dot(cb0[r7.w+346].xyzw, icb[r8.y+0].xyzw);
  r7.w = dot(cb0[r7.w+356].xyzw, icb[r8.y+0].xyzw);
  x5[0].x = r7.z;
  x5[1].x = r8.x;
  x5[2].x = r7.w;
  r8.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r8.xyz = max(float3(0,0,0), r8.xyz);
  r8.xyz = min(float3(0.99000001,0.99000001,0.99000001), r8.xyz);
  r8.xyz = cb0[213].xyz * r8.xyz;
  r14.xyz = (int3)r8.xyz;
  r14.w = 0;
  r14.xyzw = t0.Load(r14.xyzw).xyzw;
  r14.xyzw = (uint4)r14.xyzw;
  r7.z = 1 + cb0[213].w;
  r8.xyz = r8.xyz / r14.www;
  r8.xyz = frac(r8.xyz);
  r8.xyz = cb0[213].www * r8.xyz;
  r8.xyz = r14.xyz * r7.zzz + r8.xyz;
  r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
  r8.xyz = cb0[214].xyz * r8.xyz;
  r7.z = 0.0799999982 * r6.x;
  r10.yzw = -r6.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r11.xyz;
  r10.yzw = r2.www * r10.yzw + r7.zzz;
  r13.yzw = r11.xyz * cb0[136].www + cb0[136].xyz;
  r10.yzw = r10.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r14.xyz = float3(0.449999988,0.449999988,0.449999988) * r10.yzw;
  r10.yzw = r10.yzw * float3(0.449999988,0.449999988,0.449999988) + r13.yzw;
  r10.yzw = r2.www ? r10.yzw : r13.yzw;
  r13.yzw = t1.SampleLevel(s0_s, r8.xyz, 0).xyz;
  r7.z = t2.SampleLevel(s0_s, r8.xyz, 0).y;
  r7.z = r7.z * 2 + -1;
  r7.w = t4.SampleLevel(s0_s, r8.xyz, 0).y;
  r7.w = r7.w * 2 + -1;
  r8.w = t6.SampleLevel(s0_s, r8.xyz, 0).y;
  r8.w = r8.w * 2 + -1;
  r7.z = r7.z * r13.y;
  r15.y = 1.73205125 * r7.z;
  r7.z = r7.w * r13.z;
  r15.w = 1.73205125 * r7.z;
  r7.z = r8.w * r13.w;
  r18.y = 1.73205125 * r7.z;
  r7.z = t3.SampleLevel(s0_s, r8.xyz, 0).y;
  r7.z = r7.z * 2 + -1;
  r7.w = t5.SampleLevel(s0_s, r8.xyz, 0).y;
  r7.w = r7.w * 2 + -1;
  r8.x = t7.SampleLevel(s0_s, r8.xyz, 0).y;
  r8.x = r8.x * 2 + -1;
  r7.zw = r7.zw * r13.yz;
  r8.x = r8.x * r13.w;
  r15.xz = r13.yz;
  r8.y = dot(r15.xy, float2(0.886227548,-1.02332771));
  r19.x = r7.z * 2.21557164 + r8.y;
  r7.z = dot(r15.zw, float2(0.886227548,-1.02332771));
  r19.y = r7.w * 2.21557164 + r7.z;
  r18.x = r13.w;
  r7.z = dot(r18.xy, float2(0.886227548,-1.02332771));
  r19.z = r8.x * 2.21557164 + r7.z;
  r8.xyz = max(float3(0,0,0), r19.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r15.xyw = float3(0.318309873,0.318309873,0.318309873) * r8.yzx;
  r7.z = cmp(r15.x >= r15.y);
  r7.z = r7.z ? 1.000000 : 0;
  r18.xy = r15.yx;
  r18.zw = float2(-1,0.666666687);
  r8.xy = r8.yz * float2(0.318309873,0.318309873) + -r18.xy;
  r8.zw = float2(1,-1);
  r8.xyzw = r7.zzzz * r8.xyzw + r18.xyzw;
  r7.z = cmp(r15.w >= r8.x);
  r7.z = r7.z ? 1.000000 : 0;
  r15.xyz = r8.xyw;
  r8.xyw = r15.wyx;
  r8.xyzw = r8.xyzw + -r15.xyzw;
  r8.xyzw = r7.zzzz * r8.xyzw + r15.xyzw;
  r7.z = min(r8.w, r8.y);
  r7.z = r8.x + -r7.z;
  r7.w = r8.w + -r8.y;
  r8.y = r7.z * 6 + 1.00000001e-010;
  r7.w = r7.w / r8.y;
  r7.w = r8.z + r7.w;
  r8.y = 1.00000001e-010 + r8.x;
  r7.z = r7.z / r8.y;
  r7.z = cb0[361].z * r7.z;
  r8.yzw = float3(1,0.666666687,0.333333343) + abs(r7.www);
  r8.yzw = frac(r8.yzw);
  r8.yzw = r8.yzw * float3(6,6,6) + float3(-3,-3,-3);
  r8.yzw = saturate(float3(-1,-1,-1) + abs(r8.yzw));
  r8.yzw = float3(-1,-1,-1) + r8.yzw;
  r8.yzw = r7.zzz * r8.yzw + float3(1,1,1);
  r8.xyz = r8.xxx * r8.yzw;
  r8.xyz = cb0[361].xxx * r8.xyz;
  r7.z = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.w = min(cb0[361].y, r7.z);
  r7.z = max(1.00000001e-010, r7.z);
  r7.z = r7.w / r7.z;
  r13.y = t9[0].val[8/4];
  r13.z = t9[0].val[8/4+1];
  r15.x = dot(r13.yz, float2(1,1));
  r13.y = t9[1].val[8/4];
  r13.z = t9[1].val[8/4+1];
  r15.y = dot(r13.yz, float2(1,1));
  r13.y = t9[2].val[8/4];
  r13.z = t9[2].val[8/4+1];
  r15.z = dot(r13.yz, float2(1,1));
  r18.x = t9[3].val[8/4];
  r18.y = t9[4].val[8/4];
  r18.z = t9[5].val[8/4];
  r13.yzw = r18.xyz + r15.xyz;
  r13.yzw = max(float3(0,0,0), r13.yzw);
  r13.yzw = cb0[362].xyz * r13.yzw;
  r8.xyz = r8.xyz * r7.zzz + r13.yzw;
  r8.xyz = r8.xyz * r11.xyz;
  r13.yzw = r11.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r13.yzw = r11.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r13.yzw;
  r13.yzw = r11.xyz * float3(2.75519991,2.75519991,2.75519991) + r13.yzw;
  r13.yzw = float3(1.33200002,1.33200002,1.33200002) + r13.yzw;
  r13.yzw = max(float3(1,1,1), r13.yzw);
  if (cb2[0].z != 0) {
    r15.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r15.yzw = r15.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r18.xyzw = cb2[51].xyzw * r2.yyyy;
      r18.xyzw = r2.xxxx * cb2[50].xyzw + r18.xyzw;
      r18.xyzw = r2.zzzz * cb2[52].xyzw + r18.xyzw;
      r18.xyzw = cb2[53].xyzw + r18.xyzw;
      r7.zw = r18.xy / r18.ww;
      r18.xy = cmp(r7.zw >= float2(0,0));
      r19.xy = cmp(float2(1,1) >= r7.zw);
      r18.xy = r18.xy ? r19.xy : 0;
      r8.w = r18.y ? r18.x : 0;
      if (r8.w != 0) {
        r7.z = t11.SampleLevel(s2_s, r7.zw, 0).x;
        r7.w = cmp(r18.z < r7.z);
        r7.z = cmp(0.99000001 < r7.z);
        r7.z = (int)r7.z | (int)r7.w;
        r18.x = r7.z ? 1.000000 : 0;
      } else {
        r18.x = 1;
      }
    } else {
      r18.x = 1;
    }
    if (cb2[9].z != 0) {
      r7.z = cb2[9].z;
      r7.w = 0;
      while (true) {
        r8.w = cmp((uint)r7.w >= asuint(cb2[9].z));
        if (r8.w != 0) break;
        r8.w = dot(cb2[10].xyzw, icb[r7.w+0].xyzw);
        r8.w = cmp(v7.w < r8.w);
        if (r8.w != 0) {
          r7.z = r7.w;
          break;
        }
        r7.w = (int)r7.w + 1;
      }
      r7.w = cmp((uint)r7.z < asuint(cb2[9].z));
      if (r7.w != 0) {
        r7.w = (uint)r7.z << 2;
        r19.xyzw = cb2[r7.w+12].xyzw * r2.yyyy;
        r19.xyzw = r2.xxxx * cb2[r7.w+11].xyzw + r19.xyzw;
        r19.xyzw = r2.zzzz * cb2[r7.w+13].xyzw + r19.xyzw;
        r19.xyzw = cb2[r7.w+14].xyzw + r19.xyzw;
        r20.xyzw = r19.xyxy / r19.wwww;
        r19.xy = cmp(r20.zw >= cb2[r7.z+27].xy);
        r7.zw = cmp(cb2[r7.z+27].zw >= r20.zw);
        r7.zw = r7.zw ? r19.xy : 0;
        r7.z = r7.w ? r7.z : 0;
        if (r7.z != 0) {
          r20.xyzw = r20.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r7.zw = frac(r20.zw);
          r20.xyzw = floor(r20.xyzw);
          r21.xyzw = float4(0.5,1.5,0.5,0.5) + r20.zwzw;
          r21.xyzw = cb2[31].zwzw * r21.xyzw;
          r22.x = t10.SampleLevel(s1_s, r21.xy, 0).x;
          r20.xyzw = float4(1.5,1.5,1.5,0.5) + r20.xyzw;
          r20.xyzw = cb2[31].zwzw * r20.xyzw;
          r22.y = t10.SampleLevel(s1_s, r20.xy, 0).x;
          r22.z = t10.SampleLevel(s1_s, r20.zw, 0).x;
          r22.w = t10.SampleLevel(s1_s, r21.zw, 0).x;
          r8.w = r19.z * 4000 + -1;
          r19.xyzw = saturate(r22.xyzw * float4(4000,4000,4000,4000) + -r8.wwww);
          r19.yz = r19.zy + -r19.wx;
          r19.xy = r7.zz * r19.yz + r19.wx;
          r7.z = r19.y + -r19.x;
          r7.z = r7.w * r7.z + r19.x;
        } else {
          r7.z = 1;
        }
      } else {
        r7.z = 1;
      }
    } else {
      r7.z = 1;
    }
    r15.x = 1;
    r7.w = dot(float4(1,1,1,1), r15.xyzw);
    r18.yzw = r15.yzw;
    r8.w = dot(r18.xyzw, float4(1,1,1,1));
    r8.w = -1 + r8.w;
    r7.w = r7.w * r8.w + 1;
    r8.w = saturate(v7.w * cb2[9].x + cb2[9].y);
    r8.w = r8.w * r8.w;
    r7.w = r7.w + -r7.z;
    r7.z = r8.w * r7.w + r7.z;
    r7.z = cmp(r7.z >= cb0[327].x);
    r7.w = r7.z ? 1.000000 : 0;
    if (r7.z != 0) {
      r7.z = round(cb4[77].z);
      r7.z = (uint)r7.z;
      r7.z = min(2, (uint)r7.z);
      r8.w = 1.00000001e-010 + r13.x;
      r5.y = r5.y / r8.w;
      r8.w = abs(r5.z) * 360 + -icb[r6.y+3].x;
      r6.y = icb[r6.z+3].x + -icb[r6.y+3].x;
      r6.y = r8.w / r6.y;
      r6.z = x0[r7.z+0].x;
      r8.w = x1[r7.z+0].x;
      r8.w = r8.w + -r6.z;
      r6.y = r6.y * r8.w + r6.z;
      r5.z = abs(r5.z) * 360 + r6.y;
      r6.y = cmp(r5.z < 0);
      r6.z = cmp(360 < r5.z);
      r15.xy = float2(360,-360) + r5.zz;
      r5.z = r6.z ? r15.y : r5.z;
      r5.z = r6.y ? r15.x : r5.z;
      r6.y = trunc(r7.y);
      r6.y = r6.y * 0.100000001 + 0.200000003;
      r6.y = r6.w + -r6.y;
      r6.y = saturate(10 * r6.y);
      r6.z = x2[r7.z+0].x;
      r6.w = x3[r7.z+0].x;
      r6.w = r6.w + -r6.z;
      r6.z = r6.y * r6.w + r6.z;
      r6.w = x4[r7.z+0].x;
      r7.y = x5[r7.z+0].x;
      r7.y = r7.y + -r6.w;
      r6.y = r6.y * r7.y + r6.w;
      r6.w = cmp(0 < r5.y);
      r6.z = saturate(r6.z + r5.y);
      r5.y = r6.w ? r6.z : r5.y;
      r6.y = saturate(r13.x + r6.y);
      r15.xyz = r5.zzz * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
      r15.xyz = frac(r15.xyz);
      r15.xyz = r15.xyz * float3(6,6,6) + float3(-3,-3,-3);
      r15.xyz = saturate(float3(-1,-1,-1) + abs(r15.xyz));
      r15.xyz = float3(-1,-1,-1) + r15.xyz;
      r15.xyz = r5.yyy * r15.xyz + float3(1,1,1);
      r18.xyz = r15.xyz * r6.yyy;
      r9.xyz = r18.xyz * r9.xyz;
      r6.yzw = r6.yyy * r15.xyz + -r9.xyz;
      r6.yzw = r0.www * r6.yzw + r9.xyz;
      r9.xyz = r6.yzw * r1.www;
      r15.xyz = cmp(float3(0,0,0) >= r9.xyz);
      r18.xyz = log2(r9.xyz);
      r18.xyz = float3(0.454545438,0.454545438,0.454545438) * r18.xyz;
      r18.xyz = exp2(r18.xyz);
      r15.xyz = r15.xyz ? float3(0,0,0) : r18.xyz;
      r18.xyz = float3(1,1,1) + -r15.xyz;
      r17.xyz = r18.xyz * r17.xyz;
      r17.xyz = -r17.xyz * float3(2,2,2) + float3(1,1,1);
      r16.xyz = r15.xyz * r16.xyz;
      r16.xyz = r16.xyz + r16.xyz;
      r15.xyz = cmp(r15.xyz >= float3(0.5,0.5,0.5));
      r15.xyz = r15.xyz ? r17.xyz : r16.xyz;
      r16.xyz = cmp(float3(0,0,0) >= r15.xyz);
      r15.xyz = log2(r15.xyz);
      r15.xyz = float3(2.20000005,2.20000005,2.20000005) * r15.xyz;
      r15.xyz = exp2(r15.xyz);
      r15.xyz = r16.xyz ? float3(0,0,0) : r15.xyz;
      r6.yzw = -r6.yzw * r1.www + r15.xyz;
      r6.yzw = r10.xxx * r6.yzw + r9.xyz;
      r9.xyz = cb4[16].xyz + -r6.yzw;
      r5.yzw = r5.www * r9.xyz + r6.yzw;
      r5.yzw = saturate(r4.www * -r5.yzw + r5.yzw);
      r0.w = v2.z * r7.x;
      r0.w = cmp(r0.w >= cb4[83].z);
      r1.w = saturate(cb4[79].z);
      r1.w = r1.w * cb0[139].y + cb0[139].x;
      r4.w = dot(cb0[r5.x+358].xyz, cb0[r5.x+358].xyz);
      r4.w = rsqrt(r4.w);
      r6.yzw = cb0[r5.x+358].xyz * r4.www;
      r0.x = dot(r0.xyz, r6.yzw);
      r0.x = r0.x * 0.5 + 0.5;
      r0.y = 1 + -cb0[327].x;
      r0.y = v2.x * r0.y + cb0[327].x;
      r0.x = r0.x * r0.y;
      r0.y = r0.w ? 1 : 0.699999988;
      r0.z = max(r5.y, r5.z);
      r0.z = max(r0.z, r5.w);
      r0.y = r0.z * r0.y;
      r0.z = max(0.00100000005, r0.z);
      r0.y = r0.y / r0.z;
      r0.z = dot(-r3.xyz, r6.yzw);
      r0.z = saturate(3 * r0.z);
      r3.xyz = r5.yzw * r0.yyy + -r5.yzw;
      r3.xyz = r0.zzz * r3.xyz + r5.yzw;
      r0.x = cmp(r0.x >= cb0[327].x);
      r0.y = max(cb0[226].y, r1.w);
      r0.z = max(r11.x, r11.y);
      r0.z = max(r0.z, r11.z);
      r0.y = r0.z + r0.y;
      r0.y = max(0, r0.y);
      r0.z = max(0.00100000005, r0.z);
      r0.y = r0.y / r0.z;
      r5.xyz = r11.xyz * r0.yyy;
      r0.x = r0.x ? r0.w : 0;
      r0.y = r0.x ? 1.000000 : 0;
      r0.yzw = r0.yyy * r11.xyz;
      r0.yzw = float3(0.200000003,0.200000003,0.200000003) * r0.yzw;
      r5.xyz = r5.xyz * r6.xxx;
      r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
      r3.xyz = cb2[8].xxx * r3.xyz;
      r3.xyz = float3(0.200000003,0.200000003,0.200000003) * r3.xyz;
      r6.xyz = cb2[6].xyz * r7.www;
      r5.xyz = r6.yzx * r5.yzx;
      r3.xyz = r6.xyz * r3.xyz;
      r3.xyz = r0.xxx ? float3(0,0,0) : r3.xyz;
      r0.xyz = r0.yzw * r6.xyz + r3.xyz;
      r0.w = r5.z;
    } else {
      r5.xy = float2(0,0);
      r0.xyzw = float4(0,0,0,0);
    }
    r1.w = asuint(cb2[8].z) >> 8;
    r1.w = r3.w ? r1.w : 0;
    r0.xyzw = r1.wwww ? r0.xyzw : float4(0,0,0,0);
    r3.yz = r1.ww ? r5.xy : float2(0,0);
    r3.x = r0.w;
  } else {
    r0.xyz = float3(0,0,0);
    r3.xyz = float3(0,0,0);
  }
  r0.xyz = r3.xyz + r0.xyz;
  r0.w = cmp(0 < cb2[150].w);
  if (r0.w != 0) {
    r3.xyz = cb0[5].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[4].xyw + r3.xyz;
    r3.xyz = r2.zzz * cb0[6].xyw + r3.xyz;
    r3.xyz = cb0[7].xyw + r3.xyz;
    r3.xy = r3.xy / r3.zz;
    r5.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r3.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r5.z = cb0[208].z * r0.w;
    r3.xyzw = t12.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v6.w * r3.w;
    r3.xyz = v6.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v6.xyz;
    r5.x = v6.w;
  }
  r5.yzw = r2.www ? float3(0,0,0) : r14.xyz;
  r5.yzw = r10.yzw + r5.yzw;
  r5.yzw = r5.yzw + -r0.xyz;
  r0.xyz = cb0[145].yyy * r5.yzw + r0.xyz;
  r12.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r4.x = t8[r4.x].val[0/4];
    r4.z = t8[r4.x].val[0/4+1];
    r4.w = t8[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r2.xyz;
    r5.y = t8[r4.y].val[0/4];
    r5.z = t8[r4.y].val[0/4+1];
    r5.w = t8[r4.y].val[0/4+2];
    r5.yzw = float3(1,1,1) + r5.yzw;
    r4.xyz = cmp(r5.yzw < abs(r4.xzw));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r12.xyzw = r0.wwww ? r2.yzwx : r12.xyzw;
    o0.w = r12.w;
  } else {
    o0.w = r12.w;
  }
  r0.xyz = r8.xyz * r13.yzw + r0.xyz;
  r0.xyz = r0.xyz + r12.xyz;
  r0.xyz = r0.xyz * r5.xxx + r3.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[r5.x+358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb2[166].xyz + -cb2[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb2[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}