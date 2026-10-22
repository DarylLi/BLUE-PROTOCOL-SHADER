// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[96];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[13];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[28];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
  r4.xyz = cb5[2].yyy * cb0[5].xyw;
  r4.xyz = cb5[2].xxx * cb0[4].xyw + r4.xyz;
  r4.xyz = cb5[2].zzz * cb0[6].xyw + r4.xyz;
  r4.xyz = cb0[7].xyw + r4.xyz;
  r4.xy = r4.xy / r4.zz;
  r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r4.xy = r3.xy * cb0[130].zw + -r4.xy;
  r5.xyz = -cb5[2].xyz + cb0[67].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb5[55].y;
  r2.w = max(cb5[55].z, r2.w);
  r2.w = min(1, r2.w);
  r2.w = -cb5[55].z + r2.w;
  r2.w = saturate(cb5[56].x * r2.w);
  r4.z = cb5[56].y + -cb5[56].z;
  r4.z = r2.w * r4.z + cb5[56].z;
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
  r4.zw = saturate(cb5[59].yw + r4.zz);
  r4.z = 1 + -r4.z;
  r4.z = r4.z * r4.w + -r4.y;
  r4.y = r2.w * r4.z + r4.y;
  r5.xyz = -cb5[6].xyz + cb5[5].xyz;
  r5.xyz = r2.www * r5.xyz + cb5[6].xyz;
  r4.yzw = r5.xyz * r4.yyy;
  r4.yzw = r4.yzw * r1.www;
  r0.w = cb5[60].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb5[60].z + cb5[60].y;
  r5.xy = cb0[142].zz * float2(0.200000003,0.00999999978) + v3.yy;
  r5.xy = r5.xy + r5.xy;
  r5.z = 2 * v3.x;
  r1.w = t0.SampleBias(s1_s, r5.zx, cb0[143].y).x;
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
  r5.xw = t1.SampleBias(s2_s, r6.xy, cb0[143].y).xy;
  r5.xw = float2(-0.5,-0.5) + r5.xw;
  r5.xw = cb5[61].xx * r5.xw;
  r5.xw = r5.xw * float2(2,2) + v3.xy;
  r5.x = t0.SampleBias(s1_s, r5.xw, cb0[143].y).x;
  r7.xy = float2(0.5,0.5) * r6.xz;
  r6.yz = t1.SampleBias(s2_s, r7.xy, cb0[143].y).xy;
  r6.yz = float2(-0.5,-0.5) + r6.yz;
  r6.yz = cb5[61].xx * r6.yz;
  r6.yz = r6.yz * float2(2,2) + v3.xy;
  r5.w = t0.SampleBias(s1_s, r6.yz, cb0[143].y).x;
  r5.x = r5.x * r5.w;
  r5.w = r5.x * r1.w;
  r5.w = saturate(r5.w + r5.w);
  r6.y = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r6.z = cb5[61].y * r5.w;
  r6.z = exp2(r6.z);
  r6.z = 0.5 * r6.z;
  r6.z = r6.y ? 0 : r6.z;
  r1.w = r1.w * r5.x + -0.5;
  r1.w = saturate(r1.w + r1.w);
  r1.w = 1 + -r1.w;
  r5.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r7.y = cb5[61].y * r1.w;
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
  r6.z = r6.z * cb5[61].w + -cb5[61].w;
  r6.z = saturate(cb5[62].z + r6.z);
  r3.z = t1.SampleBias(s2_s, r3.zw, cb0[143].y).x;
  r3.z = -r3.z * 0.5 + 1;
  r3.z = r3.z * r7.y + cb5[71].x;
  r3.z = -1 + r3.z;
  r3.z = saturate(ceil(r3.z));
  r8.xyz = cb5[9].xyz * r3.zzz;
  r9.xyz = r6.zzz * cb5[8].xyz + r8.xyz;
  r9.xyz = cb5[63].xxx * r9.xyz;
  r9.xyz = r9.xyz * r0.www;
  r8.xyz = cb5[62].www * r8.xyz;
  r8.xyz = max(r9.xyz, r8.xyz);
  r9.xyzw = t2.SampleBias(s3_s, v3.xy, cb0[143].y).xyzw;
  r10.xyz = cb5[11].xyz * r9.zzz;
  r11.xyz = cb5[13].xyz * r9.www;
  r11.xyz = cb5[71].zzz * r11.xyz;
  r10.xyz = r10.xyz * cb5[71].yyy + r11.xyz;
  r3.w = cb0[142].z * cb5[72].y + v3.x;
  r11.x = cb5[73].x * r3.w;
  r3.w = cb0[142].z * cb5[73].y + v3.y;
  r11.y = cb5[73].z * r3.w;
  r3.w = t3.SampleBias(s4_s, r11.xy, cb0[143].y).x;
  r3.w = -0.5 + r3.w;
  r3.w = r3.w + r3.w;
  r9.zw = cb5[74].yw * r3.ww;
  r3.w = t4.SampleBias(s5_s, v3.xy, cb0[143].y).y;
  r3.w = r3.w * cb5[75].x + cb5[75].y;
  r9.zw = r9.zw * r3.ww + v3.xy;
  r3.w = t1.SampleBias(s2_s, r9.zw, cb0[143].y).x;
  r3.w = -1 + r3.w;
  r9.zw = cb5[76].yz + r3.ww;
  r9.zw = saturate(ceil(r9.zw));
  r11.xy = float2(1,1) + -r9.zw;
  r6.z = r11.x * r9.w;
  r11.xzw = cb5[18].xyz + -r10.xyz;
  r10.xyz = r6.zzz * r11.xzw + r10.xyz;
  r11.xz = cb5[77].zw + r3.ww;
  r11.xz = saturate(ceil(r11.xz));
  r11.xw = float2(1,1) + -r11.xz;
  r3.w = r11.x * r11.z;
  r10.xyz = r3.www * -r10.xyz + r10.xyz;
  r8.xyz = r10.xyz + r8.xyz;
  r5.y = t0.SampleBias(s1_s, r5.zy, cb0[143].y).x;
  r10.xy = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r2.ww;
  r6.w = r10.x;
  r6.xw = t1.SampleBias(s2_s, r6.xw, cb0[143].y).xy;
  r6.xw = float2(-0.5,-0.5) + r6.xw;
  r6.xw = cb5[61].xx * r6.xw;
  r6.xw = r6.xw * float2(2,2) + v3.xy;
  r2.w = t0.SampleBias(s1_s, r6.xw, cb0[143].y).x;
  r7.z = 0.5 * r10.y;
  r6.xw = t1.SampleBias(s2_s, r7.xz, cb0[143].y).xy;
  r6.xw = float2(-0.5,-0.5) + r6.xw;
  r6.xw = cb5[61].xx * r6.xw;
  r6.xw = r6.xw * float2(2,2) + v3.xy;
  r5.z = t0.SampleBias(s1_s, r6.xw, cb0[143].y).x;
  r2.w = r5.z * r2.w;
  r5.z = r5.y * r2.w;
  r5.z = saturate(r5.z + r5.z);
  r6.x = cmp(0 >= r5.z);
  r5.z = log2(r5.z);
  r6.w = cb5[78].x * r5.z;
  r6.w = exp2(r6.w);
  r6.w = 0.5 * r6.w;
  r6.w = r6.x ? 0 : r6.w;
  r2.w = r5.y * r2.w + -0.5;
  r2.w = saturate(r2.w + r2.w);
  r2.w = 1 + -r2.w;
  r5.y = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r7.x = cb5[78].x * r2.w;
  r7.x = exp2(r7.x);
  r7.x = 1 + -r7.x;
  r7.x = r5.y ? 1 : r7.x;
  r10.x = 500 * r7.x;
  r7.x = r7.x * 0.5 + 0.5;
  r10.x = saturate(r10.x);
  r7.x = r7.x + -r6.w;
  r6.w = r10.x * r7.x + r6.w;
  r6.w = r6.w * r7.y;
  r6.w = r6.w * cb5[78].z + -cb5[78].z;
  r6.w = saturate(cb5[79].y + r6.w);
  r7.xzw = cb5[23].xyz * r3.zzz;
  r10.xyz = r6.www * cb5[20].xyz + r7.xzw;
  r10.xyz = cb5[63].zzz * r10.xyz;
  r7.xzw = cb5[63].yyy * r7.xzw;
  r7.xzw = max(r10.xyz, r7.xzw);
  r7.xzw = r8.xyz + r7.xzw;
  r6.w = cb5[79].z * r5.w;
  r6.w = exp2(r6.w);
  r6.w = 0.5 * r6.w;
  r6.w = r6.y ? 0 : r6.w;
  r8.x = cb5[79].z * r1.w;
  r8.x = exp2(r8.x);
  r8.x = 1 + -r8.x;
  r8.x = r5.x ? 1 : r8.x;
  r10.x = 500 * r8.x;
  r8.x = r8.x * 0.5 + 0.5;
  r10.x = saturate(r10.x);
  r8.x = r8.x + -r6.w;
  r6.w = r10.x * r8.x + r6.w;
  r6.w = r6.w * r7.y;
  r6.w = r6.w * cb5[80].x + -cb5[80].x;
  r6.w = saturate(cb5[80].w + r6.w);
  r8.xyz = cb5[26].xyz * r3.zzz;
  r10.xyz = r6.www * cb5[25].xyz + r8.xyz;
  r10.xyz = cb5[64].zzz * r10.xyz;
  r10.xyz = r10.xyz * r0.www;
  r8.xyz = cb5[64].yyy * r8.xyz;
  r8.xyz = max(r10.xyz, r8.xyz);
  r7.xzw = r8.xyz + r7.xzw;
  r6.w = cb5[81].x * r5.w;
  r6.w = exp2(r6.w);
  r6.w = 0.5 * r6.w;
  r6.w = r6.y ? 0 : r6.w;
  r8.x = cb5[81].x * r1.w;
  r8.x = exp2(r8.x);
  r8.x = 1 + -r8.x;
  r8.x = r5.x ? 1 : r8.x;
  r10.x = 500 * r8.x;
  r8.x = r8.x * 0.5 + 0.5;
  r10.x = saturate(r10.x);
  r8.x = r8.x + -r6.w;
  r6.w = r10.x * r8.x + r6.w;
  r6.w = r6.w * r7.y;
  r6.w = r6.w * cb5[81].z + -cb5[81].z;
  r6.w = saturate(cb5[82].y + r6.w);
  r8.xyz = cb5[29].xyz * r3.zzz;
  r10.xyz = r6.www * cb5[28].xyz + r8.xyz;
  r10.xyz = cb5[65].zzz * r10.xyz;
  r10.xyz = r10.xyz * r0.www;
  r8.xyz = cb5[65].yyy * r8.xyz;
  r8.xyz = max(r10.xyz, r8.xyz);
  r7.xzw = r8.xyz + r7.xzw;
  r5.w = cb5[82].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = 0.5 * r5.w;
  r5.w = r6.y ? 0 : r5.w;
  r1.w = cb5[82].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r5.x ? 1 : r1.w;
  r5.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r5.x = saturate(r5.x);
  r1.w = r1.w + -r5.w;
  r1.w = r5.x * r1.w + r5.w;
  r1.w = r1.w * r7.y;
  r1.w = r1.w * cb5[83].x + -cb5[83].x;
  r1.w = saturate(cb5[83].w + r1.w);
  r8.xyz = cb5[32].xyz * r3.zzz;
  r10.xyz = r1.www * cb5[31].xyz + r8.xyz;
  r10.xyz = cb5[66].zzz * r10.xyz;
  r10.xyz = r10.xyz * r0.www;
  r8.xyz = cb5[66].yyy * r8.xyz;
  r8.xyz = max(r10.xyz, r8.xyz);
  r7.xzw = r8.xyz + r7.xzw;
  r0.w = cb5[84].x * r5.z;
  r0.w = exp2(r0.w);
  r0.w = 0.5 * r0.w;
  r0.w = r6.x ? 0 : r0.w;
  r1.w = cb5[84].x * r2.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r5.y ? 1 : r1.w;
  r5.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r5.x = saturate(r5.x);
  r1.w = r1.w + -r0.w;
  r0.w = r5.x * r1.w + r0.w;
  r0.w = r0.w * r7.y;
  r0.w = r0.w * cb5[84].z + -cb5[84].z;
  r0.w = saturate(cb5[85].y + r0.w);
  r5.xyz = cb5[37].xyz * r3.zzz;
  r6.xyw = r0.www * cb5[34].xyz + r5.xyz;
  r6.xyw = cb5[67].zzz * r6.xyw;
  r5.xyz = cb5[67].yyy * r5.xyz;
  r5.xyz = max(r6.xyw, r5.xyz);
  r5.xyz = r7.xzw + r5.xyz;
  r6.xyw = r3.zzz * float3(0,0.166666999,0) + -r5.xyz;
  r5.xyz = cb5[68].yyy * r6.xyw + r5.xyz;
  r5.xyz = cb5[68].www * -r5.xyz + r5.xyz;
  r6.xyw = r3.zzz * float3(3,3,3) + -r5.xyz;
  r5.xyz = cb5[69].yyy * r6.xyw + r5.xyz;
  r6.xyw = r3.zzz * float3(7,6.30000019,0) + -r5.xyz;
  r5.xyz = cb5[69].www * r6.xyw + r5.xyz;
  r6.xyw = r3.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r6.xyw = r6.xyw + -r5.xyz;
  r5.xyz = cb5[70].yyy * r6.xyw + r5.xyz;
  r4.yzw = r4.yzw * cb5[58].xxx + r5.xyz;
  r5.xyz = cb5[38].xyz + -r4.yzw;
  r4.yzw = cb5[85].zzz * r5.xyz + r4.yzw;
  r5.xyz = t5.SampleBias(s6_s, v3.xy, cb0[143].y).xyz;
  r0.w = -1 + cb0[143].y;
  r6.xyw = t6.SampleBias(s7_s, v3.xy, r0.w).xyz;
  r7.xyz = -cb5[42].xyz + cb5[41].xyz;
  r7.xyz = r6.www * r7.xyz + cb5[42].xyz;
  r8.xyz = cb5[44].xyz + -r7.xyz;
  r7.xyz = r6.yyy * r8.xyz + r7.xyz;
  r8.xyz = cb5[46].xyz + -r7.xyz;
  r6.xyw = r6.xxx * r8.xyz + r7.xyz;
  r7.xyzw = t4.SampleBias(s5_s, v3.xy, r0.w).xyzw;
  r6.xyw = float3(-1,-1,-1) + r6.xyw;
  r6.xyw = r7.zzz * r6.xyw + float3(1,1,1);
  r8.xyz = r6.xyw * r5.xyz;
  r0.w = cb5[85].w * v2.w;
  r10.xyz = r8.xyz * cb5[48].xyz + -r8.xyz;
  r10.xyz = r0.www * r10.xyz + r8.xyz;
  r1.w = min(abs(v4.x), abs(v4.y));
  r2.w = max(abs(v4.x), abs(v4.y));
  r2.w = 1 / r2.w;
  r1.w = r2.w * r1.w;
  r2.w = r1.w * r1.w;
  r3.z = r2.w * 0.0208350997 + -0.0851330012;
  r3.z = r2.w * r3.z + 0.180141002;
  r3.z = r2.w * r3.z + -0.330299497;
  r2.w = r2.w * r3.z + 0.999866009;
  r3.z = r2.w * r1.w;
  r5.x = cmp(abs(v4.y) < abs(v4.x));
  r3.z = r3.z * -2 + 1.57079637;
  r3.z = r5.x ? r3.z : 0;
  r1.w = r1.w * r2.w + r3.z;
  r2.w = cmp(v4.y < -v4.y);
  r2.w = r2.w ? -3.141593 : 0;
  r1.w = r2.w + r1.w;
  r2.w = min(v4.x, v4.y);
  r3.z = max(v4.x, v4.y);
  r2.w = cmp(r2.w < -r2.w);
  r3.z = cmp(r3.z >= -r3.z);
  r2.w = r2.w ? r3.z : 0;
  r1.w = r2.w ? -r1.w : r1.w;
  r12.x = 0.318309844 * r1.w;
  r13.x = cb5[86].y * r12.x;
  r13.y = cb5[86].z + v4.z;
  r5.xw = r13.xy * cb5[86].ww + float2(0.5,0.5);
  r1.w = t7.Sample(s0_s, r5.xw).z;
  r1.w = cb5[87].x * r1.w;
  r13.xyz = cb5[50].xyz + -r10.xyz;
  r10.xyz = r1.www * r13.xyz + r10.xyz;
  r13.xyz = cb4[12].xyz + -cb4[11].xyz;
  r13.xyz = cb5[87].zzz * r13.xyz + cb4[11].xyz;
  r14.xyz = r13.xyz * r10.xyz;
  r2.w = -cb1[27].x + r2.z;
  r2.w = max(0, r2.w);
  r3.z = max(cb5[87].w, cb1[27].y);
  r2.w = r2.w / r3.z;
  r2.w = min(1, r2.w);
  r10.xyz = -r10.xyz * r13.xyz + r10.xyz;
  r10.xyz = r2.www * r10.xyz + r14.xyz;
  r14.xyz = cb5[18].xyz + -r10.xyz;
  r10.xyz = r6.zzz * r14.xyz + r10.xyz;
  r10.xyz = saturate(r3.www * -r10.xyz + r10.xyz);
  r3.z = saturate(r2.w + r2.w);
  r3.z = r7.y * r3.z;
  r5.x = firstbithigh(asint(cb1[23].w));
  r5.w = cmp((int)r5.x == -1);
  r5.x = (int)-r5.x + 31;
  r5.x = r5.w ? -1 : r5.x;
  r5.x = cb1[23].w ? r5.x : 0;
  r5.w = saturate(dot(cb0[r5.x+358].xyz, r0.xyz));
  r14.xyz = cb0[67].xyz + -r2.xyz;
  r6.x = dot(r14.xyz, r14.xyz);
  r6.x = sqrt(r6.x);
  r14.xyz = r14.xyz / r6.xxx;
  r14.xyz = cb0[r5.x+358].xyz + r14.xyz;
  r7.y = dot(r14.xyz, r14.xyz);
  r7.y = sqrt(r7.y);
  r14.xyz = r14.xyz / r7.yyy;
  r7.y = dot(r14.xyz, r0.xyz);
  r7.y = saturate(r9.x + r7.y);
  r7.z = cmp(0 >= r7.y);
  r7.y = log2(r7.y);
  r7.y = 207.936584 * r7.y;
  r7.y = exp2(r7.y);
  r5.w = r7.y * r5.w;
  r5.w = r7.z ? 0 : r5.w;
  r5.w = cmp(r5.w >= cb5[88].x);
  r5.w = r5.w ? 1.000000 : 0;
  r7.y = cb5[88].y * r9.y;
  r5.w = r7.y * r5.w;
  r7.y = 1 + -r7.w;
  r7.y = cmp(r7.y >= 0.5);
  o6.z = r7.y ? 0 : 1;
  r7.y = saturate(cb0[142].w * cb2[0].x + cb2[0].y);
  r7.zw = cb0[152].xx + r3.xy;
  r7.zw = (uint2)r7.zw;
  r7.w = (uint)r7.w << 1;
  r7.z = (int)r7.w + (int)r7.z;
  r7.z = (uint)r7.z % 5;
  r7.z = (uint)r7.z;
  r3.xy = float2(0.015625,0.015625) * r3.xy;
  r3.x = t8.SampleBias(s8_s, r3.xy, cb0[143].y).x;
  r3.x = r7.z + r3.x;
  r3.x = 0.166666672 * r3.x;
  r3.x = cb5[90].y * r7.y + r3.x;
  r3.x = -0.5 + r3.x;
  r3.y = cb5[90].z * r11.y + r9.w;
  r7.y = cb5[90].w * r11.w + r11.z;
  r3.y = r7.y * r3.y;
  r3.y = saturate(ceil(r3.y));
  r7.y = 0.763943851 * cb0[128].x;
  r4.x = 1.77777779 / r4.x;
  r4.x = max(1, r4.x);
  r4.x = r7.y * r4.x;
  r7.yz = r6.xx * r4.xx + float2(-0.5,-300);
  r7.yz = saturate(float2(0.00333889807,0.000175438603) * r7.yz);
  r4.x = r7.y * -0.600000024 + 1;
  r4.x = r7.z * -0.200000003 + r4.x;
  r4.x = v3.z * r4.x;
  o6.x = cb5[92].y * r4.x;
  r4.x = 1 + -v2.y;
  o6.w = cb5[92].z * r4.x;
  r4.x = round(cb5[87].y);
  r4.x = (uint)r4.x;
  r4.x = min(2, (uint)r4.x);
  r6.x = cmp(r8.y >= r8.z);
  r6.x = r6.x ? 1.000000 : 0;
  r9.xy = r8.zy;
  r9.zw = float2(-1,0.666666687);
  r11.xy = r5.yz * r6.yw + -r9.xy;
  r11.zw = float2(1,-1);
  r9.xyzw = r6.xxxx * r11.xyzw + r9.xyzw;
  r5.y = cmp(r8.x >= r9.x);
  r5.y = r5.y ? 1.000000 : 0;
  r11.xyz = r9.xyw;
  r11.w = r8.x;
  r9.xyw = r11.wyx;
  r9.xyzw = r9.xyzw + -r11.xyzw;
  r9.xyzw = r5.yyyy * r9.xyzw + r11.xyzw;
  r5.y = min(r9.w, r9.y);
  r5.y = r9.x + -r5.y;
  r5.z = r9.w + -r9.y;
  r6.x = r5.y * 6 + 1.00000001e-010;
  r5.z = r5.z / r6.x;
  r5.z = r9.z + r5.z;
  r6.x = 1.00000001e-010 + r9.x;
  r5.y = r5.y / r6.x;
  r6.x = 360 * abs(r5.z);
  r6.yw = float2(0,1.40129846e-045);
  while (true) {
    r7.y = cmp((int)r6.w >= 21);
    if (r7.y != 0) break;
    r7.y = cmp(icb[r6.w+3].x >= r6.x);
    if (r7.y != 0) {
      r6.y = r6.w;
      break;
    }
    r6.w = (int)r6.w + 1;
    r6.y = 0;
  }
  r6.x = (int)r6.y + -1;
  r6.w = abs(r5.z) * 360 + -icb[r6.x+3].x;
  r7.y = icb[r6.y+3].x + -icb[r6.x+3].x;
  r6.w = r6.w / r7.y;
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
  r7.z = (int)r6.y & 0x80000000;
  r7.w = max((int)-r6.y, (int)r6.y);
  r8.w = (int)r7.w & 3;
  r9.y = -(int)r8.w;
  r7.z = r7.z ? r9.y : r8.w;
  r6.y = (int)r6.y ^ 4;
  r7.w = (uint)r7.w >> 2;
  r8.w = -(int)r7.w;
  r6.y = (int)r6.y & 0x80000000;
  r6.y = r6.y ? r8.w : r7.w;
  r7.w = dot(cb0[r6.x+328].xyzw, icb[r7.y+0].xyzw);
  r8.w = dot(cb0[r6.x+338].xyzw, icb[r7.y+0].xyzw);
  r6.x = dot(cb0[r6.x+348].xyzw, icb[r7.y+0].xyzw);
  x0[0].x = r7.w;
  x0[1].x = r8.w;
  x0[2].x = r6.x;
  r6.x = dot(cb0[r6.y+328].xyzw, icb[r7.z+0].xyzw);
  r7.y = dot(cb0[r6.y+338].xyzw, icb[r7.z+0].xyzw);
  r6.y = dot(cb0[r6.y+348].xyzw, icb[r7.z+0].xyzw);
  x1[0].x = r6.x;
  x1[1].x = r7.y;
  x1[2].x = r6.y;
  r6.x = x0[r4.x+0].x;
  r6.y = x1[r4.x+0].x;
  r6.y = r6.y + -r6.x;
  r6.x = r6.w * r6.y + r6.x;
  r5.z = abs(r5.z) * 360 + r6.x;
  r6.x = cmp(r5.z < 0);
  r6.y = cmp(360 < r5.z);
  r7.yz = float2(360,-360) + r5.zz;
  r5.z = r6.y ? r7.z : r5.z;
  r5.z = r6.x ? r7.y : r5.z;
  r6.x = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.y = -0.200000003 + r6.x;
  r6.y = 10 * r6.y;
  r6.y = max(0, r6.y);
  r6.y = min(6, r6.y);
  r6.w = (int)r6.y;
  r7.y = (int)r6.w + 1;
  r6.y = trunc(r6.y);
  r6.y = r6.y * 0.100000001 + 0.200000003;
  r6.x = r6.x + -r6.y;
  r6.x = saturate(10 * r6.x);
  r6.y = (int)r6.w & 3;
  r6.w = (uint)r6.w >> 2;
  r7.z = (int)r7.y & 3;
  r7.y = (uint)r7.y >> 2;
  r7.w = dot(cb0[r6.w+334].xyzw, icb[r6.y+0].xyzw);
  r8.x = dot(cb0[r6.w+344].xyzw, icb[r6.y+0].xyzw);
  r8.y = dot(cb0[r6.w+354].xyzw, icb[r6.y+0].xyzw);
  x2[0].x = r7.w;
  x2[1].x = r8.x;
  x2[2].x = r8.y;
  r7.w = dot(cb0[r7.y+334].xyzw, icb[r7.z+0].xyzw);
  r8.x = dot(cb0[r7.y+344].xyzw, icb[r7.z+0].xyzw);
  r8.y = dot(cb0[r7.y+354].xyzw, icb[r7.z+0].xyzw);
  x3[0].x = r7.w;
  x3[1].x = r8.x;
  x3[2].x = r8.y;
  r7.w = dot(cb0[r6.w+336].xyzw, icb[r6.y+0].xyzw);
  r8.x = dot(cb0[r6.w+346].xyzw, icb[r6.y+0].xyzw);
  r6.y = dot(cb0[r6.w+356].xyzw, icb[r6.y+0].xyzw);
  x4[0].x = r7.w;
  x4[1].x = r8.x;
  x4[2].x = r6.y;
  r6.y = dot(cb0[r7.y+336].xyzw, icb[r7.z+0].xyzw);
  r6.w = dot(cb0[r7.y+346].xyzw, icb[r7.z+0].xyzw);
  r7.y = dot(cb0[r7.y+356].xyzw, icb[r7.z+0].xyzw);
  x5[0].x = r6.y;
  x5[1].x = r6.w;
  x5[2].x = r7.y;
  r6.y = x2[r4.x+0].x;
  r6.w = x3[r4.x+0].x;
  r6.w = r6.w + -r6.y;
  r6.y = r6.x * r6.w + r6.y;
  r6.w = x4[r4.x+0].x;
  r4.x = x5[r4.x+0].x;
  r4.x = r4.x + -r6.w;
  r4.x = r6.x * r4.x + r6.w;
  r6.x = cmp(0 < r5.y);
  r6.y = saturate(r6.y + r5.y);
  r5.y = r6.x ? r6.y : r5.y;
  r4.x = saturate(r9.x + r4.x);
  r6.xyw = r5.zzz * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r6.xyw = frac(r6.xyw);
  r6.xyw = r6.xyw * float3(6,6,6) + float3(-3,-3,-3);
  r6.xyw = saturate(float3(-1,-1,-1) + abs(r6.xyw));
  r6.xyw = float3(-1,-1,-1) + r6.xyw;
  r6.xyw = r5.yyy * r6.xyw + float3(1,1,1);
  r6.xyw = r6.xyw * r4.xxx;
  r7.yzw = r6.xyw * cb5[48].xyz + -r6.xyw;
  r6.xyw = r0.www * r7.yzw + r6.xyw;
  r0.w = cmp(cb5[50].y >= cb5[50].z);
  r0.w = r0.w ? 1.000000 : 0;
  r8.xy = cb5[50].zy;
  r8.zw = float2(-1,0.666666687);
  r9.xy = cb5[50].yz;
  r9.zw = float2(0,-0.333333343);
  r9.xyzw = r9.xyzw + -r8.xyzw;
  r8.xyzw = r0.wwww * r9.xyzw + r8.xyzw;
  r0.w = cmp(cb5[50].x >= r8.x);
  r0.w = r0.w ? 1.000000 : 0;
  r9.xyz = r8.xyw;
  r9.w = cb5[50].x;
  r8.xyw = r9.wyx;
  r8.xyzw = r8.xyzw + -r9.xyzw;
  r8.xyzw = r0.wwww * r8.xyzw + r9.xyzw;
  r0.w = min(r8.w, r8.y);
  r0.w = r8.x + -r0.w;
  r4.x = r8.w + -r8.y;
  r5.y = r0.w * 6 + 1.00000001e-010;
  r4.x = r4.x / r5.y;
  r4.x = r8.z + r4.x;
  r5.y = 1.00000001e-010 + r8.x;
  r0.w = r0.w / r5.y;
  r5.y = 360 * abs(r4.x);
  r5.z = 0;
  r7.y = 1;
  while (true) {
    r7.z = cmp((int)r7.y >= 21);
    if (r7.z != 0) break;
    r7.z = cmp(icb[r7.y+3].x >= r5.y);
    if (r7.z != 0) {
      r5.z = r7.y;
      break;
    }
    r7.y = (int)r7.y + 1;
    r5.z = 0;
  }
  r5.y = (int)r5.z + -1;
  r7.y = abs(r4.x) * 360 + -icb[r5.y+3].x;
  r7.z = icb[r5.z+3].x + -icb[r5.y+3].x;
  r7.y = r7.y / r7.z;
  r7.z = (int)r5.y & 0x80000000;
  r7.w = max((int)-r5.y, (int)r5.y);
  r8.y = (int)r7.w & 3;
  r8.z = -(int)r8.y;
  r7.z = r7.z ? r8.z : r8.y;
  r5.y = (int)r5.y ^ 4;
  r7.w = (uint)r7.w >> 2;
  r8.y = -(int)r7.w;
  r5.y = (int)r5.y & 0x80000000;
  r5.y = r5.y ? r8.y : r7.w;
  r7.w = (int)r5.z & 0x80000000;
  r8.y = max((int)-r5.z, (int)r5.z);
  r8.z = (int)r8.y & 3;
  r8.w = -(int)r8.z;
  r7.w = r7.w ? r8.w : r8.z;
  r5.z = (int)r5.z ^ 4;
  r8.y = (uint)r8.y >> 2;
  r8.z = -(int)r8.y;
  r5.z = (int)r5.z & 0x80000000;
  r5.z = r5.z ? r8.z : r8.y;
  r5.y = dot(cb0[r5.y+338].xyzw, icb[r7.z+0].xyzw);
  r5.z = dot(cb0[r5.z+338].xyzw, icb[r7.w+0].xyzw);
  r5.z = r5.z + -r5.y;
  r5.y = r7.y * r5.z + r5.y;
  r4.x = abs(r4.x) * 360 + r5.y;
  r5.y = cmp(r4.x < 0);
  r5.z = cmp(360 < r4.x);
  r7.yz = float2(360,-360) + r4.xx;
  r4.x = r5.z ? r7.z : r4.x;
  r4.x = r5.y ? r7.y : r4.x;
  r5.y = dot(cb5[50].xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.z = -0.200000003 + r5.y;
  r5.z = 10 * r5.z;
  r5.z = max(0, r5.z);
  r5.z = min(6, r5.z);
  r7.y = (int)r5.z;
  r7.z = (int)r7.y + 1;
  r5.z = trunc(r5.z);
  r5.z = r5.z * 0.100000001 + 0.200000003;
  r5.y = r5.y + -r5.z;
  r5.y = saturate(10 * r5.y);
  r5.z = (int)r7.y & 3;
  r7.w = (int)r7.z & 3;
  r7.yz = (uint2)r7.yz >> int2(2,2);
  r8.y = dot(cb0[r7.y+344].xyzw, icb[r5.z+0].xyzw);
  r8.z = dot(cb0[r7.z+344].xyzw, icb[r7.w+0].xyzw);
  r5.z = dot(cb0[r7.y+346].xyzw, icb[r5.z+0].xyzw);
  r7.y = dot(cb0[r7.z+346].xyzw, icb[r7.w+0].xyzw);
  r7.z = r8.z + -r8.y;
  r7.z = r5.y * r7.z + r8.y;
  r7.y = r7.y + -r5.z;
  r5.y = r5.y * r7.y + r5.z;
  r5.z = cmp(0 < r0.w);
  r7.y = saturate(r7.z + r0.w);
  r0.w = r5.z ? r7.y : r0.w;
  r5.y = saturate(r8.x + r5.y);
  r7.yzw = r4.xxx * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r7.yzw = frac(r7.yzw);
  r7.yzw = r7.yzw * float3(6,6,6) + float3(-3,-3,-3);
  r7.yzw = saturate(float3(-1,-1,-1) + abs(r7.yzw));
  r7.yzw = float3(-1,-1,-1) + r7.yzw;
  r7.yzw = r0.www * r7.yzw + float3(1,1,1);
  r7.yzw = r5.yyy * r7.yzw + -r6.xyw;
  r6.xyw = r1.www * r7.yzw + r6.xyw;
  r12.y = cb5[92].w + v4.z;
  r5.yz = r12.xy * cb5[51].xy + float2(0.5,0.5);
  r0.w = t7.SampleLevel(s0_s, r5.yz, 0).x;
  r1.w = 1 + -r0.w;
  r7.yzw = r6.xyw * r1.www + -r6.xyw;
  r6.xyw = cb5[94].yyy * r7.yzw + r6.xyw;
  r7.yzw = r6.xyw * r13.xyz;
  r6.xyw = -r6.xyw * r13.xyz + r6.xyw;
  r6.xyw = r2.www * r6.xyw + r7.yzw;
  r7.yzw = cb5[18].xyz + -r6.xyw;
  r6.xyz = r6.zzz * r7.yzw + r6.xyw;
  r6.xyz = saturate(r3.www * -r6.xyz + r6.xyz);
  r1.w = v2.z * r7.x;
  r1.w = cmp(r1.w >= cb5[95].x);
  r2.w = r1.w ? 1.000000 : 0;
  r0.w = cmp(0 >= r0.w);
  r3.w = 1 + -cb5[95].y;
  r0.w = r0.w ? 1 : r3.w;
  o3.w = saturate(r2.w * r0.w);
  r0.w = r3.x * r3.y + -0.333299994;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.w = saturate(cb5[88].z);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r7.z = cb0[r5.x+358].z * cb0[327].y;
  r7.xy = cb0[r5.x+358].xy;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyw = r7.xyz * r0.www;
  r0.w = dot(r0.xyz, r3.xyw);
  r0.w = r0.w * 0.5 + 0.5;
  r2.w = 1 + -cb0[327].x;
  r2.w = v2.x * r2.w + cb0[327].x;
  r0.w = r2.w * r0.w;
  r1.w = r1.w ? 1 : 0.699999988;
  r2.w = max(r6.x, r6.y);
  r2.w = max(r2.w, r6.z);
  r4.x = r2.w * r1.w;
  r2.w = max(0.00100000005, r2.w);
  r2.w = r4.x / r2.w;
  r1.x = dot(-r1.xyz, r3.xyw);
  r1.x = saturate(3 * r1.x);
  r3.xyw = r6.xyz * r2.www + -r6.xyz;
  o4.xyz = r1.xxx * r3.xyw + r6.xyz;
  r0.w = cmp(r0.w >= cb0[327].x);
  o4.w = r0.w ? 1.000000 : 0;
  o5.y = 0.5 * r3.z;
  r0.w = 0.0799999982 * r5.w;
  r1.xyz = -r5.www * float3(0.0799999982,0.0799999982,0.0799999982) + r10.xyz;
  r1.xyz = r3.zzz * r1.xyz + r0.www;
  r3.xyz = r10.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r5.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r1.xyz = r0.www ? r1.xyz : r3.xyz;
  r2.w = cmp(0 < cb0[215].x);
  r3.x = dot(cb3[6].xz, float2(0.886227548,-1.02332771));
  r3.x = cb3[9].z * 0.495416582 + r3.x;
  r3.w = dot(cb3[7].xz, float2(0.886227548,-1.02332771));
  r3.y = cb3[10].z * 0.495416582 + r3.w;
  r3.w = dot(cb3[8].xz, float2(0.886227548,-1.02332771));
  r3.z = cb3[11].z * 0.495416582 + r3.w;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = r2.www ? r3.xyz : 0;
  r6.xyw = cb0[157].yzx * r3.yzx;
  r2.w = cmp(r6.x >= r6.y);
  r2.w = r2.w ? 1.000000 : 0;
  r7.xy = r6.yx;
  r7.zw = float2(-1,0.666666687);
  r3.xy = r3.yz * cb0[157].yz + -r7.xy;
  r3.zw = float2(1,-1);
  r3.xyzw = r2.wwww * r3.xyzw + r7.xyzw;
  r2.w = cmp(r6.w >= r3.x);
  r2.w = r2.w ? 1.000000 : 0;
  r6.xyz = r3.xyw;
  r3.xyw = r6.wyx;
  r3.xyzw = r3.xyzw + -r6.xyzw;
  r3.xyzw = r2.wwww * r3.xyzw + r6.xyzw;
  r2.w = min(r3.w, r3.y);
  r2.w = r3.x + -r2.w;
  r3.y = r3.w + -r3.y;
  r3.w = r2.w * 6 + 1.00000001e-010;
  r3.y = r3.y / r3.w;
  r3.y = r3.z + r3.y;
  r3.z = 1.00000001e-010 + r3.x;
  r2.w = r2.w / r3.z;
  r2.w = cb0[361].z * r2.w;
  r3.yzw = float3(1,0.666666687,0.333333343) + abs(r3.yyy);
  r3.yzw = frac(r3.yzw);
  r3.yzw = r3.yzw * float3(6,6,6) + float3(-3,-3,-3);
  r3.yzw = saturate(float3(-1,-1,-1) + abs(r3.yzw));
  r3.yzw = float3(-1,-1,-1) + r3.yzw;
  r3.yzw = r2.www * r3.yzw + float3(1,1,1);
  r3.xyz = r3.xxx * r3.yzw;
  r3.xyz = cb0[361].xxx * r3.xyz;
  r2.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = min(cb0[361].y, r2.w);
  r2.w = max(1.00000001e-010, r2.w);
  r2.w = r3.w / r2.w;
  r3.xyz = r3.xyz * r2.www;
  r3.xyz = r3.xyz * r10.xyz;
  r6.xyz = r10.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r10.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r10.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r3.xyz = r6.xyz * r3.xyz;
  r5.xyz = r0.www ? float3(0,0,0) : r5.xyz;
  r1.xyz = r5.xyz + r1.xyz;
  r4.xyz = max(float3(0,0,0), r4.yzw);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r0.w = (int)r5.y | (int)r5.x;
    r0.w = (int)r5.z | (int)r0.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r0.www ? r2.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r3.xyz;
  r1.xyz = r1.xyz + r4.xyz;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.549019635);
  o2.y = r5.w;
  o3.xyz = r10.xyz;
  o5.z = v2.x;
  o5.w = cb5[94].w;
  o5.x = r1.w;
  o6.y = v3.w;
  return;
}