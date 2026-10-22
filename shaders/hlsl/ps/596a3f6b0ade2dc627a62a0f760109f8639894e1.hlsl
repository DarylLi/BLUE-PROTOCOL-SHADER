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

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

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
  float4 cb4[89];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
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
  r1.xyz = -r1.xyz * r0.www;
  r3.xyzw = mad((int4)v5.xxxx, int4(36,36,36,36), int4(4,27,23,20));
  r0.w = t0[r3.x].val[12/4];
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
  r5.xyz = cb4[2].yyy * cb0[5].xyw;
  r5.xyz = cb4[2].xxx * cb0[4].xyw + r5.xyz;
  r5.xyz = cb4[2].zzz * cb0[6].xyw + r5.xyz;
  r5.xyz = cb0[7].xyw + r5.xyz;
  r5.xy = r5.xy / r5.zz;
  r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r5.xy = r4.xy * cb0[130].zw + -r5.xy;
  r6.xyz = -cb4[2].xyz + cb0[67].xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb4[50].y;
  r2.w = max(cb4[50].z, r2.w);
  r2.w = min(1, r2.w);
  r2.w = -cb4[50].z + r2.w;
  r2.w = saturate(cb4[51].x * r2.w);
  r3.x = cb4[51].y + -cb4[51].z;
  r3.x = r2.w * r3.x + cb4[51].z;
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
  r5.yz = saturate(cb4[54].yw + r5.yy);
  r5.y = 1 + -r5.y;
  r5.y = r5.y * r5.z + -r5.x;
  r5.x = r2.w * r5.y + r5.x;
  r5.yzw = -cb4[6].xyz + cb4[5].xyz;
  r5.yzw = r2.www * r5.yzw + cb4[6].xyz;
  r5.xyz = r5.xxx * r5.yzw;
  r5.xyz = r5.xyz * r1.www;
  r0.w = cb4[55].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb4[55].z + cb4[55].y;
  r6.xy = cb0[142].zz * float2(0.200000003,0.00999999978) + v3.yy;
  r6.xy = r6.xy + r6.xy;
  r6.z = 2 * v3.x;
  r1.w = t2.SampleBias(s0_s, r6.zx, cb0[143].y).x;
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
  r6.xw = t3.SampleBias(s1_s, r7.xy, cb0[143].y).xy;
  r6.xw = float2(-0.5,-0.5) + r6.xw;
  r6.xw = cb4[56].xx * r6.xw;
  r6.xw = r6.xw * float2(2,2) + v3.xy;
  r5.w = t2.SampleBias(s0_s, r6.xw, cb0[143].y).x;
  r8.xy = float2(0.5,0.5) * r7.xz;
  r6.xw = t3.SampleBias(s1_s, r8.xy, cb0[143].y).xy;
  r6.xw = float2(-0.5,-0.5) + r6.xw;
  r6.xw = cb4[56].xx * r6.xw;
  r6.xw = r6.xw * float2(2,2) + v3.xy;
  r6.x = t2.SampleBias(s0_s, r6.xw, cb0[143].y).x;
  r5.w = r6.x * r5.w;
  r6.x = r5.w * r1.w;
  r6.x = saturate(r6.x + r6.x);
  r6.w = cmp(0 >= r6.x);
  r6.x = log2(r6.x);
  r7.y = cb4[56].y * r6.x;
  r7.y = exp2(r7.y);
  r7.y = 0.5 * r7.y;
  r7.y = r6.w ? 0 : r7.y;
  r1.w = r1.w * r5.w + -0.5;
  r1.w = saturate(r1.w + r1.w);
  r1.w = 1 + -r1.w;
  r5.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r7.z = cb4[56].y * r1.w;
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
  r7.y = r7.y * cb4[56].w + -cb4[56].w;
  r7.y = saturate(cb4[57].z + r7.y);
  r4.z = t3.SampleBias(s1_s, r4.zw, cb0[143].y).x;
  r4.z = -r4.z * 0.5 + 1;
  r4.z = r4.z * r7.z + cb4[66].x;
  r4.z = -1 + r4.z;
  r4.z = saturate(ceil(r4.z));
  r9.xyz = cb4[9].xyz * r4.zzz;
  r10.xyz = r7.yyy * cb4[8].xyz + r9.xyz;
  r10.xyz = cb4[58].xxx * r10.xyz;
  r10.xyz = r10.xyz * r0.www;
  r9.xyz = cb4[57].www * r9.xyz;
  r9.xyz = max(r10.xyz, r9.xyz);
  r10.xyzw = t4.SampleBias(s2_s, v3.xy, cb0[143].y).xyzw;
  r11.xyz = cb4[11].xyz * r10.zzz;
  r12.xyz = cb4[13].xyz * r10.www;
  r12.xyz = cb4[66].zzz * r12.xyz;
  r11.xyz = r11.xyz * cb4[66].yyy + r12.xyz;
  r4.w = cb0[142].z * cb4[67].y + v3.x;
  r12.x = cb4[68].x * r4.w;
  r4.w = cb0[142].z * cb4[68].y + v3.y;
  r12.y = cb4[68].z * r4.w;
  r4.w = t5.SampleBias(s3_s, r12.xy, cb0[143].y).x;
  r4.w = -0.5 + r4.w;
  r4.w = r4.w + r4.w;
  r8.yw = cb4[69].yw * r4.ww;
  r4.w = t6.SampleBias(s4_s, v3.xy, cb0[143].y).y;
  r4.w = r4.w * cb4[70].x + cb4[70].y;
  r8.yw = r8.yw * r4.ww + v3.xy;
  r4.w = t3.SampleBias(s1_s, r8.yw, cb0[143].y).x;
  r4.w = -1 + r4.w;
  r8.yw = cb4[71].yz + r4.ww;
  r8.yw = saturate(ceil(r8.yw));
  r10.zw = float2(1,1) + -r8.yw;
  r7.y = r10.z * r8.w;
  r12.xyz = cb4[18].xyz + -r11.xyz;
  r11.xyz = r7.yyy * r12.xyz + r11.xyz;
  r12.xy = cb4[72].zw + r4.ww;
  r12.xy = saturate(ceil(r12.xy));
  r12.xz = float2(1,1) + -r12.xy;
  r4.w = r12.x * r12.y;
  r11.xyz = r4.www * -r11.xyz + r11.xyz;
  r9.xyz = r11.xyz + r9.xyz;
  r6.y = t2.SampleBias(s0_s, r6.zy, cb0[143].y).x;
  r11.xy = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r2.ww;
  r7.w = r11.x;
  r7.xw = t3.SampleBias(s1_s, r7.xw, cb0[143].y).xy;
  r7.xw = float2(-0.5,-0.5) + r7.xw;
  r7.xw = cb4[56].xx * r7.xw;
  r7.xw = r7.xw * float2(2,2) + v3.xy;
  r2.w = t2.SampleBias(s0_s, r7.xw, cb0[143].y).x;
  r8.z = 0.5 * r11.y;
  r7.xw = t3.SampleBias(s1_s, r8.xz, cb0[143].y).xy;
  r7.xw = float2(-0.5,-0.5) + r7.xw;
  r7.xw = cb4[56].xx * r7.xw;
  r7.xw = r7.xw * float2(2,2) + v3.xy;
  r6.z = t2.SampleBias(s0_s, r7.xw, cb0[143].y).x;
  r2.w = r6.z * r2.w;
  r6.z = r6.y * r2.w;
  r6.z = saturate(r6.z + r6.z);
  r7.x = cmp(0 >= r6.z);
  r6.z = log2(r6.z);
  r7.w = cb4[73].x * r6.z;
  r7.w = exp2(r7.w);
  r7.w = 0.5 * r7.w;
  r7.w = r7.x ? 0 : r7.w;
  r2.w = r6.y * r2.w + -0.5;
  r2.w = saturate(r2.w + r2.w);
  r2.w = 1 + -r2.w;
  r6.y = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r8.x = cb4[73].x * r2.w;
  r8.x = exp2(r8.x);
  r8.x = 1 + -r8.x;
  r8.x = r6.y ? 1 : r8.x;
  r11.x = 500 * r8.x;
  r8.x = r8.x * 0.5 + 0.5;
  r11.x = saturate(r11.x);
  r8.x = r8.x + -r7.w;
  r7.w = r11.x * r8.x + r7.w;
  r7.w = r7.w * r7.z;
  r7.w = r7.w * cb4[73].z + -cb4[73].z;
  r7.w = saturate(cb4[74].y + r7.w);
  r8.xyz = cb4[23].xyz * r4.zzz;
  r11.xyz = r7.www * cb4[20].xyz + r8.xyz;
  r11.xyz = cb4[58].zzz * r11.xyz;
  r8.xyz = cb4[58].yyy * r8.xyz;
  r8.xyz = max(r11.xyz, r8.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r7.w = cb4[74].z * r6.x;
  r7.w = exp2(r7.w);
  r7.w = 0.5 * r7.w;
  r7.w = r6.w ? 0 : r7.w;
  r9.x = cb4[74].z * r1.w;
  r9.x = exp2(r9.x);
  r9.x = 1 + -r9.x;
  r9.x = r5.w ? 1 : r9.x;
  r11.x = 500 * r9.x;
  r9.x = r9.x * 0.5 + 0.5;
  r11.x = saturate(r11.x);
  r9.x = r9.x + -r7.w;
  r7.w = r11.x * r9.x + r7.w;
  r7.w = r7.w * r7.z;
  r7.w = r7.w * cb4[75].x + -cb4[75].x;
  r7.w = saturate(cb4[75].w + r7.w);
  r9.xyz = cb4[26].xyz * r4.zzz;
  r11.xyz = r7.www * cb4[25].xyz + r9.xyz;
  r11.xyz = cb4[59].zzz * r11.xyz;
  r11.xyz = r11.xyz * r0.www;
  r9.xyz = cb4[59].yyy * r9.xyz;
  r9.xyz = max(r11.xyz, r9.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r7.w = cb4[76].x * r6.x;
  r7.w = exp2(r7.w);
  r7.w = 0.5 * r7.w;
  r7.w = r6.w ? 0 : r7.w;
  r9.x = cb4[76].x * r1.w;
  r9.x = exp2(r9.x);
  r9.x = 1 + -r9.x;
  r9.x = r5.w ? 1 : r9.x;
  r11.x = 500 * r9.x;
  r9.x = r9.x * 0.5 + 0.5;
  r11.x = saturate(r11.x);
  r9.x = r9.x + -r7.w;
  r7.w = r11.x * r9.x + r7.w;
  r7.w = r7.w * r7.z;
  r7.w = r7.w * cb4[76].z + -cb4[76].z;
  r7.w = saturate(cb4[77].y + r7.w);
  r9.xyz = cb4[29].xyz * r4.zzz;
  r11.xyz = r7.www * cb4[28].xyz + r9.xyz;
  r11.xyz = cb4[60].zzz * r11.xyz;
  r11.xyz = r11.xyz * r0.www;
  r9.xyz = cb4[60].yyy * r9.xyz;
  r9.xyz = max(r11.xyz, r9.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r6.x = cb4[77].z * r6.x;
  r6.x = exp2(r6.x);
  r6.x = 0.5 * r6.x;
  r6.x = r6.w ? 0 : r6.x;
  r1.w = cb4[77].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r5.w ? 1 : r1.w;
  r9.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r1.w = r1.w + -r6.x;
  r1.w = r9.x * r1.w + r6.x;
  r1.w = r1.w * r7.z;
  r1.w = r1.w * cb4[78].x + -cb4[78].x;
  r1.w = saturate(cb4[78].w + r1.w);
  r9.xyz = cb4[32].xyz * r4.zzz;
  r11.xyz = r1.www * cb4[31].xyz + r9.xyz;
  r11.xyz = cb4[61].zzz * r11.xyz;
  r11.xyz = r11.xyz * r0.www;
  r9.xyz = cb4[61].yyy * r9.xyz;
  r9.xyz = max(r11.xyz, r9.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r0.w = cb4[79].x * r6.z;
  r0.w = exp2(r0.w);
  r0.w = 0.5 * r0.w;
  r0.w = r7.x ? 0 : r0.w;
  r1.w = cb4[79].x * r2.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r6.y ? 1 : r1.w;
  r6.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r6.x = saturate(r6.x);
  r1.w = r1.w + -r0.w;
  r0.w = r6.x * r1.w + r0.w;
  r0.w = r0.w * r7.z;
  r0.w = r0.w * cb4[79].z + -cb4[79].z;
  r0.w = saturate(cb4[80].y + r0.w);
  r6.xyz = cb4[37].xyz * r4.zzz;
  r7.xzw = r0.www * cb4[34].xyz + r6.xyz;
  r7.xzw = cb4[62].zzz * r7.xzw;
  r6.xyz = cb4[62].yyy * r6.xyz;
  r6.xyz = max(r7.xzw, r6.xyz);
  r6.xyz = r8.xyz + r6.xyz;
  r7.xzw = r4.zzz * float3(0,0.166666999,0) + -r6.xyz;
  r6.xyz = cb4[63].yyy * r7.xzw + r6.xyz;
  r6.xyz = cb4[63].www * -r6.xyz + r6.xyz;
  r7.xzw = r4.zzz * float3(3,3,3) + -r6.xyz;
  r6.xyz = cb4[64].yyy * r7.xzw + r6.xyz;
  r7.xzw = r4.zzz * float3(7,6.30000019,0) + -r6.xyz;
  r6.xyz = cb4[64].www * r7.xzw + r6.xyz;
  r7.xzw = r4.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r7.xzw = r7.xzw + -r6.xyz;
  r6.xyz = cb4[65].yyy * r7.xzw + r6.xyz;
  r5.xyz = r5.xyz * cb4[53].xxx + r6.xyz;
  r6.xyz = cb4[38].xyz + -r5.xyz;
  r5.xyz = cb4[80].zzz * r6.xyz + r5.xyz;
  r6.xyz = t7.SampleBias(s5_s, v3.xy, cb0[143].y).xyz;
  r0.w = -1 + cb0[143].y;
  r7.xzw = t8.SampleBias(s6_s, v3.xy, r0.w).xyz;
  r8.xyz = -cb4[42].xyz + cb4[41].xyz;
  r8.xyz = r7.www * r8.xyz + cb4[42].xyz;
  r9.xyz = cb4[44].xyz + -r8.xyz;
  r8.xyz = r7.zzz * r9.xyz + r8.xyz;
  r9.xyz = cb4[46].xyz + -r8.xyz;
  r7.xzw = r7.xxx * r9.xyz + r8.xyz;
  r9.xyzw = t6.SampleBias(s4_s, v3.xy, r0.w).xyzw;
  r7.xzw = float3(-1,-1,-1) + r7.xzw;
  r7.xzw = r9.zzz * r7.xzw + float3(1,1,1);
  r8.xyz = r7.xzw * r6.xyz;
  r11.xyz = cb3[12].xyz + -cb3[11].xyz;
  r11.xyz = cb4[81].xxx * r11.xyz + cb3[11].xyz;
  r13.xyz = r11.xyz * r8.xyz;
  r14.x = t0[r3.y].val[0/4];
  r14.y = t0[r3.y].val[0/4+1];
  r14.z = t0[r3.y].val[0/4+2];
  r0.w = -r14.x + r2.z;
  r0.w = max(0, r0.w);
  r1.w = max(cb4[81].y, r14.y);
  r0.w = r0.w / r1.w;
  r0.w = min(1, r0.w);
  r12.xw = cb4[81].zw * r1.ww;
  r2.w = cb4[81].z * r1.w + r14.x;
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
  r14.xyz = cmp(float3(0,0,0) >= r13.xyz);
  r15.xyz = log2(r13.xyz);
  r15.xyz = float3(0.454545438,0.454545438,0.454545438) * r15.xyz;
  r15.xyz = exp2(r15.xyz);
  r14.xyz = r14.xyz ? float3(0,0,0) : r15.xyz;
  r15.xyz = float3(1,1,1) + -r14.xyz;
  r15.xyz = r15.xyz + r15.xyz;
  r16.xyz = t9.SampleBias(s7_s, v4.xy, cb0[143].y).xyz;
  r16.xyz = cb4[82].xxx * r16.xyz;
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
  r14.xyz = r14.xyz + -r13.xyz;
  r13.xyz = r10.xxx * r14.xyz + r13.xyz;
  r14.xyz = cb4[18].xyz + -r13.xyz;
  r13.xyz = r7.yyy * r14.xyz + r13.xyz;
  r13.xyz = saturate(r4.www * -r13.xyz + r13.xyz);
  r1.w = saturate(r0.w + r0.w);
  r1.w = r9.y * r1.w;
  r2.w = t0[r3.z].val[12/4];
  r3.y = firstbithigh((int)r2.w);
  r3.z = cmp((int)r3.y == -1);
  r3.y = (int)-r3.y + 31;
  r3.y = r3.z ? -1 : r3.y;
  r2.w = r2.w ? r3.y : 0;
  r3.y = saturate(dot(cb0[r2.w+358].xyz, r0.xyz));
  r14.xyz = cb0[67].xyz + -r2.xyz;
  r3.z = dot(r14.xyz, r14.xyz);
  r3.z = sqrt(r3.z);
  r14.xyz = r14.xyz / r3.zzz;
  r14.xyz = cb0[r2.w+358].xyz + r14.xyz;
  r4.z = dot(r14.xyz, r14.xyz);
  r4.z = sqrt(r4.z);
  r14.xyz = r14.xyz / r4.zzz;
  r4.z = dot(r14.xyz, r0.xyz);
  r4.z = saturate(r10.x + r4.z);
  r5.w = cmp(0 >= r4.z);
  r4.z = log2(r4.z);
  r4.z = 207.936584 * r4.z;
  r4.z = exp2(r4.z);
  r3.y = r4.z * r3.y;
  r3.y = r5.w ? 0 : r3.y;
  r3.y = cmp(r3.y >= cb4[82].y);
  r3.y = r3.y ? 1.000000 : 0;
  r4.z = cb4[82].z * r10.y;
  r3.y = r4.z * r3.y;
  r4.z = 1 + -r9.w;
  r4.z = cmp(r4.z >= 0.5);
  o6.z = r4.z ? 0 : 1;
  r4.z = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r6.xw = cb0[152].xx + r4.xy;
  r6.xw = (uint2)r6.xw;
  r5.w = (uint)r6.w << 1;
  r5.w = (int)r5.w + (int)r6.x;
  r5.w = (uint)r5.w % 5;
  r5.w = (uint)r5.w;
  r4.xy = float2(0.015625,0.015625) * r4.xy;
  r4.x = t10.SampleBias(s8_s, r4.xy, cb0[143].y).x;
  r4.x = r5.w + r4.x;
  r4.x = 0.166666672 * r4.x;
  r4.x = cb4[84].z * r4.z + r4.x;
  r4.x = -0.5 + r4.x;
  r4.y = cb4[84].w * r10.w + r8.w;
  r4.z = -cb4[85].y + v2.w;
  r4.y = r4.y * r4.z;
  r4.z = cb4[85].z * r12.z + r12.y;
  r4.y = r4.y * r4.z;
  r4.y = saturate(ceil(r4.y));
  r4.z = 0.763943851 * cb0[128].x;
  r3.x = 1.77777779 / r3.x;
  r3.x = max(1, r3.x);
  r3.x = r4.z * r3.x;
  r3.xz = r3.zz * r3.xx + float2(-0.5,-300);
  r3.xz = saturate(float2(0.00333889807,0.000175438603) * r3.xz);
  r3.x = r3.x * -0.600000024 + 1;
  r3.x = r3.z * -0.200000003 + r3.x;
  r3.x = v3.z * r3.x;
  o6.x = cb4[87].x * r3.x;
  r3.x = 1 + -v2.y;
  o6.w = cb4[87].y * r3.x;
  r3.x = round(cb4[80].w);
  r3.x = (uint)r3.x;
  r3.x = min(2, (uint)r3.x);
  r3.z = cmp(r8.y >= r8.z);
  r3.z = r3.z ? 1.000000 : 0;
  r12.xy = r8.zy;
  r12.zw = float2(-1,0.666666687);
  r6.xy = r6.yz * r7.zw + -r12.xy;
  r6.zw = float2(1,-1);
  r6.xyzw = r3.zzzz * r6.xyzw + r12.xyzw;
  r3.z = cmp(r8.x >= r6.x);
  r3.z = r3.z ? 1.000000 : 0;
  r12.xyz = r6.xyw;
  r12.w = r8.x;
  r6.xyw = r12.wyx;
  r6.xyzw = r6.xyzw + -r12.xyzw;
  r6.xyzw = r3.zzzz * r6.xyzw + r12.xyzw;
  r3.z = min(r6.w, r6.y);
  r3.z = r6.x + -r3.z;
  r4.z = r6.w + -r6.y;
  r5.w = r3.z * 6 + 1.00000001e-010;
  r4.z = r4.z / r5.w;
  r4.z = r6.z + r4.z;
  r5.w = 1.00000001e-010 + r6.x;
  r3.z = r3.z / r5.w;
  r5.w = 360 * abs(r4.z);
  r6.yz = float2(0,1.40129846e-045);
  while (true) {
    r6.w = cmp((int)r6.z >= 21);
    if (r6.w != 0) break;
    r6.w = cmp(icb[r6.z+3].x >= r5.w);
    if (r6.w != 0) {
      r6.y = r6.z;
      break;
    }
    r6.z = (int)r6.z + 1;
    r6.y = 0;
  }
  r5.w = (int)r6.y + -1;
  r6.z = abs(r4.z) * 360 + -icb[r5.w+3].x;
  r6.w = icb[r6.y+3].x + -icb[r5.w+3].x;
  r6.z = r6.z / r6.w;
  r6.w = (int)r5.w & 0x80000000;
  r7.x = max((int)-r5.w, (int)r5.w);
  r7.z = (int)r7.x & 3;
  r7.w = -(int)r7.z;
  r6.w = r6.w ? r7.w : r7.z;
  r5.w = (int)r5.w ^ 4;
  r7.x = (uint)r7.x >> 2;
  r7.z = -(int)r7.x;
  r5.w = (int)r5.w & 0x80000000;
  r5.w = r5.w ? r7.z : r7.x;
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
  r7.z = dot(cb0[r5.w+328].xyzw, icb[r6.w+0].xyzw);
  r7.w = dot(cb0[r5.w+338].xyzw, icb[r6.w+0].xyzw);
  r5.w = dot(cb0[r5.w+348].xyzw, icb[r6.w+0].xyzw);
  x0[0].x = r7.z;
  x0[1].x = r7.w;
  x0[2].x = r5.w;
  r5.w = dot(cb0[r6.y+328].xyzw, icb[r7.x+0].xyzw);
  r6.w = dot(cb0[r6.y+338].xyzw, icb[r7.x+0].xyzw);
  r6.y = dot(cb0[r6.y+348].xyzw, icb[r7.x+0].xyzw);
  x1[0].x = r5.w;
  x1[1].x = r6.w;
  x1[2].x = r6.y;
  r5.w = x0[r3.x+0].x;
  r6.y = x1[r3.x+0].x;
  r6.y = r6.y + -r5.w;
  r5.w = r6.z * r6.y + r5.w;
  r4.z = abs(r4.z) * 360 + r5.w;
  r5.w = cmp(r4.z < 0);
  r6.y = cmp(360 < r4.z);
  r6.zw = float2(360,-360) + r4.zz;
  r4.z = r6.y ? r6.w : r4.z;
  r4.z = r5.w ? r6.z : r4.z;
  r5.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.y = -0.200000003 + r5.w;
  r6.y = 10 * r6.y;
  r6.y = max(0, r6.y);
  r6.y = min(6, r6.y);
  r6.z = (int)r6.y;
  r6.w = (int)r6.z + 1;
  r6.y = trunc(r6.y);
  r6.y = r6.y * 0.100000001 + 0.200000003;
  r5.w = -r6.y + r5.w;
  r5.w = saturate(10 * r5.w);
  r6.y = (int)r6.z & 3;
  r7.x = (int)r6.w & 3;
  r6.zw = (uint2)r6.zw >> int2(2,2);
  r7.z = dot(cb0[r6.z+334].xyzw, icb[r6.y+0].xyzw);
  r7.w = dot(cb0[r6.z+344].xyzw, icb[r6.y+0].xyzw);
  r8.x = dot(cb0[r6.z+354].xyzw, icb[r6.y+0].xyzw);
  x2[0].x = r7.z;
  x2[1].x = r7.w;
  x2[2].x = r8.x;
  r7.z = dot(cb0[r6.w+334].xyzw, icb[r7.x+0].xyzw);
  r7.w = dot(cb0[r6.w+344].xyzw, icb[r7.x+0].xyzw);
  r8.x = dot(cb0[r6.w+354].xyzw, icb[r7.x+0].xyzw);
  x3[0].x = r7.z;
  x3[1].x = r7.w;
  x3[2].x = r8.x;
  r7.z = dot(cb0[r6.z+336].xyzw, icb[r6.y+0].xyzw);
  r7.w = dot(cb0[r6.z+346].xyzw, icb[r6.y+0].xyzw);
  r6.y = dot(cb0[r6.z+356].xyzw, icb[r6.y+0].xyzw);
  x4[0].x = r7.z;
  x4[1].x = r7.w;
  x4[2].x = r6.y;
  r6.y = dot(cb0[r6.w+336].xyzw, icb[r7.x+0].xyzw);
  r6.z = dot(cb0[r6.w+346].xyzw, icb[r7.x+0].xyzw);
  r6.w = dot(cb0[r6.w+356].xyzw, icb[r7.x+0].xyzw);
  x5[0].x = r6.y;
  x5[1].x = r6.z;
  x5[2].x = r6.w;
  r6.y = x2[r3.x+0].x;
  r6.z = x3[r3.x+0].x;
  r6.z = r6.z + -r6.y;
  r6.y = r5.w * r6.z + r6.y;
  r6.z = x4[r3.x+0].x;
  r3.x = x5[r3.x+0].x;
  r3.x = r3.x + -r6.z;
  r3.x = r5.w * r3.x + r6.z;
  r5.w = cmp(0 < r3.z);
  r6.y = saturate(r6.y + r3.z);
  r3.z = r5.w ? r6.y : r3.z;
  r3.x = saturate(r6.x + r3.x);
  r6.xyz = r4.zzz * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r6.xyz = frac(r6.xyz);
  r6.xyz = r6.xyz * float3(6,6,6) + float3(-3,-3,-3);
  r6.xyz = saturate(float3(-1,-1,-1) + abs(r6.xyz));
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = r3.zzz * r6.xyz + float3(1,1,1);
  r7.xzw = r6.xyz * r3.xxx;
  r7.xzw = r7.xzw * r11.xyz;
  r6.xyz = r3.xxx * r6.xyz + -r7.xzw;
  r6.xyz = r0.www * r6.xyz + r7.xzw;
  r7.xzw = cmp(float3(0,0,0) >= r6.xyz);
  r8.xyz = log2(r6.xyz);
  r8.xyz = float3(0.454545438,0.454545438,0.454545438) * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r7.xzw = r7.xzw ? float3(0,0,0) : r8.xyz;
  r8.xyz = float3(1,1,1) + -r7.xzw;
  r8.xyz = r8.xyz * r17.xyz;
  r8.xyz = -r8.xyz * float3(2,2,2) + float3(1,1,1);
  r9.yzw = r7.xzw * r16.xyz;
  r9.yzw = r9.yzw + r9.yzw;
  r7.xzw = cmp(r7.xzw >= float3(0.5,0.5,0.5));
  r7.xzw = r7.xzw ? r8.xyz : r9.yzw;
  r8.xyz = cmp(float3(0,0,0) >= r7.xzw);
  r7.xzw = log2(r7.xzw);
  r7.xzw = float3(2.20000005,2.20000005,2.20000005) * r7.xzw;
  r7.xzw = exp2(r7.xzw);
  r7.xzw = r8.xyz ? float3(0,0,0) : r7.xzw;
  r7.xzw = r7.xzw + -r6.xyz;
  r6.xyz = r10.xxx * r7.xzw + r6.xyz;
  r7.xzw = cb4[18].xyz + -r6.xyz;
  r6.xyz = r7.yyy * r7.xzw + r6.xyz;
  r6.xyz = saturate(r4.www * -r6.xyz + r6.xyz);
  r0.w = v2.z * r9.x;
  r0.w = cmp(r0.w >= cb4[88].x);
  o3.w = r0.w ? 1.000000 : 0;
  r3.x = r4.x * r4.y + -0.333299994;
  r3.x = cmp(r3.x < 0);
  if (r3.x != 0) discard;
  r3.x = saturate(cb4[82].w);
  o2.z = r3.x * cb0[139].y + cb0[139].x;
  o1.w = t0[r3.w].val[4/4];
  r3.x = dot(cb0[r2.w+358].xyz, cb0[r2.w+358].xyz);
  r3.x = rsqrt(r3.x);
  r3.xzw = cb0[r2.w+358].xyz * r3.xxx;
  r2.w = dot(r0.xyz, r3.xzw);
  r2.w = r2.w * 0.5 + 0.5;
  r4.x = 1 + -cb0[327].x;
  r4.x = v2.x * r4.x + cb0[327].x;
  r2.w = r4.x * r2.w;
  r0.w = r0.w ? 1 : 0.699999988;
  r4.x = max(r6.x, r6.y);
  r4.x = max(r4.x, r6.z);
  r4.y = r4.x * r0.w;
  r4.x = max(0.00100000005, r4.x);
  r4.x = r4.y / r4.x;
  r1.x = dot(-r1.xyz, r3.xzw);
  r1.x = saturate(3 * r1.x);
  r3.xzw = r6.xyz * r4.xxx + -r6.xyz;
  o4.xyz = r1.xxx * r3.xzw + r6.xyz;
  r1.x = cmp(r2.w >= cb0[327].x);
  o4.w = r1.x ? 1.000000 : 0;
  o5.y = 0.5 * r1.w;
  r1.x = 0.0799999982 * r3.y;
  r3.xzw = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r13.xyz;
  r1.xyz = r1.www * r3.xzw + r1.xxx;
  r3.xzw = r13.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r4.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xzw;
  r1.xyz = r1.www ? r1.xyz : r3.xzw;
  r2.w = cmp(0 < cb0[215].x);
  r3.x = dot(cb2[6].xz, float2(0.886227548,-1.02332771));
  r6.x = cb2[9].z * 0.495416582 + r3.x;
  r3.x = dot(cb2[7].xz, float2(0.886227548,-1.02332771));
  r6.y = cb2[10].z * 0.495416582 + r3.x;
  r3.x = dot(cb2[8].xz, float2(0.886227548,-1.02332771));
  r6.z = cb2[11].z * 0.495416582 + r3.x;
  r3.xzw = max(float3(0,0,0), r6.xyz);
  r3.xzw = r2.www ? r3.xzw : 0;
  r6.xyw = cb0[157].yzx * r3.zwx;
  r2.w = cmp(r6.x >= r6.y);
  r2.w = r2.w ? 1.000000 : 0;
  r7.xy = r6.yx;
  r7.zw = float2(-1,0.666666687);
  r8.xy = r3.zw * cb0[157].yz + -r7.xy;
  r8.zw = float2(1,-1);
  r7.xyzw = r2.wwww * r8.xyzw + r7.xyzw;
  r2.w = cmp(r6.w >= r7.x);
  r2.w = r2.w ? 1.000000 : 0;
  r6.xyz = r7.xyw;
  r7.xyw = r6.wyx;
  r7.xyzw = r7.xyzw + -r6.xyzw;
  r6.xyzw = r2.wwww * r7.xyzw + r6.xyzw;
  r2.w = min(r6.w, r6.y);
  r2.w = r6.x + -r2.w;
  r3.x = r6.w + -r6.y;
  r3.z = r2.w * 6 + 1.00000001e-010;
  r3.x = r3.x / r3.z;
  r3.x = r6.z + r3.x;
  r3.z = 1.00000001e-010 + r6.x;
  r2.w = r2.w / r3.z;
  r2.w = cb0[361].z * r2.w;
  r3.xzw = float3(1,0.666666687,0.333333343) + abs(r3.xxx);
  r3.xzw = frac(r3.xzw);
  r3.xzw = r3.xzw * float3(6,6,6) + float3(-3,-3,-3);
  r3.xzw = saturate(float3(-1,-1,-1) + abs(r3.xzw));
  r3.xzw = float3(-1,-1,-1) + r3.xzw;
  r3.xzw = r2.www * r3.xzw + float3(1,1,1);
  r3.xzw = r6.xxx * r3.xzw;
  r3.xzw = cb0[361].xxx * r3.xzw;
  r2.w = dot(r3.xzw, float3(0.300000012,0.589999974,0.109999999));
  r4.w = min(cb0[361].y, r2.w);
  r2.w = max(1.00000001e-010, r2.w);
  r2.w = r4.w / r2.w;
  r6.x = t1[0].val[8/4];
  r6.y = t1[0].val[8/4+1];
  r6.x = dot(r6.xy, float2(1,1));
  r7.x = t1[1].val[8/4];
  r7.y = t1[1].val[8/4+1];
  r6.y = dot(r7.xy, float2(1,1));
  r7.x = t1[2].val[8/4];
  r7.y = t1[2].val[8/4+1];
  r6.z = dot(r7.xy, float2(1,1));
  r7.x = t1[3].val[8/4];
  r7.y = t1[4].val[8/4];
  r7.z = t1[5].val[8/4];
  r6.xyz = r7.xyz + r6.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = cb0[362].xyz * r6.xyz;
  r3.xzw = r3.xzw * r2.www + r6.xyz;
  r3.xzw = r3.xzw * r13.xyz;
  r6.xyz = r13.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r13.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r13.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r3.xzw = r6.xyz * r3.xzw;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = max(float3(0,0,0), r5.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r5.x = t0[r5.x].val[0/4];
    r5.z = t0[r5.x].val[0/4+1];
    r5.w = t0[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r6.x = t0[r5.y].val[0/4];
    r6.y = t0[r5.y].val[0/4+1];
    r6.z = t0[r5.y].val[0/4+2];
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
  r1.xyz = cb0[145].yyy * r1.xyz + r3.xzw;
  r1.xyz = r1.xyz + r4.xyz;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.xw = float2(0,0.549019635);
  o2.y = r3.y;
  o3.xyz = r13.xyz;
  o5.z = v2.x;
  o5.w = cb4[87].w;
  o5.x = r0.w;
  o6.y = v3.w;
  return;
}