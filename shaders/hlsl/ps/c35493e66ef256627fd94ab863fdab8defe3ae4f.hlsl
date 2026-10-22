// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t17 : register(t17);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[91];
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
  float4 v4 : TEXCOORD1,
  nointerpolation uint v5 : PRIMITIVE_ID0,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
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
  r1.xyz = -r1.xyz * r0.www;
  r3.xyzw = mad((int4)v5.xxxx, int4(36,36,36,36), int4(4,27,23,20));
  r0.w = t8[r3.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.w = v7.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r0.xyz, r1.xyz);
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
  r5.xy = r4.xy * cb0[130].zw + -r5.xy;
  r6.xyz = -cb3[2].xyz + cb0[67].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb3[52].y;
  r2.w = max(cb3[52].z, r2.w);
  r2.w = min(1, r2.w);
  r2.w = -cb3[52].z + r2.w;
  r2.w = saturate(cb3[53].x * r2.w);
  r3.x = cb3[53].y + -cb3[53].z;
  r3.x = r2.w * r3.x + cb3[53].z;
  r5.z = 0.00100000005 * r3.x;
  r3.x = r3.x * 0.000500000024 + r5.x;
  r5.x = 1 / r5.z;
  r6.x = r5.x * r3.x;
  r3.x = cb0[130].x / cb0[130].y;
  r5.x = r5.z * r3.x;
  r5.y = r5.x * 0.5 + r5.y;
  r5.x = 1 / r5.x;
  r6.y = r5.y * r5.x;
  r5.xy = float2(-0.5,-0.5) + r6.xy;
  r5.x = dot(r5.xy, r5.xy);
  r5.x = sqrt(r5.x);
  r5.x = -r5.x * 2 + 1;
  r5.y = 2.33299994 * r5.x;
  r5.y = r5.y * r5.y;
  r5.y = 1.44269514 * r5.y;
  r5.y = exp2(r5.y);
  r5.y = 1 / r5.y;
  r5.z = cmp(9.99999975e-006 < abs(r5.x));
  r5.x = cmp(r5.x >= 0);
  r5.y = 1 + -r5.y;
  r5.x = r5.x ? r5.y : 0;
  r5.x = r5.x ? r5.z : 0;
  r5.y = r5.x * 5 + -5;
  r5.yz = saturate(cb3[56].yw + r5.yy);
  r5.y = 1 + -r5.y;
  r5.y = r5.y * r5.z + -r5.x;
  r5.x = r2.w * r5.y + r5.x;
  r5.yzw = -cb3[6].xyz + cb3[5].xyz;
  r5.yzw = r2.www * r5.yzw + cb3[6].xyz;
  r5.xyz = r5.xxx * r5.yzw;
  r5.xyz = r5.xyz * r1.www;
  r0.w = cb3[57].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb3[57].z + cb3[57].y;
  r6.xy = cb0[142].zz * float2(0.200000003,0.00999999978) + v3.yy;
  r6.xy = r6.xy + r6.xy;
  r6.z = 2 * v3.x;
  r1.w = t9.SampleBias(s1_s, r6.zx, cb0[143].y).x;
  r6.xw = v3.xy * float2(2,2) + float2(-1,-1);
  r2.w = min(abs(r6.w), abs(r6.x));
  r5.w = max(abs(r6.w), abs(r6.x));
  r5.w = 1 / r5.w;
  r2.w = r5.w * r2.w;
  r5.w = r2.w * r2.w;
  r7.x = r5.w * 0.0208350997 + -0.0851330012;
  r7.x = r5.w * r7.x + 0.180141002;
  r7.x = r5.w * r7.x + -0.330299497;
  r5.w = r5.w * r7.x + 0.999866009;
  r7.x = r5.w * r2.w;
  r7.y = cmp(abs(r6.x) < abs(r6.w));
  r7.x = r7.x * -2 + 1.57079637;
  r7.x = r7.y ? r7.x : 0;
  r2.w = r2.w * r5.w + r7.x;
  r5.w = cmp(r6.x < -r6.x);
  r5.w = r5.w ? -3.141593 : 0;
  r2.w = r5.w + r2.w;
  r5.w = min(r6.w, r6.x);
  r7.x = max(r6.w, r6.x);
  r5.w = cmp(r5.w < -r5.w);
  r7.x = cmp(r7.x >= -r7.x);
  r5.w = r5.w ? r7.x : 0;
  r2.w = r5.w ? -r2.w : r2.w;
  r2.w = 0.159154952 * r2.w;
  r7.x = frac(r2.w);
  r6.xw = r6.xw * r6.xw;
  r2.w = r6.x + r6.w;
  r2.w = sqrt(r2.w);
  r7.yz = cb0[142].zz * float2(-0.400000006,-0.300000012) + r2.ww;
  r6.xw = t10.SampleBias(s2_s, r7.xy, cb0[143].y).xy;
  r6.xw = float2(-0.5,-0.5) + r6.xw;
  r6.xw = cb3[58].xx * r6.xw;
  r6.xw = r6.xw * float2(2,2) + v3.xy;
  r5.w = t9.SampleBias(s1_s, r6.xw, cb0[143].y).x;
  r8.xy = float2(0.5,0.5) * r7.xz;
  r6.xw = t10.SampleBias(s2_s, r8.xy, cb0[143].y).xy;
  r6.xw = float2(-0.5,-0.5) + r6.xw;
  r6.xw = cb3[58].xx * r6.xw;
  r6.xw = r6.xw * float2(2,2) + v3.xy;
  r6.x = t9.SampleBias(s1_s, r6.xw, cb0[143].y).x;
  r5.w = r6.x * r5.w;
  r6.x = r5.w * r1.w;
  r6.x = saturate(r6.x + r6.x);
  r6.w = cmp(0 >= r6.x);
  r6.x = log2(r6.x);
  r7.y = cb3[58].y * r6.x;
  r7.y = exp2(r7.y);
  r7.y = 0.5 * r7.y;
  r7.y = r6.w ? 0 : r7.y;
  r1.w = r1.w * r5.w + -0.5;
  r1.w = saturate(r1.w + r1.w);
  r1.w = 1 + -r1.w;
  r5.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r7.z = cb3[58].y * r1.w;
  r7.z = exp2(r7.z);
  r7.z = 1 + -r7.z;
  r7.z = r5.w ? 1 : r7.z;
  r9.x = 500 * r7.z;
  r7.z = r7.z * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r7.z = r7.z + -r7.y;
  r7.y = r9.x * r7.z + r7.y;
  r7.z = dot(-cb0[18].xyz, r0.xyz);
  r7.z = 1 + -r7.z;
  r7.y = r7.y * r7.z;
  r7.y = r7.y * cb3[58].w + -cb3[58].w;
  r7.y = saturate(cb3[59].z + r7.y);
  r4.z = t10.SampleBias(s2_s, r4.zw, cb0[143].y).x;
  r4.z = -r4.z * 0.5 + 1;
  r4.z = r4.z * r7.z + cb3[68].x;
  r4.z = -1 + r4.z;
  r4.z = saturate(ceil(r4.z));
  r9.xyz = cb3[9].xyz * r4.zzz;
  r10.xyz = r7.yyy * cb3[8].xyz + r9.xyz;
  r10.xyz = cb3[60].xxx * r10.xyz;
  r10.xyz = r10.xyz * r0.www;
  r9.xyz = cb3[59].www * r9.xyz;
  r9.xyz = max(r10.xyz, r9.xyz);
  r10.xyzw = t11.SampleBias(s3_s, v3.xy, cb0[143].y).xyzw;
  r11.xyz = cb3[11].xyz * r10.zzz;
  r12.xyz = cb3[13].xyz * r10.www;
  r12.xyz = cb3[68].zzz * r12.xyz;
  r11.xyz = r11.xyz * cb3[68].yyy + r12.xyz;
  r4.w = cb0[142].z * cb3[69].y + v3.x;
  r12.x = cb3[70].x * r4.w;
  r4.w = cb0[142].z * cb3[70].y + v3.y;
  r12.y = cb3[70].z * r4.w;
  r4.w = t12.SampleBias(s4_s, r12.xy, cb0[143].y).x;
  r4.w = -0.5 + r4.w;
  r4.w = r4.w + r4.w;
  r8.yw = cb3[71].yw * r4.ww;
  r4.w = t13.SampleBias(s5_s, v3.xy, cb0[143].y).y;
  r4.w = r4.w * cb3[72].x + cb3[72].y;
  r8.yw = r8.yw * r4.ww + v3.xy;
  r4.w = t10.SampleBias(s2_s, r8.yw, cb0[143].y).x;
  r4.w = -1 + r4.w;
  r8.yw = cb3[73].yz + r4.ww;
  r8.yw = saturate(ceil(r8.yw));
  r10.zw = float2(1,1) + -r8.yw;
  r7.y = r10.z * r8.w;
  r12.xyz = cb3[18].xyz + -r11.xyz;
  r11.xyz = r7.yyy * r12.xyz + r11.xyz;
  r12.xy = cb3[74].zw + r4.ww;
  r12.xy = saturate(ceil(r12.xy));
  r12.xz = float2(1,1) + -r12.xy;
  r4.w = r12.x * r12.y;
  r11.xyz = r4.www * -r11.xyz + r11.xyz;
  r9.xyz = r11.xyz + r9.xyz;
  r6.y = t9.SampleBias(s1_s, r6.zy, cb0[143].y).x;
  r11.xy = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r2.ww;
  r7.w = r11.x;
  r7.xw = t10.SampleBias(s2_s, r7.xw, cb0[143].y).xy;
  r7.xw = float2(-0.5,-0.5) + r7.xw;
  r7.xw = cb3[58].xx * r7.xw;
  r7.xw = r7.xw * float2(2,2) + v3.xy;
  r2.w = t9.SampleBias(s1_s, r7.xw, cb0[143].y).x;
  r8.z = 0.5 * r11.y;
  r7.xw = t10.SampleBias(s2_s, r8.xz, cb0[143].y).xy;
  r7.xw = float2(-0.5,-0.5) + r7.xw;
  r7.xw = cb3[58].xx * r7.xw;
  r7.xw = r7.xw * float2(2,2) + v3.xy;
  r6.z = t9.SampleBias(s1_s, r7.xw, cb0[143].y).x;
  r2.w = r6.z * r2.w;
  r6.z = r6.y * r2.w;
  r6.z = saturate(r6.z + r6.z);
  r7.x = cmp(0 >= r6.z);
  r6.z = log2(r6.z);
  r7.w = cb3[75].x * r6.z;
  r7.w = exp2(r7.w);
  r7.w = 0.5 * r7.w;
  r7.w = r7.x ? 0 : r7.w;
  r2.w = r6.y * r2.w + -0.5;
  r2.w = saturate(r2.w + r2.w);
  r2.w = 1 + -r2.w;
  r6.y = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r8.x = cb3[75].x * r2.w;
  r8.x = exp2(r8.x);
  r8.x = 1 + -r8.x;
  r8.x = r6.y ? 1 : r8.x;
  r11.x = 500 * r8.x;
  r8.x = r8.x * 0.5 + 0.5;
  r11.x = saturate(r11.x);
  r8.x = r8.x + -r7.w;
  r7.w = r11.x * r8.x + r7.w;
  r7.w = r7.w * r7.z;
  r7.w = r7.w * cb3[75].z + -cb3[75].z;
  r7.w = saturate(cb3[76].y + r7.w);
  r8.xyz = cb3[23].xyz * r4.zzz;
  r11.xyz = r7.www * cb3[20].xyz + r8.xyz;
  r11.xyz = cb3[60].zzz * r11.xyz;
  r8.xyz = cb3[60].yyy * r8.xyz;
  r8.xyz = max(r11.xyz, r8.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r7.w = cb3[76].z * r6.x;
  r7.w = exp2(r7.w);
  r7.w = 0.5 * r7.w;
  r7.w = r6.w ? 0 : r7.w;
  r9.x = cb3[76].z * r1.w;
  r9.x = exp2(r9.x);
  r9.x = 1 + -r9.x;
  r9.x = r5.w ? 1 : r9.x;
  r11.x = 500 * r9.x;
  r9.x = r9.x * 0.5 + 0.5;
  r11.x = saturate(r11.x);
  r9.x = r9.x + -r7.w;
  r7.w = r11.x * r9.x + r7.w;
  r7.w = r7.w * r7.z;
  r7.w = r7.w * cb3[77].x + -cb3[77].x;
  r7.w = saturate(cb3[77].w + r7.w);
  r9.xyz = cb3[26].xyz * r4.zzz;
  r11.xyz = r7.www * cb3[25].xyz + r9.xyz;
  r11.xyz = cb3[61].zzz * r11.xyz;
  r11.xyz = r11.xyz * r0.www;
  r9.xyz = cb3[61].yyy * r9.xyz;
  r9.xyz = max(r11.xyz, r9.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r7.w = cb3[78].x * r6.x;
  r7.w = exp2(r7.w);
  r7.w = 0.5 * r7.w;
  r7.w = r6.w ? 0 : r7.w;
  r9.x = cb3[78].x * r1.w;
  r9.x = exp2(r9.x);
  r9.x = 1 + -r9.x;
  r9.x = r5.w ? 1 : r9.x;
  r11.x = 500 * r9.x;
  r9.x = r9.x * 0.5 + 0.5;
  r11.x = saturate(r11.x);
  r9.x = r9.x + -r7.w;
  r7.w = r11.x * r9.x + r7.w;
  r7.w = r7.w * r7.z;
  r7.w = r7.w * cb3[78].z + -cb3[78].z;
  r7.w = saturate(cb3[79].y + r7.w);
  r9.xyz = cb3[29].xyz * r4.zzz;
  r11.xyz = r7.www * cb3[28].xyz + r9.xyz;
  r11.xyz = cb3[62].zzz * r11.xyz;
  r11.xyz = r11.xyz * r0.www;
  r9.xyz = cb3[62].yyy * r9.xyz;
  r9.xyz = max(r11.xyz, r9.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r6.x = cb3[79].z * r6.x;
  r6.x = exp2(r6.x);
  r6.x = 0.5 * r6.x;
  r6.x = r6.w ? 0 : r6.x;
  r1.w = cb3[79].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r5.w ? 1 : r1.w;
  r9.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r1.w = r1.w + -r6.x;
  r1.w = r9.x * r1.w + r6.x;
  r1.w = r1.w * r7.z;
  r1.w = r1.w * cb3[80].x + -cb3[80].x;
  r1.w = saturate(cb3[80].w + r1.w);
  r9.xyz = cb3[32].xyz * r4.zzz;
  r11.xyz = r1.www * cb3[31].xyz + r9.xyz;
  r11.xyz = cb3[63].zzz * r11.xyz;
  r11.xyz = r11.xyz * r0.www;
  r9.xyz = cb3[63].yyy * r9.xyz;
  r9.xyz = max(r11.xyz, r9.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r0.w = cb3[81].x * r6.z;
  r0.w = exp2(r0.w);
  r0.w = 0.5 * r0.w;
  r0.w = r7.x ? 0 : r0.w;
  r1.w = cb3[81].x * r2.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r6.y ? 1 : r1.w;
  r6.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r6.x = saturate(r6.x);
  r1.w = r1.w + -r0.w;
  r0.w = r6.x * r1.w + r0.w;
  r0.w = r0.w * r7.z;
  r0.w = r0.w * cb3[81].z + -cb3[81].z;
  r0.w = saturate(cb3[82].y + r0.w);
  r6.xyz = cb3[37].xyz * r4.zzz;
  r7.xzw = r0.www * cb3[34].xyz + r6.xyz;
  r7.xzw = cb3[64].zzz * r7.xzw;
  r6.xyz = cb3[64].yyy * r6.xyz;
  r6.xyz = max(r7.xzw, r6.xyz);
  r6.xyz = r8.xyz + r6.xyz;
  r7.xzw = r4.zzz * float3(0,0.166666999,0) + -r6.xyz;
  r6.xyz = cb3[65].yyy * r7.xzw + r6.xyz;
  r6.xyz = cb3[65].www * -r6.xyz + r6.xyz;
  r7.xzw = r4.zzz * float3(3,3,3) + -r6.xyz;
  r6.xyz = cb3[66].yyy * r7.xzw + r6.xyz;
  r7.xzw = r4.zzz * float3(7,6.30000019,0) + -r6.xyz;
  r6.xyz = cb3[66].www * r7.xzw + r6.xyz;
  r7.xzw = r4.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r7.xzw = r7.xzw + -r6.xyz;
  r6.xyz = cb3[67].yyy * r7.xzw + r6.xyz;
  r5.xyz = r5.xyz * cb3[55].xxx + r6.xyz;
  r6.xyz = cb3[38].xyz + -r5.xyz;
  r5.xyz = cb3[82].zzz * r6.xyz + r5.xyz;
  r6.xyz = t14.SampleBias(s6_s, v3.xy, cb0[143].y).xyz;
  r0.w = -1 + cb0[143].y;
  r7.xzw = t15.SampleBias(s7_s, v3.xy, r0.w).xyz;
  r8.xyz = -cb3[42].xyz + cb3[41].xyz;
  r8.xyz = r7.www * r8.xyz + cb3[42].xyz;
  r9.xyz = cb3[44].xyz + -r8.xyz;
  r8.xyz = r7.zzz * r9.xyz + r8.xyz;
  r9.xyz = cb3[46].xyz + -r8.xyz;
  r7.xzw = r7.xxx * r9.xyz + r8.xyz;
  r9.xyzw = t13.SampleBias(s5_s, v3.xy, r0.w).xyzw;
  r7.xzw = float3(-1,-1,-1) + r7.xzw;
  r7.xzw = r9.zzz * r7.xzw + float3(1,1,1);
  r8.xyz = r7.xzw * r6.xyz;
  r11.xyz = cb2[12].xyz + -cb2[11].xyz;
  r11.xyz = cb3[83].xxx * r11.xyz + cb2[11].xyz;
  r13.xyz = r11.xyz * r8.xyz;
  r14.x = t8[r3.y].val[0/4];
  r14.y = t8[r3.y].val[0/4+1];
  r14.z = t8[r3.y].val[0/4+2];
  r0.w = -r14.x + r2.z;
  r0.w = max(0, r0.w);
  r1.w = max(cb3[83].y, r14.y);
  r0.w = r0.w / r1.w;
  r0.w = min(1, r0.w);
  r12.xw = cb3[83].zw * r1.ww;
  r2.w = cb3[83].z * r1.w + r14.x;
  r2.w = r14.z + -r2.w;
  r2.w = max(0, r2.w);
  r3.y = r12.w + r12.x;
  r1.w = -r3.y + r1.w;
  r1.w = max(1, r1.w);
  r1.w = r2.w / r1.w;
  r1.w = min(1, r1.w);
  r0.w = r0.w * r1.w + -r1.w;
  r0.w = 1 + r0.w;
  r14.xyz = r6.xyz * r7.xzw + -r13.xyz;
  r13.xyz = r0.www * r14.xyz + r13.xyz;
  r1.w = r9.y * 0.75 + 0.25;
  r14.xyz = r13.xyz * r1.www;
  r15.xyz = cmp(float3(0,0,0) >= r14.xyz);
  r16.xyz = log2(r14.xyz);
  r16.xyz = float3(0.454545438,0.454545438,0.454545438) * r16.xyz;
  r16.xyz = exp2(r16.xyz);
  r15.xyz = r15.xyz ? float3(0,0,0) : r16.xyz;
  r16.xyz = float3(1,1,1) + -r15.xyz;
  r16.xyz = r16.xyz + r16.xyz;
  r17.xyz = t16.SampleBias(s8_s, v4.xy, cb0[143].y).xyz;
  r17.xyz = cb3[84].xxx * r17.xyz;
  r18.xyz = cmp(float3(0,0,0) >= r17.xyz);
  r17.xyz = log2(r17.xyz);
  r17.xyz = float3(0.454545438,0.454545438,0.454545438) * r17.xyz;
  r17.xyz = exp2(r17.xyz);
  r17.xyz = r18.xyz ? float3(0,0,0) : r17.xyz;
  r18.xyz = float3(1,1,1) + -r17.xyz;
  r16.xyz = -r16.xyz * r18.xyz + float3(1,1,1);
  r19.xyz = r17.xyz * r15.xyz;
  r19.xyz = r19.xyz + r19.xyz;
  r15.xyz = cmp(r15.xyz >= float3(0.5,0.5,0.5));
  r15.xyz = r15.xyz ? r16.xyz : r19.xyz;
  r16.xyz = cmp(float3(0,0,0) >= r15.xyz);
  r15.xyz = log2(r15.xyz);
  r15.xyz = float3(2.20000005,2.20000005,2.20000005) * r15.xyz;
  r15.xyz = exp2(r15.xyz);
  r15.xyz = r16.xyz ? float3(0,0,0) : r15.xyz;
  r13.xyz = -r13.xyz * r1.www + r15.xyz;
  r13.xyz = r10.xxx * r13.xyz + r14.xyz;
  r14.xyz = cb3[18].xyz + -r13.xyz;
  r13.xyz = r7.yyy * r14.xyz + r13.xyz;
  r13.xyz = saturate(r4.www * -r13.xyz + r13.xyz);
  r2.w = saturate(r0.w + r0.w);
  r2.w = r9.y * r2.w;
  r3.y = t8[r3.z].val[12/4];
  r3.z = firstbithigh((int)r3.y);
  r4.z = cmp((int)r3.z == -1);
  r3.z = (int)-r3.z + 31;
  r3.z = r4.z ? -1 : r3.z;
  r3.y = r3.y ? r3.z : 0;
  r3.z = saturate(dot(cb0[r3.y+358].xyz, r0.xyz));
  r14.xyz = cb0[67].xyz + -r2.xyz;
  r4.z = dot(r14.xyz, r14.xyz);
  r4.z = sqrt(r4.z);
  r14.xyz = r14.xyz / r4.zzz;
  r14.xyz = cb0[r3.y+358].xyz + r14.xyz;
  r5.w = dot(r14.xyz, r14.xyz);
  r5.w = sqrt(r5.w);
  r14.xyz = r14.xyz / r5.www;
  r5.w = dot(r14.xyz, r0.xyz);
  r5.w = saturate(r10.x + r5.w);
  r6.x = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = 207.936584 * r5.w;
  r5.w = exp2(r5.w);
  r3.z = r5.w * r3.z;
  r3.z = r6.x ? 0 : r3.z;
  r3.z = cmp(r3.z >= cb3[84].y);
  r3.z = r3.z ? 1.000000 : 0;
  r5.w = cb3[84].z * r10.y;
  r3.z = r5.w * r3.z;
  r5.w = 1 + -r9.w;
  r5.w = cmp(r5.w >= 0.5);
  o6.z = r5.w ? 0 : 1;
  r5.w = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r6.xw = cb0[152].xx + r4.xy;
  r6.xw = (uint2)r6.xw;
  r6.w = (uint)r6.w << 1;
  r6.x = (int)r6.w + (int)r6.x;
  r6.x = (uint)r6.x % 5;
  r6.x = (uint)r6.x;
  r4.xy = float2(0.015625,0.015625) * r4.xy;
  r4.x = t17.SampleBias(s9_s, r4.xy, cb0[143].y).x;
  r4.x = r6.x + r4.x;
  r4.x = 0.166666672 * r4.x;
  r4.x = cb3[86].z * r5.w + r4.x;
  r4.x = -0.5 + r4.x;
  r4.y = cb3[86].w * r10.w + r8.w;
  r5.w = -cb3[87].y + v2.w;
  r4.y = r5.w * r4.y;
  r5.w = cb3[87].z * r12.z + r12.y;
  r4.y = r5.w * r4.y;
  r4.y = saturate(ceil(r4.y));
  r5.w = 0.763943851 * cb0[128].x;
  r3.x = 1.77777779 / r3.x;
  r3.x = max(1, r3.x);
  r3.x = r5.w * r3.x;
  r6.xw = r4.zz * r3.xx + float2(-0.5,-300);
  r6.xw = saturate(float2(0.00333889807,0.000175438603) * r6.xw);
  r3.x = r6.x * -0.600000024 + 1;
  r3.x = r6.w * -0.200000003 + r3.x;
  r3.x = v3.z * r3.x;
  o6.x = cb3[89].x * r3.x;
  r3.x = 1 + -v2.y;
  o6.w = cb3[89].y * r3.x;
  r3.x = round(cb3[82].w);
  r3.x = (uint)r3.x;
  r3.x = min(2, (uint)r3.x);
  r4.z = cmp(r8.y >= r8.z);
  r4.z = r4.z ? 1.000000 : 0;
  r12.xy = r8.zy;
  r12.zw = float2(-1,0.666666687);
  r6.xy = r6.yz * r7.zw + -r12.xy;
  r6.zw = float2(1,-1);
  r6.xyzw = r4.zzzz * r6.xyzw + r12.xyzw;
  r4.z = cmp(r8.x >= r6.x);
  r4.z = r4.z ? 1.000000 : 0;
  r12.xyz = r6.xyw;
  r12.w = r8.x;
  r6.xyw = r12.wyx;
  r6.xyzw = r6.xyzw + -r12.xyzw;
  r6.xyzw = r4.zzzz * r6.xyzw + r12.xyzw;
  r4.z = min(r6.w, r6.y);
  r4.z = r6.x + -r4.z;
  r5.w = r6.w + -r6.y;
  r6.y = r4.z * 6 + 1.00000001e-010;
  r5.w = r5.w / r6.y;
  r5.w = r6.z + r5.w;
  r6.y = 1.00000001e-010 + r6.x;
  r4.z = r4.z / r6.y;
  r6.y = 360 * abs(r5.w);
  r6.zw = float2(0,1.40129846e-045);
  while (true) {
    r7.x = cmp((int)r6.w >= 21);
    if (r7.x != 0) break;
    r7.x = cmp(icb[r6.w+3].x >= r6.y);
    if (r7.x != 0) {
      r6.z = r6.w;
      break;
    }
    r6.w = (int)r6.w + 1;
    r6.z = 0;
  }
  r6.y = (int)r6.z + -1;
  r6.w = abs(r5.w) * 360 + -icb[r6.y+3].x;
  r7.x = icb[r6.z+3].x + -icb[r6.y+3].x;
  r6.w = r6.w / r7.x;
  r7.x = (int)r6.y & 0x80000000;
  r7.z = max((int)-r6.y, (int)r6.y);
  r7.w = (int)r7.z & 3;
  r8.w = -(int)r7.w;
  r7.x = r7.x ? r8.w : r7.w;
  r6.y = (int)r6.y ^ 4;
  r7.z = (uint)r7.z >> 2;
  r7.w = -(int)r7.z;
  r6.y = (int)r6.y & 0x80000000;
  r6.y = r6.y ? r7.w : r7.z;
  r7.z = (int)r6.z & 0x80000000;
  r7.w = max((int)-r6.z, (int)r6.z);
  r8.w = (int)r7.w & 3;
  r9.y = -(int)r8.w;
  r7.z = r7.z ? r9.y : r8.w;
  r6.z = (int)r6.z ^ 4;
  r7.w = (uint)r7.w >> 2;
  r8.w = -(int)r7.w;
  r6.z = (int)r6.z & 0x80000000;
  r6.z = r6.z ? r8.w : r7.w;
  r7.w = dot(cb0[r6.y+328].xyzw, icb[r7.x+0].xyzw);
  r8.w = dot(cb0[r6.y+338].xyzw, icb[r7.x+0].xyzw);
  r6.y = dot(cb0[r6.y+348].xyzw, icb[r7.x+0].xyzw);
  x0[0].x = r7.w;
  x0[1].x = r8.w;
  x0[2].x = r6.y;
  r6.y = dot(cb0[r6.z+328].xyzw, icb[r7.z+0].xyzw);
  r7.x = dot(cb0[r6.z+338].xyzw, icb[r7.z+0].xyzw);
  r6.z = dot(cb0[r6.z+348].xyzw, icb[r7.z+0].xyzw);
  x1[0].x = r6.y;
  x1[1].x = r7.x;
  x1[2].x = r6.z;
  r6.y = x0[r3.x+0].x;
  r6.z = x1[r3.x+0].x;
  r6.z = r6.z + -r6.y;
  r6.y = r6.w * r6.z + r6.y;
  r5.w = abs(r5.w) * 360 + r6.y;
  r6.y = cmp(r5.w < 0);
  r6.z = cmp(360 < r5.w);
  r7.xz = float2(360,-360) + r5.ww;
  r5.w = r6.z ? r7.z : r5.w;
  r5.w = r6.y ? r7.x : r5.w;
  r6.y = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.z = -0.200000003 + r6.y;
  r6.z = 10 * r6.z;
  r6.z = max(0, r6.z);
  r6.z = min(6, r6.z);
  r6.w = (int)r6.z;
  r7.x = (int)r6.w + 1;
  r6.z = trunc(r6.z);
  r6.z = r6.z * 0.100000001 + 0.200000003;
  r6.y = r6.y + -r6.z;
  r6.y = saturate(10 * r6.y);
  r6.z = (int)r6.w & 3;
  r6.w = (uint)r6.w >> 2;
  r7.z = (int)r7.x & 3;
  r7.x = (uint)r7.x >> 2;
  r7.w = dot(cb0[r6.w+334].xyzw, icb[r6.z+0].xyzw);
  r8.x = dot(cb0[r6.w+344].xyzw, icb[r6.z+0].xyzw);
  r8.y = dot(cb0[r6.w+354].xyzw, icb[r6.z+0].xyzw);
  x2[0].x = r7.w;
  x2[1].x = r8.x;
  x2[2].x = r8.y;
  r7.w = dot(cb0[r7.x+334].xyzw, icb[r7.z+0].xyzw);
  r8.x = dot(cb0[r7.x+344].xyzw, icb[r7.z+0].xyzw);
  r8.y = dot(cb0[r7.x+354].xyzw, icb[r7.z+0].xyzw);
  x3[0].x = r7.w;
  x3[1].x = r8.x;
  x3[2].x = r8.y;
  r7.w = dot(cb0[r6.w+336].xyzw, icb[r6.z+0].xyzw);
  r8.x = dot(cb0[r6.w+346].xyzw, icb[r6.z+0].xyzw);
  r6.z = dot(cb0[r6.w+356].xyzw, icb[r6.z+0].xyzw);
  x4[0].x = r7.w;
  x4[1].x = r8.x;
  x4[2].x = r6.z;
  r6.z = dot(cb0[r7.x+336].xyzw, icb[r7.z+0].xyzw);
  r6.w = dot(cb0[r7.x+346].xyzw, icb[r7.z+0].xyzw);
  r7.x = dot(cb0[r7.x+356].xyzw, icb[r7.z+0].xyzw);
  x5[0].x = r6.z;
  x5[1].x = r6.w;
  x5[2].x = r7.x;
  r6.z = x2[r3.x+0].x;
  r6.w = x3[r3.x+0].x;
  r6.w = r6.w + -r6.z;
  r6.z = r6.y * r6.w + r6.z;
  r6.w = x4[r3.x+0].x;
  r3.x = x5[r3.x+0].x;
  r3.x = r3.x + -r6.w;
  r3.x = r6.y * r3.x + r6.w;
  r6.y = cmp(0 < r4.z);
  r6.z = saturate(r6.z + r4.z);
  r4.z = r6.y ? r6.z : r4.z;
  r3.x = saturate(r6.x + r3.x);
  r6.xyz = r5.www * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r6.xyz = frac(r6.xyz);
  r6.xyz = r6.xyz * float3(6,6,6) + float3(-3,-3,-3);
  r6.xyz = saturate(float3(-1,-1,-1) + abs(r6.xyz));
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = r4.zzz * r6.xyz + float3(1,1,1);
  r7.xzw = r6.xyz * r3.xxx;
  r7.xzw = r7.xzw * r11.xyz;
  r6.xyz = r3.xxx * r6.xyz + -r7.xzw;
  r6.xyz = r0.www * r6.xyz + r7.xzw;
  r7.xzw = r6.xyz * r1.www;
  r8.xyz = cmp(float3(0,0,0) >= r7.xzw);
  r9.yzw = log2(r7.xzw);
  r9.yzw = float3(0.454545438,0.454545438,0.454545438) * r9.yzw;
  r9.yzw = exp2(r9.yzw);
  r8.xyz = r8.xyz ? float3(0,0,0) : r9.yzw;
  r9.yzw = float3(1,1,1) + -r8.xyz;
  r9.yzw = r9.yzw * r18.xyz;
  r9.yzw = -r9.yzw * float3(2,2,2) + float3(1,1,1);
  r10.yzw = r8.xyz * r17.xyz;
  r10.yzw = r10.yzw + r10.yzw;
  r8.xyz = cmp(r8.xyz >= float3(0.5,0.5,0.5));
  r8.xyz = r8.xyz ? r9.yzw : r10.yzw;
  r9.yzw = cmp(float3(0,0,0) >= r8.xyz);
  r8.xyz = log2(r8.xyz);
  r8.xyz = float3(2.20000005,2.20000005,2.20000005) * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r8.xyz = r9.yzw ? float3(0,0,0) : r8.xyz;
  r6.xyz = -r6.xyz * r1.www + r8.xyz;
  r6.xyz = r10.xxx * r6.xyz + r7.xzw;
  r7.xzw = cb3[18].xyz + -r6.xyz;
  r6.xyz = r7.yyy * r7.xzw + r6.xyz;
  r6.xyz = saturate(r4.www * -r6.xyz + r6.xyz);
  r0.w = v2.z * r9.x;
  r0.w = cmp(r0.w >= cb3[90].w);
  o3.w = r0.w ? 1.000000 : 0;
  r1.w = r4.x * r4.y + -0.333299994;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r1.w = saturate(cb3[84].w);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r4.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
  r4.xyz = cb0[213].xyz * r4.xyz;
  r7.xyz = (int3)r4.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r1.w = 1 + cb0[213].w;
  r4.xyz = r4.xyz / r7.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = cb0[213].www * r4.xyz;
  r4.xyz = r7.xyz * r1.www + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = cb0[214].xyz * r4.xyz;
  o1.w = t8[r3.w].val[4/4];
  r1.w = dot(cb0[r3.y+358].xyz, cb0[r3.y+358].xyz);
  r1.w = rsqrt(r1.w);
  r3.xyw = cb0[r3.y+358].xyz * r1.www;
  r1.w = dot(r0.xyz, r3.xyw);
  r1.w = r1.w * 0.5 + 0.5;
  r4.w = 1 + -cb0[327].x;
  r4.w = v2.x * r4.w + cb0[327].x;
  r1.w = r4.w * r1.w;
  r0.w = r0.w ? 1 : 0.699999988;
  r4.w = max(r6.x, r6.y);
  r4.w = max(r4.w, r6.z);
  r5.w = r4.w * r0.w;
  r4.w = max(0.00100000005, r4.w);
  r4.w = r5.w / r4.w;
  r1.x = dot(-r1.xyz, r3.xyw);
  r1.x = saturate(3 * r1.x);
  r3.xyw = r6.xyz * r4.www + -r6.xyz;
  o4.xyz = r1.xxx * r3.xyw + r6.xyz;
  r1.x = cmp(r1.w >= cb0[327].x);
  o4.w = r1.x ? 1.000000 : 0;
  o5.y = 0.5 * r2.w;
  r1.x = 0.0799999982 * r3.z;
  r1.yzw = -r3.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r13.xyz;
  r1.xyz = r2.www * r1.yzw + r1.xxx;
  r3.xyw = r13.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyw;
  r1.xyz = r1.www ? r1.xyz : r3.xyw;
  r3.xyw = t1.SampleLevel(s0_s, r4.xyz, 0).xyz;
  r2.w = t2.SampleLevel(s0_s, r4.xyz, 0).y;
  r2.w = r2.w * 2 + -1;
  r4.w = t4.SampleLevel(s0_s, r4.xyz, 0).y;
  r4.w = r4.w * 2 + -1;
  r5.w = t6.SampleLevel(s0_s, r4.xyz, 0).y;
  r5.w = r5.w * 2 + -1;
  r2.w = r2.w * r3.x;
  r7.y = 1.73205125 * r2.w;
  r2.w = r4.w * r3.y;
  r7.w = 1.73205125 * r2.w;
  r2.w = r5.w * r3.w;
  r8.y = 1.73205125 * r2.w;
  r2.w = t3.SampleLevel(s0_s, r4.xyz, 0).y;
  r2.w = r2.w * 2 + -1;
  r4.w = t5.SampleLevel(s0_s, r4.xyz, 0).y;
  r4.w = r4.w * 2 + -1;
  r4.x = t7.SampleLevel(s0_s, r4.xyz, 0).y;
  r4.x = r4.x * 2 + -1;
  r2.w = r2.w * r3.x;
  r4.xy = r4.xw * r3.wy;
  r7.xz = r3.xy;
  r3.x = dot(r7.xy, float2(0.886227548,-1.02332771));
  r9.x = r2.w * 2.21557164 + r3.x;
  r2.w = dot(r7.zw, float2(0.886227548,-1.02332771));
  r9.y = r4.y * 2.21557164 + r2.w;
  r8.x = r3.w;
  r2.w = dot(r8.xy, float2(0.886227548,-1.02332771));
  r9.z = r4.x * 2.21557164 + r2.w;
  r3.xyw = max(float3(0,0,0), r9.xyz);
  r3.xyw = cb0[157].xyz * r3.xyw;
  r4.xyw = float3(0.318309873,0.318309873,0.318309873) * r3.ywx;
  r2.w = cmp(r4.x >= r4.y);
  r2.w = r2.w ? 1.000000 : 0;
  r7.xy = r4.yx;
  r7.zw = float2(-1,0.666666687);
  r8.xy = r3.yw * float2(0.318309873,0.318309873) + -r7.xy;
  r8.zw = float2(1,-1);
  r7.xyzw = r2.wwww * r8.xyzw + r7.xyzw;
  r2.w = cmp(r4.w >= r7.x);
  r2.w = r2.w ? 1.000000 : 0;
  r4.xyz = r7.xyw;
  r7.xyw = r4.wyx;
  r7.xyzw = r7.xyzw + -r4.xyzw;
  r4.xyzw = r2.wwww * r7.xyzw + r4.xyzw;
  r2.w = min(r4.w, r4.y);
  r2.w = r4.x + -r2.w;
  r3.x = r4.w + -r4.y;
  r3.y = r2.w * 6 + 1.00000001e-010;
  r3.x = r3.x / r3.y;
  r3.x = r4.z + r3.x;
  r3.y = 1.00000001e-010 + r4.x;
  r2.w = r2.w / r3.y;
  r2.w = cb0[361].z * r2.w;
  r3.xyw = float3(1,0.666666687,0.333333343) + abs(r3.xxx);
  r3.xyw = frac(r3.xyw);
  r3.xyw = r3.xyw * float3(6,6,6) + float3(-3,-3,-3);
  r3.xyw = saturate(float3(-1,-1,-1) + abs(r3.xyw));
  r3.xyw = float3(-1,-1,-1) + r3.xyw;
  r3.xyw = r2.www * r3.xyw + float3(1,1,1);
  r3.xyw = r4.xxx * r3.xyw;
  r3.xyw = cb0[361].xxx * r3.xyw;
  r2.w = dot(r3.xyw, float3(0.300000012,0.589999974,0.109999999));
  r4.x = min(cb0[361].y, r2.w);
  r2.w = max(1.00000001e-010, r2.w);
  r2.w = r4.x / r2.w;
  r3.xyw = r3.xyw * r2.www;
  r3.xyw = r3.xyw * r13.xyz;
  r4.xyz = r13.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r13.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r13.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r3.xyw = r4.xyz * r3.xyw;
  r4.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = max(float3(0,0,0), r5.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
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
  o5.w = cb3[90].z;
  o5.x = r0.w;
  o6.y = v3.w;
  return;
}