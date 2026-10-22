// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

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

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[86];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[362];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r0.xyz, r1.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r1.w = 10 * r0.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.99000001 + 0.00999999978;
  r3.xy = -cb0[129].xy + v5.xy;
  r3.zw = cb0[130].zw * r3.xy;
  r4.xyz = cb3[2].yyy * cb0[5].xyw;
  r4.xyz = cb3[2].xxx * cb0[4].xyw + r4.xyz;
  r4.xyz = cb3[2].zzz * cb0[6].xyw + r4.xyz;
  r4.xyz = cb0[7].xyw + r4.xyz;
  r4.xy = r4.xy / r4.zz;
  r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r4.xy = r3.xy * cb0[130].zw + -r4.xy;
  r5.xyz = -cb3[2].xyz + cb0[67].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb3[48].y;
  r2.w = max(cb3[48].z, r2.w);
  r2.w = min(1, r2.w);
  r2.w = -cb3[48].z + r2.w;
  r2.w = saturate(cb3[49].x * r2.w);
  r4.z = cb3[49].y + -cb3[49].z;
  r4.z = r2.w * r4.z + cb3[49].z;
  r4.w = 0.00100000005 * r4.z;
  r4.x = r4.z * 0.000500000024 + r4.x;
  r4.z = 1 / r4.w;
  r5.x = r4.x * r4.z;
  r4.x = cb0[130].x / cb0[130].y;
  r4.z = r4.w * r4.x;
  r4.y = r4.z * 0.5 + r4.y;
  r4.z = 1 / r4.z;
  r5.y = r4.y * r4.z;
  r4.yz = float2(-0.5,-0.5) + r5.xy;
  r4.y = dot(r4.yz, r4.yz);
  r4.y = sqrt(r4.y);
  r4.y = -r4.y * 2 + 1;
  r4.z = 2.33299994 * r4.y;
  r4.z = r4.z * r4.z;
  r4.z = 1.44269514 * r4.z;
  r4.z = exp2(r4.z);
  r4.z = 1 / r4.z;
  r4.w = cmp(9.99999975e-006 < abs(r4.y));
  r4.y = cmp(r4.y >= 0);
  r4.z = 1 + -r4.z;
  r4.y = r4.y ? r4.z : 0;
  r4.y = r4.y ? r4.w : 0;
  r4.z = r4.y * 5 + -5;
  r4.zw = saturate(cb3[52].yw + r4.zz);
  r4.z = 1 + -r4.z;
  r4.z = r4.z * r4.w + -r4.y;
  r4.y = r2.w * r4.z + r4.y;
  r5.xyz = -cb3[6].xyz + cb3[5].xyz;
  r5.xyz = r2.www * r5.xyz + cb3[6].xyz;
  r4.yzw = r5.xyz * r4.yyy;
  r4.yzw = r4.yzw * r1.www;
  r0.w = cb3[53].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb3[53].z + cb3[53].y;
  r5.xy = cb0[142].zz * float2(0.200000003,0.00999999978) + v3.yy;
  r5.xy = r5.xy + r5.xy;
  r5.z = 2 * v3.x;
  r1.w = t9.SampleBias(s1_s, r5.zx, cb0[143].y).x;
  r5.xw = v3.xy * float2(2,2) + float2(-1,-1);
  r2.w = min(abs(r5.w), abs(r5.x));
  r6.x = max(abs(r5.w), abs(r5.x));
  r6.x = 1 / r6.x;
  r2.w = r6.x * r2.w;
  r6.x = r2.w * r2.w;
  r6.y = r6.x * 0.0208350997 + -0.0851330012;
  r6.y = r6.x * r6.y + 0.180141002;
  r6.y = r6.x * r6.y + -0.330299497;
  r6.x = r6.x * r6.y + 0.999866009;
  r6.y = r6.x * r2.w;
  r6.z = cmp(abs(r5.x) < abs(r5.w));
  r6.y = r6.y * -2 + 1.57079637;
  r6.y = r6.z ? r6.y : 0;
  r2.w = r2.w * r6.x + r6.y;
  r6.x = cmp(r5.x < -r5.x);
  r6.x = r6.x ? -3.141593 : 0;
  r2.w = r6.x + r2.w;
  r6.x = min(r5.w, r5.x);
  r6.y = max(r5.w, r5.x);
  r6.x = cmp(r6.x < -r6.x);
  r6.y = cmp(r6.y >= -r6.y);
  r6.x = r6.y ? r6.x : 0;
  r2.w = r6.x ? -r2.w : r2.w;
  r2.w = 0.159154952 * r2.w;
  r6.x = frac(r2.w);
  r5.xw = r5.xw * r5.xw;
  r2.w = r5.x + r5.w;
  r2.w = sqrt(r2.w);
  r6.yz = cb0[142].zz * float2(-0.400000006,-0.300000012) + r2.ww;
  r5.xw = t10.SampleBias(s2_s, r6.xy, cb0[143].y).xy;
  r5.xw = float2(-0.5,-0.5) + r5.xw;
  r5.xw = cb3[54].xx * r5.xw;
  r5.xw = r5.xw * float2(2,2) + v3.xy;
  r5.x = t9.SampleBias(s1_s, r5.xw, cb0[143].y).x;
  r7.xy = float2(0.5,0.5) * r6.xz;
  r6.yz = t10.SampleBias(s2_s, r7.xy, cb0[143].y).xy;
  r6.yz = float2(-0.5,-0.5) + r6.yz;
  r6.yz = cb3[54].xx * r6.yz;
  r6.yz = r6.yz * float2(2,2) + v3.xy;
  r5.w = t9.SampleBias(s1_s, r6.yz, cb0[143].y).x;
  r5.x = r5.x * r5.w;
  r5.w = r5.x * r1.w;
  r5.w = saturate(r5.w + r5.w);
  r6.y = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r6.z = cb3[54].y * r5.w;
  r6.z = exp2(r6.z);
  r6.z = 0.5 * r6.z;
  r6.z = r6.y ? 0 : r6.z;
  r1.w = r1.w * r5.x + -0.5;
  r1.w = saturate(r1.w + r1.w);
  r1.w = 1 + -r1.w;
  r5.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r7.y = cb3[54].y * r1.w;
  r7.y = exp2(r7.y);
  r7.y = 1 + -r7.y;
  r7.y = r5.x ? 1 : r7.y;
  r8.x = 500 * r7.y;
  r7.y = r7.y * 0.5 + 0.5;
  r8.x = saturate(r8.x);
  r7.y = r7.y + -r6.z;
  r6.z = r8.x * r7.y + r6.z;
  r7.y = dot(-cb0[18].xyz, r0.xyz);
  r7.y = 1 + -r7.y;
  r6.z = r7.y * r6.z;
  r6.z = r6.z * cb3[54].w + -cb3[54].w;
  r6.z = saturate(cb3[55].z + r6.z);
  r3.z = t10.SampleBias(s2_s, r3.zw, cb0[143].y).x;
  r3.z = -r3.z * 0.5 + 1;
  r3.z = r3.z * r7.y + cb3[64].x;
  r3.z = -1 + r3.z;
  r3.z = saturate(ceil(r3.z));
  r8.xyz = cb3[9].xyz * r3.zzz;
  r9.xyz = r6.zzz * cb3[8].xyz + r8.xyz;
  r9.xyz = cb3[56].xxx * r9.xyz;
  r9.xyz = r9.xyz * r0.www;
  r8.xyz = cb3[55].www * r8.xyz;
  r8.xyz = max(r9.xyz, r8.xyz);
  r9.xyzw = t11.SampleBias(s3_s, v3.xy, cb0[143].y).xyzw;
  r10.xyz = cb3[11].xyz * r9.zzz;
  r11.xyz = cb3[64].yyy * r10.xyz;
  r3.w = cb0[142].z * cb3[65].x + v3.x;
  r12.x = cb3[65].w * r3.w;
  r3.w = cb0[142].z * cb3[66].x + v3.y;
  r12.y = cb3[66].y * r3.w;
  r3.w = t12.SampleBias(s4_s, r12.xy, cb0[143].y).x;
  r3.w = -0.5 + r3.w;
  r3.w = r3.w + r3.w;
  r12.xy = cb3[67].xz * r3.ww;
  r3.w = t13.SampleBias(s5_s, v3.xy, cb0[143].y).y;
  r3.w = r3.w * cb3[67].w + cb3[68].x;
  r12.xy = r12.xy * r3.ww + v3.xy;
  r3.w = t10.SampleBias(s2_s, r12.xy, cb0[143].y).x;
  r3.w = -1 + r3.w;
  r12.xy = cb3[69].xy + r3.ww;
  r12.xy = saturate(ceil(r12.xy));
  r12.xz = float2(1,1) + -r12.xy;
  r6.z = r12.x * r12.y;
  r10.xyz = -r10.xyz * cb3[64].yyy + cb3[16].xyz;
  r10.xyz = r6.zzz * r10.xyz + r11.xyz;
  r11.xy = cb3[70].yz + r3.ww;
  r11.xy = saturate(ceil(r11.xy));
  r11.xz = float2(1,1) + -r11.xy;
  r3.w = r11.x * r11.y;
  r10.xyz = r3.www * -r10.xyz + r10.xyz;
  r8.xyz = r10.xyz + r8.xyz;
  r5.y = t9.SampleBias(s1_s, r5.zy, cb0[143].y).x;
  r10.xy = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r2.ww;
  r6.w = r10.x;
  r6.xw = t10.SampleBias(s2_s, r6.xw, cb0[143].y).xy;
  r6.xw = float2(-0.5,-0.5) + r6.xw;
  r6.xw = cb3[54].xx * r6.xw;
  r6.xw = r6.xw * float2(2,2) + v3.xy;
  r2.w = t9.SampleBias(s1_s, r6.xw, cb0[143].y).x;
  r7.z = 0.5 * r10.y;
  r6.xw = t10.SampleBias(s2_s, r7.xz, cb0[143].y).xy;
  r6.xw = float2(-0.5,-0.5) + r6.xw;
  r6.xw = cb3[54].xx * r6.xw;
  r6.xw = r6.xw * float2(2,2) + v3.xy;
  r5.z = t9.SampleBias(s1_s, r6.xw, cb0[143].y).x;
  r2.w = r5.z * r2.w;
  r5.z = r5.y * r2.w;
  r5.z = saturate(r5.z + r5.z);
  r6.x = cmp(0 >= r5.z);
  r5.z = log2(r5.z);
  r6.w = cb3[70].w * r5.z;
  r6.w = exp2(r6.w);
  r6.w = 0.5 * r6.w;
  r6.w = r6.x ? 0 : r6.w;
  r2.w = r5.y * r2.w + -0.5;
  r2.w = saturate(r2.w + r2.w);
  r2.w = 1 + -r2.w;
  r5.y = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r7.x = cb3[70].w * r2.w;
  r7.x = exp2(r7.x);
  r7.x = 1 + -r7.x;
  r7.x = r5.y ? 1 : r7.x;
  r10.x = 500 * r7.x;
  r7.x = r7.x * 0.5 + 0.5;
  r10.x = saturate(r10.x);
  r7.x = r7.x + -r6.w;
  r6.w = r10.x * r7.x + r6.w;
  r6.w = r6.w * r7.y;
  r6.w = r6.w * cb3[71].y + -cb3[71].y;
  r6.w = saturate(cb3[72].x + r6.w);
  r7.xzw = cb3[21].xyz * r3.zzz;
  r10.xyz = r6.www * cb3[18].xyz + r7.xzw;
  r10.xyz = cb3[56].zzz * r10.xyz;
  r7.xzw = cb3[56].yyy * r7.xzw;
  r7.xzw = max(r10.xyz, r7.xzw);
  r7.xzw = r8.xyz + r7.xzw;
  r6.w = cb3[72].y * r5.w;
  r6.w = exp2(r6.w);
  r6.w = 0.5 * r6.w;
  r6.w = r6.y ? 0 : r6.w;
  r8.x = cb3[72].y * r1.w;
  r8.x = exp2(r8.x);
  r8.x = 1 + -r8.x;
  r8.x = r5.x ? 1 : r8.x;
  r10.x = 500 * r8.x;
  r8.x = r8.x * 0.5 + 0.5;
  r10.x = saturate(r10.x);
  r8.x = r8.x + -r6.w;
  r6.w = r10.x * r8.x + r6.w;
  r6.w = r6.w * r7.y;
  r6.w = r6.w * cb3[72].w + -cb3[72].w;
  r6.w = saturate(cb3[73].z + r6.w);
  r8.xyz = cb3[24].xyz * r3.zzz;
  r10.xyz = r6.www * cb3[23].xyz + r8.xyz;
  r10.xyz = cb3[57].zzz * r10.xyz;
  r10.xyz = r10.xyz * r0.www;
  r8.xyz = cb3[57].yyy * r8.xyz;
  r8.xyz = max(r10.xyz, r8.xyz);
  r7.xzw = r8.xyz + r7.xzw;
  r6.w = cb3[73].w * r5.w;
  r6.w = exp2(r6.w);
  r6.w = 0.5 * r6.w;
  r6.w = r6.y ? 0 : r6.w;
  r8.x = cb3[73].w * r1.w;
  r8.x = exp2(r8.x);
  r8.x = 1 + -r8.x;
  r8.x = r5.x ? 1 : r8.x;
  r10.x = 500 * r8.x;
  r8.x = r8.x * 0.5 + 0.5;
  r10.x = saturate(r10.x);
  r8.x = r8.x + -r6.w;
  r6.w = r10.x * r8.x + r6.w;
  r6.w = r6.w * r7.y;
  r6.w = r6.w * cb3[74].y + -cb3[74].y;
  r6.w = saturate(cb3[75].x + r6.w);
  r8.xyz = cb3[27].xyz * r3.zzz;
  r10.xyz = r6.www * cb3[26].xyz + r8.xyz;
  r10.xyz = cb3[58].zzz * r10.xyz;
  r10.xyz = r10.xyz * r0.www;
  r8.xyz = cb3[58].yyy * r8.xyz;
  r8.xyz = max(r10.xyz, r8.xyz);
  r7.xzw = r8.xyz + r7.xzw;
  r5.w = cb3[75].y * r5.w;
  r5.w = exp2(r5.w);
  r5.w = 0.5 * r5.w;
  r5.w = r6.y ? 0 : r5.w;
  r1.w = cb3[75].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r5.x ? 1 : r1.w;
  r5.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r5.x = saturate(r5.x);
  r1.w = r1.w + -r5.w;
  r1.w = r5.x * r1.w + r5.w;
  r1.w = r1.w * r7.y;
  r1.w = r1.w * cb3[75].w + -cb3[75].w;
  r1.w = saturate(cb3[76].z + r1.w);
  r8.xyz = cb3[30].xyz * r3.zzz;
  r10.xyz = r1.www * cb3[29].xyz + r8.xyz;
  r10.xyz = cb3[59].zzz * r10.xyz;
  r10.xyz = r10.xyz * r0.www;
  r8.xyz = cb3[59].yyy * r8.xyz;
  r8.xyz = max(r10.xyz, r8.xyz);
  r7.xzw = r8.xyz + r7.xzw;
  r0.w = cb3[76].w * r5.z;
  r0.w = exp2(r0.w);
  r0.w = 0.5 * r0.w;
  r0.w = r6.x ? 0 : r0.w;
  r1.w = cb3[76].w * r2.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r5.y ? 1 : r1.w;
  r5.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r5.x = saturate(r5.x);
  r1.w = r1.w + -r0.w;
  r0.w = r5.x * r1.w + r0.w;
  r0.w = r0.w * r7.y;
  r0.w = r0.w * cb3[77].y + -cb3[77].y;
  r0.w = saturate(cb3[78].x + r0.w);
  r5.xyz = cb3[35].xyz * r3.zzz;
  r6.xyw = r0.www * cb3[32].xyz + r5.xyz;
  r6.xyw = cb3[60].zzz * r6.xyw;
  r5.xyz = cb3[60].yyy * r5.xyz;
  r5.xyz = max(r6.xyw, r5.xyz);
  r5.xyz = r7.xzw + r5.xyz;
  r6.xyw = r3.zzz * float3(0,0.166666999,0) + -r5.xyz;
  r5.xyz = cb3[61].yyy * r6.xyw + r5.xyz;
  r5.xyz = cb3[61].www * -r5.xyz + r5.xyz;
  r6.xyw = r3.zzz * float3(3,3,3) + -r5.xyz;
  r5.xyz = cb3[62].yyy * r6.xyw + r5.xyz;
  r6.xyw = r3.zzz * float3(7,6.30000019,0) + -r5.xyz;
  r5.xyz = cb3[62].www * r6.xyw + r5.xyz;
  r6.xyw = r3.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r6.xyw = r6.xyw + -r5.xyz;
  r5.xyz = cb3[63].yyy * r6.xyw + r5.xyz;
  r4.yzw = r4.yzw * cb3[51].xxx + r5.xyz;
  r5.xyz = cb3[36].xyz + -r4.yzw;
  r4.yzw = cb3[78].yyy * r5.xyz + r4.yzw;
  r5.xyz = t14.SampleBias(s6_s, v3.xy, cb0[143].y).xyz;
  r0.w = -1 + cb0[143].y;
  r6.xyw = t15.SampleBias(s7_s, v3.xy, r0.w).xyz;
  r7.xyz = -cb3[40].xyz + cb3[39].xyz;
  r7.xyz = r6.www * r7.xyz + cb3[40].xyz;
  r8.xyz = cb3[42].xyz + -r7.xyz;
  r7.xyz = r6.yyy * r8.xyz + r7.xyz;
  r8.xyz = cb3[44].xyz + -r7.xyz;
  r6.xyw = r6.xxx * r8.xyz + r7.xyz;
  r7.xyzw = t13.SampleBias(s5_s, v3.xy, r0.w).xyzw;
  r6.xyw = float3(-1,-1,-1) + r6.xyw;
  r6.xyw = r7.zzz * r6.xyw + float3(1,1,1);
  r8.xyz = r6.xyw * r5.xyz;
  r10.xyz = cb2[12].xyz + -cb2[11].xyz;
  r10.xyz = cb3[78].www * r10.xyz + cb2[11].xyz;
  r13.xyz = r10.xyz * r8.xyz;
  r14.xyz = mad((int3)v4.xxx, int3(36,36,36), int3(27,23,20));
  r15.x = t8[r14.x].val[0/4];
  r15.y = t8[r14.x].val[0/4+1];
  r15.z = t8[r14.x].val[0/4+2];
  r0.w = -r15.x + r2.z;
  r0.w = max(0, r0.w);
  r1.w = max(cb3[79].x, r15.y);
  r0.w = r0.w / r1.w;
  r0.w = min(1, r0.w);
  r11.xw = cb3[79].yz * r1.ww;
  r2.w = cb3[79].y * r1.w + r15.x;
  r2.w = r15.z + -r2.w;
  r2.w = max(0, r2.w);
  r3.z = r11.w + r11.x;
  r1.w = -r3.z + r1.w;
  r1.w = max(1, r1.w);
  r1.w = r2.w / r1.w;
  r1.w = min(1, r1.w);
  r0.w = r0.w * r1.w + -r1.w;
  r0.w = 1 + r0.w;
  r15.xyz = r5.xyz * r6.xyw + -r13.xyz;
  r13.xyz = r0.www * r15.xyz + r13.xyz;
  r15.xyz = cb3[16].xyz + -r13.xyz;
  r13.xyz = r6.zzz * r15.xyz + r13.xyz;
  r13.xyz = saturate(r3.www * -r13.xyz + r13.xyz);
  r1.w = saturate(r0.w + r0.w);
  r1.w = r7.y * r1.w;
  r2.w = t8[r14.y].val[12/4];
  r3.z = firstbithigh((int)r2.w);
  r5.x = cmp((int)r3.z == -1);
  r3.z = (int)-r3.z + 31;
  r3.z = r5.x ? -1 : r3.z;
  r2.w = r2.w ? r3.z : 0;
  r3.z = saturate(dot(cb0[r2.w+358].xyz, r0.xyz));
  r14.xyw = cb0[67].xyz + -r2.xyz;
  r5.x = dot(r14.xyw, r14.xyw);
  r5.x = sqrt(r5.x);
  r14.xyw = r14.xyw / r5.xxx;
  r14.xyw = cb0[r2.w+358].xyz + r14.xyw;
  r5.w = dot(r14.xyw, r14.xyw);
  r5.w = sqrt(r5.w);
  r14.xyw = r14.xyw / r5.www;
  r5.w = dot(r14.xyw, r0.xyz);
  r5.w = saturate(r9.x + r5.w);
  r6.x = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = 207.936584 * r5.w;
  r5.w = exp2(r5.w);
  r3.z = r5.w * r3.z;
  r3.z = r6.x ? 0 : r3.z;
  r3.z = cmp(r3.z >= cb3[79].w);
  r3.z = r3.z ? 1.000000 : 0;
  r5.w = cb3[80].x * r9.y;
  r3.z = r5.w * r3.z;
  r5.w = 1 + -r7.w;
  r5.w = cmp(r5.w >= 0.5);
  o6.z = r5.w ? 0 : 1;
  r5.w = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r7.yz = cb0[152].xx + r3.xy;
  r7.yz = (uint2)r7.yz;
  r6.x = (uint)r7.z << 1;
  r6.x = (int)r6.x + (int)r7.y;
  r6.x = (uint)r6.x % 5;
  r6.x = (uint)r6.x;
  r3.xy = float2(0.015625,0.015625) * r3.xy;
  r3.x = t16.SampleBias(s8_s, r3.xy, cb0[143].y).x;
  r3.x = r6.x + r3.x;
  r3.x = 0.166666672 * r3.x;
  r3.x = cb3[82].x * r5.w + r3.x;
  r3.x = -0.5 + r3.x;
  r3.y = cb3[82].y * r12.z + r12.y;
  r5.w = cmp(r9.w >= cb3[82].z);
  r5.w = r5.w ? 1.000000 : 0;
  r6.x = -cb3[83].x + v2.w;
  r5.w = r6.x * r5.w;
  r3.y = r5.w * r3.y;
  r5.w = cb3[83].y * r11.z + r11.y;
  r3.y = r5.w * r3.y;
  r3.y = saturate(ceil(r3.y));
  r5.w = 0.763943851 * cb0[128].x;
  r4.x = 1.77777779 / r4.x;
  r4.x = max(1, r4.x);
  r4.x = r5.w * r4.x;
  r5.xw = r5.xx * r4.xx + float2(-0.5,-300);
  r5.xw = saturate(float2(0.00333889807,0.000175438603) * r5.xw);
  r4.x = r5.x * -0.600000024 + 1;
  r4.x = r5.w * -0.200000003 + r4.x;
  r4.x = v3.z * r4.x;
  o6.x = cb3[84].w * r4.x;
  r4.x = 1 + -v2.y;
  o6.w = cb3[85].x * r4.x;
  r4.x = round(cb3[78].z);
  r4.x = (uint)r4.x;
  r4.x = min(2, (uint)r4.x);
  r5.x = cmp(r8.y >= r8.z);
  r5.x = r5.x ? 1.000000 : 0;
  r9.xy = r8.zy;
  r9.zw = float2(-1,0.666666687);
  r11.xy = r5.yz * r6.yw + -r9.xy;
  r11.zw = float2(1,-1);
  r5.xyzw = r5.xxxx * r11.xyzw + r9.xyzw;
  r6.x = cmp(r8.x >= r5.x);
  r6.x = r6.x ? 1.000000 : 0;
  r9.xyz = r5.xyw;
  r9.w = r8.x;
  r5.xyw = r9.wyx;
  r5.xyzw = r5.xyzw + -r9.xyzw;
  r5.xyzw = r6.xxxx * r5.xyzw + r9.xyzw;
  r6.x = min(r5.w, r5.y);
  r6.x = -r6.x + r5.x;
  r5.y = r5.w + -r5.y;
  r5.w = r6.x * 6 + 1.00000001e-010;
  r5.y = r5.y / r5.w;
  r5.y = r5.z + r5.y;
  r5.z = 1.00000001e-010 + r5.x;
  r5.z = r6.x / r5.z;
  r5.w = 360 * abs(r5.y);
  r6.xy = float2(0,1.40129846e-045);
  while (true) {
    r6.w = cmp((int)r6.y >= 21);
    if (r6.w != 0) break;
    r6.w = cmp(icb[r6.y+3].x >= r5.w);
    if (r6.w != 0) {
      r6.x = r6.y;
      break;
    }
    r6.y = (int)r6.y + 1;
    r6.x = 0;
  }
  r5.w = (int)r6.x + -1;
  r6.y = abs(r5.y) * 360 + -icb[r5.w+3].x;
  r6.w = icb[r6.x+3].x + -icb[r5.w+3].x;
  r6.y = r6.y / r6.w;
  r6.w = (int)r5.w & 0x80000000;
  r7.y = max((int)-r5.w, (int)r5.w);
  r7.z = (int)r7.y & 3;
  r7.w = -(int)r7.z;
  r6.w = r6.w ? r7.w : r7.z;
  r5.w = (int)r5.w ^ 4;
  r7.y = (uint)r7.y >> 2;
  r7.z = -(int)r7.y;
  r5.w = (int)r5.w & 0x80000000;
  r5.w = r5.w ? r7.z : r7.y;
  r7.y = (int)r6.x & 0x80000000;
  r7.z = max((int)-r6.x, (int)r6.x);
  r7.w = (int)r7.z & 3;
  r8.w = -(int)r7.w;
  r7.y = r7.y ? r8.w : r7.w;
  r6.x = (int)r6.x ^ 4;
  r7.z = (uint)r7.z >> 2;
  r7.w = -(int)r7.z;
  r6.x = (int)r6.x & 0x80000000;
  r6.x = r6.x ? r7.w : r7.z;
  r7.z = dot(cb0[r5.w+328].xyzw, icb[r6.w+0].xyzw);
  r7.w = dot(cb0[r5.w+338].xyzw, icb[r6.w+0].xyzw);
  r5.w = dot(cb0[r5.w+348].xyzw, icb[r6.w+0].xyzw);
  x0[0].x = r7.z;
  x0[1].x = r7.w;
  x0[2].x = r5.w;
  r5.w = dot(cb0[r6.x+328].xyzw, icb[r7.y+0].xyzw);
  r6.w = dot(cb0[r6.x+338].xyzw, icb[r7.y+0].xyzw);
  r6.x = dot(cb0[r6.x+348].xyzw, icb[r7.y+0].xyzw);
  x1[0].x = r5.w;
  x1[1].x = r6.w;
  x1[2].x = r6.x;
  r5.w = x0[r4.x+0].x;
  r6.x = x1[r4.x+0].x;
  r6.x = r6.x + -r5.w;
  r5.w = r6.y * r6.x + r5.w;
  r5.y = abs(r5.y) * 360 + r5.w;
  r5.w = cmp(r5.y < 0);
  r6.x = cmp(360 < r5.y);
  r6.yw = float2(360,-360) + r5.yy;
  r5.y = r6.x ? r6.w : r5.y;
  r5.y = r5.w ? r6.y : r5.y;
  r5.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.x = -0.200000003 + r5.w;
  r6.x = 10 * r6.x;
  r6.x = max(0, r6.x);
  r6.x = min(6, r6.x);
  r6.y = (int)r6.x;
  r6.w = (int)r6.y + 1;
  r6.x = trunc(r6.x);
  r6.x = r6.x * 0.100000001 + 0.200000003;
  r5.w = -r6.x + r5.w;
  r5.w = saturate(10 * r5.w);
  r6.x = (int)r6.y & 3;
  r7.y = (int)r6.w & 3;
  r6.yw = (uint2)r6.yw >> int2(2,2);
  r7.z = dot(cb0[r6.y+334].xyzw, icb[r6.x+0].xyzw);
  r7.w = dot(cb0[r6.y+344].xyzw, icb[r6.x+0].xyzw);
  r8.x = dot(cb0[r6.y+354].xyzw, icb[r6.x+0].xyzw);
  x2[0].x = r7.z;
  x2[1].x = r7.w;
  x2[2].x = r8.x;
  r7.z = dot(cb0[r6.w+334].xyzw, icb[r7.y+0].xyzw);
  r7.w = dot(cb0[r6.w+344].xyzw, icb[r7.y+0].xyzw);
  r8.x = dot(cb0[r6.w+354].xyzw, icb[r7.y+0].xyzw);
  x3[0].x = r7.z;
  x3[1].x = r7.w;
  x3[2].x = r8.x;
  r7.z = dot(cb0[r6.y+336].xyzw, icb[r6.x+0].xyzw);
  r7.w = dot(cb0[r6.y+346].xyzw, icb[r6.x+0].xyzw);
  r6.x = dot(cb0[r6.y+356].xyzw, icb[r6.x+0].xyzw);
  x4[0].x = r7.z;
  x4[1].x = r7.w;
  x4[2].x = r6.x;
  r6.x = dot(cb0[r6.w+336].xyzw, icb[r7.y+0].xyzw);
  r6.y = dot(cb0[r6.w+346].xyzw, icb[r7.y+0].xyzw);
  r6.w = dot(cb0[r6.w+356].xyzw, icb[r7.y+0].xyzw);
  x5[0].x = r6.x;
  x5[1].x = r6.y;
  x5[2].x = r6.w;
  r6.x = x2[r4.x+0].x;
  r6.y = x3[r4.x+0].x;
  r6.y = r6.y + -r6.x;
  r6.x = r5.w * r6.y + r6.x;
  r6.y = x4[r4.x+0].x;
  r4.x = x5[r4.x+0].x;
  r4.x = r4.x + -r6.y;
  r4.x = r5.w * r4.x + r6.y;
  r5.w = cmp(0 < r5.z);
  r6.x = saturate(r6.x + r5.z);
  r5.z = r5.w ? r6.x : r5.z;
  r4.x = saturate(r5.x + r4.x);
  r5.xyw = r5.yyy * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r5.xyw = frac(r5.xyw);
  r5.xyw = r5.xyw * float3(6,6,6) + float3(-3,-3,-3);
  r5.xyw = saturate(float3(-1,-1,-1) + abs(r5.xyw));
  r5.xyw = float3(-1,-1,-1) + r5.xyw;
  r5.xyz = r5.zzz * r5.xyw + float3(1,1,1);
  r6.xyw = r5.xyz * r4.xxx;
  r6.xyw = r6.xyw * r10.xyz;
  r5.xyz = r4.xxx * r5.xyz + -r6.xyw;
  r5.xyz = r0.www * r5.xyz + r6.xyw;
  r6.xyw = cb3[16].xyz + -r5.xyz;
  r5.xyz = r6.zzz * r6.xyw + r5.xyz;
  r5.xyz = saturate(r3.www * -r5.xyz + r5.xyz);
  r0.w = v2.z * r7.x;
  r0.w = cmp(r0.w >= cb3[85].w);
  o3.w = r0.w ? 1.000000 : 0;
  r3.x = r3.x * r3.y + -0.333299994;
  r3.x = cmp(r3.x < 0);
  if (r3.x != 0) discard;
  r3.x = saturate(cb3[80].y);
  o2.z = r3.x * cb0[139].y + cb0[139].x;
  r3.xyw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r3.xyw = max(float3(0,0,0), r3.xyw);
  r3.xyw = min(float3(0.99000001,0.99000001,0.99000001), r3.xyw);
  r3.xyw = cb0[213].xyz * r3.xyw;
  r6.xyz = (int3)r3.xyw;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r4.x = 1 + cb0[213].w;
  r3.xyw = r3.xyw / r6.www;
  r3.xyw = frac(r3.xyw);
  r3.xyw = cb0[213].www * r3.xyw;
  r3.xyw = r6.xyz * r4.xxx + r3.xyw;
  r3.xyw = float3(0.5,0.5,0.5) + r3.xyw;
  r3.xyw = cb0[214].xyz * r3.xyw;
  o1.w = t8[r14.z].val[4/4];
  r6.z = cb0[r2.w+358].z * cb0[327].y;
  r6.xy = cb0[r2.w+358].xy;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = r6.xyz * r2.www;
  r2.w = dot(r0.xyz, r6.xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r4.x = 1 + -cb0[327].x;
  r4.x = v2.x * r4.x + cb0[327].x;
  r2.w = r4.x * r2.w;
  r0.w = r0.w ? 1 : 0.699999988;
  r4.x = max(r5.x, r5.y);
  r4.x = max(r4.x, r5.z);
  r5.w = r4.x * r0.w;
  r4.x = max(0.00100000005, r4.x);
  r4.x = r5.w / r4.x;
  r1.x = dot(-r1.xyz, r6.xyz);
  r1.x = saturate(3 * r1.x);
  r6.xyz = r5.xyz * r4.xxx + -r5.xyz;
  o4.xyz = r1.xxx * r6.xyz + r5.xyz;
  r1.x = cmp(r2.w >= cb0[327].x);
  o4.w = r1.x ? 1.000000 : 0;
  o5.y = 0.5 * r1.w;
  r1.x = 0.0799999982 * r3.z;
  r5.xyz = -r3.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r13.xyz;
  r1.xyz = r1.www * r5.xyz + r1.xxx;
  r5.xyz = r13.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r1.xyz = r1.www ? r1.xyz : r5.xyz;
  r5.xyz = t1.SampleLevel(s0_s, r3.xyw, 0).xyz;
  r2.w = t2.SampleLevel(s0_s, r3.xyw, 0).y;
  r2.w = r2.w * 2 + -1;
  r4.x = t4.SampleLevel(s0_s, r3.xyw, 0).y;
  r4.x = r4.x * 2 + -1;
  r5.w = t6.SampleLevel(s0_s, r3.xyw, 0).y;
  r5.w = r5.w * 2 + -1;
  r2.w = r2.w * r5.x;
  r7.y = 1.73205125 * r2.w;
  r2.w = r4.x * r5.y;
  r7.w = 1.73205125 * r2.w;
  r2.w = r5.w * r5.z;
  r8.y = 1.73205125 * r2.w;
  r2.w = t3.SampleLevel(s0_s, r3.xyw, 0).y;
  r2.w = r2.w * 2 + -1;
  r4.x = t5.SampleLevel(s0_s, r3.xyw, 0).y;
  r4.x = r4.x * 2 + -1;
  r3.x = t7.SampleLevel(s0_s, r3.xyw, 0).y;
  r3.x = r3.x * 2 + -1;
  r2.w = r2.w * r5.x;
  r3.y = r4.x * r5.y;
  r3.x = r3.x * r5.z;
  r7.xz = r5.xy;
  r3.w = dot(r7.xy, float2(0.886227548,-1.02332771));
  r9.x = r2.w * 2.21557164 + r3.w;
  r2.w = dot(r7.zw, float2(0.886227548,-1.02332771));
  r9.y = r3.y * 2.21557164 + r2.w;
  r8.x = r5.z;
  r2.w = dot(r8.xy, float2(0.886227548,-1.02332771));
  r9.z = r3.x * 2.21557164 + r2.w;
  r3.xyw = max(float3(0,0,0), r9.xyz);
  r3.xyw = cb0[157].xyz * r3.xyw;
  r5.xyw = float3(0.318309873,0.318309873,0.318309873) * r3.ywx;
  r2.w = cmp(r5.x >= r5.y);
  r2.w = r2.w ? 1.000000 : 0;
  r7.xy = r5.yx;
  r7.zw = float2(-1,0.666666687);
  r8.xy = r3.yw * float2(0.318309873,0.318309873) + -r7.xy;
  r8.zw = float2(1,-1);
  r7.xyzw = r2.wwww * r8.xyzw + r7.xyzw;
  r2.w = cmp(r5.w >= r7.x);
  r2.w = r2.w ? 1.000000 : 0;
  r5.xyz = r7.xyw;
  r7.xyw = r5.wyx;
  r7.xyzw = r7.xyzw + -r5.xyzw;
  r5.xyzw = r2.wwww * r7.xyzw + r5.xyzw;
  r2.w = min(r5.w, r5.y);
  r2.w = r5.x + -r2.w;
  r3.x = r5.w + -r5.y;
  r3.y = r2.w * 6 + 1.00000001e-010;
  r3.x = r3.x / r3.y;
  r3.x = r5.z + r3.x;
  r3.y = 1.00000001e-010 + r5.x;
  r2.w = r2.w / r3.y;
  r2.w = cb0[361].z * r2.w;
  r3.xyw = float3(1,0.666666687,0.333333343) + abs(r3.xxx);
  r3.xyw = frac(r3.xyw);
  r3.xyw = r3.xyw * float3(6,6,6) + float3(-3,-3,-3);
  r3.xyw = saturate(float3(-1,-1,-1) + abs(r3.xyw));
  r3.xyw = float3(-1,-1,-1) + r3.xyw;
  r3.xyw = r2.www * r3.xyw + float3(1,1,1);
  r3.xyw = r5.xxx * r3.xyw;
  r3.xyw = cb0[361].xxx * r3.xyw;
  r2.w = dot(r3.xyw, float3(0.300000012,0.589999974,0.109999999));
  r4.x = min(cb0[361].y, r2.w);
  r2.w = max(1.00000001e-010, r2.w);
  r2.w = r4.x / r2.w;
  r3.xyw = r3.xyw * r2.www;
  r3.xyw = r3.xyw * r13.xyz;
  r5.xyz = r13.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r13.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r13.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r3.xyw = r5.xyz * r3.xyw;
  r5.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.xyz = r5.xyz + r1.xyz;
  r4.xyz = max(float3(0,0,0), r4.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r5.x = t8[r5.x].val[0/4];
    r5.z = t8[r5.x].val[0/4+1];
    r5.w = t8[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r6.x = t8[r5.y].val[0/4];
    r6.y = t8[r5.y].val[0/4+1];
    r6.z = t8[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r1.www ? r2.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r3.xyw;
  r1.xyz = r1.xyz + r4.xyz;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.xw = float2(0,0.549019635);
  o2.y = r3.z;
  o3.xyz = r13.xyz;
  o5.z = v2.x;
  o5.w = cb3[85].z;
  o5.x = r0.w;
  o6.y = v3.w;
  return;
}