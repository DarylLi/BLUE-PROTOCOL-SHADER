// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb3[76];
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
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
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
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
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
  r4.xy = -cb0[129].xy + v6.xy;
  r4.zw = cb0[130].zw * r4.xy;
  r5.xyz = cb3[2].yyy * cb0[5].xyw;
  r5.xyz = cb3[2].xxx * cb0[4].xyw + r5.xyz;
  r5.xyz = cb3[2].zzz * cb0[6].xyw + r5.xyz;
  r5.xyz = cb0[7].xyw + r5.xyz;
  r5.xy = r5.xy / r5.zz;
  r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r4.xy = r4.xy * cb0[130].zw + -r5.xy;
  r5.xyz = -cb3[2].xyz + cb0[67].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb3[39].y;
  r2.w = max(cb3[39].z, r2.w);
  r2.w = min(1, r2.w);
  r2.w = -cb3[39].z + r2.w;
  r2.w = saturate(cb3[40].x * r2.w);
  r3.w = cb3[40].y + -cb3[40].z;
  r3.w = r2.w * r3.w + cb3[40].z;
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
  r4.xy = saturate(cb3[43].yw + r4.xx);
  r4.x = 1 + -r4.x;
  r4.x = r4.x * r4.y + -r3.w;
  r3.w = r2.w * r4.x + r3.w;
  r5.xyz = -cb3[6].xyz + cb3[5].xyz;
  r5.xyz = r2.www * r5.xyz + cb3[6].xyz;
  r5.xyz = r5.xyz * r3.www;
  r5.xyz = r5.xyz * r1.www;
  r0.w = cb3[44].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb3[44].z + cb3[44].y;
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
  r4.xy = cb3[45].xx * r4.xy;
  r4.xy = r4.xy * float2(2,2) + v3.xy;
  r3.w = t13.SampleBias(s3_s, r4.xy, cb0[143].y).x;
  r8.xy = float2(0.5,0.5) * r7.xz;
  r4.xy = t14.SampleBias(s4_s, r8.xy, cb0[143].y).xy;
  r4.xy = float2(-0.5,-0.5) + r4.xy;
  r4.xy = cb3[45].xx * r4.xy;
  r4.xy = r4.xy * float2(2,2) + v3.xy;
  r4.x = t13.SampleBias(s3_s, r4.xy, cb0[143].y).x;
  r3.w = r4.x * r3.w;
  r4.x = r3.w * r1.w;
  r4.x = saturate(r4.x + r4.x);
  r4.y = cmp(0 >= r4.x);
  r4.x = log2(r4.x);
  r5.w = cb3[45].y * r4.x;
  r5.w = exp2(r5.w);
  r5.w = 0.5 * r5.w;
  r5.w = r4.y ? 0 : r5.w;
  r1.w = r1.w * r3.w + -0.5;
  r1.w = saturate(r1.w + r1.w);
  r1.w = 1 + -r1.w;
  r3.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r6.x = cb3[45].y * r1.w;
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
  r5.w = r5.w * cb3[45].w + -cb3[45].w;
  r5.w = saturate(cb3[46].z + r5.w);
  r4.z = t14.SampleBias(s4_s, r4.zw, cb0[143].y).x;
  r4.z = -r4.z * 0.5 + 1;
  r4.z = r4.z * r6.x + cb3[55].x;
  r4.z = -1 + r4.z;
  r4.z = saturate(ceil(r4.z));
  r9.xyz = cb3[9].xyz * r4.zzz;
  r10.xyz = r5.www * cb3[8].xyz + r9.xyz;
  r10.xyz = cb3[47].xxx * r10.xyz;
  r10.xyz = r10.xyz * r0.www;
  r9.xyz = cb3[46].www * r9.xyz;
  r9.xyz = max(r10.xyz, r9.xyz);
  r10.xyzw = t15.SampleBias(s5_s, v3.xy, cb0[143].y).xyzw;
  r11.xyz = cb3[11].xyz * r10.zzz;
  r12.xyz = cb3[13].xyz * r10.www;
  r12.xyz = cb3[55].zzz * r12.xyz;
  r11.xyz = r11.xyz * cb3[55].yyy + r12.xyz;
  r4.w = cb0[142].z * cb3[56].y + v3.x;
  r12.x = cb3[57].x * r4.w;
  r4.w = cb0[142].z * cb3[57].y + v3.y;
  r12.y = cb3[57].z * r4.w;
  r4.w = t16.SampleBias(s6_s, r12.xy, cb0[143].y).x;
  r4.w = -0.5 + r4.w;
  r4.w = r4.w + r4.w;
  r7.yz = cb3[58].yw * r4.ww;
  r4.w = t17.SampleBias(s7_s, v3.xy, cb0[143].y).y;
  r4.w = r4.w * cb3[59].x + cb3[59].y;
  r7.yz = r7.yz * r4.ww + v3.xy;
  r4.w = t14.SampleBias(s4_s, r7.yz, cb0[143].y).x;
  r4.w = -1 + r4.w;
  r7.yz = cb3[60].yz + r4.ww;
  r7.yz = saturate(ceil(r7.yz));
  r8.yw = float2(1,1) + -r7.yz;
  r5.w = r8.y * r7.z;
  r12.xyz = cb3[18].xyz + -r11.xyz;
  r11.xyz = r5.www * r12.xyz + r11.xyz;
  r10.zw = cb3[61].zw + r4.ww;
  r10.zw = saturate(ceil(r10.zw));
  r12.xy = float2(1,1) + -r10.zw;
  r4.w = r12.x * r10.w;
  r11.xyz = r4.www * -r11.xyz + r11.xyz;
  r9.xyz = r11.xyz + r9.xyz;
  r6.y = t13.SampleBias(s3_s, r6.zy, cb0[143].y).x;
  r6.zw = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r2.ww;
  r7.w = r6.z;
  r7.xy = t14.SampleBias(s4_s, r7.xw, cb0[143].y).xy;
  r7.xy = float2(-0.5,-0.5) + r7.xy;
  r7.xy = cb3[45].xx * r7.xy;
  r7.xy = r7.xy * float2(2,2) + v3.xy;
  r2.w = t13.SampleBias(s3_s, r7.xy, cb0[143].y).x;
  r8.z = 0.5 * r6.w;
  r6.zw = t14.SampleBias(s4_s, r8.xz, cb0[143].y).xy;
  r6.zw = float2(-0.5,-0.5) + r6.zw;
  r6.zw = cb3[45].xx * r6.zw;
  r6.zw = r6.zw * float2(2,2) + v3.xy;
  r6.z = t13.SampleBias(s3_s, r6.zw, cb0[143].y).x;
  r2.w = r6.z * r2.w;
  r6.z = r6.y * r2.w;
  r6.z = saturate(r6.z + r6.z);
  r6.w = cmp(0 >= r6.z);
  r6.z = log2(r6.z);
  r7.x = cb3[62].x * r6.z;
  r7.x = exp2(r7.x);
  r7.x = 0.5 * r7.x;
  r2.w = r6.y * r2.w + -0.5;
  r2.w = saturate(r2.w + r2.w);
  r2.w = 1 + -r2.w;
  r6.y = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r7.y = cb3[62].x * r2.w;
  r7.y = exp2(r7.y);
  r7.y = 1 + -r7.y;
  r7.xy = r6.wy ? float2(0,1) : r7.xy;
  r8.x = 500 * r7.y;
  r7.y = r7.y * 0.5 + 0.5;
  r8.x = saturate(r8.x);
  r7.y = r7.y + -r7.x;
  r7.x = r8.x * r7.y + r7.x;
  r7.x = r7.x * r6.x;
  r7.x = r7.x * cb3[62].z + -cb3[62].z;
  r7.x = saturate(cb3[63].y + r7.x);
  r8.xyz = cb3[23].xyz * r4.zzz;
  r7.xyw = r7.xxx * cb3[20].xyz + r8.xyz;
  r7.xyw = cb3[47].zzz * r7.xyw;
  r8.xyz = cb3[47].yyy * r8.xyz;
  r7.xyw = max(r8.xyz, r7.xyw);
  r7.xyw = r9.xyz + r7.xyw;
  r8.x = cb3[63].z * r4.x;
  r8.x = exp2(r8.x);
  r8.x = 0.5 * r8.x;
  r8.x = r4.y ? 0 : r8.x;
  r8.y = cb3[63].z * r1.w;
  r8.y = exp2(r8.y);
  r8.y = 1 + -r8.y;
  r8.y = r3.w ? 1 : r8.y;
  r9.x = 500 * r8.y;
  r8.y = r8.y * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r8.y = r8.y + -r8.x;
  r8.x = r9.x * r8.y + r8.x;
  r8.x = r8.x * r6.x;
  r8.x = r8.x * cb3[64].x + -cb3[64].x;
  r8.x = saturate(cb3[64].w + r8.x);
  r9.xyz = cb3[26].xyz * r4.zzz;
  r8.xyz = r8.xxx * cb3[25].xyz + r9.xyz;
  r8.xyz = cb3[48].zzz * r8.xyz;
  r8.xyz = r8.xyz * r0.www;
  r9.xyz = cb3[48].yyy * r9.xyz;
  r8.xyz = max(r9.xyz, r8.xyz);
  r7.xyw = r8.xyz + r7.xyw;
  r8.x = cb3[65].x * r4.x;
  r8.x = exp2(r8.x);
  r8.x = 0.5 * r8.x;
  r8.x = r4.y ? 0 : r8.x;
  r8.y = cb3[65].x * r1.w;
  r8.y = exp2(r8.y);
  r8.y = 1 + -r8.y;
  r8.y = r3.w ? 1 : r8.y;
  r9.x = 500 * r8.y;
  r8.y = r8.y * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r8.y = r8.y + -r8.x;
  r8.x = r9.x * r8.y + r8.x;
  r8.x = r8.x * r6.x;
  r8.x = r8.x * cb3[65].z + -cb3[65].z;
  r8.x = saturate(cb3[66].y + r8.x);
  r9.xyz = cb3[29].xyz * r4.zzz;
  r8.xyz = r8.xxx * cb3[28].xyz + r9.xyz;
  r8.xyz = cb3[49].zzz * r8.xyz;
  r8.xyz = r8.xyz * r0.www;
  r9.xyz = cb3[49].yyy * r9.xyz;
  r8.xyz = max(r9.xyz, r8.xyz);
  r7.xyw = r8.xyz + r7.xyw;
  r4.x = cb3[66].z * r4.x;
  r4.x = exp2(r4.x);
  r4.x = 0.5 * r4.x;
  r4.x = r4.y ? 0 : r4.x;
  r1.w = cb3[66].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r3.w ? 1 : r1.w;
  r8.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r8.x = saturate(r8.x);
  r1.w = r1.w + -r4.x;
  r1.w = r8.x * r1.w + r4.x;
  r1.w = r1.w * r6.x;
  r1.w = r1.w * cb3[67].x + -cb3[67].x;
  r1.w = saturate(cb3[67].w + r1.w);
  r8.xyz = cb3[32].xyz * r4.zzz;
  r9.xyz = r1.www * cb3[31].xyz + r8.xyz;
  r9.xyz = cb3[50].zzz * r9.xyz;
  r9.xyz = r9.xyz * r0.www;
  r8.xyz = cb3[50].yyy * r8.xyz;
  r8.xyz = max(r9.xyz, r8.xyz);
  r7.xyw = r8.xyz + r7.xyw;
  r0.w = cb3[68].x * r6.z;
  r0.w = exp2(r0.w);
  r0.w = 0.5 * r0.w;
  r0.w = r6.w ? 0 : r0.w;
  r1.w = cb3[68].x * r2.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r6.y ? 1 : r1.w;
  r4.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r4.x = saturate(r4.x);
  r1.w = r1.w + -r0.w;
  r0.w = r4.x * r1.w + r0.w;
  r0.w = r0.w * r6.x;
  r0.w = r0.w * cb3[68].z + -cb3[68].z;
  r0.w = saturate(cb3[69].y + r0.w);
  r6.xyz = cb3[37].xyz * r4.zzz;
  r8.xyz = r0.www * cb3[34].xyz + r6.xyz;
  r8.xyz = cb3[51].zzz * r8.xyz;
  r6.xyz = cb3[51].yyy * r6.xyz;
  r6.xyz = max(r8.xyz, r6.xyz);
  r6.xyz = r7.xyw + r6.xyz;
  r7.xyw = r4.zzz * float3(0,0.166666999,0) + -r6.xyz;
  r6.xyz = cb3[52].yyy * r7.xyw + r6.xyz;
  r6.xyz = cb3[52].www * -r6.xyz + r6.xyz;
  r7.xyw = r4.zzz * float3(3,3,3) + -r6.xyz;
  r6.xyz = cb3[53].yyy * r7.xyw + r6.xyz;
  r7.xyw = r4.zzz * float3(7,6.30000019,0) + -r6.xyz;
  r6.xyz = cb3[53].www * r7.xyw + r6.xyz;
  r4.xyz = r4.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r4.xyz = r4.xyz + -r6.xyz;
  r4.xyz = cb3[54].yyy * r4.xyz + r6.xyz;
  r4.xyz = r5.xyz * cb3[42].xxx + r4.xyz;
  r5.xyz = cb3[38].xyz + -r4.xyz;
  r4.xyz = cb3[69].zzz * r5.xyz + r4.xyz;
  r5.xyz = t18.SampleBias(s8_s, v3.xy, cb0[143].y).xyz;
  r6.xyz = cb3[18].xyz + -r5.xyz;
  r6.xyz = r5.www * r6.xyz + r5.xyz;
  r6.xyz = saturate(r4.www * -r6.xyz + r6.xyz);
  r0.w = -1 + cb0[143].y;
  r7.xy = t17.SampleBias(s7_s, v3.xy, r0.w).xy;
  r8.xy = mad((int2)v4.xx, int2(36,36), int2(27,23));
  r8.x = t8[r8.x].val[0/4];
  r8.z = t8[r8.x].val[0/4+1];
  r0.w = -r8.x + r2.z;
  r0.w = max(0, r0.w);
  r1.w = max(cb3[69].w, r8.z);
  r0.w = r0.w / r1.w;
  r0.w = min(1, r0.w);
  r0.w = saturate(r0.w + r0.w);
  r0.w = r7.y * r0.w;
  r1.w = t8[r8.y].val[12/4];
  r2.w = firstbithigh((int)r1.w);
  r3.w = cmp((int)r2.w == -1);
  r2.w = (int)-r2.w + 31;
  r2.w = r3.w ? -1 : r2.w;
  r2.w = r1.w ? r2.w : 0;
  r3.w = saturate(dot(cb0[r2.w+358].xyz, r0.xyz));
  r8.xyz = cb0[67].xyz + -r2.xyz;
  r6.w = dot(r8.xyz, r8.xyz);
  r6.w = sqrt(r6.w);
  r8.xyz = r8.xyz / r6.www;
  r8.xyz = cb0[r2.w+358].xyz + r8.xyz;
  r6.w = dot(r8.xyz, r8.xyz);
  r6.w = sqrt(r6.w);
  r8.xyz = r8.xyz / r6.www;
  r6.w = dot(r8.xyz, r0.xyz);
  r6.w = saturate(r10.x + r6.w);
  r7.y = 11 * cb3[70].z;
  r7.y = exp2(r7.y);
  r7.w = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = r7.y * r6.w;
  r6.w = exp2(r6.w);
  r3.w = r6.w * r3.w;
  r3.w = r7.w ? 0 : r3.w;
  r3.w = cmp(r3.w >= cb3[70].w);
  r3.w = r3.w ? 1.000000 : 0;
  r6.w = cb3[71].x * r10.y;
  r3.w = r6.w * r3.w;
  r6.w = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r6.w = cb3[73].x * r6.w;
  r7.y = cb3[73].y * r8.w + r7.z;
  r7.y = cb3[73].w * r7.y;
  r7.z = cb3[74].x * r12.y + r10.w;
  r7.y = r7.y * r7.z;
  r8.w = saturate(r7.y * r6.w);
  r6.w = cmp(r5.y >= r5.z);
  r6.w = r6.w ? 1.000000 : 0;
  r9.xy = r5.zy;
  r9.zw = float2(-1,0.666666687);
  r10.xy = -r9.xy + r5.yz;
  r10.zw = float2(1,-1);
  r9.xyzw = r6.wwww * r10.xyzw + r9.xyzw;
  r6.w = cmp(r5.x >= r9.x);
  r6.w = r6.w ? 1.000000 : 0;
  r10.xyz = r9.xyw;
  r10.w = r5.x;
  r9.xyw = r10.wyx;
  r9.xyzw = r9.xyzw + -r10.xyzw;
  r9.xyzw = r6.wwww * r9.xyzw + r10.xyzw;
  r6.w = min(r9.w, r9.y);
  r6.w = r9.x + -r6.w;
  r7.y = r9.w + -r9.y;
  r7.z = r6.w * 6 + 1.00000001e-010;
  r7.y = r7.y / r7.z;
  r7.y = r9.z + r7.y;
  r7.z = 360 * abs(r7.y);
  r7.w = 0;
  r9.y = 1;
  while (true) {
    r9.z = cmp((int)r9.y >= 21);
    if (r9.z != 0) break;
    r9.z = cmp(icb[r9.y+3].x >= r7.z);
    if (r9.z != 0) {
      r7.w = r9.y;
      break;
    }
    r9.y = (int)r9.y + 1;
    r7.w = 0;
  }
  r7.z = (int)r7.w + -1;
  r9.y = (int)r7.z & 0x80000000;
  r9.z = max((int)-r7.z, (int)r7.z);
  r9.w = (int)r9.z & 3;
  r10.x = -(int)r9.w;
  r9.y = r9.y ? r10.x : r9.w;
  r9.w = (int)r7.z ^ 4;
  r9.z = (uint)r9.z >> 2;
  r10.x = -(int)r9.z;
  r9.w = (int)r9.w & 0x80000000;
  r9.z = r9.w ? r10.x : r9.z;
  r9.w = (int)r7.w & 0x80000000;
  r10.x = max((int)-r7.w, (int)r7.w);
  r10.y = (int)r10.x & 3;
  r10.z = -(int)r10.y;
  r9.w = r9.w ? r10.z : r10.y;
  r10.y = (int)r7.w ^ 4;
  r10.x = (uint)r10.x >> 2;
  r10.z = -(int)r10.x;
  r10.y = (int)r10.y & 0x80000000;
  r10.x = r10.y ? r10.z : r10.x;
  r10.y = dot(cb0[r9.z+328].xyzw, icb[r9.y+0].xyzw);
  r10.z = dot(cb0[r9.z+338].xyzw, icb[r9.y+0].xyzw);
  r9.y = dot(cb0[r9.z+348].xyzw, icb[r9.y+0].xyzw);
  x0[0].x = r10.y;
  x0[1].x = r10.z;
  x0[2].x = r9.y;
  r9.y = dot(cb0[r10.x+328].xyzw, icb[r9.w+0].xyzw);
  r9.z = dot(cb0[r10.x+338].xyzw, icb[r9.w+0].xyzw);
  r9.w = dot(cb0[r10.x+348].xyzw, icb[r9.w+0].xyzw);
  x1[0].x = r9.y;
  x1[1].x = r9.z;
  x1[2].x = r9.w;
  r5.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.y = -0.200000003 + r5.x;
  r5.y = 10 * r5.y;
  r5.y = max(0, r5.y);
  r5.y = min(6, r5.y);
  r5.z = (int)r5.y;
  r9.y = (int)r5.z + 1;
  r9.z = (int)r5.z & 3;
  r5.z = (uint)r5.z >> 2;
  r9.w = (int)r9.y & 3;
  r9.y = (uint)r9.y >> 2;
  r10.x = dot(cb0[r5.z+334].xyzw, icb[r9.z+0].xyzw);
  r10.y = dot(cb0[r5.z+344].xyzw, icb[r9.z+0].xyzw);
  r10.z = dot(cb0[r5.z+354].xyzw, icb[r9.z+0].xyzw);
  x2[0].x = r10.x;
  x2[1].x = r10.y;
  x2[2].x = r10.z;
  r10.x = dot(cb0[r9.y+334].xyzw, icb[r9.w+0].xyzw);
  r10.y = dot(cb0[r9.y+344].xyzw, icb[r9.w+0].xyzw);
  r10.z = dot(cb0[r9.y+354].xyzw, icb[r9.w+0].xyzw);
  x3[0].x = r10.x;
  x3[1].x = r10.y;
  x3[2].x = r10.z;
  r10.x = dot(cb0[r5.z+336].xyzw, icb[r9.z+0].xyzw);
  r10.y = dot(cb0[r5.z+346].xyzw, icb[r9.z+0].xyzw);
  r5.z = dot(cb0[r5.z+356].xyzw, icb[r9.z+0].xyzw);
  x4[0].x = r10.x;
  x4[1].x = r10.y;
  x4[2].x = r5.z;
  r5.z = dot(cb0[r9.y+336].xyzw, icb[r9.w+0].xyzw);
  r9.z = dot(cb0[r9.y+346].xyzw, icb[r9.w+0].xyzw);
  r9.y = dot(cb0[r9.y+356].xyzw, icb[r9.w+0].xyzw);
  x5[0].x = r5.z;
  x5[1].x = r9.z;
  x5[2].x = r9.y;
  r9.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r9.yzw = max(float3(0,0,0), r9.yzw);
  r9.yzw = min(float3(0.99000001,0.99000001,0.99000001), r9.yzw);
  r9.yzw = cb0[213].xyz * r9.yzw;
  r10.xyz = (int3)r9.yzw;
  r10.w = 0;
  r10.xyzw = t0.Load(r10.xyzw).xyzw;
  r10.xyzw = (uint4)r10.xyzw;
  r5.z = 1 + cb0[213].w;
  r9.yzw = r9.yzw / r10.www;
  r9.yzw = frac(r9.yzw);
  r9.yzw = cb0[213].www * r9.yzw;
  r9.yzw = r10.xyz * r5.zzz + r9.yzw;
  r9.yzw = float3(0.5,0.5,0.5) + r9.yzw;
  r9.yzw = cb0[214].xyz * r9.yzw;
  r5.z = 0.0799999982 * r3.w;
  r10.xyz = -r3.www * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r10.xyz = r0.www * r10.xyz + r5.zzz;
  r11.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r10.xyz = r10.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r12.xyz = float3(0.449999988,0.449999988,0.449999988) * r10.xyz;
  r10.xyz = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r10.xyz = r0.www ? r10.xyz : r11.xyz;
  r11.xyz = t1.SampleLevel(s0_s, r9.yzw, 0).xyz;
  r5.z = t2.SampleLevel(s0_s, r9.yzw, 0).y;
  r5.z = r5.z * 2 + -1;
  r10.w = t4.SampleLevel(s0_s, r9.yzw, 0).y;
  r10.w = r10.w * 2 + -1;
  r11.w = t6.SampleLevel(s0_s, r9.yzw, 0).y;
  r11.w = r11.w * 2 + -1;
  r5.z = r5.z * r11.x;
  r13.y = 1.73205125 * r5.z;
  r5.z = r10.w * r11.y;
  r13.w = 1.73205125 * r5.z;
  r5.z = r11.w * r11.z;
  r14.y = 1.73205125 * r5.z;
  r5.z = t3.SampleLevel(s0_s, r9.yzw, 0).y;
  r5.z = r5.z * 2 + -1;
  r10.w = t5.SampleLevel(s0_s, r9.yzw, 0).y;
  r10.w = r10.w * 2 + -1;
  r9.y = t7.SampleLevel(s0_s, r9.yzw, 0).y;
  r9.y = r9.y * 2 + -1;
  r5.z = r5.z * r11.x;
  r9.z = r10.w * r11.y;
  r9.y = r9.y * r11.z;
  r13.xz = r11.xy;
  r9.w = dot(r13.xy, float2(0.886227548,-1.02332771));
  r15.x = r5.z * 2.21557164 + r9.w;
  r5.z = dot(r13.zw, float2(0.886227548,-1.02332771));
  r15.y = r9.z * 2.21557164 + r5.z;
  r14.x = r11.z;
  r5.z = dot(r14.xy, float2(0.886227548,-1.02332771));
  r15.z = r9.y * 2.21557164 + r5.z;
  r9.yzw = max(float3(0,0,0), r15.xyz);
  r9.yzw = cb0[157].xyz * r9.yzw;
  r11.xyw = float3(0.318309873,0.318309873,0.318309873) * r9.zwy;
  r5.z = cmp(r11.x >= r11.y);
  r5.z = r5.z ? 1.000000 : 0;
  r13.xy = r11.yx;
  r13.zw = float2(-1,0.666666687);
  r14.xy = r9.zw * float2(0.318309873,0.318309873) + -r13.xy;
  r14.zw = float2(1,-1);
  r13.xyzw = r5.zzzz * r14.xyzw + r13.xyzw;
  r5.z = cmp(r11.w >= r13.x);
  r5.z = r5.z ? 1.000000 : 0;
  r11.xyz = r13.xyw;
  r13.xyw = r11.wyx;
  r13.xyzw = r13.xyzw + -r11.xyzw;
  r11.xyzw = r5.zzzz * r13.xyzw + r11.xyzw;
  r5.z = min(r11.w, r11.y);
  r5.z = r11.x + -r5.z;
  r9.y = r11.w + -r11.y;
  r9.z = r5.z * 6 + 1.00000001e-010;
  r9.y = r9.y / r9.z;
  r9.y = r11.z + r9.y;
  r9.z = 1.00000001e-010 + r11.x;
  r5.z = r5.z / r9.z;
  r5.z = cb0[361].z * r5.z;
  r9.yzw = float3(1,0.666666687,0.333333343) + abs(r9.yyy);
  r9.yzw = frac(r9.yzw);
  r9.yzw = r9.yzw * float3(6,6,6) + float3(-3,-3,-3);
  r9.yzw = saturate(float3(-1,-1,-1) + abs(r9.yzw));
  r9.yzw = float3(-1,-1,-1) + r9.yzw;
  r9.yzw = r5.zzz * r9.yzw + float3(1,1,1);
  r9.yzw = r11.xxx * r9.yzw;
  r9.yzw = cb0[361].xxx * r9.yzw;
  r5.z = dot(r9.yzw, float3(0.300000012,0.589999974,0.109999999));
  r10.w = min(cb0[361].y, r5.z);
  r5.z = max(1.00000001e-010, r5.z);
  r5.z = r10.w / r5.z;
  r11.x = t9[0].val[8/4];
  r11.y = t9[0].val[8/4+1];
  r11.x = dot(r11.xy, float2(1,1));
  r13.x = t9[1].val[8/4];
  r13.y = t9[1].val[8/4+1];
  r11.y = dot(r13.xy, float2(1,1));
  r13.x = t9[2].val[8/4];
  r13.y = t9[2].val[8/4+1];
  r11.z = dot(r13.xy, float2(1,1));
  r13.x = t9[3].val[8/4];
  r13.y = t9[4].val[8/4];
  r13.z = t9[5].val[8/4];
  r11.xyz = r13.xyz + r11.xyz;
  r11.xyz = max(float3(0,0,0), r11.xyz);
  r11.xyz = cb0[362].xyz * r11.xyz;
  r9.yzw = r9.yzw * r5.zzz + r11.xyz;
  r9.yzw = r9.yzw * r6.xyz;
  r11.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r11.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r11.xyz;
  r11.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r11.xyz;
  r11.xyz = float3(1.33200002,1.33200002,1.33200002) + r11.xyz;
  r11.xyz = max(float3(1,1,1), r11.xyz);
  if (cb2[0].z != 0) {
    r13.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r13.yzw = r13.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r14.xyzw = cb2[51].xyzw * r2.yyyy;
      r14.xyzw = r2.xxxx * cb2[50].xyzw + r14.xyzw;
      r14.xyzw = r2.zzzz * cb2[52].xyzw + r14.xyzw;
      r14.xyzw = cb2[53].xyzw + r14.xyzw;
      r14.xy = r14.xy / r14.ww;
      r15.xy = cmp(r14.xy >= float2(0,0));
      r15.zw = cmp(float2(1,1) >= r14.xy);
      r15.xy = r15.zw ? r15.xy : 0;
      r5.z = r15.y ? r15.x : 0;
      if (r5.z != 0) {
        r5.z = t11.SampleLevel(s2_s, r14.xy, 0).x;
        r10.w = cmp(r14.z < r5.z);
        r5.z = cmp(0.99000001 < r5.z);
        r5.z = (int)r5.z | (int)r10.w;
        r14.x = r5.z ? 1.000000 : 0;
      } else {
        r14.x = 1;
      }
    } else {
      r14.x = 1;
    }
    if (cb2[9].z != 0) {
      r5.z = cb2[9].z;
      r10.w = 0;
      while (true) {
        r11.w = cmp((uint)r10.w >= asuint(cb2[9].z));
        if (r11.w != 0) break;
        r11.w = dot(cb2[10].xyzw, icb[r10.w+0].xyzw);
        r11.w = cmp(v6.w < r11.w);
        if (r11.w != 0) {
          r5.z = r10.w;
          break;
        }
        r10.w = (int)r10.w + 1;
      }
      r10.w = cmp((uint)r5.z < asuint(cb2[9].z));
      if (r10.w != 0) {
        r10.w = (uint)r5.z << 2;
        r15.xyzw = cb2[r10.w+12].xyzw * r2.yyyy;
        r15.xyzw = r2.xxxx * cb2[r10.w+11].xyzw + r15.xyzw;
        r15.xyzw = r2.zzzz * cb2[r10.w+13].xyzw + r15.xyzw;
        r15.xyzw = cb2[r10.w+14].xyzw + r15.xyzw;
        r16.xyzw = r15.xyxy / r15.wwww;
        r15.xy = cmp(r16.zw >= cb2[r5.z+27].xy);
        r17.xy = cmp(cb2[r5.z+27].zw >= r16.zw);
        r15.xy = r15.xy ? r17.xy : 0;
        r5.z = r15.y ? r15.x : 0;
        if (r5.z != 0) {
          r16.xyzw = r16.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r15.xy = frac(r16.zw);
          r16.xyzw = floor(r16.xyzw);
          r17.xyzw = float4(0.5,1.5,0.5,0.5) + r16.zwzw;
          r17.xyzw = cb2[31].zwzw * r17.xyzw;
          r18.x = t10.SampleLevel(s1_s, r17.xy, 0).x;
          r16.xyzw = float4(1.5,1.5,1.5,0.5) + r16.xyzw;
          r16.xyzw = cb2[31].zwzw * r16.xyzw;
          r18.y = t10.SampleLevel(s1_s, r16.xy, 0).x;
          r18.z = t10.SampleLevel(s1_s, r16.zw, 0).x;
          r18.w = t10.SampleLevel(s1_s, r17.zw, 0).x;
          r5.z = r15.z * 4000 + -1;
          r16.xyzw = saturate(r18.xyzw * float4(4000,4000,4000,4000) + -r5.zzzz);
          r15.zw = r16.zy + -r16.wx;
          r15.xz = r15.xx * r15.zw + r16.wx;
          r5.z = r15.z + -r15.x;
          r5.z = r15.y * r5.z + r15.x;
        } else {
          r5.z = 1;
        }
      } else {
        r5.z = 1;
      }
    } else {
      r5.z = 1;
    }
    r13.x = 1;
    r10.w = dot(float4(1,1,1,1), r13.xyzw);
    r14.yzw = r13.yzw;
    r11.w = dot(r14.xyzw, float4(1,1,1,1));
    r11.w = -1 + r11.w;
    r10.w = r10.w * r11.w + 1;
    r11.w = saturate(v6.w * cb2[9].x + cb2[9].y);
    r11.w = r11.w * r11.w;
    r10.w = r10.w + -r5.z;
    r5.z = r11.w * r10.w + r5.z;
    r5.z = cmp(r5.z >= cb0[327].x);
    r10.w = r5.z ? 1.000000 : 0;
    if (r5.z != 0) {
      r5.z = round(cb3[74].y);
      r5.z = (uint)r5.z;
      r5.z = min(2, (uint)r5.z);
      r11.w = 1.00000001e-010 + r9.x;
      r6.w = r6.w / r11.w;
      r11.w = abs(r7.y) * 360 + -icb[r7.z+3].x;
      r7.z = icb[r7.w+3].x + -icb[r7.z+3].x;
      r7.z = r11.w / r7.z;
      r7.w = x0[r5.z+0].x;
      r11.w = x1[r5.z+0].x;
      r11.w = r11.w + -r7.w;
      r7.z = r7.z * r11.w + r7.w;
      r7.y = abs(r7.y) * 360 + r7.z;
      r7.z = cmp(r7.y < 0);
      r7.w = cmp(360 < r7.y);
      r13.xy = float2(360,-360) + r7.yy;
      r7.y = r7.w ? r13.y : r7.y;
      r7.y = r7.z ? r13.x : r7.y;
      r5.y = trunc(r5.y);
      r5.y = r5.y * 0.100000001 + 0.200000003;
      r5.x = r5.x + -r5.y;
      r5.x = saturate(10 * r5.x);
      r5.y = x2[r5.z+0].x;
      r7.z = x3[r5.z+0].x;
      r7.z = r7.z + -r5.y;
      r5.y = r5.x * r7.z + r5.y;
      r7.z = x4[r5.z+0].x;
      r5.z = x5[r5.z+0].x;
      r5.z = r5.z + -r7.z;
      r5.x = r5.x * r5.z + r7.z;
      r5.z = cmp(0 < r6.w);
      r5.y = saturate(r6.w + r5.y);
      r5.y = r5.z ? r5.y : r6.w;
      r5.x = saturate(r9.x + r5.x);
      r7.yzw = r7.yyy * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
      r7.yzw = frac(r7.yzw);
      r7.yzw = r7.yzw * float3(6,6,6) + float3(-3,-3,-3);
      r7.yzw = saturate(float3(-1,-1,-1) + abs(r7.yzw));
      r7.yzw = float3(-1,-1,-1) + r7.yzw;
      r7.yzw = r5.yyy * r7.yzw + float3(1,1,1);
      r13.xyz = r7.yzw * r5.xxx;
      r5.xyz = -r5.xxx * r7.yzw + cb3[18].xyz;
      r5.xyz = r5.www * r5.xyz + r13.xyz;
      r5.xyz = saturate(r4.www * -r5.xyz + r5.xyz);
      r4.w = v2.z * r7.x;
      r4.w = cmp(r4.w >= cb3[75].x);
      r5.w = saturate(cb3[71].y);
      r5.w = r5.w * cb0[139].y + cb0[139].x;
      r6.w = dot(cb0[r2.w+358].xyz, cb0[r2.w+358].xyz);
      r6.w = rsqrt(r6.w);
      r7.xyz = cb0[r2.w+358].xyz * r6.www;
      r0.x = dot(r0.xyz, r7.xyz);
      r0.x = r0.x * 0.5 + 0.5;
      r0.y = 1 + -cb0[327].x;
      r0.y = v2.x * r0.y + cb0[327].x;
      r0.x = r0.x * r0.y;
      r0.y = r4.w ? 1 : 0.699999988;
      r0.z = max(r5.x, r5.y);
      r0.z = max(r0.z, r5.z);
      r0.y = r0.z * r0.y;
      r0.z = max(0.00100000005, r0.z);
      r0.y = r0.y / r0.z;
      r0.z = dot(-r3.xyz, r7.xyz);
      r0.z = saturate(3 * r0.z);
      r3.xyz = r5.xyz * r0.yyy + -r5.xyz;
      r3.xyz = r0.zzz * r3.xyz + r5.xyz;
      r0.x = cmp(r0.x >= cb0[327].x);
      r0.y = max(cb0[226].y, r5.w);
      r0.z = max(r6.x, r6.y);
      r0.z = max(r0.z, r6.z);
      r0.y = r0.z + r0.y;
      r0.y = max(0, r0.y);
      r0.z = max(0.00100000005, r0.z);
      r0.y = r0.y / r0.z;
      r5.xyz = r6.xyz * r0.yyy;
      r0.x = r0.x ? r4.w : 0;
      r0.y = r0.x ? 1.000000 : 0;
      r6.xyz = r0.yyy * r6.xyz;
      r6.xyz = float3(0.200000003,0.200000003,0.200000003) * r6.xyz;
      r5.xyz = r5.xyz * r3.www;
      r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
      r3.xyz = cb2[8].xxx * r3.xyz;
      r3.xyz = float3(0.200000003,0.200000003,0.200000003) * r3.xyz;
      r7.xyz = cb2[6].xyz * r10.www;
      r5.xyz = r7.yzx * r5.yzx;
      r3.xyz = r7.xyz * r3.xyz;
      r0.xyz = r0.xxx ? float3(0,0,0) : r3.xyz;
      r3.xyz = r6.xyz * r7.xyz + r0.xyz;
      r3.w = r5.z;
    } else {
      r5.xy = float2(0,0);
      r3.xyzw = float4(0,0,0,0);
    }
    r0.x = asuint(cb2[8].z) >> 8;
    r0.x = (int)r1.w & (int)r0.x;
    r3.xyzw = r0.xxxx ? r3.xyzw : float4(0,0,0,0);
    r0.yz = r0.xx ? r5.xy : float2(0,0);
    r0.x = r3.w;
  } else {
    r3.xyz = float3(0,0,0);
    r0.xyz = float3(0,0,0);
  }
  r0.xyz = r3.xyz + r0.xyz;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r3.xyz = cb0[5].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[4].xyw + r3.xyz;
    r3.xyz = r2.zzz * cb0[6].xyw + r3.xyz;
    r3.xyz = cb0[7].xyw + r3.xyz;
    r3.xy = r3.xy / r3.zz;
    r5.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r3.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r5.z = cb0[208].z * r1.w;
    r3.xyzw = t12.SampleLevel(s0_s, r5.xyz, 0).xyzw;
    r5.x = v5.w * r3.w;
    r3.xyz = v5.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v5.xyz;
    r5.x = v5.w;
  }
  r5.yzw = r0.www ? float3(0,0,0) : r12.xyz;
  r5.yzw = r10.xyz + r5.yzw;
  r5.yzw = r5.yzw + -r0.xyz;
  r0.xyz = cb0[145].yyy * r5.yzw + r0.xyz;
  r8.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
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
    r8.xyzw = r0.wwww ? r2.yzwx : r8.xyzw;
    o0.w = r8.w;
  } else {
    o0.w = r8.w;
  }
  r0.xyz = r9.yzw * r11.xyz + r0.xyz;
  r0.xyz = r0.xyz + r8.xyz;
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
  r1.x = dot(r1.xyz, cb0[r2.w+358].xyz);
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