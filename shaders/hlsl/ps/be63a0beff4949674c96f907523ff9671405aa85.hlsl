// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[70];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r1.xyz * r0.www;
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
  r0.w = dot(r0.xyz, r2.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r1.w = 10 * r0.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.99000001 + 0.00999999978;
  r2.xy = -cb0[129].xy + v5.xy;
  r2.zw = cb0[130].zw * r2.xy;
  r3.xyz = cb3[2].yyy * cb0[5].xyw;
  r3.xyz = cb3[2].xxx * cb0[4].xyw + r3.xyz;
  r3.xyz = cb3[2].zzz * cb0[6].xyw + r3.xyz;
  r3.xyz = cb0[7].xyw + r3.xyz;
  r3.xy = r3.xy / r3.zz;
  r3.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r3.xy = r2.xy * cb0[130].zw + -r3.xy;
  r4.xyz = -cb3[2].xyz + cb0[67].xyz;
  r3.z = dot(r4.xyz, r4.xyz);
  r3.z = sqrt(r3.z);
  r3.z = r3.z / cb3[40].y;
  r3.z = max(cb3[40].z, r3.z);
  r3.z = min(1, r3.z);
  r3.z = -cb3[40].z + r3.z;
  r3.z = saturate(cb3[41].x * r3.z);
  r3.w = cb3[41].y + -cb3[41].z;
  r3.w = r3.z * r3.w + cb3[41].z;
  r4.x = 0.00100000005 * r3.w;
  r3.x = r3.w * 0.000500000024 + r3.x;
  r3.w = 1 / r4.x;
  r5.x = r3.x * r3.w;
  r3.x = cb0[130].x / cb0[130].y;
  r3.x = r4.x * r3.x;
  r3.y = r3.x * 0.5 + r3.y;
  r3.x = 1 / r3.x;
  r5.y = r3.y * r3.x;
  r3.xy = float2(-0.5,-0.5) + r5.xy;
  r3.x = dot(r3.xy, r3.xy);
  r3.x = sqrt(r3.x);
  r3.x = -r3.x * 2 + 1;
  r3.y = 2.33299994 * r3.x;
  r3.y = r3.y * r3.y;
  r3.y = 1.44269514 * r3.y;
  r3.y = exp2(r3.y);
  r3.y = 1 / r3.y;
  r3.w = cmp(9.99999975e-006 < abs(r3.x));
  r3.x = cmp(r3.x >= 0);
  r3.y = 1 + -r3.y;
  r3.x = r3.x ? r3.y : 0;
  r3.x = r3.x ? r3.w : 0;
  r3.y = r3.x * 5 + -5;
  r3.yw = saturate(cb3[44].yw + r3.yy);
  r3.y = 1 + -r3.y;
  r3.y = r3.y * r3.w + -r3.x;
  r3.x = r3.z * r3.y + r3.x;
  r4.xyz = -cb3[6].xyz + cb3[5].xyz;
  r3.yzw = r3.zzz * r4.xyz + cb3[6].xyz;
  r3.xyz = r3.xxx * r3.yzw;
  r3.xyz = r3.xyz * r1.www;
  r0.w = cb3[45].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb3[45].z + cb3[45].y;
  r4.xy = cb0[142].zz * float2(0.200000003,0.00999999978) + v3.yy;
  r4.xy = r4.xy + r4.xy;
  r4.z = 2 * v3.x;
  r1.w = t1.SampleBias(s0_s, r4.zx, cb0[143].y).x;
  r4.xw = v3.xy * float2(2,2) + float2(-1,-1);
  r3.w = min(abs(r4.w), abs(r4.x));
  r5.x = max(abs(r4.w), abs(r4.x));
  r5.x = 1 / r5.x;
  r3.w = r5.x * r3.w;
  r5.x = r3.w * r3.w;
  r5.y = r5.x * 0.0208350997 + -0.0851330012;
  r5.y = r5.x * r5.y + 0.180141002;
  r5.y = r5.x * r5.y + -0.330299497;
  r5.x = r5.x * r5.y + 0.999866009;
  r5.y = r5.x * r3.w;
  r5.z = cmp(abs(r4.x) < abs(r4.w));
  r5.y = r5.y * -2 + 1.57079637;
  r5.y = r5.z ? r5.y : 0;
  r3.w = r3.w * r5.x + r5.y;
  r5.x = cmp(r4.x < -r4.x);
  r5.x = r5.x ? -3.141593 : 0;
  r3.w = r5.x + r3.w;
  r5.x = min(r4.w, r4.x);
  r5.y = max(r4.w, r4.x);
  r5.x = cmp(r5.x < -r5.x);
  r5.y = cmp(r5.y >= -r5.y);
  r5.x = r5.y ? r5.x : 0;
  r3.w = r5.x ? -r3.w : r3.w;
  r3.w = 0.159154952 * r3.w;
  r5.x = frac(r3.w);
  r4.xw = r4.xw * r4.xw;
  r3.w = r4.x + r4.w;
  r3.w = sqrt(r3.w);
  r5.yz = cb0[142].zz * float2(-0.400000006,-0.300000012) + r3.ww;
  r4.xw = t2.SampleBias(s1_s, r5.xy, cb0[143].y).xy;
  r4.xw = float2(-0.5,-0.5) + r4.xw;
  r4.xw = cb3[46].xx * r4.xw;
  r4.xw = r4.xw * float2(2,2) + v3.xy;
  r4.x = t1.SampleBias(s0_s, r4.xw, cb0[143].y).x;
  r6.xy = float2(0.5,0.5) * r5.xz;
  r5.yz = t2.SampleBias(s1_s, r6.xy, cb0[143].y).xy;
  r5.yz = float2(-0.5,-0.5) + r5.yz;
  r5.yz = cb3[46].xx * r5.yz;
  r5.yz = r5.yz * float2(2,2) + v3.xy;
  r4.w = t1.SampleBias(s0_s, r5.yz, cb0[143].y).x;
  r4.x = r4.x * r4.w;
  r4.w = r4.x * r1.w;
  r4.w = saturate(r4.w + r4.w);
  r5.y = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r5.z = cb3[46].y * r4.w;
  r5.z = exp2(r5.z);
  r5.z = 0.5 * r5.z;
  r5.z = r5.y ? 0 : r5.z;
  r1.w = r1.w * r4.x + -0.5;
  r1.w = saturate(r1.w + r1.w);
  r1.w = 1 + -r1.w;
  r4.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r6.y = cb3[46].y * r1.w;
  r6.y = exp2(r6.y);
  r6.y = 1 + -r6.y;
  r6.y = r4.x ? 1 : r6.y;
  r7.x = 500 * r6.y;
  r6.y = r6.y * 0.5 + 0.5;
  r7.x = saturate(r7.x);
  r6.y = r6.y + -r5.z;
  r5.z = r7.x * r6.y + r5.z;
  r0.x = dot(-cb0[18].xyz, r0.xyz);
  r0.x = 1 + -r0.x;
  r0.y = r5.z * r0.x;
  r0.y = r0.y * cb3[46].w + -cb3[46].w;
  r0.y = saturate(cb3[47].z + r0.y);
  r0.z = t2.SampleBias(s1_s, r2.zw, cb0[143].y).x;
  r0.z = -r0.z * 0.5 + 1;
  r0.z = r0.z * r0.x + cb3[56].x;
  r0.z = -1 + r0.z;
  r0.z = saturate(ceil(r0.z));
  r7.xyz = cb3[9].xyz * r0.zzz;
  r8.xyz = r0.yyy * cb3[8].xyz + r7.xyz;
  r8.xyz = cb3[48].xxx * r8.xyz;
  r8.xyz = r8.xyz * r0.www;
  r7.xyz = cb3[47].www * r7.xyz;
  r7.xyz = max(r8.xyz, r7.xyz);
  r8.xyz = t3.SampleBias(s2_s, v3.xy, cb0[143].y).xyz;
  r8.xyz = cb3[11].xyz * r8.xyz;
  r9.xyz = cb2[6].xyz * r8.xyz;
  r0.y = t2.SampleBias(s1_s, v3.xy, cb0[143].y).x;
  r0.y = -1 + r0.y;
  r2.zw = cb3[57].xy + r0.yy;
  r2.zw = saturate(ceil(r2.zw));
  r6.yw = float2(1,1) + -r2.zw;
  r2.z = r6.y * r2.w;
  r8.xyz = -r8.xyz * cb2[6].xyz + cb3[13].xyz;
  r8.xyz = r2.zzz * r8.xyz + r9.xyz;
  r9.xy = cb3[58].yz + r0.yy;
  r9.xy = saturate(ceil(r9.xy));
  r9.xz = float2(1,1) + -r9.xy;
  r0.y = r9.x * r9.y;
  r8.xyz = r0.yyy * -r8.xyz + r8.xyz;
  r7.xyz = r8.xyz + r7.xyz;
  r0.y = t1.SampleBias(s0_s, r4.zy, cb0[143].y).x;
  r4.yz = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r3.ww;
  r5.w = r4.y;
  r5.xz = t2.SampleBias(s1_s, r5.xw, cb0[143].y).xy;
  r5.xz = float2(-0.5,-0.5) + r5.xz;
  r5.xz = cb3[46].xx * r5.xz;
  r5.xz = r5.xz * float2(2,2) + v3.xy;
  r2.z = t1.SampleBias(s0_s, r5.xz, cb0[143].y).x;
  r6.z = 0.5 * r4.z;
  r4.yz = t2.SampleBias(s1_s, r6.xz, cb0[143].y).xy;
  r4.yz = float2(-0.5,-0.5) + r4.yz;
  r4.yz = cb3[46].xx * r4.yz;
  r4.yz = r4.yz * float2(2,2) + v3.xy;
  r3.w = t1.SampleBias(s0_s, r4.yz, cb0[143].y).x;
  r2.z = r3.w * r2.z;
  r3.w = r2.z * r0.y;
  r3.w = saturate(r3.w + r3.w);
  r4.y = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r4.z = cb3[58].w * r3.w;
  r4.z = exp2(r4.z);
  r4.z = 0.5 * r4.z;
  r4.z = r4.y ? 0 : r4.z;
  r0.y = r0.y * r2.z + -0.5;
  r0.y = saturate(r0.y + r0.y);
  r0.y = 1 + -r0.y;
  r2.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r5.x = cb3[58].w * r0.y;
  r5.x = exp2(r5.x);
  r5.x = 1 + -r5.x;
  r5.x = r2.z ? 1 : r5.x;
  r6.x = 500 * r5.x;
  r5.x = r5.x * 0.5 + 0.5;
  r6.x = saturate(r6.x);
  r5.x = r5.x + -r4.z;
  r4.z = r6.x * r5.x + r4.z;
  r4.z = r4.z * r0.x;
  r4.z = r4.z * cb3[59].y + -cb3[59].y;
  r4.z = saturate(cb3[60].x + r4.z);
  r5.xzw = cb3[18].xyz * r0.zzz;
  r6.xyz = r4.zzz * cb3[15].xyz + r5.xzw;
  r6.xyz = cb3[48].zzz * r6.xyz;
  r5.xzw = cb3[48].yyy * r5.xzw;
  r5.xzw = max(r6.xyz, r5.xzw);
  r5.xzw = r7.xyz + r5.xzw;
  r4.z = cb3[60].y * r4.w;
  r4.z = exp2(r4.z);
  r4.z = 0.5 * r4.z;
  r4.z = r5.y ? 0 : r4.z;
  r6.x = cb3[60].y * r1.w;
  r6.x = exp2(r6.x);
  r6.x = 1 + -r6.x;
  r6.x = r4.x ? 1 : r6.x;
  r7.x = 500 * r6.x;
  r6.x = r6.x * 0.5 + 0.5;
  r7.x = saturate(r7.x);
  r6.x = r6.x + -r4.z;
  r4.z = r7.x * r6.x + r4.z;
  r4.z = r4.z * r0.x;
  r4.z = r4.z * cb3[60].w + -cb3[60].w;
  r4.z = saturate(cb3[61].z + r4.z);
  r6.xyz = cb3[21].xyz * r0.zzz;
  r7.xyz = r4.zzz * cb3[20].xyz + r6.xyz;
  r7.xyz = cb3[49].zzz * r7.xyz;
  r7.xyz = r7.xyz * r0.www;
  r6.xyz = cb3[49].yyy * r6.xyz;
  r6.xyz = max(r7.xyz, r6.xyz);
  r5.xzw = r6.xyz + r5.xzw;
  r4.z = cb3[61].w * r4.w;
  r4.z = exp2(r4.z);
  r4.z = 0.5 * r4.z;
  r4.z = r5.y ? 0 : r4.z;
  r6.x = cb3[61].w * r1.w;
  r6.x = exp2(r6.x);
  r6.x = 1 + -r6.x;
  r6.x = r4.x ? 1 : r6.x;
  r7.x = 500 * r6.x;
  r6.x = r6.x * 0.5 + 0.5;
  r7.x = saturate(r7.x);
  r6.x = r6.x + -r4.z;
  r4.z = r7.x * r6.x + r4.z;
  r4.z = r4.z * r0.x;
  r4.z = r4.z * cb3[62].y + -cb3[62].y;
  r4.z = saturate(cb3[63].x + r4.z);
  r6.xyz = cb3[24].xyz * r0.zzz;
  r7.xyz = r4.zzz * cb3[23].xyz + r6.xyz;
  r7.xyz = cb3[50].zzz * r7.xyz;
  r7.xyz = r7.xyz * r0.www;
  r6.xyz = cb3[50].yyy * r6.xyz;
  r6.xyz = max(r7.xyz, r6.xyz);
  r5.xzw = r6.xyz + r5.xzw;
  r4.z = cb3[63].y * r4.w;
  r4.z = exp2(r4.z);
  r4.z = 0.5 * r4.z;
  r4.z = r5.y ? 0 : r4.z;
  r1.w = cb3[63].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r4.x ? 1 : r1.w;
  r4.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r4.x = saturate(r4.x);
  r1.w = r1.w + -r4.z;
  r1.w = r4.x * r1.w + r4.z;
  r1.w = r1.w * r0.x;
  r1.w = r1.w * cb3[63].w + -cb3[63].w;
  r1.w = saturate(cb3[64].z + r1.w);
  r4.xzw = cb3[27].xyz * r0.zzz;
  r6.xyz = r1.www * cb3[26].xyz + r4.xzw;
  r6.xyz = cb3[51].zzz * r6.xyz;
  r6.xyz = r6.xyz * r0.www;
  r4.xzw = cb3[51].yyy * r4.xzw;
  r4.xzw = max(r6.xyz, r4.xzw);
  r4.xzw = r5.xzw + r4.xzw;
  r0.w = cb3[64].w * r3.w;
  r0.w = exp2(r0.w);
  r0.w = 0.5 * r0.w;
  r0.w = r4.y ? 0 : r0.w;
  r0.y = cb3[64].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = 1 + -r0.y;
  r0.y = r2.z ? 1 : r0.y;
  r5.x = 500 * r0.y;
  r0.y = r0.y * 0.5 + 0.5;
  r5.x = saturate(r5.x);
  r0.y = r0.y + -r0.w;
  r0.y = r5.x * r0.y + r0.w;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * cb3[65].y + -cb3[65].y;
  r0.x = saturate(cb3[66].x + r0.x);
  r5.xyz = cb3[32].xyz * r0.zzz;
  r0.xyw = r0.xxx * cb3[29].xyz + r5.xyz;
  r0.xyw = cb3[52].zzz * r0.xyw;
  r5.xyz = cb3[52].yyy * r5.xyz;
  r0.xyw = max(r5.xyz, r0.xyw);
  r0.xyw = r4.xzw + r0.xyw;
  r4.xyz = r0.zzz * float3(0,0.166666999,0) + -r0.xyw;
  r0.xyw = cb3[53].yyy * r4.xyz + r0.xyw;
  r0.xyw = cb3[53].www * -r0.xyw + r0.xyw;
  r4.xyz = r0.zzz * float3(3,3,3) + -r0.xyw;
  r0.xyw = cb3[54].yyy * r4.xyz + r0.xyw;
  r4.xyz = r0.zzz * float3(7,6.30000019,0) + -r0.xyw;
  r0.xyw = cb3[54].www * r4.xyz + r0.xyw;
  r4.xyz = r0.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r4.xyz = r4.xyz + -r0.xyw;
  r0.xyz = cb3[55].yyy * r4.xyz + r0.xyw;
  r0.xyz = r3.xyz * cb3[43].xxx + r0.xyz;
  r3.xyz = cb3[33].xyz + -r0.xyz;
  r0.xyz = cb3[66].yyy * r3.xyz + r0.xyz;
  r0.w = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r3.xy = cb0[152].xx + r2.xy;
  r3.xy = (uint2)r3.xy;
  r1.w = (uint)r3.y << 1;
  r1.w = (int)r1.w + (int)r3.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r2.xy = float2(0.015625,0.015625) * r2.xy;
  r2.x = t4.SampleBias(s3_s, r2.xy, cb0[143].y).x;
  r1.w = r2.x + r1.w;
  r2.x = 0.166666672 * r1.w;
  r2.x = cb3[68].x * r0.w + r2.x;
  r2.x = -0.5 + r2.x;
  r2.y = cb3[68].y * r6.w + r2.w;
  r2.z = cb3[68].z + v2.w;
  r2.z = -cb3[68].w + r2.z;
  r0.w = r1.w * 0.166666672 + r0.w;
  r0.w = -0.5 + r0.w;
  r0.w = r2.z * r0.w;
  r0.w = r2.y * r0.w;
  r1.w = cb3[69].x * r9.z + r9.y;
  r0.w = r1.w * r0.w;
  r0.w = saturate(ceil(r0.w));
  r0.w = r2.x * r0.w + -0.333299994;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r2.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r2.x = t0[r2.x].val[0/4];
    r2.z = t0[r2.x].val[0/4+1];
    r2.w = t0[r2.x].val[0/4+2];
    r2.xzw = -r2.xzw + r1.xyz;
    r3.x = t0[r2.y].val[0/4];
    r3.y = t0[r2.y].val[0/4+1];
    r3.z = t0[r2.y].val[0/4+2];
    r3.xyz = float3(1,1,1) + r3.xyz;
    r2.xyz = cmp(r3.xyz < abs(r2.xzw));
    r0.w = (int)r2.y | (int)r2.x;
    r0.w = (int)r2.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r0.www ? r1.xyz : r0.xyz;
  }
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0.0549019612);
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}