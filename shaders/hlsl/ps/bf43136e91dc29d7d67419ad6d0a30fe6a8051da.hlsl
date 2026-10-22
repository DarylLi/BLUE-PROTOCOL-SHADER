// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

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
  float4 cb4[95];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = -cb0[129].xy + v5.xy;
  r1.zw = cb0[130].zw * r1.xy;
  r2.xy = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v5.ww * r2.xy;
  r2.z = v5.w;
  r3.xyzw = cb0[45].xyzw * v5.yyyy;
  r3.xyzw = v5.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v5.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r3.xyz * r0.www;
  r5.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r0.xyz, r3.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r2.w = 10 * r0.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w * 0.99000001 + 0.00999999978;
  r5.xyz = cb4[2].yyy * cb0[5].xyw;
  r5.xyz = cb4[2].xxx * cb0[4].xyw + r5.xyz;
  r5.xyz = cb4[2].zzz * cb0[6].xyw + r5.xyz;
  r5.xyz = cb0[7].xyw + r5.xyz;
  r5.xy = r5.xy / r5.zz;
  r5.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r5.xy = r1.xy * cb0[130].zw + -r5.xy;
  r6.xyz = -cb4[2].xyz + cb0[67].xyz;
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r3.w);
  r3.w = r3.w / cb4[59].y;
  r3.w = max(cb4[59].z, r3.w);
  r3.w = min(1, r3.w);
  r3.w = -cb4[59].z + r3.w;
  r3.w = saturate(cb4[60].x * r3.w);
  r4.w = cb4[60].y + -cb4[60].z;
  r4.w = r3.w * r4.w + cb4[60].z;
  r5.z = 0.00100000005 * r4.w;
  r4.w = r4.w * 0.000500000024 + r5.x;
  r5.x = 1 / r5.z;
  r6.x = r5.x * r4.w;
  r4.w = cb0[130].x / cb0[130].y;
  r5.x = r5.z * r4.w;
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
  r5.yz = saturate(cb4[63].yw + r5.yy);
  r5.y = 1 + -r5.y;
  r5.y = r5.y * r5.z + -r5.x;
  r5.x = r3.w * r5.y + r5.x;
  r5.yzw = -cb4[6].xyz + cb4[5].xyz;
  r5.yzw = r3.www * r5.yzw + cb4[6].xyz;
  r5.xyz = r5.xxx * r5.yzw;
  r5.xyz = r5.xyz * r2.www;
  r2.w = cb4[64].x * r0.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w * cb4[64].z + cb4[64].y;
  r6.xy = cb0[142].zz * float2(0.200000003,0.00999999978) + v3.yy;
  r6.xy = r6.xy + r6.xy;
  r6.z = 2 * v3.x;
  r3.w = t3.SampleBias(s2_s, r6.zx, cb0[143].y).x;
  r6.xw = v3.xy * float2(2,2) + float2(-1,-1);
  r5.w = min(abs(r6.w), abs(r6.x));
  r7.x = max(abs(r6.w), abs(r6.x));
  r7.x = 1 / r7.x;
  r5.w = r7.x * r5.w;
  r7.x = r5.w * r5.w;
  r7.y = r7.x * 0.0208350997 + -0.0851330012;
  r7.y = r7.x * r7.y + 0.180141002;
  r7.y = r7.x * r7.y + -0.330299497;
  r7.x = r7.x * r7.y + 0.999866009;
  r7.y = r7.x * r5.w;
  r7.z = cmp(abs(r6.x) < abs(r6.w));
  r7.y = r7.y * -2 + 1.57079637;
  r7.y = r7.z ? r7.y : 0;
  r5.w = r5.w * r7.x + r7.y;
  r7.x = cmp(r6.x < -r6.x);
  r7.x = r7.x ? -3.141593 : 0;
  r5.w = r7.x + r5.w;
  r7.x = min(r6.w, r6.x);
  r7.y = max(r6.w, r6.x);
  r7.x = cmp(r7.x < -r7.x);
  r7.y = cmp(r7.y >= -r7.y);
  r7.x = r7.y ? r7.x : 0;
  r5.w = r7.x ? -r5.w : r5.w;
  r5.w = 0.159154952 * r5.w;
  r7.x = frac(r5.w);
  r6.xw = r6.xw * r6.xw;
  r5.w = r6.x + r6.w;
  r5.w = sqrt(r5.w);
  r7.yz = cb0[142].zz * float2(-0.400000006,-0.300000012) + r5.ww;
  r6.xw = t4.SampleBias(s3_s, r7.xy, cb0[143].y).xy;
  r6.xw = float2(-0.5,-0.5) + r6.xw;
  r6.xw = cb4[65].xx * r6.xw;
  r6.xw = r6.xw * float2(2,2) + v3.xy;
  r6.x = t3.SampleBias(s2_s, r6.xw, cb0[143].y).x;
  r8.xy = float2(0.5,0.5) * r7.xz;
  r7.yz = t4.SampleBias(s3_s, r8.xy, cb0[143].y).xy;
  r7.yz = float2(-0.5,-0.5) + r7.yz;
  r7.yz = cb4[65].xx * r7.yz;
  r7.yz = r7.yz * float2(2,2) + v3.xy;
  r6.w = t3.SampleBias(s2_s, r7.yz, cb0[143].y).x;
  r6.x = r6.x * r6.w;
  r6.w = r6.x * r3.w;
  r6.w = saturate(r6.w + r6.w);
  r7.y = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r7.z = cb4[65].y * r6.w;
  r7.z = exp2(r7.z);
  r7.z = 0.5 * r7.z;
  r7.z = r7.y ? 0 : r7.z;
  r3.w = r3.w * r6.x + -0.5;
  r3.w = saturate(r3.w + r3.w);
  r3.w = 1 + -r3.w;
  r6.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r8.y = cb4[65].y * r3.w;
  r8.y = exp2(r8.y);
  r8.y = 1 + -r8.y;
  r8.y = r6.x ? 1 : r8.y;
  r9.x = 500 * r8.y;
  r8.y = r8.y * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r8.y = r8.y + -r7.z;
  r7.z = r9.x * r8.y + r7.z;
  r8.y = dot(-cb0[18].xyz, r0.xyz);
  r8.y = 1 + -r8.y;
  r7.z = r8.y * r7.z;
  r7.z = r7.z * cb4[65].w + -cb4[65].w;
  r7.z = saturate(cb4[66].z + r7.z);
  r1.z = t4.SampleBias(s3_s, r1.zw, cb0[143].y).x;
  r1.z = -r1.z * 0.5 + 1;
  r1.z = r1.z * r8.y + cb4[75].x;
  r1.z = -1 + r1.z;
  r1.z = saturate(ceil(r1.z));
  r9.xyz = cb4[9].xyz * r1.zzz;
  r10.xyz = r7.zzz * cb4[8].xyz + r9.xyz;
  r10.xyz = cb4[67].xxx * r10.xyz;
  r10.xyz = r10.xyz * r2.www;
  r9.xyz = cb4[66].www * r9.xyz;
  r9.xyz = max(r10.xyz, r9.xyz);
  r10.xy = t5.SampleBias(s4_s, v3.xy, cb0[143].y).zw;
  r10.xzw = cb4[11].xyz * r10.xxx;
  r11.xyz = cb4[13].xyz * r10.yyy;
  r11.xyz = cb4[75].zzz * r11.xyz;
  r10.xyz = r10.xzw * cb4[75].yyy + r11.xyz;
  r1.w = t4.SampleBias(s3_s, v3.xy, cb0[143].y).x;
  r1.w = -1 + r1.w;
  r11.xy = cb4[76].zw + r1.ww;
  r11.xy = saturate(ceil(r11.xy));
  r11.xz = float2(1,1) + -r11.xy;
  r7.z = r11.x * r11.y;
  r12.xyz = cb4[15].xyz + -r10.xyz;
  r10.xyz = r7.zzz * r12.xyz + r10.xyz;
  r8.w = cb4[77].w + r1.w;
  r8.w = saturate(ceil(r8.w));
  r8.w = 1 + -r8.w;
  r1.w = cb4[78].x + r1.w;
  r1.w = saturate(ceil(r1.w));
  r8.w = r8.w * r1.w;
  r10.xyz = r8.www * -r10.xyz + r10.xyz;
  r9.xyz = r10.xyz + r9.xyz;
  r6.y = t3.SampleBias(s2_s, r6.zy, cb0[143].y).x;
  r10.xy = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r5.ww;
  r7.w = r10.x;
  r7.xw = t4.SampleBias(s3_s, r7.xw, cb0[143].y).xy;
  r7.xw = float2(-0.5,-0.5) + r7.xw;
  r7.xw = cb4[65].xx * r7.xw;
  r7.xw = r7.xw * float2(2,2) + v3.xy;
  r5.w = t3.SampleBias(s2_s, r7.xw, cb0[143].y).x;
  r8.z = 0.5 * r10.y;
  r7.xw = t4.SampleBias(s3_s, r8.xz, cb0[143].y).xy;
  r7.xw = float2(-0.5,-0.5) + r7.xw;
  r7.xw = cb4[65].xx * r7.xw;
  r7.xw = r7.xw * float2(2,2) + v3.xy;
  r6.z = t3.SampleBias(s2_s, r7.xw, cb0[143].y).x;
  r5.w = r6.z * r5.w;
  r6.z = r6.y * r5.w;
  r6.z = saturate(r6.z + r6.z);
  r7.x = cmp(0 >= r6.z);
  r6.z = log2(r6.z);
  r7.w = cb4[78].y * r6.z;
  r7.w = exp2(r7.w);
  r7.w = 0.5 * r7.w;
  r7.w = r7.x ? 0 : r7.w;
  r5.w = r6.y * r5.w + -0.5;
  r5.w = saturate(r5.w + r5.w);
  r5.w = 1 + -r5.w;
  r6.y = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r8.x = cb4[78].y * r5.w;
  r8.x = exp2(r8.x);
  r8.x = 1 + -r8.x;
  r8.x = r6.y ? 1 : r8.x;
  r10.x = 500 * r8.x;
  r8.x = r8.x * 0.5 + 0.5;
  r10.x = saturate(r10.x);
  r8.x = r8.x + -r7.w;
  r7.w = r10.x * r8.x + r7.w;
  r7.w = r7.w * r8.y;
  r7.w = r7.w * cb4[78].w + -cb4[78].w;
  r7.w = saturate(cb4[79].z + r7.w);
  r10.xyz = cb4[20].xyz * r1.zzz;
  r12.xyz = r7.www * cb4[17].xyz + r10.xyz;
  r12.xyz = cb4[67].zzz * r12.xyz;
  r10.xyz = cb4[67].yyy * r10.xyz;
  r10.xyz = max(r12.xyz, r10.xyz);
  r9.xyz = r10.xyz + r9.xyz;
  r7.w = cb4[79].w * r6.w;
  r7.w = exp2(r7.w);
  r7.w = 0.5 * r7.w;
  r7.w = r7.y ? 0 : r7.w;
  r8.x = cb4[79].w * r3.w;
  r8.x = exp2(r8.x);
  r8.x = 1 + -r8.x;
  r8.x = r6.x ? 1 : r8.x;
  r10.x = 500 * r8.x;
  r8.x = r8.x * 0.5 + 0.5;
  r10.x = saturate(r10.x);
  r8.x = r8.x + -r7.w;
  r7.w = r10.x * r8.x + r7.w;
  r7.w = r7.w * r8.y;
  r7.w = r7.w * cb4[80].y + -cb4[80].y;
  r7.w = saturate(cb4[81].x + r7.w);
  r10.xyz = cb4[23].xyz * r1.zzz;
  r12.xyz = r7.www * cb4[22].xyz + r10.xyz;
  r12.xyz = cb4[68].zzz * r12.xyz;
  r12.xyz = r12.xyz * r2.www;
  r10.xyz = cb4[68].yyy * r10.xyz;
  r10.xyz = max(r12.xyz, r10.xyz);
  r9.xyz = r10.xyz + r9.xyz;
  r7.w = cb4[81].y * r6.w;
  r7.w = exp2(r7.w);
  r7.w = 0.5 * r7.w;
  r7.w = r7.y ? 0 : r7.w;
  r8.x = cb4[81].y * r3.w;
  r8.x = exp2(r8.x);
  r8.x = 1 + -r8.x;
  r8.x = r6.x ? 1 : r8.x;
  r10.x = 500 * r8.x;
  r8.x = r8.x * 0.5 + 0.5;
  r10.x = saturate(r10.x);
  r8.x = r8.x + -r7.w;
  r7.w = r10.x * r8.x + r7.w;
  r7.w = r7.w * r8.y;
  r7.w = r7.w * cb4[81].w + -cb4[81].w;
  r7.w = saturate(cb4[82].z + r7.w);
  r10.xyz = cb4[26].xyz * r1.zzz;
  r12.xyz = r7.www * cb4[25].xyz + r10.xyz;
  r12.xyz = cb4[69].zzz * r12.xyz;
  r12.xyz = r12.xyz * r2.www;
  r10.xyz = cb4[69].yyy * r10.xyz;
  r10.xyz = max(r12.xyz, r10.xyz);
  r9.xyz = r10.xyz + r9.xyz;
  r6.w = cb4[82].w * r6.w;
  r6.w = exp2(r6.w);
  r6.w = 0.5 * r6.w;
  r6.w = r7.y ? 0 : r6.w;
  r3.w = cb4[82].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = 1 + -r3.w;
  r3.w = r6.x ? 1 : r3.w;
  r6.x = 500 * r3.w;
  r3.w = r3.w * 0.5 + 0.5;
  r6.x = saturate(r6.x);
  r3.w = r3.w + -r6.w;
  r3.w = r6.x * r3.w + r6.w;
  r3.w = r3.w * r8.y;
  r3.w = r3.w * cb4[83].y + -cb4[83].y;
  r3.w = saturate(cb4[84].x + r3.w);
  r10.xyz = cb4[29].xyz * r1.zzz;
  r12.xyz = r3.www * cb4[28].xyz + r10.xyz;
  r12.xyz = cb4[70].zzz * r12.xyz;
  r12.xyz = r12.xyz * r2.www;
  r10.xyz = cb4[70].yyy * r10.xyz;
  r10.xyz = max(r12.xyz, r10.xyz);
  r9.xyz = r10.xyz + r9.xyz;
  r2.w = cb4[84].y * r6.z;
  r2.w = exp2(r2.w);
  r2.xyzw = float4(2,-2,1,0.5) * r2.xyzw;
  r2.w = r7.x ? 0 : r2.w;
  r3.w = cb4[84].y * r5.w;
  r3.w = exp2(r3.w);
  r3.w = 1 + -r3.w;
  r3.w = r6.y ? 1 : r3.w;
  r6.x = 500 * r3.w;
  r3.w = r3.w * 0.5 + 0.5;
  r6.x = saturate(r6.x);
  r3.w = r3.w + -r2.w;
  r2.w = r6.x * r3.w + r2.w;
  r2.w = r2.w * r8.y;
  r2.w = r2.w * cb4[84].w + -cb4[84].w;
  r2.w = saturate(cb4[85].z + r2.w);
  r6.xyz = cb4[34].xyz * r1.zzz;
  r7.xyw = r2.www * cb4[31].xyz + r6.xyz;
  r7.xyw = cb4[71].zzz * r7.xyw;
  r6.xyz = cb4[71].yyy * r6.xyz;
  r6.xyz = max(r7.xyw, r6.xyz);
  r6.xyz = r9.xyz + r6.xyz;
  r7.xyw = r1.zzz * float3(0,0.166666999,0) + -r6.xyz;
  r6.xyz = cb4[72].yyy * r7.xyw + r6.xyz;
  r6.xyz = cb4[72].www * -r6.xyz + r6.xyz;
  r7.xyw = r1.zzz * float3(3,3,3) + -r6.xyz;
  r6.xyz = cb4[73].yyy * r7.xyw + r6.xyz;
  r7.xyw = r1.zzz * float3(7,6.30000019,0) + -r6.xyz;
  r6.xyz = cb4[73].www * r7.xyw + r6.xyz;
  r7.xyw = r1.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r7.xyw = r7.xyw + -r6.xyz;
  r6.xyz = cb4[74].yyy * r7.xyw + r6.xyz;
  r5.xyz = r5.xyz * cb4[62].xxx + r6.xyz;
  r6.xyz = cb4[35].xyz + -r5.xyz;
  r5.xyz = cb4[85].www * r6.xyz + r5.xyz;
  r1.z = -1 + cb0[143].y;
  r6.xy = t6.SampleBias(s5_s, v3.xy, r1.z).yz;
  r7.xyw = -cb4[39].xyz + cb4[38].xyz;
  r7.xyw = r6.yyy * r7.xyw + cb4[39].xyz;
  r8.xyz = -cb4[43].xyz + cb4[42].xyz;
  r8.xyz = r6.yyy * r8.xyz + cb4[43].xyz;
  r8.xyz = r8.xyz + -r7.xyw;
  r7.xyw = r6.xxx * r8.xyz + r7.xyw;
  r8.xyz = cb4[15].xyz + -r7.xyw;
  r7.xyw = r7.zzz * r8.xyz + r7.xyw;
  r9.xyz = saturate(r8.www * -r7.xyw + r7.xyw);
  r7.xyw = t7.SampleBias(s6_s, v3.xy, r1.z).xyw;
  r1.z = -cb1[27].x + r4.z;
  r1.z = max(0, r1.z);
  r2.w = max(cb4[86].x, cb1[27].y);
  r1.z = r1.z / r2.w;
  r1.z = min(1, r1.z);
  r1.z = saturate(r1.z + r1.z);
  r1.z = r7.y * r1.z;
  r8.xyz = t8.SampleBias(s7_s, v3.zw, cb0[143].y).yzw;
  r6.zw = r8.xy * float2(2,2) + float2(-1,-1);
  r6.zw = cb4[44].xy * r6.zw;
  r6.zw = float2(128,128) * r6.zw;
  r0.w = cb4[86].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb4[86].w + cb4[86].z;
  r0.w = saturate(cb4[87].x * r0.w);
  r0.w = r0.w * -cb4[87].y + cb4[87].y;
  r6.zw = r6.zw * r0.ww + v3.zw;
  r6.zw = t8.SampleBias(s7_s, r6.zw, cb0[143].y).xw;
  r0.w = cmp(r6.w == 0.000000);
  r2.w = cmp(r8.z == r6.w);
  r0.w = (int)r0.w | (int)r2.w;
  r0.w = r0.w ? r6.z : 0;
  r0.w = cb4[87].z * r0.w;
  r2.w = 1 + -r7.w;
  r2.w = cmp(r2.w >= 0.5);
  o6.z = r2.w ? 0 : 1;
  r2.w = saturate(cb0[142].w * cb2[0].x + cb2[0].y);
  r6.zw = cb0[152].xx + r1.xy;
  r6.zw = (uint2)r6.zw;
  r3.w = (uint)r6.w << 1;
  r3.w = (int)r3.w + (int)r6.z;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r1.xy = float2(0.015625,0.015625) * r1.xy;
  r1.x = t9.SampleBias(s8_s, r1.xy, cb0[143].y).x;
  r1.x = r3.w + r1.x;
  r1.y = 0.166666672 * r1.x;
  r1.y = cb4[89].w * r2.w + r1.y;
  r3.w = cb4[90].x * r11.z + r11.y;
  r5.w = -cb4[90].z + v2.w;
  r1.x = r1.x * 0.166666672 + r2.w;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r1.x = r5.w * r1.x;
  r1.x = r3.w * r1.x;
  r2.w = 1 + -r1.w;
  r1.w = cb4[90].w * r2.w + r1.w;
  r1.x = r1.x * r1.w;
  r1.x = saturate(ceil(r1.x));
  r8.xyz = cb0[67].xyz + -r4.xyz;
  r1.w = dot(r8.xyz, r8.xyz);
  r1.w = sqrt(r1.w);
  r2.w = 0.763943851 * cb0[128].x;
  r3.w = 1.77777779 / r4.w;
  r3.w = max(1, r3.w);
  r2.w = r3.w * r2.w;
  r6.zw = r1.ww * r2.ww + float2(-0.5,-300);
  r6.zw = saturate(float2(0.00333889807,0.000175438603) * r6.zw);
  r1.w = r6.z * -0.600000024 + 1;
  r1.w = r6.w * -0.200000003 + r1.w;
  r1.w = cb4[92].y * r1.w;
  o6.x = 0.5 * r1.w;
  r1.w = 1 + -v2.y;
  o6.w = cb4[92].z * r1.w;
  r8.xyz = -cb4[54].xyz + cb4[53].xyz;
  r8.xyz = r6.yyy * r8.xyz + cb4[54].xyz;
  r10.xyz = -cb4[58].xyz + cb4[57].xyz;
  r6.yzw = r6.yyy * r10.xyz + cb4[58].xyz;
  r6.yzw = r6.yzw + -r8.xyz;
  r6.xyz = r6.xxx * r6.yzw + r8.xyz;
  r8.xyz = cb4[15].xyz + -r6.xyz;
  r6.xyz = r7.zzz * r8.xyz + r6.xyz;
  r6.xyz = saturate(r8.www * -r6.xyz + r6.xyz);
  r1.w = -0.5 + r7.x;
  r1.w = saturate(10 * r1.w);
  r1.x = r1.y * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.x = saturate(cb4[87].w);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r7.w = saturate(cb4[88].x);
  r1.x = firstbithigh(asint(cb1[23].w));
  r1.y = cmp((int)r1.x == -1);
  r1.x = (int)-r1.x + 31;
  r1.x = r1.y ? -1 : r1.x;
  r1.x = cb1[23].w ? r1.x : 0;
  r1.y = dot(cb0[r1.x+358].xyz, cb0[r1.x+358].xyz);
  r1.y = rsqrt(r1.y);
  r8.xyz = cb0[r1.x+358].xyz * r1.yyy;
  r1.x = dot(r0.xyz, r8.xyz);
  r1.x = r1.x * 0.5 + 0.5;
  r1.y = 1 + -cb0[327].x;
  r1.y = v2.x * r1.y + cb0[327].x;
  r1.x = r1.x * r1.y;
  r1.y = 0.699999988 + r1.w;
  r1.y = min(1, r1.y);
  r2.w = max(r6.x, r6.y);
  r2.w = max(r2.w, r6.z);
  r3.w = r2.w * r1.y;
  r2.w = max(0.00100000005, r2.w);
  r2.w = r3.w / r2.w;
  r3.x = dot(-r3.xyz, r8.xyz);
  r3.x = saturate(3 * r3.x);
  r3.yzw = r6.xyz * r2.www + -r6.xyz;
  o4.xyz = r3.xxx * r3.yzw + r6.xyz;
  r1.x = cmp(r1.x >= cb0[327].x);
  o4.w = r1.x ? 1.000000 : 0;
  o5.y = 0.5 * r1.z;
  r1.x = 0.0799999982 * r0.w;
  r3.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r9.xyz;
  r3.xyz = r1.zzz * r3.xyz + r1.xxx;
  r6.xyz = r9.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyz = r3.xyz * cb0[137].www + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r8.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.xyz;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r3.xyz = r1.xxx ? r3.xyz : r6.xyz;
  r1.z = cmp(0 < cb0[215].x);
  r2.w = dot(cb3[6].xz, float2(0.886227548,-1.02332771));
  r6.x = cb3[9].z * 0.495416582 + r2.w;
  r2.w = dot(cb3[7].xz, float2(0.886227548,-1.02332771));
  r6.y = cb3[10].z * 0.495416582 + r2.w;
  r2.w = dot(cb3[8].xz, float2(0.886227548,-1.02332771));
  r6.z = cb3[11].z * 0.495416582 + r2.w;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = r1.zzz ? r6.xyz : 0;
  r10.xyw = cb0[157].yzx * r6.yzx;
  r1.z = cmp(r10.x >= r10.y);
  r1.z = r1.z ? 1.000000 : 0;
  r11.xy = r10.yx;
  r11.zw = float2(-1,0.666666687);
  r6.xy = r6.yz * cb0[157].yz + -r11.xy;
  r6.zw = float2(1,-1);
  r6.xyzw = r1.zzzz * r6.xyzw + r11.xyzw;
  r1.z = cmp(r10.w >= r6.x);
  r1.z = r1.z ? 1.000000 : 0;
  r10.xyz = r6.xyw;
  r6.xyw = r10.wyx;
  r6.xyzw = r6.xyzw + -r10.xyzw;
  r6.xyzw = r1.zzzz * r6.xyzw + r10.xyzw;
  r1.z = min(r6.w, r6.y);
  r1.z = r6.x + -r1.z;
  r2.w = r6.w + -r6.y;
  r3.w = r1.z * 6 + 1.00000001e-010;
  r2.w = r2.w / r3.w;
  r2.w = r6.z + r2.w;
  r3.w = 1.00000001e-010 + r6.x;
  r1.z = r1.z / r3.w;
  r1.z = cb0[361].z * r1.z;
  r6.yzw = float3(1,0.666666687,0.333333343) + abs(r2.www);
  r6.yzw = frac(r6.yzw);
  r6.yzw = r6.yzw * float3(6,6,6) + float3(-3,-3,-3);
  r6.yzw = saturate(float3(-1,-1,-1) + abs(r6.yzw));
  r6.yzw = float3(-1,-1,-1) + r6.yzw;
  r6.yzw = r1.zzz * r6.yzw + float3(1,1,1);
  r6.xyz = r6.xxx * r6.yzw;
  r6.xyz = cb0[361].xxx * r6.xyz;
  r1.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = min(cb0[361].y, r1.z);
  r1.z = max(1.00000001e-010, r1.z);
  r1.z = r2.w / r1.z;
  r10.x = t0[0].val[8/4];
  r10.y = t0[0].val[8/4+1];
  r10.x = dot(r10.xy, float2(1,1));
  r11.x = t0[1].val[8/4];
  r11.y = t0[1].val[8/4+1];
  r10.y = dot(r11.xy, float2(1,1));
  r11.x = t0[2].val[8/4];
  r11.y = t0[2].val[8/4+1];
  r10.z = dot(r11.xy, float2(1,1));
  r11.x = t0[3].val[8/4];
  r11.y = t0[4].val[8/4];
  r11.z = t0[5].val[8/4];
  r10.xyz = r11.xyz + r10.xyz;
  r10.xyz = max(float3(0,0,0), r10.xyz);
  r10.xyz = cb0[362].xyz * r10.xyz;
  r6.xyz = r6.xyz * r1.zzz + r10.xyz;
  r6.xyz = r6.xyz * r9.xyz;
  r10.xyz = r9.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r10.xyz = r9.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r10.xyz;
  r10.xyz = r9.xyz * float3(2.75519991,2.75519991,2.75519991) + r10.xyz;
  r10.xyz = float3(1.33200002,1.33200002,1.33200002) + r10.xyz;
  r10.xyz = max(float3(1,1,1), r10.xyz);
  r6.xyz = r10.xyz * r6.xyz;
  r8.xyz = r1.xxx ? float3(0,0,0) : r8.xyz;
  r3.xyz = r8.xyz + r3.xyz;
  r7.xyz = max(float3(0,0,0), r5.xyz);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r5.xyz = -cb1[5].xyz + r4.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r8.xyz < abs(r5.xyz));
    r1.x = (int)r5.y | (int)r5.x;
    r1.x = (int)r5.z | (int)r1.x;
    r1.z = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.z = 0.00200000009 * r1.z;
    r1.z = frac(r1.z);
    r1.z = cmp(0.5 < r1.z);
    r4.yzw = r1.zzz ? float3(0,1,1) : float3(1,1,0);
    r4.x = 1;
    r7.xyzw = r1.xxxx ? r4.yzwx : r7.xyzw;
  }
  r3.xyz = cb0[145].yyy * r3.xyz + r6.xyz;
  r3.xyz = r3.xyz + r7.xyz;
  r1.xz = r2.xy / r2.zz;
  r1.xz = r1.xz * cb0[66].xy + cb0[66].wz;
  r2.x = t2.SampleLevel(s1_s, r1.xz, 0).x;
  r2.y = r2.x * cb0[65].x + cb0[65].y;
  r2.x = r2.x * cb0[65].z + -cb0[65].w;
  r2.x = 1 / r2.x;
  r2.x = r2.y + r2.x;
  r4.xyzw = t1.SampleLevel(s0_s, r1.xz, 0).xyzw;
  r1.x = cmp(0 < r4.w);
  r1.z = -5 + r2.x;
  r1.z = cmp(r1.z < r2.z);
  r1.x = r1.z ? r1.x : 0;
  r2.xyz = r9.xyz + -r4.xyz;
  r4.xyz = r7.www * r2.xyz + r4.xyz;
  r9.w = v4.y;
  r2.xyzw = r1.xxxx ? r4.xyzw : r9.xyzw;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyz = cb0[135].yyy * r3.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.549019635);
  o2.y = r0.w;
  o3.xyz = r2.xyz;
  o3.w = r1.w;
  o5.z = v2.x;
  o5.w = cb4[94].z;
  o5.x = r1.y;
  o6.y = r2.w;
  return;
}