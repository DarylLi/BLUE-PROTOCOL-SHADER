// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

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

cbuffer cb5 : register(b5)
{
  float4 cb5[93];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[13];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[4];
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
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
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
  r3.xy = -cb0[129].xy + v4.xy;
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
  r2.w = r2.w / cb5[50].y;
  r2.w = max(cb5[50].z, r2.w);
  r2.w = min(1, r2.w);
  r2.w = -cb5[50].z + r2.w;
  r2.w = saturate(cb5[51].x * r2.w);
  r4.z = cb5[51].y + -cb5[51].z;
  r4.z = r2.w * r4.z + cb5[51].z;
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
  r4.zw = saturate(cb5[54].yw + r4.zz);
  r4.z = 1 + -r4.z;
  r4.z = r4.z * r4.w + -r4.y;
  r4.y = r2.w * r4.z + r4.y;
  r5.xyz = -cb5[6].xyz + cb5[5].xyz;
  r5.xyz = r2.www * r5.xyz + cb5[6].xyz;
  r4.yzw = r5.xyz * r4.yyy;
  r4.yzw = r4.yzw * r1.www;
  r0.w = cb5[55].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb5[55].z + cb5[55].y;
  r5.xy = cb0[142].zz * float2(0.200000003,0.00999999978) + v3.yy;
  r5.xy = r5.xy + r5.xy;
  r5.z = 2 * v3.x;
  r1.w = t2.SampleBias(s2_s, r5.zx, cb0[143].y).x;
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
  r5.xw = t3.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r5.xw = float2(-0.5,-0.5) + r5.xw;
  r5.xw = cb5[56].xx * r5.xw;
  r5.xw = r5.xw * float2(2,2) + v3.xy;
  r5.x = t2.SampleBias(s2_s, r5.xw, cb0[143].y).x;
  r7.xy = float2(0.5,0.5) * r6.xz;
  r6.yz = t3.SampleBias(s3_s, r7.xy, cb0[143].y).xy;
  r6.yz = float2(-0.5,-0.5) + r6.yz;
  r6.yz = cb5[56].xx * r6.yz;
  r6.yz = r6.yz * float2(2,2) + v3.xy;
  r5.w = t2.SampleBias(s2_s, r6.yz, cb0[143].y).x;
  r5.x = r5.x * r5.w;
  r5.w = r5.x * r1.w;
  r5.w = saturate(r5.w + r5.w);
  r6.y = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r6.z = cb5[56].y * r5.w;
  r6.z = exp2(r6.z);
  r6.z = 0.5 * r6.z;
  r6.z = r6.y ? 0 : r6.z;
  r1.w = r1.w * r5.x + -0.5;
  r1.w = saturate(r1.w + r1.w);
  r1.w = 1 + -r1.w;
  r5.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r7.y = cb5[56].y * r1.w;
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
  r6.z = r6.z * cb5[56].w + -cb5[56].w;
  r6.z = saturate(cb5[57].z + r6.z);
  r3.z = t3.SampleBias(s3_s, r3.zw, cb0[143].y).x;
  r3.z = -r3.z * 0.5 + 1;
  r3.z = r3.z * r7.y + cb5[66].x;
  r3.z = -1 + r3.z;
  r3.z = saturate(ceil(r3.z));
  r8.xyz = cb5[9].xyz * r3.zzz;
  r9.xyz = r6.zzz * cb5[8].xyz + r8.xyz;
  r9.xyz = cb5[58].xxx * r9.xyz;
  r9.xyz = r9.xyz * r0.www;
  r8.xyz = cb5[57].www * r8.xyz;
  r8.xyz = max(r9.xyz, r8.xyz);
  r9.xy = cb5[12].xy + -v3.xy;
  r3.w = dot(r9.xy, r9.xy);
  r3.w = sqrt(r3.w);
  r9.xy = r9.xy / r3.ww;
  r9.zw = cb5[14].xy + v3.xy;
  r9.zw = r9.zw * float2(2,2) + float2(-1,-1);
  r3.w = min(abs(r9.w), abs(r9.z));
  r6.z = max(abs(r9.w), abs(r9.z));
  r6.z = 1 / r6.z;
  r3.w = r6.z * r3.w;
  r6.z = r3.w * r3.w;
  r7.w = r6.z * 0.0208350997 + -0.0851330012;
  r7.w = r6.z * r7.w + 0.180141002;
  r7.w = r6.z * r7.w + -0.330299497;
  r6.z = r6.z * r7.w + 0.999866009;
  r7.w = r6.z * r3.w;
  r8.w = cmp(abs(r9.z) < abs(r9.w));
  r7.w = r7.w * -2 + 1.57079637;
  r7.w = r8.w ? r7.w : 0;
  r3.w = r3.w * r6.z + r7.w;
  r6.z = cmp(r9.z < -r9.z);
  r6.z = r6.z ? -3.141593 : 0;
  r3.w = r6.z + r3.w;
  r6.z = min(r9.w, r9.z);
  r7.w = max(r9.w, r9.z);
  r6.z = cmp(r6.z < -r6.z);
  r7.w = cmp(r7.w >= -r7.w);
  r6.z = r6.z ? r7.w : 0;
  r3.w = r6.z ? -r3.w : r3.w;
  r3.w = 0.159154952 * r3.w;
  r3.w = frac(r3.w);
  r9.zw = r9.zw * r9.zw;
  r6.z = r9.z + r9.w;
  r6.z = sqrt(r6.z);
  r7.w = cb0[142].z * cb5[67].y + r3.w;
  r10.x = cb5[68].x * r7.w;
  r7.w = cb0[142].z * cb5[68].y + r6.z;
  r10.y = cb5[68].z * r7.w;
  r3.w = cb0[142].z * cb5[69].y + r3.w;
  r11.x = cb5[70].x * r3.w;
  r3.w = cb0[142].z * cb5[70].y + r6.z;
  r11.y = cb5[70].z * r3.w;
  r3.w = t4.SampleBias(s4_s, r11.xy, cb0[143].y).y;
  r9.zw = r9.xy * r3.ww;
  r9.zw = r9.zw * cb5[71].xx + r10.xy;
  r3.w = t5.SampleBias(s5_s, r9.zw, cb0[143].y).x;
  r9.xy = r9.xy * r3.ww;
  r9.xy = r9.xy * cb5[71].zz + v3.xy;
  r10.xyzw = t6.SampleBias(s6_s, r9.xy, cb0[143].y).xyzw;
  r11.xyz = cb5[21].xyz * r10.zzz;
  r12.xyz = cb5[71].www * r11.xyz;
  r3.w = cb0[142].z * cb5[72].z + v3.x;
  r13.x = cb5[73].y * r3.w;
  r3.w = cb0[142].z * cb5[73].z + v3.y;
  r13.y = cb5[73].w * r3.w;
  r3.w = t7.SampleBias(s7_s, r13.xy, cb0[143].y).x;
  r3.w = -0.5 + r3.w;
  r3.w = r3.w + r3.w;
  r13.x = cb5[74].z * r3.w;
  r13.y = cb5[75].x * r3.w;
  r3.w = t8.SampleBias(s8_s, r9.xy, cb0[143].y).y;
  r3.w = r3.w * cb5[75].y + cb5[75].z;
  r9.zw = r13.xy * r3.ww + v3.xy;
  r3.w = t3.SampleBias(s3_s, r9.zw, cb0[143].y).x;
  r3.w = -1 + r3.w;
  r9.zw = cb5[76].zw + r3.ww;
  r9.zw = saturate(ceil(r9.zw));
  r13.xy = float2(1,1) + -r9.zw;
  r6.z = r13.x * r9.w;
  r11.xyz = -r11.xyz * cb5[71].www + cb5[26].xyz;
  r11.xyz = r6.zzz * r11.xyz + r12.xyz;
  r7.w = cb5[77].w + r3.w;
  r7.w = saturate(ceil(r7.w));
  r7.w = 1 + -r7.w;
  r3.w = cb5[78].x + r3.w;
  r3.w = saturate(ceil(r3.w));
  r7.w = r7.w * r3.w;
  r11.xyz = r7.www * -r11.xyz + r11.xyz;
  r8.xyz = r11.xyz + r8.xyz;
  r5.y = t2.SampleBias(s2_s, r5.zy, cb0[143].y).x;
  r11.xy = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r2.ww;
  r6.w = r11.x;
  r6.xw = t3.SampleBias(s3_s, r6.xw, cb0[143].y).xy;
  r6.xw = float2(-0.5,-0.5) + r6.xw;
  r6.xw = cb5[56].xx * r6.xw;
  r6.xw = r6.xw * float2(2,2) + v3.xy;
  r2.w = t2.SampleBias(s2_s, r6.xw, cb0[143].y).x;
  r7.z = 0.5 * r11.y;
  r6.xw = t3.SampleBias(s3_s, r7.xz, cb0[143].y).xy;
  r6.xw = float2(-0.5,-0.5) + r6.xw;
  r6.xw = cb5[56].xx * r6.xw;
  r6.xw = r6.xw * float2(2,2) + v3.xy;
  r5.z = t2.SampleBias(s2_s, r6.xw, cb0[143].y).x;
  r2.w = r5.z * r2.w;
  r5.z = r5.y * r2.w;
  r5.z = saturate(r5.z + r5.z);
  r6.x = cmp(0 >= r5.z);
  r5.z = log2(r5.z);
  r6.w = cb5[78].y * r5.z;
  r6.w = exp2(r6.w);
  r6.w = 0.5 * r6.w;
  r6.w = r6.x ? 0 : r6.w;
  r2.w = r5.y * r2.w + -0.5;
  r2.w = saturate(r2.w + r2.w);
  r2.w = 1 + -r2.w;
  r5.y = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r7.x = cb5[78].y * r2.w;
  r7.x = exp2(r7.x);
  r7.x = 1 + -r7.x;
  r7.x = r5.y ? 1 : r7.x;
  r11.x = 500 * r7.x;
  r7.x = r7.x * 0.5 + 0.5;
  r11.x = saturate(r11.x);
  r7.x = r7.x + -r6.w;
  r6.w = r11.x * r7.x + r6.w;
  r6.w = r6.w * r7.y;
  r6.w = r6.w * cb5[78].w + -cb5[78].w;
  r6.w = saturate(cb5[79].z + r6.w);
  r11.xyz = cb5[31].xyz * r3.zzz;
  r12.xyz = r6.www * cb5[28].xyz + r11.xyz;
  r12.xyz = cb5[58].zzz * r12.xyz;
  r11.xyz = cb5[58].yyy * r11.xyz;
  r11.xyz = max(r12.xyz, r11.xyz);
  r8.xyz = r11.xyz + r8.xyz;
  r6.w = cb5[79].w * r5.w;
  r6.w = exp2(r6.w);
  r6.w = 0.5 * r6.w;
  r6.w = r6.y ? 0 : r6.w;
  r7.x = cb5[79].w * r1.w;
  r7.x = exp2(r7.x);
  r7.x = 1 + -r7.x;
  r7.x = r5.x ? 1 : r7.x;
  r11.x = 500 * r7.x;
  r7.x = r7.x * 0.5 + 0.5;
  r11.x = saturate(r11.x);
  r7.x = r7.x + -r6.w;
  r6.w = r11.x * r7.x + r6.w;
  r6.w = r6.w * r7.y;
  r6.w = r6.w * cb5[80].y + -cb5[80].y;
  r6.w = saturate(cb5[81].x + r6.w);
  r11.xyz = cb5[34].xyz * r3.zzz;
  r12.xyz = r6.www * cb5[33].xyz + r11.xyz;
  r12.xyz = cb5[59].zzz * r12.xyz;
  r12.xyz = r12.xyz * r0.www;
  r11.xyz = cb5[59].yyy * r11.xyz;
  r11.xyz = max(r12.xyz, r11.xyz);
  r8.xyz = r11.xyz + r8.xyz;
  r6.w = cb5[81].y * r5.w;
  r6.w = exp2(r6.w);
  r6.w = 0.5 * r6.w;
  r6.w = r6.y ? 0 : r6.w;
  r7.x = cb5[81].y * r1.w;
  r7.x = exp2(r7.x);
  r7.x = 1 + -r7.x;
  r7.x = r5.x ? 1 : r7.x;
  r11.x = 500 * r7.x;
  r7.x = r7.x * 0.5 + 0.5;
  r11.x = saturate(r11.x);
  r7.x = r7.x + -r6.w;
  r6.w = r11.x * r7.x + r6.w;
  r6.w = r6.w * r7.y;
  r6.w = r6.w * cb5[81].w + -cb5[81].w;
  r6.w = saturate(cb5[82].z + r6.w);
  r11.xyz = cb5[37].xyz * r3.zzz;
  r12.xyz = r6.www * cb5[36].xyz + r11.xyz;
  r12.xyz = cb5[60].zzz * r12.xyz;
  r12.xyz = r12.xyz * r0.www;
  r11.xyz = cb5[60].yyy * r11.xyz;
  r11.xyz = max(r12.xyz, r11.xyz);
  r8.xyz = r11.xyz + r8.xyz;
  r5.w = cb5[82].w * r5.w;
  r5.w = exp2(r5.w);
  r5.w = 0.5 * r5.w;
  r5.w = r6.y ? 0 : r5.w;
  r1.w = cb5[82].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r5.x ? 1 : r1.w;
  r5.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r5.x = saturate(r5.x);
  r1.w = r1.w + -r5.w;
  r1.w = r5.x * r1.w + r5.w;
  r1.w = r1.w * r7.y;
  r1.w = r1.w * cb5[83].y + -cb5[83].y;
  r1.w = saturate(cb5[84].x + r1.w);
  r11.xyz = cb5[40].xyz * r3.zzz;
  r12.xyz = r1.www * cb5[39].xyz + r11.xyz;
  r12.xyz = cb5[61].zzz * r12.xyz;
  r12.xyz = r12.xyz * r0.www;
  r11.xyz = cb5[61].yyy * r11.xyz;
  r11.xyz = max(r12.xyz, r11.xyz);
  r8.xyz = r11.xyz + r8.xyz;
  r0.w = cb5[84].y * r5.z;
  r0.w = exp2(r0.w);
  r0.w = 0.5 * r0.w;
  r0.w = r6.x ? 0 : r0.w;
  r1.w = cb5[84].y * r2.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r5.y ? 1 : r1.w;
  r5.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r5.x = saturate(r5.x);
  r1.w = r1.w + -r0.w;
  r0.w = r5.x * r1.w + r0.w;
  r0.w = r0.w * r7.y;
  r0.w = r0.w * cb5[84].w + -cb5[84].w;
  r0.w = saturate(cb5[85].z + r0.w);
  r5.xyz = cb5[45].xyz * r3.zzz;
  r6.xyw = r0.www * cb5[42].xyz + r5.xyz;
  r6.xyw = cb5[62].zzz * r6.xyw;
  r5.xyz = cb5[62].yyy * r5.xyz;
  r5.xyz = max(r6.xyw, r5.xyz);
  r5.xyz = r8.xyz + r5.xyz;
  r6.xyw = r3.zzz * float3(0,0.166666999,0) + -r5.xyz;
  r5.xyz = cb5[63].yyy * r6.xyw + r5.xyz;
  r5.xyz = cb5[63].www * -r5.xyz + r5.xyz;
  r6.xyw = r3.zzz * float3(3,3,3) + -r5.xyz;
  r5.xyz = cb5[64].yyy * r6.xyw + r5.xyz;
  r6.xyw = r3.zzz * float3(7,6.30000019,0) + -r5.xyz;
  r5.xyz = cb5[64].www * r6.xyw + r5.xyz;
  r6.xyw = r3.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r6.xyw = r6.xyw + -r5.xyz;
  r5.xyz = cb5[65].yyy * r6.xyw + r5.xyz;
  r4.yzw = r4.yzw * cb5[53].xxx + r5.xyz;
  r5.xyz = cb5[46].xyz + -r4.yzw;
  r4.yzw = cb5[85].www * r5.xyz + r4.yzw;
  r5.xyz = t9.SampleBias(s9_s, r9.xy, cb0[143].y).xyz;
  r6.xyw = cb4[12].xyz + -cb4[11].xyz;
  r6.xyw = cb5[86].yyy * r6.xyw + cb4[11].xyz;
  r7.xyz = r6.xyw * r5.xyz;
  r0.w = -cb1[27].x + r2.z;
  r0.w = max(0, r0.w);
  r1.w = max(cb5[86].z, cb1[27].y);
  r0.w = r0.w / r1.w;
  r0.w = min(1, r0.w);
  r8.xyz = -r5.xyz * r6.xyw + r5.xyz;
  r7.xyz = r0.www * r8.xyz + r7.xyz;
  r8.xyz = cb5[26].xyz + -r7.xyz;
  r7.xyz = r6.zzz * r8.xyz + r7.xyz;
  r7.xyz = saturate(r7.www * -r7.xyz + r7.xyz);
  r1.w = -1 + cb0[143].y;
  r8.xyz = t8.SampleBias(s8_s, r9.xy, r1.w).xyw;
  r1.w = saturate(r0.w + r0.w);
  r1.w = r8.y * r1.w;
  r2.w = firstbithigh(asint(cb1[23].w));
  r3.z = cmp((int)r2.w == -1);
  r2.w = (int)-r2.w + 31;
  r2.w = r3.z ? -1 : r2.w;
  r2.w = cb1[23].w ? r2.w : 0;
  r3.z = saturate(dot(cb0[r2.w+358].xyz, r0.xyz));
  r9.xyz = cb0[67].xyz + -r2.xyz;
  r5.w = dot(r9.xyz, r9.xyz);
  r5.w = sqrt(r5.w);
  r9.xyz = r9.xyz / r5.www;
  r9.xyz = cb0[r2.w+358].xyz + r9.xyz;
  r8.y = dot(r9.xyz, r9.xyz);
  r8.y = sqrt(r8.y);
  r9.xyz = r9.xyz / r8.yyy;
  r8.y = dot(r9.xyz, r0.xyz);
  r8.y = saturate(r10.x + r8.y);
  r8.w = cmp(0 >= r8.y);
  r8.y = log2(r8.y);
  r8.y = 207.936584 * r8.y;
  r8.y = exp2(r8.y);
  r3.z = r8.y * r3.z;
  r3.z = r8.w ? 0 : r3.z;
  r3.z = cmp(r3.z >= cb5[86].w);
  r3.z = r3.z ? 1.000000 : 0;
  r8.y = cb5[87].x * r10.y;
  r3.z = r8.y * r3.z;
  r8.y = 1 + -r8.z;
  r8.y = cmp(r8.y >= 0.5);
  o6.z = r8.y ? 0 : 1;
  r8.y = saturate(cb0[142].w * cb2[0].x + cb2[0].y);
  r8.zw = cb0[152].xx + r3.xy;
  r8.zw = (uint2)r8.zw;
  r8.w = (uint)r8.w << 1;
  r8.z = (int)r8.w + (int)r8.z;
  r8.z = (uint)r8.z % 5;
  r8.z = (uint)r8.z;
  r3.xy = float2(0.015625,0.015625) * r3.xy;
  r3.x = t10.SampleBias(s10_s, r3.xy, cb0[143].y).x;
  r3.x = r8.z + r3.x;
  r3.x = 0.166666672 * r3.x;
  r3.x = cb5[89].x * r8.y + r3.x;
  r3.x = -0.5 + r3.x;
  r3.y = cb5[89].y * r13.y + r9.w;
  r8.y = cmp(r10.w >= cb5[89].z);
  r8.y = r8.y ? 1.000000 : 0;
  r8.z = -cb5[90].x + v2.w;
  r8.y = r8.y * r8.z;
  r3.y = r8.y * r3.y;
  r8.y = 1 + -r3.w;
  r3.w = cb5[90].y * r8.y + r3.w;
  r3.y = r3.y * r3.w;
  r3.y = saturate(ceil(r3.y));
  r3.w = 0.763943851 * cb0[128].x;
  r4.x = 1.77777779 / r4.x;
  r4.x = max(1, r4.x);
  r3.w = r4.x * r3.w;
  r8.yz = r5.ww * r3.ww + float2(-0.5,-300);
  r8.yz = saturate(float2(0.00333889807,0.000175438603) * r8.yz);
  r3.w = r8.y * -0.600000024 + 1;
  r3.w = r8.z * -0.200000003 + r3.w;
  r3.w = v3.z * r3.w;
  o6.x = cb5[91].w * r3.w;
  r3.w = 1 + -v2.y;
  o6.w = cb5[92].x * r3.w;
  r3.w = round(cb5[86].x);
  r3.w = (uint)r3.w;
  r3.w = min(2, (uint)r3.w);
  r4.x = cmp(r5.y >= r5.z);
  r4.x = r4.x ? 1.000000 : 0;
  r9.xy = r5.zy;
  r9.zw = float2(-1,0.666666687);
  r10.xy = -r9.xy + r5.yz;
  r10.zw = float2(1,-1);
  r9.xyzw = r4.xxxx * r10.xyzw + r9.xyzw;
  r4.x = cmp(r5.x >= r9.x);
  r4.x = r4.x ? 1.000000 : 0;
  r10.xyz = r9.xyw;
  r10.w = r5.x;
  r9.xyw = r10.wyx;
  r9.xyzw = r9.xyzw + -r10.xyzw;
  r9.xyzw = r4.xxxx * r9.xyzw + r10.xyzw;
  r4.x = min(r9.w, r9.y);
  r4.x = r9.x + -r4.x;
  r5.w = r9.w + -r9.y;
  r8.y = r4.x * 6 + 1.00000001e-010;
  r5.w = r5.w / r8.y;
  r5.w = r9.z + r5.w;
  r8.y = 1.00000001e-010 + r9.x;
  r4.x = r4.x / r8.y;
  r8.y = 360 * abs(r5.w);
  r8.zw = float2(0,1.40129846e-045);
  while (true) {
    r9.y = cmp((int)r8.w >= 21);
    if (r9.y != 0) break;
    r9.y = cmp(icb[r8.w+3].x >= r8.y);
    if (r9.y != 0) {
      r8.z = r8.w;
      break;
    }
    r8.w = (int)r8.w + 1;
    r8.z = 0;
  }
  r8.y = (int)r8.z + -1;
  r8.w = abs(r5.w) * 360 + -icb[r8.y+3].x;
  r9.y = icb[r8.z+3].x + -icb[r8.y+3].x;
  r8.w = r8.w / r9.y;
  r9.y = (int)r8.y & 0x80000000;
  r9.z = max((int)-r8.y, (int)r8.y);
  r9.w = (int)r9.z & 3;
  r10.x = -(int)r9.w;
  r9.y = r9.y ? r10.x : r9.w;
  r8.y = (int)r8.y ^ 4;
  r9.z = (uint)r9.z >> 2;
  r9.w = -(int)r9.z;
  r8.y = (int)r8.y & 0x80000000;
  r8.y = r8.y ? r9.w : r9.z;
  r9.z = (int)r8.z & 0x80000000;
  r9.w = max((int)-r8.z, (int)r8.z);
  r10.x = (int)r9.w & 3;
  r10.y = -(int)r10.x;
  r9.z = r9.z ? r10.y : r10.x;
  r8.z = (int)r8.z ^ 4;
  r9.w = (uint)r9.w >> 2;
  r10.x = -(int)r9.w;
  r8.z = (int)r8.z & 0x80000000;
  r8.z = r8.z ? r10.x : r9.w;
  r9.w = dot(cb0[r8.y+328].xyzw, icb[r9.y+0].xyzw);
  r10.x = dot(cb0[r8.y+338].xyzw, icb[r9.y+0].xyzw);
  r8.y = dot(cb0[r8.y+348].xyzw, icb[r9.y+0].xyzw);
  x0[0].x = r9.w;
  x0[1].x = r10.x;
  x0[2].x = r8.y;
  r8.y = dot(cb0[r8.z+328].xyzw, icb[r9.z+0].xyzw);
  r9.y = dot(cb0[r8.z+338].xyzw, icb[r9.z+0].xyzw);
  r8.z = dot(cb0[r8.z+348].xyzw, icb[r9.z+0].xyzw);
  x1[0].x = r8.y;
  x1[1].x = r9.y;
  x1[2].x = r8.z;
  r8.y = x0[r3.w+0].x;
  r8.z = x1[r3.w+0].x;
  r8.z = r8.z + -r8.y;
  r8.y = r8.w * r8.z + r8.y;
  r5.w = abs(r5.w) * 360 + r8.y;
  r8.y = cmp(r5.w < 0);
  r8.z = cmp(360 < r5.w);
  r9.yz = float2(360,-360) + r5.ww;
  r5.w = r8.z ? r9.z : r5.w;
  r5.w = r8.y ? r9.y : r5.w;
  r5.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.y = -0.200000003 + r5.x;
  r5.y = 10 * r5.y;
  r5.y = max(0, r5.y);
  r5.y = min(6, r5.y);
  r5.z = (int)r5.y;
  r8.y = (int)r5.z + 1;
  r5.y = trunc(r5.y);
  r5.y = r5.y * 0.100000001 + 0.200000003;
  r5.x = r5.x + -r5.y;
  r5.x = saturate(10 * r5.x);
  r5.y = (int)r5.z & 3;
  r5.z = (uint)r5.z >> 2;
  r8.z = (int)r8.y & 3;
  r8.y = (uint)r8.y >> 2;
  r8.w = dot(cb0[r5.z+334].xyzw, icb[r5.y+0].xyzw);
  r9.y = dot(cb0[r5.z+344].xyzw, icb[r5.y+0].xyzw);
  r9.z = dot(cb0[r5.z+354].xyzw, icb[r5.y+0].xyzw);
  x2[0].x = r8.w;
  x2[1].x = r9.y;
  x2[2].x = r9.z;
  r8.w = dot(cb0[r8.y+334].xyzw, icb[r8.z+0].xyzw);
  r9.y = dot(cb0[r8.y+344].xyzw, icb[r8.z+0].xyzw);
  r9.z = dot(cb0[r8.y+354].xyzw, icb[r8.z+0].xyzw);
  x3[0].x = r8.w;
  x3[1].x = r9.y;
  x3[2].x = r9.z;
  r8.w = dot(cb0[r5.z+336].xyzw, icb[r5.y+0].xyzw);
  r9.y = dot(cb0[r5.z+346].xyzw, icb[r5.y+0].xyzw);
  r5.y = dot(cb0[r5.z+356].xyzw, icb[r5.y+0].xyzw);
  x4[0].x = r8.w;
  x4[1].x = r9.y;
  x4[2].x = r5.y;
  r5.y = dot(cb0[r8.y+336].xyzw, icb[r8.z+0].xyzw);
  r5.z = dot(cb0[r8.y+346].xyzw, icb[r8.z+0].xyzw);
  r8.y = dot(cb0[r8.y+356].xyzw, icb[r8.z+0].xyzw);
  x5[0].x = r5.y;
  x5[1].x = r5.z;
  x5[2].x = r8.y;
  r5.y = x2[r3.w+0].x;
  r5.z = x3[r3.w+0].x;
  r5.z = r5.z + -r5.y;
  r5.y = r5.x * r5.z + r5.y;
  r5.z = x4[r3.w+0].x;
  r3.w = x5[r3.w+0].x;
  r3.w = r3.w + -r5.z;
  r3.w = r5.x * r3.w + r5.z;
  r5.x = cmp(0 < r4.x);
  r5.y = saturate(r5.y + r4.x);
  r4.x = r5.x ? r5.y : r4.x;
  r3.w = saturate(r9.x + r3.w);
  r5.xyz = r5.www * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r5.xyz = frac(r5.xyz);
  r5.xyz = r5.xyz * float3(6,6,6) + float3(-3,-3,-3);
  r5.xyz = saturate(float3(-1,-1,-1) + abs(r5.xyz));
  r5.xyz = float3(-1,-1,-1) + r5.xyz;
  r5.xyz = r4.xxx * r5.xyz + float3(1,1,1);
  r8.yzw = r5.xyz * r3.www;
  r6.xyw = r8.yzw * r6.xyw;
  r5.xyz = r3.www * r5.xyz + -r6.xyw;
  r5.xyz = r0.www * r5.xyz + r6.xyw;
  r6.xyw = cb5[26].xyz + -r5.xyz;
  r5.xyz = r6.zzz * r6.xyw + r5.xyz;
  r5.xyz = saturate(r7.www * -r5.xyz + r5.xyz);
  r0.w = v2.z * r8.x;
  r0.w = cmp(r0.w >= cb5[92].w);
  o3.w = r0.w ? 1.000000 : 0;
  r3.x = r3.x * r3.y + -0.333299994;
  r3.x = cmp(r3.x < 0);
  if (r3.x != 0) discard;
  r3.x = saturate(cb5[87].y);
  o2.z = r3.x * cb0[139].y + cb0[139].x;
  r3.x = dot(cb0[r2.w+358].xyz, cb0[r2.w+358].xyz);
  r3.x = rsqrt(r3.x);
  r3.xyw = cb0[r2.w+358].xyz * r3.xxx;
  r2.w = dot(r0.xyz, r3.xyw);
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
  r1.x = dot(-r1.xyz, r3.xyw);
  r1.x = saturate(3 * r1.x);
  r3.xyw = r5.xyz * r4.xxx + -r5.xyz;
  o4.xyz = r1.xxx * r3.xyw + r5.xyz;
  r1.x = cmp(r2.w >= cb0[327].x);
  o4.w = r1.x ? 1.000000 : 0;
  o5.y = 0.5 * r1.w;
  r1.x = 0.0799999982 * r3.z;
  r3.xyw = -r3.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
  r1.xyz = r1.www * r3.xyw + r1.xxx;
  r3.xyw = r7.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r5.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyw;
  r1.xyz = r1.www ? r1.xyz : r3.xyw;
  r2.w = cmp(0 < cb0[215].x);
  if (r2.w != 0) {
    r3.xyw = r2.xyz * cb3[1].xyz + cb3[0].xyz;
    r3.xyw = max(cb3[2].xyz, r3.xyw);
    r3.xyw = min(cb3[3].xyz, r3.xyw);
    r6.xyz = t0.Sample(s1_s, r3.xyw).xyz;
    r3.xyw = t1.Sample(s0_s, r3.xyw).xzy;
    r8.xz = r6.xy;
    r8.yw = r3.xw;
    r9.x = dot(r8.xy, float2(0.886227548,-1.02332771));
    r9.y = dot(r8.zw, float2(0.886227548,-1.02332771));
    r3.x = r6.z;
    r9.z = dot(r3.xy, float2(0.886227548,-1.02332771));
    r3.xyw = max(float3(0,0,0), r9.xyz);
    r3.xyw = float3(0.318309873,0.318309873,0.318309873) * r3.xyw;
  } else {
    r3.xyw = float3(0,0,0);
  }
  r6.xyw = cb0[157].yzx * r3.ywx;
  r2.w = cmp(r6.x >= r6.y);
  r2.w = r2.w ? 1.000000 : 0;
  r8.xy = r6.yx;
  r8.zw = float2(-1,0.666666687);
  r9.xy = r3.yw * cb0[157].yz + -r8.xy;
  r9.zw = float2(1,-1);
  r8.xyzw = r2.wwww * r9.xyzw + r8.xyzw;
  r2.w = cmp(r6.w >= r8.x);
  r2.w = r2.w ? 1.000000 : 0;
  r6.xyz = r8.xyw;
  r8.xyw = r6.wyx;
  r8.xyzw = r8.xyzw + -r6.xyzw;
  r6.xyzw = r2.wwww * r8.xyzw + r6.xyzw;
  r2.w = min(r6.w, r6.y);
  r2.w = r6.x + -r2.w;
  r3.x = r6.w + -r6.y;
  r3.y = r2.w * 6 + 1.00000001e-010;
  r3.x = r3.x / r3.y;
  r3.x = r6.z + r3.x;
  r3.y = 1.00000001e-010 + r6.x;
  r2.w = r2.w / r3.y;
  r2.w = cb0[361].z * r2.w;
  r3.xyw = float3(1,0.666666687,0.333333343) + abs(r3.xxx);
  r3.xyw = frac(r3.xyw);
  r3.xyw = r3.xyw * float3(6,6,6) + float3(-3,-3,-3);
  r3.xyw = saturate(float3(-1,-1,-1) + abs(r3.xyw));
  r3.xyw = float3(-1,-1,-1) + r3.xyw;
  r3.xyw = r2.www * r3.xyw + float3(1,1,1);
  r3.xyw = r6.xxx * r3.xyw;
  r3.xyw = cb0[361].xxx * r3.xyw;
  r2.w = dot(r3.xyw, float3(0.300000012,0.589999974,0.109999999));
  r4.x = min(cb0[361].y, r2.w);
  r2.w = max(1.00000001e-010, r2.w);
  r2.w = r4.x / r2.w;
  r3.xyw = r3.xyw * r2.www;
  r3.xyw = r3.xyw * r7.xyz;
  r6.xyz = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r3.xyw = r6.xyz * r3.xyw;
  r5.xyz = r1.www ? float3(0,0,0) : r5.xyz;
  r1.xyz = r5.xyz + r1.xyz;
  r4.xyz = max(float3(0,0,0), r4.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
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
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.549019635);
  o2.y = r3.z;
  o3.xyz = r7.xyz;
  o5.z = v2.x;
  o5.w = cb5[92].z;
  o5.x = r0.w;
  o6.y = v3.w;
  return;
}