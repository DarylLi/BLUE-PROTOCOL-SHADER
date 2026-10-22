// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb4[78];
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
  float4 cb1[24];
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
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = -cb0[129].xy + v4.xy;
  r1.zw = cb0[130].zw * r1.xy;
  r2.xy = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v4.ww * r2.xy;
  r2.zw = v4.zw;
  r3.xyw = float3(2,-2,1);
  r3.z = v4.w;
  r4.xyzw = r3.xyzw * r2.xyzw;
  r5.xyzw = cb0[45].xyzw * v4.yyyy;
  r5.xyzw = v4.xxxx * cb0[44].xyzw + r5.xyzw;
  r5.xyzw = v4.zzzz * cb0[46].xyzw + r5.xyzw;
  r5.xyzw = cb0[47].xyzw + r5.xyzw;
  r2.xyz = r5.xyz / r5.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r5.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r0.xyz * r0.www;
  r0.x = dot(r5.xyz, r2.xyz);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.x = log2(r0.x);
  r0.y = 10 * r0.x;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.99000001 + 0.00999999978;
  r6.xyz = cb4[2].yyy * cb0[5].xyw;
  r6.xyz = cb4[2].xxx * cb0[4].xyw + r6.xyz;
  r6.xyz = cb4[2].zzz * cb0[6].xyw + r6.xyz;
  r6.xyz = cb0[7].xyw + r6.xyz;
  r6.xy = r6.xy / r6.zz;
  r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
  r6.xy = r1.xy * cb0[130].zw + -r6.xy;
  r7.xyz = -cb4[2].xyz + cb0[67].xyz;
  r5.w = dot(r7.xyz, r7.xyz);
  r5.w = sqrt(r5.w);
  r5.w = r5.w / cb4[41].y;
  r5.w = max(cb4[41].z, r5.w);
  r5.w = min(1, r5.w);
  r5.w = -cb4[41].z + r5.w;
  r5.w = saturate(cb4[42].x * r5.w);
  r6.z = cb4[42].y + -cb4[42].z;
  r6.z = r5.w * r6.z + cb4[42].z;
  r6.w = 0.00100000005 * r6.z;
  r6.x = r6.z * 0.000500000024 + r6.x;
  r6.z = 1 / r6.w;
  r7.x = r6.x * r6.z;
  r6.x = cb0[130].x / cb0[130].y;
  r6.z = r6.w * r6.x;
  r6.y = r6.z * 0.5 + r6.y;
  r6.z = 1 / r6.z;
  r7.y = r6.y * r6.z;
  r6.yz = float2(-0.5,-0.5) + r7.xy;
  r6.y = dot(r6.yz, r6.yz);
  r6.y = sqrt(r6.y);
  r6.y = -r6.y * 2 + 1;
  r6.z = 2.33299994 * r6.y;
  r6.z = r6.z * r6.z;
  r6.z = 1.44269514 * r6.z;
  r6.z = exp2(r6.z);
  r6.z = 1 / r6.z;
  r6.w = cmp(9.99999975e-006 < abs(r6.y));
  r6.y = cmp(r6.y >= 0);
  r6.z = 1 + -r6.z;
  r6.y = r6.y ? r6.z : 0;
  r6.y = r6.y ? r6.w : 0;
  r6.z = r6.y * 5 + -5;
  r6.zw = saturate(cb4[45].yw + r6.zz);
  r6.z = 1 + -r6.z;
  r6.z = r6.z * r6.w + -r6.y;
  r6.y = r5.w * r6.z + r6.y;
  r7.xyz = -cb4[6].xyz + cb4[5].xyz;
  r7.xyz = r5.www * r7.xyz + cb4[6].xyz;
  r6.yzw = r7.xyz * r6.yyy;
  r6.yzw = r6.yzw * r0.yyy;
  r0.y = cb4[46].x * r0.x;
  r0.y = exp2(r0.y);
  r0.y = r0.y * cb4[46].z + cb4[46].y;
  r7.xy = cb0[142].zz * float2(0.200000003,0.00999999978) + v3.yy;
  r7.xy = r7.xy + r7.xy;
  r7.z = 2 * v3.x;
  r5.w = t4.SampleBias(s4_s, r7.zx, cb0[143].y).x;
  r7.xw = v3.xy * float2(2,2) + float2(-1,-1);
  r8.x = min(abs(r7.w), abs(r7.x));
  r8.y = max(abs(r7.w), abs(r7.x));
  r8.y = 1 / r8.y;
  r8.x = r8.x * r8.y;
  r8.y = r8.x * r8.x;
  r8.z = r8.y * 0.0208350997 + -0.0851330012;
  r8.z = r8.y * r8.z + 0.180141002;
  r8.z = r8.y * r8.z + -0.330299497;
  r8.y = r8.y * r8.z + 0.999866009;
  r8.z = r8.x * r8.y;
  r8.w = cmp(abs(r7.x) < abs(r7.w));
  r8.z = r8.z * -2 + 1.57079637;
  r8.z = r8.w ? r8.z : 0;
  r8.x = r8.x * r8.y + r8.z;
  r8.y = cmp(r7.x < -r7.x);
  r8.y = r8.y ? -3.141593 : 0;
  r8.x = r8.x + r8.y;
  r8.y = min(r7.w, r7.x);
  r8.z = max(r7.w, r7.x);
  r8.y = cmp(r8.y < -r8.y);
  r8.z = cmp(r8.z >= -r8.z);
  r8.y = r8.z ? r8.y : 0;
  r8.x = r8.y ? -r8.x : r8.x;
  r8.x = 0.159154952 * r8.x;
  r8.x = frac(r8.x);
  r7.xw = r7.xw * r7.xw;
  r7.x = r7.x + r7.w;
  r7.x = sqrt(r7.x);
  r8.yz = cb0[142].zz * float2(-0.400000006,-0.300000012) + r7.xx;
  r9.xy = t5.SampleBias(s5_s, r8.xy, cb0[143].y).xy;
  r9.xy = float2(-0.5,-0.5) + r9.xy;
  r9.xy = cb4[47].xx * r9.xy;
  r9.xy = r9.xy * float2(2,2) + v3.xy;
  r7.w = t4.SampleBias(s4_s, r9.xy, cb0[143].y).x;
  r9.xy = float2(0.5,0.5) * r8.xz;
  r8.yz = t5.SampleBias(s5_s, r9.xy, cb0[143].y).xy;
  r8.yz = float2(-0.5,-0.5) + r8.yz;
  r8.yz = cb4[47].xx * r8.yz;
  r8.yz = r8.yz * float2(2,2) + v3.xy;
  r8.y = t4.SampleBias(s4_s, r8.yz, cb0[143].y).x;
  r7.w = r8.y * r7.w;
  r8.y = r7.w * r5.w;
  r8.y = saturate(r8.y + r8.y);
  r8.z = cmp(0 >= r8.y);
  r8.y = log2(r8.y);
  r9.y = cb4[47].y * r8.y;
  r9.y = exp2(r9.y);
  r9.y = 0.5 * r9.y;
  r9.y = r8.z ? 0 : r9.y;
  r5.w = r5.w * r7.w + -0.5;
  r5.w = saturate(r5.w + r5.w);
  r5.w = 1 + -r5.w;
  r7.w = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r9.w = cb4[47].y * r5.w;
  r9.w = exp2(r9.w);
  r9.w = 1 + -r9.w;
  r9.w = r7.w ? 1 : r9.w;
  r10.x = 500 * r9.w;
  r9.w = r9.w * 0.5 + 0.5;
  r10.x = saturate(r10.x);
  r9.w = r9.w + -r9.y;
  r9.y = r10.x * r9.w + r9.y;
  r9.w = dot(-cb0[18].xyz, r5.xyz);
  r9.w = 1 + -r9.w;
  r9.y = r9.y * r9.w;
  r9.y = r9.y * cb4[47].w + -cb4[47].w;
  r9.y = saturate(cb4[48].z + r9.y);
  r1.z = t5.SampleBias(s5_s, r1.zw, cb0[143].y).x;
  r1.z = -r1.z * 0.5 + 1;
  r1.z = r1.z * r9.w + cb4[57].x;
  r1.z = -1 + r1.z;
  r1.z = saturate(ceil(r1.z));
  r10.xyz = cb4[9].xyz * r1.zzz;
  r11.xyz = r9.yyy * cb4[8].xyz + r10.xyz;
  r11.xyz = cb4[49].xxx * r11.xyz;
  r11.xyz = r11.xyz * r0.yyy;
  r10.xyz = cb4[48].www * r10.xyz;
  r10.xyz = max(r11.xyz, r10.xyz);
  r1.w = max(cb4[11].x, cb4[11].y);
  r1.w = max(cb4[11].z, r1.w);
  r9.y = cb4[57].y + r1.w;
  r9.y = max(0, r9.y);
  r1.w = max(0.00100000005, r1.w);
  r1.w = r9.y / r1.w;
  r11.xyz = cb4[11].xyz * r1.www;
  r1.w = cb4[57].z * r0.x;
  r1.w = exp2(r1.w);
  r1.w = r1.w * cb4[58].x + cb4[57].w;
  r9.y = cmp(r1.w >= cb4[58].y);
  r9.y = r9.y ? 1.000000 : 0;
  r1.w = r9.y * r1.w;
  r12.xyz = cb0[67].xyz + -r3.xyz;
  r9.y = dot(r12.xyz, r12.xyz);
  r9.y = sqrt(r9.y);
  r10.w = saturate(r9.y * cb4[60].x + cb4[60].z);
  r10.w = 1 + -r10.w;
  r1.w = r10.w * r1.w;
  r0.z = r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb4[60].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r1.w * r0.z;
  r0.w = -1 + cb0[143].y;
  r12.xy = t6.SampleBias(s6_s, v3.xy, r0.w).xy;
  r0.z = r12.y * r0.z;
  r0.z = 0.5 * r0.z;
  r12.yz = t7.SampleBias(s7_s, v3.xy, cb0[143].y).zw;
  r13.xyz = cb4[13].xyz * r12.yyy;
  r12.yzw = cb4[15].xyz * r12.zzz;
  r12.yzw = cb4[61].yyy * r12.yzw;
  r12.yzw = r13.xyz * cb4[61].xxx + r12.yzw;
  r11.xyz = r11.xyz * r0.zzz + r12.yzw;
  r0.z = t5.SampleBias(s5_s, v3.xy, cb0[143].y).x;
  r0.z = -1 + r0.z;
  r12.yz = cb4[62].yz + r0.zz;
  r12.yz = saturate(ceil(r12.yz));
  r12.yw = float2(1,1) + -r12.yz;
  r0.w = r12.y * r12.z;
  r13.xyz = cb4[17].xyz + -r11.xyz;
  r11.xyz = r0.www * r13.xyz + r11.xyz;
  r13.xy = cb4[63].zw + r0.zz;
  r13.xy = saturate(ceil(r13.xy));
  r13.xz = float2(1,1) + -r13.xy;
  r0.z = r13.x * r13.y;
  r11.xyz = r0.zzz * -r11.xyz + r11.xyz;
  r10.xyz = r11.xyz + r10.xyz;
  r1.w = t4.SampleBias(s4_s, r7.zy, cb0[143].y).x;
  r7.xy = cb0[142].zz * float2(-0.0399999991,-0.0299999993) + r7.xx;
  r8.w = r7.x;
  r7.xz = t5.SampleBias(s5_s, r8.xw, cb0[143].y).xy;
  r7.xz = float2(-0.5,-0.5) + r7.xz;
  r7.xz = cb4[47].xx * r7.xz;
  r7.xz = r7.xz * float2(2,2) + v3.xy;
  r7.x = t4.SampleBias(s4_s, r7.xz, cb0[143].y).x;
  r9.z = 0.5 * r7.y;
  r7.yz = t5.SampleBias(s5_s, r9.xz, cb0[143].y).xy;
  r7.yz = float2(-0.5,-0.5) + r7.yz;
  r7.yz = cb4[47].xx * r7.yz;
  r7.yz = r7.yz * float2(2,2) + v3.xy;
  r7.y = t4.SampleBias(s4_s, r7.yz, cb0[143].y).x;
  r7.x = r7.x * r7.y;
  r7.y = r7.x * r1.w;
  r7.y = saturate(r7.y + r7.y);
  r7.z = cmp(0 >= r7.y);
  r7.y = log2(r7.y);
  r8.x = cb4[64].x * r7.y;
  r8.x = exp2(r8.x);
  r8.x = 0.5 * r8.x;
  r1.w = r1.w * r7.x + -0.5;
  r1.w = saturate(r1.w + r1.w);
  r1.w = 1 + -r1.w;
  r7.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r8.w = cb4[64].x * r1.w;
  r8.w = exp2(r8.w);
  r8.w = 1 + -r8.w;
  r8.xw = r7.zx ? float2(0,1) : r8.xw;
  r9.x = 500 * r8.w;
  r8.w = r8.w * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r8.w = r8.w + -r8.x;
  r8.x = r9.x * r8.w + r8.x;
  r8.x = r8.x * r9.w;
  r8.x = r8.x * cb4[64].z + -cb4[64].z;
  r8.x = saturate(cb4[65].y + r8.x);
  r11.xyz = cb4[22].xyz * r1.zzz;
  r14.xyz = r8.xxx * cb4[19].xyz + r11.xyz;
  r14.xyz = cb4[49].zzz * r14.xyz;
  r11.xyz = cb4[49].yyy * r11.xyz;
  r11.xyz = max(r14.xyz, r11.xyz);
  r10.xyz = r11.xyz + r10.xyz;
  r8.x = cb4[65].z * r8.y;
  r8.x = exp2(r8.x);
  r8.x = 0.5 * r8.x;
  r8.x = r8.z ? 0 : r8.x;
  r8.w = cb4[65].z * r5.w;
  r8.w = exp2(r8.w);
  r8.w = 1 + -r8.w;
  r8.w = r7.w ? 1 : r8.w;
  r9.x = 500 * r8.w;
  r8.w = r8.w * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r8.w = r8.w + -r8.x;
  r8.x = r9.x * r8.w + r8.x;
  r8.x = r8.x * r9.w;
  r8.x = r8.x * cb4[66].x + -cb4[66].x;
  r8.x = saturate(cb4[66].w + r8.x);
  r11.xyz = cb4[25].xyz * r1.zzz;
  r14.xyz = r8.xxx * cb4[24].xyz + r11.xyz;
  r14.xyz = cb4[50].zzz * r14.xyz;
  r14.xyz = r14.xyz * r0.yyy;
  r11.xyz = cb4[50].yyy * r11.xyz;
  r11.xyz = max(r14.xyz, r11.xyz);
  r10.xyz = r11.xyz + r10.xyz;
  r8.x = cb4[67].x * r8.y;
  r8.x = exp2(r8.x);
  r8.x = 0.5 * r8.x;
  r8.x = r8.z ? 0 : r8.x;
  r8.w = cb4[67].x * r5.w;
  r8.w = exp2(r8.w);
  r8.w = 1 + -r8.w;
  r8.w = r7.w ? 1 : r8.w;
  r9.x = 500 * r8.w;
  r8.w = r8.w * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r8.w = r8.w + -r8.x;
  r8.x = r9.x * r8.w + r8.x;
  r8.x = r8.x * r9.w;
  r8.x = r8.x * cb4[67].z + -cb4[67].z;
  r8.x = saturate(cb4[68].y + r8.x);
  r11.xyz = cb4[28].xyz * r1.zzz;
  r14.xyz = r8.xxx * cb4[27].xyz + r11.xyz;
  r14.xyz = cb4[51].zzz * r14.xyz;
  r14.xyz = r14.xyz * r0.yyy;
  r11.xyz = cb4[51].yyy * r11.xyz;
  r11.xyz = max(r14.xyz, r11.xyz);
  r10.xyz = r11.xyz + r10.xyz;
  r8.x = cb4[68].z * r8.y;
  r8.x = exp2(r8.x);
  r8.x = 0.5 * r8.x;
  r8.x = r8.z ? 0 : r8.x;
  r5.w = cb4[68].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = 1 + -r5.w;
  r5.w = r7.w ? 1 : r5.w;
  r9.x = 500 * r5.w;
  r5.w = r5.w * 0.5 + 0.5;
  r9.x = saturate(r9.x);
  r5.w = r5.w + -r8.x;
  r5.w = r9.x * r5.w + r8.x;
  r5.w = r5.w * r9.w;
  r5.w = r5.w * cb4[69].x + -cb4[69].x;
  r5.w = saturate(cb4[69].w + r5.w);
  r8.xyz = cb4[31].xyz * r1.zzz;
  r11.xyz = r5.www * cb4[30].xyz + r8.xyz;
  r11.xyz = cb4[52].zzz * r11.xyz;
  r11.xyz = r11.xyz * r0.yyy;
  r8.xyz = cb4[52].yyy * r8.xyz;
  r8.xyz = max(r11.xyz, r8.xyz);
  r8.xyz = r10.xyz + r8.xyz;
  r0.y = cb4[70].x * r7.y;
  r0.y = exp2(r0.y);
  r0.y = 0.5 * r0.y;
  r0.y = r7.z ? 0 : r0.y;
  r1.w = cb4[70].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r7.x ? 1 : r1.w;
  r7.x = 500 * r1.w;
  r1.w = r1.w * 0.5 + 0.5;
  r7.x = saturate(r7.x);
  r1.w = r1.w + -r0.y;
  r0.y = r7.x * r1.w + r0.y;
  r0.y = r0.y * r9.w;
  r0.y = r0.y * cb4[70].z + -cb4[70].z;
  r0.y = saturate(cb4[71].y + r0.y);
  r7.xyz = cb4[36].xyz * r1.zzz;
  r9.xzw = r0.yyy * cb4[33].xyz + r7.xyz;
  r9.xzw = cb4[53].zzz * r9.xzw;
  r7.xyz = cb4[53].yyy * r7.xyz;
  r7.xyz = max(r9.xzw, r7.xyz);
  r7.xyz = r8.xyz + r7.xyz;
  r8.xyz = r1.zzz * float3(0,0.166666999,0) + -r7.xyz;
  r7.xyz = cb4[54].yyy * r8.xyz + r7.xyz;
  r7.xyz = cb4[54].www * -r7.xyz + r7.xyz;
  r8.xyz = r1.zzz * float3(3,3,3) + -r7.xyz;
  r7.xyz = cb4[55].yyy * r8.xyz + r7.xyz;
  r8.xyz = r1.zzz * float3(7,6.30000019,0) + -r7.xyz;
  r7.xyz = cb4[55].www * r8.xyz + r7.xyz;
  r8.xyz = r1.zzz * float3(1.60000002,1.60000002,0.800000012) + float3(0.400000006,0.400000006,0.200000003);
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = cb4[56].yyy * r8.xyz + r7.xyz;
  r6.yzw = r6.yzw * cb4[44].xxx + r7.xyz;
  r7.xyz = cb4[37].xyz + -r6.yzw;
  r6.yzw = cb4[71].zzz * r7.xyz + r6.yzw;
  r7.xyz = cb4[17].xyz + -cb4[11].xyz;
  r7.xyz = r0.www * r7.xyz + cb4[11].xyz;
  r7.xyz = saturate(r0.zzz * -r7.xyz + r7.xyz);
  r8.xyz = t8.SampleBias(s8_s, v3.xy, cb0[143].y).yzw;
  r1.zw = r8.xy * float2(2,2) + float2(-1,-1);
  r1.zw = cb4[38].xy * r1.zw;
  r1.zw = float2(128,128) * r1.zw;
  r0.x = cb4[71].w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * cb4[72].y + cb4[72].x;
  r0.x = saturate(cb4[72].z * r0.x);
  r0.x = r0.x * -cb4[72].w + cb4[72].w;
  r0.xy = r1.zw * r0.xx + v3.xy;
  r0.xy = t8.SampleBias(s8_s, r0.xy, cb0[143].y).xw;
  r1.z = cmp(r0.y == 0.000000);
  r0.y = cmp(r8.z == r0.y);
  r0.y = (int)r0.y | (int)r1.z;
  r0.x = r0.y ? r0.x : 0;
  r8.y = cb4[73].x * r0.x;
  r0.x = saturate(cb0[142].w * cb2[0].x + cb2[0].y);
  r1.zw = cb0[152].xx + r1.xy;
  r1.zw = (uint2)r1.zw;
  r0.y = (uint)r1.w << 1;
  r0.y = (int)r0.y + (int)r1.z;
  r0.y = (uint)r0.y % 5;
  r0.y = (uint)r0.y;
  r1.xy = float2(0.015625,0.015625) * r1.xy;
  r1.x = t9.SampleBias(s9_s, r1.xy, cb0[143].y).x;
  r0.y = r1.x + r0.y;
  r1.x = 0.166666672 * r0.y;
  r1.x = cb4[75].x * r0.x + r1.x;
  r1.x = -0.5 + r1.x;
  r1.y = cb4[75].y * r12.w + r12.z;
  r1.z = -cb4[75].w + v2.w;
  r0.x = r0.y * 0.166666672 + r0.x;
  r0.x = -0.5 + r0.x;
  r0.x = r1.z * r0.x;
  r0.x = r1.y * r0.x;
  r0.y = cb4[76].x * r13.z + r13.y;
  r0.x = r0.x * r0.y;
  r0.x = saturate(ceil(r0.x));
  r1.yzw = -cb4[40].xyz + cb4[17].xyz;
  r1.yzw = r0.www * r1.yzw + cb4[40].xyz;
  r0.yzw = saturate(r0.zzz * -r1.yzw + r1.yzw);
  r1.y = -0.5 + r12.x;
  r1.z = 0.763943851 * cb0[128].x;
  r1.w = 1.77777779 / r6.x;
  r1.w = max(1, r1.w);
  r1.z = r1.z * r1.w;
  r1.zw = r9.yy * r1.zz + float2(-0.5,-300);
  r1.yzw = saturate(float3(10,0.00333889807,0.000175438603) * r1.yzw);
  r1.z = r1.z * -0.600000024 + 1;
  r1.z = r1.w * -0.200000003 + r1.z;
  r1.z = v3.z * r1.z;
  r1.z = r1.z * cb4[77].w + r4.w;
  r1.z = r4.z / r1.z;
  r1.z = min(v4.z, r1.z);
  r1.w = -r1.z * r4.w + r4.z;
  r1.w = r1.w / r1.z;
  r2.w = r2.w * r3.w + r1.w;
  r3.xyz = r2.xyz * r1.www + r3.xyz;
  r0.x = r1.x * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = saturate(cb4[57].y);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r9.w = saturate(cb4[73].y);
  r0.x = firstbithigh(asint(cb1[23].w));
  r1.x = cmp((int)r0.x == -1);
  r0.x = (int)-r0.x + 31;
  r0.x = r1.x ? -1 : r0.x;
  r0.x = cb1[23].w ? r0.x : 0;
  r1.x = dot(cb0[r0.x+358].xyz, cb0[r0.x+358].xyz);
  r1.x = rsqrt(r1.x);
  r10.xyz = cb0[r0.x+358].xyz * r1.xxx;
  r0.x = dot(r5.xyz, r10.xyz);
  r0.x = r0.x * 0.5 + 0.5;
  r1.x = 1 + -cb0[327].x;
  r1.x = v2.x * r1.x + cb0[327].x;
  r0.x = r1.x * r0.x;
  r1.x = 0.699999988 + r1.y;
  r1.x = min(1, r1.x);
  r1.w = max(r0.y, r0.z);
  r1.w = max(r1.w, r0.w);
  r3.w = r1.w * r1.x;
  r1.w = max(0.00100000005, r1.w);
  r1.w = r3.w / r1.w;
  r2.x = dot(-r2.xyz, r10.xyz);
  r2.x = saturate(3 * r2.x);
  r10.xyz = r0.yzw * r1.www + -r0.yzw;
  o4.xyz = r2.xxx * r10.xyz + r0.yzw;
  r0.x = cmp(r0.x >= cb0[327].x);
  o4.w = r0.x ? 1.000000 : 0;
  r0.x = cb0[137].w * r8.y;
  r0.yzw = r7.xyz * cb0[136].www + cb0[136].xyz;
  r2.xyz = r0.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r0.x = cmp(0 != cb0[183].w);
  r10.xyz = float3(0.449999988,0.449999988,0.449999988) * r2.xyz;
  r2.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r0.yzw;
  r0.yzw = r0.xxx ? r2.xyz : r0.yzw;
  r1.w = cmp(0 < cb0[215].x);
  if (r1.w != 0) {
    r2.xyz = r3.xyz * cb3[1].xyz + cb3[0].xyz;
    r2.xyz = max(cb3[2].xyz, r2.xyz);
    r2.xyz = min(cb3[3].xyz, r2.xyz);
    r11.xyz = t2.Sample(s3_s, r2.xyz).xyz;
    r2.xyz = t3.Sample(s0_s, r2.xyz).xzy;
    r12.xz = r11.xy;
    r12.yw = r2.xz;
    r13.x = dot(r12.xy, float2(0.886227548,-1.02332771));
    r13.y = dot(r12.zw, float2(0.886227548,-1.02332771));
    r2.x = r11.z;
    r13.z = dot(r2.xy, float2(0.886227548,-1.02332771));
    r2.xyz = max(float3(0,0,0), r13.xyz);
    r2.xyz = float3(0.318309873,0.318309873,0.318309873) * r2.xyz;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r11.xyw = cb0[157].yzx * r2.yzx;
  r1.w = cmp(r11.x >= r11.y);
  r1.w = r1.w ? 1.000000 : 0;
  r12.xy = r11.yx;
  r12.zw = float2(-1,0.666666687);
  r13.xy = r2.yz * cb0[157].yz + -r12.xy;
  r13.zw = float2(1,-1);
  r12.xyzw = r1.wwww * r13.xyzw + r12.xyzw;
  r1.w = cmp(r11.w >= r12.x);
  r1.w = r1.w ? 1.000000 : 0;
  r11.xyz = r12.xyw;
  r12.xyw = r11.wyx;
  r12.xyzw = r12.xyzw + -r11.xyzw;
  r11.xyzw = r1.wwww * r12.xyzw + r11.xyzw;
  r1.w = min(r11.w, r11.y);
  r1.w = r11.x + -r1.w;
  r2.x = r11.w + -r11.y;
  r2.y = r1.w * 6 + 1.00000001e-010;
  r2.x = r2.x / r2.y;
  r2.x = r11.z + r2.x;
  r2.y = 1.00000001e-010 + r11.x;
  r1.w = r1.w / r2.y;
  r1.w = cb0[361].z * r1.w;
  r2.xyz = float3(1,0.666666687,0.333333343) + abs(r2.xxx);
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(6,6,6) + float3(-3,-3,-3);
  r2.xyz = saturate(float3(-1,-1,-1) + abs(r2.xyz));
  r2.xyz = float3(-1,-1,-1) + r2.xyz;
  r2.xyz = r1.www * r2.xyz + float3(1,1,1);
  r2.xyz = r11.xxx * r2.xyz;
  r2.xyz = cb0[361].xxx * r2.xyz;
  r1.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = min(cb0[361].y, r1.w);
  r1.w = max(1.00000001e-010, r1.w);
  r1.w = r3.w / r1.w;
  r2.xyz = r2.xyz * r1.www;
  r2.xyz = r2.xyz * r7.xyz;
  r11.xyz = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r11.xyz = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r11.xyz;
  r11.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r11.xyz;
  r11.xyz = float3(1.33200002,1.33200002,1.33200002) + r11.xyz;
  r11.xyz = max(float3(1,1,1), r11.xyz);
  r2.xyz = r11.xyz * r2.xyz;
  r10.xyz = r0.xxx ? float3(0,0,0) : r10.xyz;
  r0.xyz = r10.xyz + r0.yzw;
  r9.xyz = max(float3(0,0,0), r6.yzw);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r10.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r10.xyz < abs(r6.xyz));
    r0.w = (int)r6.y | (int)r6.x;
    r0.w = (int)r6.z | (int)r0.w;
    r1.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r3.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r3.x = 1;
    r9.xyzw = r0.wwww ? r3.yzwx : r9.xyzw;
  }
  r0.xyz = cb0[145].yyy * r0.xyz + r2.xyz;
  r0.xyz = r0.xyz + r9.xyz;
  r2.xy = r4.xy / r2.ww;
  r2.xy = r2.xy * cb0[66].xy + cb0[66].wz;
  r0.w = t1.SampleLevel(s2_s, r2.xy, 0).x;
  r1.w = r0.w * cb0[65].x + cb0[65].y;
  r0.w = r0.w * cb0[65].z + -cb0[65].w;
  r0.w = 1 / r0.w;
  r0.w = r1.w + r0.w;
  r3.xyzw = t0.SampleLevel(s1_s, r2.xy, 0).xyzw;
  r1.w = cmp(0 < r3.w);
  r0.w = -5 + r0.w;
  r0.w = cmp(r0.w < r2.w);
  r0.w = r0.w ? r1.w : 0;
  r2.xyz = r7.xyz + -r3.xyz;
  r3.xyz = r9.www * r2.xyz + r3.xyz;
  r7.w = 0;
  r2.xyzw = r0.wwww ? r3.xyzw : r7.xyzw;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  r8.xw = float2(0,0.549019635);
  o2.xyw = r8.xyw;
  o3.xyz = r2.xyz;
  o3.w = r1.y;
  o5.yw = r8.xy;
  o5.z = v2.x;
  o5.x = r1.x;
  o6.xzw = float3(0,1,0);
  o6.y = r2.w;
  oDepthLE = r1.z;
  return;
}