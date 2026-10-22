// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[23];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[216];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float3 v5 : TEXCOORD9,
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
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + v5.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r4.xyz = r3.xyz / cb4[10].zzz;
  r5.xy = t4.SampleBias(s2_s, r4.xz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r5.xy;
  r5.xy = t4.SampleBias(s2_s, r4.yz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.x = v1.x * r0.w;
  r7.yz = -r5.xy;
  r5.xy = min(float2(1,1), abs(v1.xz));
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.xxx * r7.xyz + r6.xyz;
  r5.zw = t4.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.xy = -r5.zw;
  r7.z = v1.z * r0.w;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r5.yyy * r7.xyz + r6.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r6.xyz = r6.xyz / r0.www;
  r7.x = dot(v0.xyz, r6.xyz);
  r7.y = dot(r0.xyz, r6.xyz);
  r7.z = dot(v1.xyz, r6.xyz);
  r6.xyz = r3.xyz / cb4[11].yyy;
  r5.zw = t4.SampleBias(s2_s, r6.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r5.zw;
  r5.zw = t4.SampleBias(s2_s, r6.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r5.zw;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.xxx * r9.xyz + r8.xyz;
  r5.zw = t4.SampleBias(s2_s, r6.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.xy = -r5.zw;
  r9.z = v1.z * r0.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.yyy * r9.xyz + r8.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r8.xyz = r8.xyz / r0.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.xyz, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r1.w = r0.w / cb4[11].z;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[11].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r8.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r1.www * r8.xyz + r7.xyz;
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb4[12].xxx * r8.xyz + r7.xyz;
  r5.zw = cb4[12].yy * v3.xy;
  r2.w = cb4[12].z + cb0[143].y;
  r5.zw = t5.SampleBias(s3_s, r5.zw, r2.w).xy;
  r8.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r8.xy, r8.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r8.z = sqrt(r2.w);
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb4[12].www * r9.xyz + r8.xyz;
  r7.xyz = cb4[13].xxx * r8.xyz + r7.xyz;
  r9.xyz = r3.xyz / cb4[13].www;
  r5.zw = t6.SampleBias(s4_s, r9.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.y = v1.y * r2.w;
  r10.xz = -r5.zw;
  r5.zw = t6.SampleBias(s4_s, r9.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r11.x = v1.x * r2.w;
  r11.yz = -r5.zw;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r5.xxx * r11.xyz + r10.xyz;
  r5.zw = t6.SampleBias(s4_s, r9.xy, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r11.xy = -r5.zw;
  r11.z = v1.z * r2.w;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r5.yyy * r11.xyz + r10.xyz;
  r2.w = dot(r10.xyz, r10.xyz);
  r2.w = sqrt(r2.w);
  r10.xyz = r10.xyz / r2.www;
  r11.x = dot(v0.xyz, r10.xyz);
  r11.y = dot(r0.xyz, r10.xyz);
  r11.z = dot(v1.xyz, r10.xyz);
  r10.xyz = r3.xyz / cb4[14].zzz;
  r5.zw = t6.SampleBias(s4_s, r10.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r12.y = v1.y * r2.w;
  r12.xz = -r5.zw;
  r5.zw = t6.SampleBias(s4_s, r10.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r13.x = v1.x * r2.w;
  r13.yz = -r5.zw;
  r13.xyz = r13.xyz + -r12.xyz;
  r5.xzw = r5.xxx * r13.xyz + r12.xyz;
  r12.xy = t6.SampleBias(s4_s, r10.xy, cb0[143].y).xy;
  r12.xy = r12.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r12.xy, r12.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r12.xy = -r12.xy;
  r12.z = v1.z * r2.w;
  r12.xyz = r12.xyz + -r5.xzw;
  r5.xyz = r5.yyy * r12.xyz + r5.xzw;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r5.xyz = r5.xyz / r2.www;
  r12.x = dot(v0.xyz, r5.xyz);
  r12.y = dot(r0.xyz, r5.xyz);
  r12.z = dot(v1.xyz, r5.xyz);
  r2.w = r0.w / cb4[14].w;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[15].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r5.xyz = r12.xyz + -r11.xyz;
  r5.xyz = r2.www * r5.xyz + r11.xyz;
  r11.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[15].yyy * r11.xyz + r5.xyz;
  r5.xyz = cb4[15].zzz * r8.xyz + r5.xyz;
  r3.w = cmp(0 >= v2.x);
  r4.w = log2(v2.x);
  r4.w = cb4[15].w * r4.w;
  r4.w = exp2(r4.w);
  r3.w = r3.w ? 0 : r4.w;
  r4.w = 1 + -r3.w;
  r4.w = r4.w * r3.w;
  r3.xyz = r3.xyz / cb4[16].zzz;
  r5.w = t7.Sample(s0_s, r3.xz).x;
  r3.z = t7.Sample(s0_s, r3.yz).x;
  r8.xy = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r3.z = r3.z + -r5.w;
  r3.z = r8.x * r3.z + r5.w;
  r3.x = t7.Sample(s0_s, r3.xy).x;
  r3.x = r3.x + -r3.z;
  r3.x = r8.y * r3.x + r3.z;
  r3.y = cmp(0 >= r3.x);
  r3.x = log2(r3.x);
  r3.x = cb4[17].x * r3.x;
  r3.x = exp2(r3.x);
  r3.x = r3.y ? 0 : r3.x;
  r3.x = saturate(r4.w * r3.x + r3.w);
  r3.yzw = r5.xyz + -r7.xyz;
  r3.yzw = r3.xxx * r3.yzw + r7.xyz;
  r3.yzw = r3.yzw * cb0[138].www + cb0[138].xyz;
  r4.w = dot(r3.yzw, r3.yzw);
  r4.w = rsqrt(r4.w);
  r3.yzw = r4.www * r3.yzw;
  r0.xyz = r3.zzz * r0.xyz;
  r0.xyz = r3.yyy * v0.xyz + r0.xyz;
  r0.xyz = r3.www * v1.xyz + r0.xyz;
  r3.y = dot(r0.xyz, r0.xyz);
  r3.y = rsqrt(r3.y);
  r5.yzw = r3.yyy * r0.xyz;
  r3.z = dot(-cb3[5].xyz, -cb3[5].xyz);
  r3.z = sqrt(r3.z);
  r7.xyz = -cb3[5].xyz / r3.zzz;
  r3.z = dot(r7.xyz, r5.yzw);
  r3.z = 1 + r3.z;
  r8.xyz = cb0[67].xyz + -r2.xyz;
  r3.w = dot(r8.xyz, r8.xyz);
  r3.w = sqrt(r3.w);
  r8.xyz = r8.xyz / r3.www;
  r3.w = saturate(dot(-r8.xyz, r7.xyz));
  r4.w = 1 + -cb2[1].x;
  r3.w = saturate(r4.w + r3.w);
  r3.z = r3.z * r3.w;
  r1.x = dot(r5.yzw, r1.xyz);
  r1.x = max(0, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-005, abs(r1.x));
  r1.x = log2(r1.x);
  r1.y = cb2[1].y * r1.x;
  r1.y = exp2(r1.y);
  r1.z = 1 + -cb2[0].w;
  r1.y = r1.y * r1.z + cb2[0].w;
  r1.z = cmp(r1.y >= cb2[0].y);
  r1.z = r1.z ? 1.000000 : 0;
  r1.y = r1.z * r1.y;
  r1.z = r0.z * r3.y + 1;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[0].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.z = -r0.z * r3.y + 1;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[1].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.y = cb2[0].z * r1.y;
  r1.z = r3.z * r1.y;
  r7.xyz = cb3[4].xyz * r1.zzz;
  r1.z = dot(-cb3[8].xyz, -cb3[8].xyz);
  r1.z = sqrt(r1.z);
  r11.xyz = -cb3[8].xyz / r1.zzz;
  r1.z = dot(r11.xyz, r5.yzw);
  r1.z = 1 + r1.z;
  r3.z = saturate(dot(-r8.xyz, r11.xyz));
  r3.z = saturate(r3.z + r4.w);
  r1.z = r3.z * r1.z;
  r1.y = r1.z * r1.y;
  r8.xyz = cb3[9].xyz * r1.yyy;
  r8.xyz = cb3[1].yyy * r8.xyz;
  r7.xyz = r7.xyz * cb3[1].xxx + r8.xyz;
  r7.xyz = cb2[2].xyz * r7.xyz;
  r8.xyz = cb4[2].xyz * r7.xyz;
  r7.xyz = -r7.xyz * cb4[2].xyz + cb4[3].xyz;
  r7.xyz = cb4[17].yyy * r7.xyz + r8.xyz;
  r8.xyzw = cmp(abs(r5.zwwy) < abs(r5.yyzz));
  r1.y = r8.y ? r8.x : 0;
  r8.xyz = r8.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r1.yyy ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r1.yz = cmp(abs(r5.yz) < abs(r5.ww));
  r1.y = r1.y ? r8.w : 0;
  r11.xyz = r1.zzz ? float3(2,1,3) : float3(1,3,2);
  r11.xyz = r1.yyy ? float3(3,2,1) : r11.xyz;
  r11.xyz = (int3)-r8.xyz + (int3)r11.xyz;
  r11.xyz = max(int3(0,0,0), (int3)r11.xyz);
  r11.xyz = min(int3(2,2,2), (int3)r11.xyz);
  r12.x = dot(abs(r5.yzw), icb[r8.x+0].xyz);
  r12.y = dot(abs(r5.yzw), icb[r11.x+0].xyz);
  r1.yz = float2(-0.577300012,-0.577300012) + r12.xy;
  r1.yz = saturate(float2(2.36574411,2.36574411) * r1.yz);
  r3.z = cmp((int)r8.z < (int)r8.y);
  r3.zw = r3.zz ? r8.zy : r8.yz;
  r4.w = cmp((int)r11.z < (int)r11.y);
  r8.xy = r4.ww ? r11.zy : r11.yz;
  r11.xyz = ddx_coarse(r4.xyz);
  r12.xyz = ddy_coarse(r4.xyz);
  r13.x = dot(r4.xyz, icb[r3.z+0].xyz);
  r13.y = dot(r4.xyz, icb[r3.w+0].xyz);
  r14.x = dot(r11.xyz, icb[r3.z+0].xyz);
  r14.y = dot(r11.xyz, icb[r3.w+0].xyz);
  r15.x = dot(r12.xyz, icb[r3.z+0].xyz);
  r15.y = dot(r12.xyz, icb[r3.w+0].xyz);
  r13.xyzw = t8.SampleGrad(s0_s, r13.xy, r14.xyxx, r15.xyxx).xyzw;
  r14.x = dot(r4.xyz, icb[r8.x+0].xyz);
  r14.y = dot(r4.xyz, icb[r8.y+0].xyz);
  r4.x = dot(r11.xyz, icb[r8.x+0].xyz);
  r4.y = dot(r11.xyz, icb[r8.y+0].xyz);
  r11.x = dot(r12.xyz, icb[r8.x+0].xyz);
  r11.y = dot(r12.xyz, icb[r8.y+0].xyz);
  r4.xyzw = t8.SampleGrad(s0_s, r14.xy, r4.xyxx, r11.xyxx).xyzw;
  r4.xyzw = r4.xyzw * r1.zzzz;
  r4.xyzw = r13.xyzw * r1.yyyy + r4.xyzw;
  r6.w = r1.y + r1.z;
  r4.xyzw = r4.xyzw / r6.wwww;
  r7.w = dot(r2.xy, float2(17,0.100000001));
  r7.w = sin(r7.w);
  r7.w = 10000 * r7.w;
  r8.z = 0.100000001 * r2.z;
  r8.w = r2.y * 13 + r2.x;
  r8.w = sin(r8.w);
  r8.w = 0.100000001 + abs(r8.w);
  r7.w = r8.w * r7.w;
  r7.w = frac(r7.w);
  r8.z = r7.w * 17 + r8.z;
  r8.z = sin(r8.z);
  r8.z = 10000 * r8.z;
  r7.w = r2.z * 13 + r7.w;
  r7.w = sin(r7.w);
  r7.w = 0.100000001 + abs(r7.w);
  r7.w = r8.z * r7.w;
  r7.w = frac(r7.w);
  r11.xyzw = cmp(abs(v1.yzzx) < abs(v1.xxyy));
  r8.z = r11.y ? r11.x : 0;
  r11.xyz = r11.zzz ? float3(1,2,0) : float3(2,0,1);
  r11.xyz = r8.zzz ? float3(0,1.40129846e-045,2.80259693e-045) : r11.xyz;
  r8.zw = cmp(abs(v1.xy) < abs(v1.zz));
  r8.z = r8.z ? r11.w : 0;
  r12.xy = r8.ww ? float2(3,1) : float2(2,3);
  r8.zw = r8.zz ? float2(1.40129846e-045,2.80259693e-045) : r12.xy;
  r8.zw = (int2)-r11.zy + (int2)r8.zw;
  r8.zw = max(int2(0,0), (int2)r8.zw);
  r8.zw = min(int2(0,0), (int2)r8.zw);
  r9.w = dot(abs(v1.xyz), icb[r11.x+0].xyz);
  r9.w = -0.577300012 + r9.w;
  r9.w = saturate(2.36574411 * r9.w);
  r10.w = cmp((int)r11.z < (int)r11.y);
  r11.xy = r10.ww ? r11.zy : r11.yz;
  r10.w = cmp((int)r8.z < (int)r8.w);
  r8.zw = r10.ww ? r8.zw : r8.wz;
  r7.w = cmp(r7.w < r9.w);
  r8.zw = r7.ww ? r11.xy : r8.zw;
  r11.xyz = ddx_coarse(r6.xyz);
  r12.xyz = ddy_coarse(r6.xyz);
  r13.x = dot(r6.xyz, icb[r8.z+0].xyz);
  r13.y = dot(r6.xyz, icb[r8.w+0].xyz);
  r6.x = dot(r11.xyz, icb[r8.z+0].xyz);
  r6.y = dot(r11.xyz, icb[r8.w+0].xyz);
  r11.x = dot(r12.xyz, icb[r8.z+0].xyz);
  r11.y = dot(r12.xyz, icb[r8.w+0].xyz);
  r11.xyzw = t8.SampleGrad(s0_s, r13.xy, r6.xyxx, r11.xyxx).xyzw;
  r11.xyzw = r11.xyzw + -r4.xyzw;
  r4.xyzw = r1.wwww * r11.xyzw + r4.xyzw;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r4.xyz;
  r6.xyz = r4.www * r6.xyz + r4.xyz;
  r6.xyz = saturate(cb4[17].zzz * r6.xyz);
  r11.xyz = float3(1,1,1) + -r6.xyz;
  r11.xyz = cb4[6].xyz * r11.xyz;
  r11.xyz = -r11.xyz * float3(2,2,2) + float3(1,1,1);
  r12.xyz = cb4[5].xyz * r6.xyz;
  r12.xyz = r12.xyz + r12.xyz;
  r6.xyz = cmp(r6.xyz >= float3(0.5,0.5,0.5));
  r6.xyz = r6.xyz ? r11.xyz : r12.xyz;
  r11.xyz = cb4[5].xyz + -r6.xyz;
  r6.xyz = cb4[17].www * r11.xyz + r6.xyz;
  r4.w = r0.w / cb4[18].x;
  r7.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb4[18].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r7.w ? 0 : r4.w;
  r6.xyz = r6.xyz + -r4.xyz;
  r6.xyz = r6.xyz * r4.www;
  r4.xyz = cb4[18].zzz * r6.xyz + r4.xyz;
  r6.xyz = ddx_coarse(r9.xyz);
  r11.xyz = ddy_coarse(r9.xyz);
  r12.x = dot(r9.xyz, icb[r3.z+0].xyz);
  r12.y = dot(r9.xyz, icb[r3.w+0].xyz);
  r13.x = dot(r6.xyz, icb[r3.z+0].xyz);
  r13.y = dot(r6.xyz, icb[r3.w+0].xyz);
  r14.x = dot(r11.xyz, icb[r3.z+0].xyz);
  r14.y = dot(r11.xyz, icb[r3.w+0].xyz);
  r12.xyzw = t9.SampleGrad(s0_s, r12.xy, r13.xyxx, r14.xyxx).xyzw;
  r13.x = dot(r9.xyz, icb[r8.x+0].xyz);
  r13.y = dot(r9.xyz, icb[r8.y+0].xyz);
  r9.x = dot(r6.xyz, icb[r8.x+0].xyz);
  r9.y = dot(r6.xyz, icb[r8.y+0].xyz);
  r6.x = dot(r11.xyz, icb[r8.x+0].xyz);
  r6.y = dot(r11.xyz, icb[r8.y+0].xyz);
  r9.xyzw = t9.SampleGrad(s0_s, r13.xy, r9.xyxx, r6.xyxx).xyzw;
  r9.xyzw = r9.xyzw * r1.zzzz;
  r9.xyzw = r12.xyzw * r1.yyyy + r9.xyzw;
  r6.xyzw = r9.xyzw / r6.wwww;
  r9.xyz = ddx_coarse(r10.xyz);
  r11.xyz = ddy_coarse(r10.xyz);
  r8.x = dot(r10.xyz, icb[r8.z+0].xyz);
  r8.y = dot(r10.xyz, icb[r8.w+0].xyz);
  r10.x = dot(r9.xyz, icb[r8.z+0].xyz);
  r10.y = dot(r9.xyz, icb[r8.w+0].xyz);
  r9.x = dot(r11.xyz, icb[r8.z+0].xyz);
  r9.y = dot(r11.xyz, icb[r8.w+0].xyz);
  r8.xyzw = t9.SampleGrad(s0_s, r8.xy, r10.xyxx, r9.xyxx).xyzw;
  r8.xyzw = r8.xyzw + -r6.xyzw;
  r6.xyzw = r2.wwww * r8.xyzw + r6.xyzw;
  r1.y = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.yyy + -r6.xyz;
  r8.xyz = r6.www * r8.xyz + r6.xyz;
  r8.xyz = saturate(cb4[18].www * r8.xyz);
  r9.xyz = float3(1,1,1) + -r8.xyz;
  r9.xyz = cb4[9].xyz * r9.xyz;
  r9.xyz = -r9.xyz * float3(2,2,2) + float3(1,1,1);
  r10.xyz = cb4[8].xyz * r8.xyz;
  r10.xyz = r10.xyz + r10.xyz;
  r8.xyz = cmp(r8.xyz >= float3(0.5,0.5,0.5));
  r8.xyz = r8.xyz ? r9.xyz : r10.xyz;
  r9.xyz = cb4[8].xyz + -r8.xyz;
  r8.xyz = cb4[19].xxx * r9.xyz + r8.xyz;
  r0.w = r0.w / cb4[19].y;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[19].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r8.xyz = r8.xyz + -r6.xyz;
  r8.xyz = r8.xyz * r0.www;
  r6.xyz = cb4[19].www * r8.xyz + r6.xyz;
  r6.xyz = r6.xyz + -r4.xyz;
  r4.xyz = r3.xxx * r6.xyz + r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r0.w = saturate(cb4[20].x + r1.w);
  r1.z = saturate(cb4[20].y + r1.y);
  r1.z = r1.z + -r0.w;
  r6.x = saturate(r3.x * r1.z + r0.w);
  r0.w = cb4[20].z * r1.x;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb4[20].w * r0.w;
  r1.x = saturate(cb4[21].y + v1.z);
  r0.w = r1.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r6.y = saturate(cb4[21].z * r0.w);
  r0.w = saturate(cb4[21].w + r1.w);
  r1.x = saturate(cb4[22].x + r1.y);
  r1.x = r1.x + -r0.w;
  r0.w = saturate(r3.x * r1.x + r0.w);
  r1.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = mad((int)v4.x, 36, 20);
  r1.w = cmp(0 < cb0[215].x);
  r3.x = t2[r0.w].val[4/4];
  r3.z = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r3.z);
  if (r0.w != 0) {
    r4.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
    r4.xyz = cb0[213].xyz * r4.xyz;
    r8.xyz = (int3)r4.xyz;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r0.w = 1 + cb0[213].w;
    r4.xyz = r4.xyz / r8.www;
    r4.xyz = frac(r4.xyz);
    r4.xyz = cb0[213].www * r4.xyz;
    r4.xyz = r8.xyz * r0.www + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = cb0[214].xyz * r4.xyz;
    r0.w = t1.SampleLevel(s1_s, r4.xyz, 0).x;
  } else {
    r2.w = mad((int)v4.x, 36, 18);
    r2.w = t2[r2.w].val[12/4];
    r2.w = cmp(0 < r2.w);
    r2.w = r1.w ? r2.w : 0;
    r0.w = r2.w ? cb1[5].x : 1;
  }
  r2.w = 0.0799999982 * r6.y;
  r4.xyz = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r4.xyz = r6.xxx * r4.xyz + r2.www;
  r8.xyz = -r1.xyz * r6.xxx + r1.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r9.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r2.www ? r9.xyz : r8.xyz;
  r4.xyz = r2.www ? float3(0,0,0) : r4.xyz;
  r2.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.z = r2.w * 2.04040003 + -0.332399994;
  r3.z = r2.w * -4.79510021 + r3.z;
  r2.w = r2.w * 2.75519991 + r3.z;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r9.xyz = r5.zwz * r5.zwy;
  r10.yw = r5.ww * r5.zy;
  r3.z = r5.y * r5.y + -r9.x;
  r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.zwy;
  r10.xz = r9.zy * float2(1,3) + float2(0,-1);
  r9.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r10.xyzw;
  r3.z = 0.429042608 * r3.z;
  r11.x = 0.886227548;
  r3.w = dot(cb1[6].xyzw, r11.xyzw);
  r4.w = dot(cb1[9].xyzw, r9.xyzw);
  r3.w = r4.w + r3.w;
  r10.x = cb1[12].x * r3.z + r3.w;
  r3.w = dot(cb1[7].xyzw, r11.xyzw);
  r4.w = dot(cb1[10].xyzw, r9.xyzw);
  r3.w = r4.w + r3.w;
  r10.y = cb1[12].y * r3.z + r3.w;
  r3.w = dot(cb1[8].xyzw, r11.xyzw);
  r4.w = dot(cb1[11].xyzw, r9.xyzw);
  r3.w = r4.w + r3.w;
  r10.z = cb1[12].z * r3.z + r3.w;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = r1.www ? r9.xyz : 0;
  r3.z = cmp(cb0[186].y != 0.000000);
  if (r3.z != 0) {
    r5.x = 1;
    r10.xyzw = r1.wwww ? cb1[4].wxyz : r5.xyzw;
    r1.w = 1 + -r10.x;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.xyz * r3.yyy + -r10.yzw;
    r11.xyz = r1.www * r0.xyz + r10.yzw;
    r0.x = saturate(dot(r10.yzw, r5.yzw));
    r0.y = 1 + -r0.x;
    r10.y = r1.w * r0.y + r0.x;
  } else {
    r11.xyz = r5.yzw;
    r10.xy = float2(1,1);
  }
  r12.x = t3[0].val[0/4];
  r12.y = t3[0].val[0/4+1];
  r12.z = t3[0].val[0/4+2];
  r12.w = t3[0].val[0/4+3];
  r11.w = 1;
  r0.x = dot(r12.xyzw, r11.xyzw);
  r12.x = t3[1].val[0/4];
  r12.y = t3[1].val[0/4+1];
  r12.z = t3[1].val[0/4+2];
  r12.w = t3[1].val[0/4+3];
  r0.y = dot(r12.xyzw, r11.xyzw);
  r12.x = t3[2].val[0/4];
  r12.y = t3[2].val[0/4+1];
  r12.z = t3[2].val[0/4+2];
  r12.w = t3[2].val[0/4+3];
  r0.z = dot(r12.xyzw, r11.xyzw);
  r12.xyzw = r11.xyzz * r11.yzzx;
  r13.x = t3[3].val[0/4];
  r13.y = t3[3].val[0/4+1];
  r13.z = t3[3].val[0/4+2];
  r13.w = t3[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r14.x = t3[4].val[0/4];
  r14.y = t3[4].val[0/4+1];
  r14.z = t3[4].val[0/4+2];
  r14.w = t3[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r12.xyzw);
  r14.x = t3[5].val[0/4];
  r14.y = t3[5].val[0/4+1];
  r14.z = t3[5].val[0/4+2];
  r14.w = t3[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r12.xyzw);
  r1.w = r11.y * r11.y;
  r1.w = r11.x * r11.x + -r1.w;
  r3.y = t3[6].val[0/4];
  r3.z = t3[6].val[0/4+1];
  r3.w = t3[6].val[0/4+2];
  r0.xyz = r13.xyz + r0.xyz;
  r0.xyz = r3.yzw * r1.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.w = r10.x * r10.y;
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r1.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r3.yzw = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.yzw = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.yzw;
  r3.yzw = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.yzw;
  r3.yzw = float3(1.33200002,1.33200002,1.33200002) + r3.yzw;
  r3.yzw = max(float3(1,1,1), r3.yzw);
  r0.xyz = r3.yzw * r0.xyz;
  r3.yzw = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r4.xyz = max(float3(0,0,0), r7.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t2[r6.z].val[0/4];
    r7.y = t2[r6.z].val[0/4+1];
    r7.z = t2[r6.z].val[0/4+2];
    r7.xyz = -r7.xyz + r2.xyz;
    r8.x = t2[r6.w].val[0/4];
    r8.y = t2[r6.w].val[0/4+1];
    r8.z = t2[r6.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r4.w = (int)r7.y | (int)r7.x;
    r4.w = (int)r7.z | (int)r4.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r4.www ? r2.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r3.yzw + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r1.w * r2.w;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r3.x;
  o2.w = 0.505882382;
  o2.xy = r6.xy;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}