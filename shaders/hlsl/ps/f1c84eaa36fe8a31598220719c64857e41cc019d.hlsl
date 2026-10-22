// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[67];
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
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

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
  r4.xy = -cb0[129].xy + v5.xy;
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
  r2.w = r2.w / cb3[37].y;
  r2.w = max(cb3[37].z, r2.w);
  r2.w = min(1, r2.w);
  r2.w = -cb3[37].z + r2.w;
  r2.w = saturate(cb3[38].x * r2.w);
  r3.w = cb3[38].y + -cb3[38].z;
  r3.w = r2.w * r3.w + cb3[38].z;
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
  r4.xy = saturate(cb3[41].yw + r4.xx);
  r4.x = 1 + -r4.x;
  r4.x = r4.x * r4.y + -r3.w;
  r3.w = r2.w * r4.x + r3.w;
  r5.xyz = -cb3[6].xyz + cb3[5].xyz;
  r5.xyz = r2.www * r5.xyz + cb3[6].xyz;
  r5.xyz = r5.xyz * r3.www;
  r5.xyz = r5.xyz * r1.www;
  r0.w = cb3[42].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb3[42].z + cb3[42].y;
  r4.xy = cb0[142].zz * float2(0.200000003,0.00999999978) + v2.yy;
  r6.xy = r4.xy + r4.xy;
  r6.z = 2 * v2.x;
  r1.w = t5.SampleBias(s4_s, r6.zx, cb0[143].y).x;
  r4.xy = v2.xy * float2(2,2) + float2(-1,-1);
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
  r4.xy = t6.SampleBias(s5_s, r7.xy, cb0[143].y).xy;
  r4.xy = float2(-0.5,-0.5) + r4.xy;
  r4.xy = cb3[43].xx * r4.xy;
  r4.xy = r4.xy * float2(2,2) + v2.xy;
  r3.w = t5.SampleBias(s4_s, r4.xy, cb0[143].y).x;
  r8.xy = float2(0.5,0.5) * r7.xz;
  r4.xy = t6.SampleBias(s5_s, r8.xy, cb0[143].y).xy;
  r4.xy = float2(-0.5,-0.5) + r4.xy;
  r4.xy = cb3[43].xx * r4.xy;
  r4.xy = r4.xy * float2(2,2) + v2.xy;
  r4.x = t5.SampleBias(s4_s, r4.xy, cb0[143].y).x;
  r3.w = r4.x * r3.w;
  r4.x = r3.w * r1.w;
  r4.x = saturate(r4.x + r4.x);
  r4.y = cmp(0 >= r4.x);
  r4.x = log2(r4.x);
  r5.w = cb3[43].y * r4.x;
  r5.w = exp2(r5.w);
  r5.w = 0.5 * r5.w;
  r5.w = r4.y ? 0 : r5.w;
  r1.w = r1.w * r3.w + -0.5;
  r1.w = saturate(r1.w + r1.w);
  r1.w = 1 + -r1.w;
  r3.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r6.x = cb3[43].y * r1.w;
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
  r5.w = r5.w * cb3[43].w + -cb3[43].w;
  r5.w = saturate(cb3[44].z + r5.w);
  r4.z = t6.SampleBias(s5_s, r4.zw, cb0[143].y).x;
  r4.z = -r4.z * 0.5 + 1;
  r4.z = r4.z * r6.x + cb3[53].x;
  r4.z = -1 + r4.z;
  r4.z = saturate(ceil(r4.z));
  r9.xyz = cb3[9].xyz * r4.zzz;
  r10.xyz = r5.www * cb3[8].xyz + r9.xyz;
  r10.xyz = cb3[45].xxx * r10.xyz;
  r10.xyz = r10.xyz * r0.www;
  r9.xyz = cb3[44].www * r9.xyz;
  r9.xyz = max(r10.xyz, r9.xyz);
  r7.yz = mad((int2)v3.xx, int2(36,36), int2(32,5));
  r10.x = t0[r7.y].val[0/4];
  r10.y = t0[r7.y].val[0/4+1];
  r10.z = t0[r7.y].val[0/4+2];
  r4.w = dot(r3.xyz, r10.xyz);
  r5.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb3[53].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r5.w ? 0 : r4.w;
  r10.x = t0[r7.z].val[0/4];
  r10.y = t0[r7.z].val[0/4+1];
  r10.z = t0[r7.z].val[0/4+2];
  r11.xyz = r10.xyz + -r2.xyz;
  r5.w = dot(r11.xyz, r11.xyz);
  r5.w = sqrt(r5.w);
  r11.xyz = r11.xyz / r5.www;
  r7.yz = cb0[13].xy * r11.yy;
  r7.yz = r11.xx * cb0[12].xy + r7.yz;
  r7.yz = r11.zz * cb0[14].xy + r7.yz;
  r7.yz = r7.yz * cb3[11].xy + -cb3[12].xy;
  r5.w = r7.y + r7.z;
  r5.w = t7.Sample(s0_s, r5.ww).x;
  r4.w = r5.w * r4.w;
  r5.w = cb3[54].x * r4.w;
  r6.w = t6.SampleBias(s5_s, v2.xy, cb0[143].y).x;
  r6.w = -1 + r6.w;
  r7.yz = cb3[55].xy + r6.ww;
  r7.yz = saturate(ceil(r7.yz));
  r8.yw = float2(1,1) + -r7.yz;
  r7.y = r8.y * r7.z;
  r11.xyz = -cb3[54].xxx * r4.www + cb3[14].xyz;
  r11.xyz = r7.yyy * r11.xyz + r5.www;
  r12.xy = cb3[56].yz + r6.ww;
  r12.xy = saturate(ceil(r12.xy));
  r12.xz = float2(1,1) + -r12.xy;
  r5.w = r12.x * r12.y;
  r11.xyz = r5.www * -r11.xyz + r11.xyz;
  r9.xyz = r11.xyz + r9.xyz;
  r6.y = t5.SampleBias(s4_s, r6.zy, cb0[143].y).x;
  r6.zw = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r2.ww;
  r7.w = r6.z;
  r7.xw = t6.SampleBias(s5_s, r7.xw, cb0[143].y).xy;
  r7.xw = float2(-0.5,-0.5) + r7.xw;
  r7.xw = cb3[43].xx * r7.xw;
  r7.xw = r7.xw * float2(2,2) + v2.xy;
  r2.w = t5.SampleBias(s4_s, r7.xw, cb0[143].y).x;
  r8.z = 0.5 * r6.w;
  r6.zw = t6.SampleBias(s5_s, r8.xz, cb0[143].y).xy;
  r6.zw = float2(-0.5,-0.5) + r6.zw;
  r6.zw = cb3[43].xx * r6.zw;
  r6.zw = r6.zw * float2(2,2) + v2.xy;
  r6.z = t5.SampleBias(s4_s, r6.zw, cb0[143].y).x;
  r2.w = r6.z * r2.w;
  r6.z = r6.y * r2.w;
  r6.z = saturate(r6.z + r6.z);
  r6.w = cmp(0 >= r6.z);
  r6.z = log2(r6.z);
  r7.x = cb3[56].w * r6.z;
  r7.x = exp2(r7.x);
  r7.x = 0.5 * r7.x;
  r2.w = r6.y * r2.w + -0.5;
  r2.w = saturate(r2.w + r2.w);
  r2.w = 1 + -r2.w;
  r6.y = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r7.w = cb3[56].w * r2.w;
  r7.w = exp2(r7.w);
  r7.w = 1 + -r7.w;
  r7.xw = r6.wy ? float2(0,1) : r7.xw;
  r8.x = 500 * r7.w;
  r7.w = r7.w * 0.5 + 0.5;
  r8.x = saturate(r8.x);
  r7.w = r7.w + -r7.x;
  r7.x = r8.x * r7.w + r7.x;
  r7.x = r7.x * r6.x;
  r7.x = r7.x * cb3[57].y + -cb3[57].y;
  r7.x = saturate(cb3[58].x + r7.x);
  r8.xyz = cb3[19].xyz * r4.zzz;
  r11.xyz = r7.xxx * cb3[16].xyz + r8.xyz;
  r11.xyz = cb3[45].zzz * r11.xyz;
  r8.xyz = cb3[45].yyy * r8.xyz;
  r8.xyz = max(r11.xyz, r8.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r7.x = cb3[58].y * r4.x;
  r7.x = exp2(r7.x);
  r7.x = 0.5 * r7.x;
  r7.x = r4.y ? 0 : r7.x;
  r7.w = cb3[58].y * r1.w;
  r7.w = exp2(r7.w);
  r7.w = 1 + -r7.w;
  r7.w = r3.w ? 1 : r7.w;
  r9.x = 500 * r7.w;
  r7.w = r7.w * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r7.w = r7.w + -r7.x;
  r7.x = r9.x * r7.w + r7.x;
  r7.x = r7.x * r6.x;
  r7.x = r7.x * cb3[58].w + -cb3[58].w;
  r7.x = saturate(cb3[59].z + r7.x);
  r9.xyz = cb3[22].xyz * r4.zzz;
  r11.xyz = r7.xxx * cb3[21].xyz + r9.xyz;
  r11.xyz = cb3[46].zzz * r11.xyz;
  r11.xyz = r11.xyz * r0.www;
  r9.xyz = cb3[46].yyy * r9.xyz;
  r9.xyz = max(r11.xyz, r9.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r7.x = cb3[59].w * r4.x;
  r7.x = exp2(r7.x);
  r7.x = 0.5 * r7.x;
  r7.x = r4.y ? 0 : r7.x;
  r7.w = cb3[59].w * r1.w;
  r7.w = exp2(r7.w);
  r7.w = 1 + -r7.w;
  r7.w = r3.w ? 1 : r7.w;
  r9.x = 500 * r7.w;
  r7.w = r7.w * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r7.w = r7.w + -r7.x;
  r7.x = r9.x * r7.w + r7.x;
  r7.x = r7.x * r6.x;
  r7.x = r7.x * cb3[60].y + -cb3[60].y;
  r7.x = saturate(cb3[61].x + r7.x);
  r9.xyz = cb3[25].xyz * r4.zzz;
  r11.xyz = r7.xxx * cb3[24].xyz + r9.xyz;
  r11.xyz = cb3[47].zzz * r11.xyz;
  r11.xyz = r11.xyz * r0.www;
  r9.xyz = cb3[47].yyy * r9.xyz;
  r9.xyz = max(r11.xyz, r9.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r4.x = cb3[61].y * r4.x;
  r4.x = exp2(r4.x);
  r4.x = 0.5 * r4.x;
  r4.x = r4.y ? 0 : r4.x;
  r1.w = cb3[61].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r3.w ? 1 : r1.w;
  r7.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r7.x = saturate(r7.x);
  r1.w = r1.w + -r4.x;
  r1.w = r7.x * r1.w + r4.x;
  r1.w = r1.w * r6.x;
  r1.w = r1.w * cb3[61].w + -cb3[61].w;
  r1.w = saturate(cb3[62].z + r1.w);
  r9.xyz = cb3[28].xyz * r4.zzz;
  r11.xyz = r1.www * cb3[27].xyz + r9.xyz;
  r11.xyz = cb3[48].zzz * r11.xyz;
  r11.xyz = r11.xyz * r0.www;
  r9.xyz = cb3[48].yyy * r9.xyz;
  r9.xyz = max(r11.xyz, r9.xyz);
  r8.xyz = r9.xyz + r8.xyz;
  r0.w = cb3[62].w * r6.z;
  r0.w = exp2(r0.w);
  r0.w = 0.5 * r0.w;
  r0.w = r6.w ? 0 : r0.w;
  r1.w = cb3[62].w * r2.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r6.y ? 1 : r1.w;
  r4.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r4.x = saturate(r4.x);
  r1.w = r1.w + -r0.w;
  r0.w = r4.x * r1.w + r0.w;
  r0.w = r0.w * r6.x;
  r0.w = r0.w * cb3[63].y + -cb3[63].y;
  r0.w = saturate(cb3[64].x + r0.w);
  r6.xyz = cb3[33].xyz * r4.zzz;
  r9.xyz = r0.www * cb3[30].xyz + r6.xyz;
  r9.xyz = cb3[49].zzz * r9.xyz;
  r6.xyz = cb3[49].yyy * r6.xyz;
  r6.xyz = max(r9.xyz, r6.xyz);
  r6.xyz = r8.xyz + r6.xyz;
  r8.xyz = r4.zzz * float3(0,0.166666999,0) + -r6.xyz;
  r6.xyz = cb3[50].yyy * r8.xyz + r6.xyz;
  r6.xyz = cb3[50].www * -r6.xyz + r6.xyz;
  r8.xyz = r4.zzz * float3(3,3,3) + -r6.xyz;
  r6.xyz = cb3[51].yyy * r8.xyz + r6.xyz;
  r8.xyz = r4.zzz * float3(7,6.30000019,0) + -r6.xyz;
  r6.xyz = cb3[51].www * r8.xyz + r6.xyz;
  r4.xyz = r4.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r4.xyz = r4.xyz + -r6.xyz;
  r4.xyz = cb3[52].yyy * r4.xyz + r6.xyz;
  r4.xyz = r5.xyz * cb3[40].xxx + r4.xyz;
  r5.xyz = cb3[34].xyz + -r4.xyz;
  r4.xyz = cb3[64].yyy * r5.xyz + r4.xyz;
  r5.xyz = -cb3[36].xyz + cb3[14].xyz;
  r5.xyz = r7.yyy * r5.xyz + cb3[36].xyz;
  r5.xyz = saturate(r5.www * -r5.xyz + r5.xyz);
  r0.w = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r0.w = cb3[66].x * r0.w;
  r1.w = cb3[66].y * r8.w + r7.z;
  r2.w = max(cb3[66].z, r4.w);
  r1.w = r2.w * r1.w;
  r2.w = cb3[66].w * r12.z + r12.y;
  r1.w = r2.w * r1.w;
  r6.w = saturate(r1.w * r0.w);
  r0.w = cmp(cb3[36].y >= cb3[36].z);
  r0.w = r0.w ? 1.000000 : 0;
  r8.xy = cb3[36].zy;
  r8.zw = float2(-1,0.666666687);
  r9.xy = cb3[36].yz;
  r9.zw = float2(0,-0.333333343);
  r9.xyzw = r9.xyzw + -r8.xyzw;
  r8.xyzw = r0.wwww * r9.xyzw + r8.xyzw;
  r0.w = cmp(cb3[36].x >= r8.x);
  r0.w = r0.w ? 1.000000 : 0;
  r9.xyz = r8.xyw;
  r9.w = cb3[36].x;
  r8.xyw = r9.wyx;
  r8.xyzw = r8.xyzw + -r9.xyzw;
  r8.xyzw = r0.wwww * r8.xyzw + r9.xyzw;
  r0.w = min(r8.w, r8.y);
  r0.w = r8.x + -r0.w;
  r1.w = r8.w + -r8.y;
  r2.w = r0.w * 6 + 1.00000001e-010;
  r1.w = r1.w / r2.w;
  r1.w = r8.z + r1.w;
  r2.w = 360 * abs(r1.w);
  r3.w = 0;
  r4.w = 1;
  while (true) {
    r7.x = cmp((int)r4.w >= 21);
    if (r7.x != 0) break;
    r7.x = cmp(icb[r4.w+3].x >= r2.w);
    if (r7.x != 0) {
      r3.w = r4.w;
      break;
    }
    r4.w = (int)r4.w + 1;
    r3.w = 0;
  }
  r7.xzw = r5.xyz * cb0[136].www + cb0[136].xyz;
  r8.yzw = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r9.xyz = float3(0.449999988,0.449999988,0.449999988) * r8.yzw;
  r8.yzw = r8.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xzw;
  r7.xzw = r2.www ? r8.yzw : r7.xzw;
  r8.y = t1[0].val[8/4];
  r8.z = t1[0].val[8/4+1];
  r11.x = dot(r8.yz, float2(1,1));
  r8.y = t1[1].val[8/4];
  r8.z = t1[1].val[8/4+1];
  r11.y = dot(r8.yz, float2(1,1));
  r8.y = t1[2].val[8/4];
  r8.z = t1[2].val[8/4+1];
  r11.z = dot(r8.yz, float2(1,1));
  r12.x = t1[3].val[8/4];
  r12.y = t1[4].val[8/4];
  r12.z = t1[5].val[8/4];
  r8.yzw = r12.xyz + r11.xyz;
  r8.yzw = max(float3(0,0,0), r8.yzw);
  r8.yzw = cb0[362].xyz * r8.yzw;
  r8.yzw = r8.yzw * r5.xyz;
  r11.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r11.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r11.xyz;
  r11.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r11.xyz;
  r11.xyz = float3(1.33200002,1.33200002,1.33200002) + r11.xyz;
  r11.xyz = max(float3(1,1,1), r11.xyz);
  if (cb2[0].z != 0) {
    r4.w = mad((int)v3.x, 36, 23);
    r4.w = t0[r4.w].val[12/4];
    r12.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r12.yzw = r12.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r13.xyzw = cb2[51].xyzw * r2.yyyy;
      r13.xyzw = r2.xxxx * cb2[50].xyzw + r13.xyzw;
      r13.xyzw = r2.zzzz * cb2[52].xyzw + r13.xyzw;
      r13.xyzw = cb2[53].xyzw + r13.xyzw;
      r13.xy = r13.xy / r13.ww;
      r14.xy = cmp(r13.xy >= float2(0,0));
      r14.zw = cmp(float2(1,1) >= r13.xy);
      r14.xy = r14.zw ? r14.xy : 0;
      r9.w = r14.y ? r14.x : 0;
      if (r9.w != 0) {
        r9.w = t3.SampleLevel(s3_s, r13.xy, 0).x;
        r10.w = cmp(r13.z < r9.w);
        r9.w = cmp(0.99000001 < r9.w);
        r9.w = (int)r9.w | (int)r10.w;
        r13.x = r9.w ? 1.000000 : 0;
      } else {
        r13.x = 1;
      }
    } else {
      r13.x = 1;
    }
    if (cb2[9].z != 0) {
      r9.w = cb2[9].z;
      r10.w = 0;
      while (true) {
        r11.w = cmp((uint)r10.w >= asuint(cb2[9].z));
        if (r11.w != 0) break;
        r11.w = dot(cb2[10].xyzw, icb[r10.w+0].xyzw);
        r11.w = cmp(v5.w < r11.w);
        if (r11.w != 0) {
          r9.w = r10.w;
          break;
        }
        r10.w = (int)r10.w + 1;
      }
      r10.w = cmp((uint)r9.w < asuint(cb2[9].z));
      if (r10.w != 0) {
        r10.w = (uint)r9.w << 2;
        r14.xyzw = cb2[r10.w+12].xyzw * r2.yyyy;
        r14.xyzw = r2.xxxx * cb2[r10.w+11].xyzw + r14.xyzw;
        r14.xyzw = r2.zzzz * cb2[r10.w+13].xyzw + r14.xyzw;
        r14.xyzw = cb2[r10.w+14].xyzw + r14.xyzw;
        r15.xyzw = r14.xyxy / r14.wwww;
        r14.xy = cmp(r15.zw >= cb2[r9.w+27].xy);
        r16.xy = cmp(cb2[r9.w+27].zw >= r15.zw);
        r14.xy = r14.xy ? r16.xy : 0;
        r9.w = r14.y ? r14.x : 0;
        if (r9.w != 0) {
          r15.xyzw = r15.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r14.xy = frac(r15.zw);
          r15.xyzw = floor(r15.xyzw);
          r16.xyzw = float4(0.5,1.5,0.5,0.5) + r15.zwzw;
          r16.xyzw = cb2[31].zwzw * r16.xyzw;
          r17.x = t2.SampleLevel(s2_s, r16.xy, 0).x;
          r15.xyzw = float4(1.5,1.5,1.5,0.5) + r15.xyzw;
          r15.xyzw = cb2[31].zwzw * r15.xyzw;
          r17.y = t2.SampleLevel(s2_s, r15.xy, 0).x;
          r17.z = t2.SampleLevel(s2_s, r15.zw, 0).x;
          r17.w = t2.SampleLevel(s2_s, r16.zw, 0).x;
          r9.w = r14.z * 4000 + -1;
          r15.xyzw = saturate(r17.xyzw * float4(4000,4000,4000,4000) + -r9.wwww);
          r14.zw = r15.zy + -r15.wx;
          r14.xz = r14.xx * r14.zw + r15.wx;
          r9.w = r14.z + -r14.x;
          r9.w = r14.y * r9.w + r14.x;
        } else {
          r9.w = 1;
        }
      } else {
        r9.w = 1;
      }
    } else {
      r9.w = 1;
    }
    r12.x = 1;
    r10.w = dot(float4(1,1,1,1), r12.xyzw);
    r13.yzw = r12.yzw;
    r11.w = dot(r13.xyzw, float4(1,1,1,1));
    r11.w = -1 + r11.w;
    r10.w = r10.w * r11.w + 1;
    r11.w = saturate(v5.w * cb2[9].x + cb2[9].y);
    r11.w = r11.w * r11.w;
    r10.w = r10.w + -r9.w;
    r9.w = r11.w * r10.w + r9.w;
    r9.w = cmp(r9.w >= cb0[327].x);
    r10.w = r9.w ? 1.000000 : 0;
    if (r9.w != 0) {
      r9.w = 1.00000001e-010 + r8.x;
      r0.w = r0.w / r9.w;
      r9.w = (int)r3.w + -1;
      r11.w = abs(r1.w) * 360 + -icb[r9.w+3].x;
      r12.x = icb[r3.w+3].x + -icb[r9.w+3].x;
      r11.w = r11.w / r12.x;
      r12.x = (int)r9.w & 0x80000000;
      r12.y = max((int)-r9.w, (int)r9.w);
      r12.z = (int)r12.y & 3;
      r12.w = -(int)r12.z;
      r12.x = r12.x ? r12.w : r12.z;
      r9.w = (int)r9.w ^ 4;
      r12.y = (uint)r12.y >> 2;
      r12.z = -(int)r12.y;
      r9.w = (int)r9.w & 0x80000000;
      r9.w = r9.w ? r12.z : r12.y;
      r12.y = (int)r3.w & 0x80000000;
      r12.z = max((int)-r3.w, (int)r3.w);
      r12.w = (int)r12.z & 3;
      r13.x = -(int)r12.w;
      r12.y = r12.y ? r13.x : r12.w;
      r3.w = (int)r3.w ^ 4;
      r12.z = (uint)r12.z >> 2;
      r12.w = -(int)r12.z;
      r3.w = (int)r3.w & 0x80000000;
      r3.w = r3.w ? r12.w : r12.z;
      r9.w = dot(cb0[r9.w+328].xyzw, icb[r12.x+0].xyzw);
      r3.w = dot(cb0[r3.w+328].xyzw, icb[r12.y+0].xyzw);
      r3.w = r3.w + -r9.w;
      r3.w = r11.w * r3.w + r9.w;
      r1.w = abs(r1.w) * 360 + r3.w;
      r3.w = cmp(r1.w < 0);
      r9.w = cmp(360 < r1.w);
      r12.xy = float2(360,-360) + r1.ww;
      r1.w = r9.w ? r12.y : r1.w;
      r1.w = r3.w ? r12.x : r1.w;
      r3.w = dot(cb3[36].xyz, float3(0.300000012,0.589999974,0.109999999));
      r9.w = -0.200000003 + r3.w;
      r9.w = 10 * r9.w;
      r9.w = max(0, r9.w);
      r9.w = min(6, r9.w);
      r11.w = (int)r9.w;
      r12.x = (int)r11.w + 1;
      r9.w = trunc(r9.w);
      r9.w = r9.w * 0.100000001 + 0.200000003;
      r3.w = -r9.w + r3.w;
      r3.w = saturate(10 * r3.w);
      r9.w = (int)r11.w & 3;
      r11.w = (uint)r11.w >> 2;
      r12.y = (int)r12.x & 3;
      r12.x = (uint)r12.x >> 2;
      r12.z = dot(cb0[r11.w+334].xyzw, icb[r9.w+0].xyzw);
      r12.w = dot(cb0[r12.x+334].xyzw, icb[r12.y+0].xyzw);
      r9.w = dot(cb0[r11.w+336].xyzw, icb[r9.w+0].xyzw);
      r11.w = dot(cb0[r12.x+336].xyzw, icb[r12.y+0].xyzw);
      r12.x = r12.w + -r12.z;
      r12.x = r3.w * r12.x + r12.z;
      r11.w = r11.w + -r9.w;
      r3.w = r3.w * r11.w + r9.w;
      r9.w = cmp(0 < r0.w);
      r11.w = saturate(r12.x + r0.w);
      r0.w = r9.w ? r11.w : r0.w;
      r3.w = saturate(r8.x + r3.w);
      r12.xyz = r1.www * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
      r12.xyz = frac(r12.xyz);
      r12.xyz = r12.xyz * float3(6,6,6) + float3(-3,-3,-3);
      r12.xyz = saturate(float3(-1,-1,-1) + abs(r12.xyz));
      r12.xyz = float3(-1,-1,-1) + r12.xyz;
      r12.xyz = r0.www * r12.xyz + float3(1,1,1);
      r13.xyz = r12.xyz * r3.www;
      r12.xyz = -r3.www * r12.xyz + cb3[14].xyz;
      r12.xyz = r7.yyy * r12.xyz + r13.xyz;
      r12.xyz = saturate(r5.www * -r12.xyz + r12.xyz);
      r0.w = cb0[139].y * 0.5 + cb0[139].x;
      r1.w = firstbithigh((int)r4.w);
      r3.w = cmp((int)r1.w == -1);
      r1.w = (int)-r1.w + 31;
      r1.w = r3.w ? -1 : r1.w;
      r1.w = r4.w ? r1.w : 0;
      r3.w = dot(cb0[r1.w+358].xyz, cb0[r1.w+358].xyz);
      r3.w = rsqrt(r3.w);
      r13.xyz = cb0[r1.w+358].xyz * r3.www;
      r0.x = dot(r0.xyz, r13.xyz);
      r0.x = r0.x * 0.5 + 0.5;
      r0.x = cb0[327].x * r0.x;
      r0.y = max(r12.x, r12.y);
      r0.y = max(r0.y, r12.z);
      r0.z = 0.100000001 * r0.y;
      r0.y = max(0.00100000005, r0.y);
      r0.y = r0.z / r0.y;
      r0.z = dot(-r3.xyz, r13.xyz);
      r0.z = saturate(3 * r0.z);
      r3.xyz = r12.xyz * r0.yyy + -r12.xyz;
      r3.xyz = r0.zzz * r3.xyz + r12.xyz;
      r0.x = cmp(r0.x >= cb0[327].x);
      r0.y = max(cb0[226].y, r0.w);
      r0.z = r0.x ? 1.000000 : 0;
      r0.w = max(r5.x, r5.y);
      r0.w = max(r0.w, r5.z);
      r0.y = r0.w + r0.y;
      r0.y = max(0, r0.y);
      r0.w = max(0.00100000005, r0.w);
      r0.y = r0.y / r0.w;
      r12.xyz = r5.xyz * r0.yyy;
      r0.yzw = r0.zzz * r5.xyz;
      r0.yzw = float3(0.200000003,0.200000003,0.200000003) * r0.yzw;
      r5.xyz = float3(0.25,0.25,0.25) * r12.xyz;
      r3.xyz = cb2[8].xxx * r3.xyz;
      r3.xyz = float3(0.200000003,0.200000003,0.200000003) * r3.xyz;
      r12.xyz = cb2[6].xyz * r10.www;
      r5.xyz = r12.yzx * r5.yzx;
      r3.xyz = r12.xyz * r3.xyz;
      r3.xyz = r0.xxx ? float3(0,0,0) : r3.xyz;
      r0.xyz = r0.yzw * r12.xyz + r3.xyz;
      r0.w = r5.z;
    } else {
      r5.xy = float2(0,0);
      r0.xyzw = float4(0,0,0,0);
    }
    r1.w = asuint(cb2[8].z) >> 8;
    r1.w = (int)r4.w & (int)r1.w;
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
    r3.xyzw = t4.SampleLevel(s1_s, r5.xyz, 0).xyzw;
    r5.x = v4.w * r3.w;
    r3.xyz = v4.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v4.xyz;
    r5.x = v4.w;
  }
  r5.yzw = r2.www ? float3(0,0,0) : r9.xyz;
  r5.yzw = r7.xzw + r5.yzw;
  r5.yzw = r5.yzw + -r0.xyz;
  r0.xyz = cb0[145].yyy * r5.yzw + r0.xyz;
  r6.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xyz = -r10.xyz + r2.xyz;
    r0.w = mad((int)v3.x, 36, 19);
    r5.y = t0[r0.w].val[0/4];
    r5.z = t0[r0.w].val[0/4+1];
    r5.w = t0[r0.w].val[0/4+2];
    r5.yzw = float3(1,1,1) + r5.yzw;
    r4.xyz = cmp(r5.yzw < abs(r4.xyz));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r6.xyzw = r0.wwww ? r2.yzwx : r6.xyzw;
    o0.w = r6.w;
  } else {
    o0.w = r6.w;
  }
  r0.xyz = r8.yzw * r11.xyz + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
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
  r1.x = dot(r1.xyz, cb0[r1.w+358].xyz);
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