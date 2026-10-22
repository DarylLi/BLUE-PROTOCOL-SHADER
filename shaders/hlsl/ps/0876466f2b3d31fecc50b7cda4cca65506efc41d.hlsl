// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[23];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r4.xyz = r3.xyz / cb5[10].zzz;
  r5.xy = t2.SampleBias(s2_s, r4.xz, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r6.y = v1.y * r0.w;
  r6.xz = -r5.xy;
  r5.xy = t2.SampleBias(s2_s, r4.yz, cb0[143].y).xy;
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
  r5.zw = t2.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
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
  r7.y = dot(r0.zxy, r6.xyz);
  r7.z = dot(v1.xyz, r6.xyz);
  r6.xyz = r3.xyz / cb5[11].yyy;
  r5.zw = t2.SampleBias(s2_s, r6.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r8.y = v1.y * r0.w;
  r8.xz = -r5.zw;
  r5.zw = t2.SampleBias(s2_s, r6.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.zw, r5.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r9.x = v1.x * r0.w;
  r9.yz = -r5.zw;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.xxx * r9.xyz + r8.xyz;
  r5.zw = t2.SampleBias(s2_s, r6.xy, cb0[143].y).xy;
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
  r9.y = dot(r0.zxy, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = sqrt(r0.w);
  r1.w = r0.w / cb5[11].z;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[11].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r8.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r1.www * r8.xyz + r7.xyz;
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb5[12].xxx * r8.xyz + r7.xyz;
  r5.zw = cb5[12].yy * v3.xy;
  r2.w = cb5[12].z + cb0[143].y;
  r5.zw = t3.SampleBias(s3_s, r5.zw, r2.w).xy;
  r8.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r8.xy, r8.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r8.z = sqrt(r2.w);
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb5[12].www * r9.xyz + r8.xyz;
  r7.xyz = cb5[13].xxx * r8.xyz + r7.xyz;
  r9.xyz = r3.xyz / cb5[13].www;
  r5.zw = t4.SampleBias(s4_s, r9.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r10.y = v1.y * r2.w;
  r10.xz = -r5.zw;
  r5.zw = t4.SampleBias(s4_s, r9.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r11.x = v1.x * r2.w;
  r11.yz = -r5.zw;
  r11.xyz = r11.xyz + -r10.xyz;
  r10.xyz = r5.xxx * r11.xyz + r10.xyz;
  r5.zw = t4.SampleBias(s4_s, r9.xy, cb0[143].y).xy;
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
  r11.y = dot(r0.zxy, r10.xyz);
  r11.z = dot(v1.xyz, r10.xyz);
  r10.xyz = r3.xyz / cb5[14].zzz;
  r5.zw = t4.SampleBias(s4_s, r10.xz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r12.y = v1.y * r2.w;
  r12.xz = -r5.zw;
  r5.zw = t4.SampleBias(s4_s, r10.yz, cb0[143].y).xy;
  r5.zw = r5.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.zw, r5.zw);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r13.x = v1.x * r2.w;
  r13.yz = -r5.zw;
  r13.xyz = r13.xyz + -r12.xyz;
  r5.xzw = r5.xxx * r13.xyz + r12.xyz;
  r12.xy = t4.SampleBias(s4_s, r10.xy, cb0[143].y).xy;
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
  r12.y = dot(r0.zxy, r5.xyz);
  r12.z = dot(v1.xyz, r5.xyz);
  r2.w = r0.w / cb5[14].w;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb5[15].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r5.xyz = r12.xyz + -r11.xyz;
  r5.xyz = r2.www * r5.xyz + r11.xyz;
  r11.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[15].yyy * r11.xyz + r5.xyz;
  r5.xyz = cb5[15].zzz * r8.xyz + r5.xyz;
  r3.w = cmp(0 >= v2.x);
  r4.w = log2(v2.x);
  r4.w = cb5[15].w * r4.w;
  r4.w = exp2(r4.w);
  r3.w = r3.w ? 0 : r4.w;
  r4.w = 1 + -r3.w;
  r4.w = r4.w * r3.w;
  r3.xyz = r3.xyz / cb5[16].zzz;
  r5.w = t5.Sample(s0_s, r3.xz).x;
  r3.z = t5.Sample(s0_s, r3.yz).x;
  r8.xy = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r3.z = r3.z + -r5.w;
  r3.z = r8.x * r3.z + r5.w;
  r3.x = t5.Sample(s0_s, r3.xy).x;
  r3.x = r3.x + -r3.z;
  r3.x = r8.y * r3.x + r3.z;
  r3.y = cmp(0 >= r3.x);
  r3.x = log2(r3.x);
  r3.x = cb5[17].x * r3.x;
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
  r0.xyz = r3.yyy * v0.yzx + r0.xyz;
  r0.xyz = r3.www * v1.yzx + r0.xyz;
  r3.y = dot(r0.xyz, r0.xyz);
  r3.y = rsqrt(r3.y);
  r5.xyz = r3.yyy * r0.xyz;
  r0.x = dot(-cb4[5].xyz, -cb4[5].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb4[5].xyz / r0.xxx;
  r0.x = dot(r7.yzx, r5.xyz);
  r0.x = 1 + r0.x;
  r8.xyz = cb0[67].xyz + -r2.xyz;
  r0.z = dot(r8.xyz, r8.xyz);
  r0.z = sqrt(r0.z);
  r8.xyz = r8.xyz / r0.zzz;
  r0.z = saturate(dot(-r8.xyz, r7.xyz));
  r3.z = 1 + -cb3[1].x;
  r0.z = saturate(r3.z + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r5.zxy, r1.xyz);
  r0.z = max(0, r0.z);
  r0.z = 1 + -r0.z;
  r0.z = max(9.99999975e-005, abs(r0.z));
  r0.z = log2(r0.z);
  r1.x = cb3[1].y * r0.z;
  r1.x = exp2(r1.x);
  r1.y = 1 + -cb3[0].w;
  r1.x = r1.x * r1.y + cb3[0].w;
  r1.y = cmp(r1.x >= cb3[0].y);
  r1.y = r1.y ? 1.000000 : 0;
  r1.x = r1.y * r1.x;
  r1.y = r0.y * r3.y + 1;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[0].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = r1.z ? 0 : r1.y;
  r1.x = r1.x * r1.y;
  r0.y = -r0.y * r3.y + 1;
  r1.y = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r1.y ? 0 : r0.y;
  r0.y = r1.x * r0.y;
  r0.y = cb3[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r1.xyz = cb4[4].xyz * r0.xxx;
  r0.x = dot(-cb4[8].xyz, -cb4[8].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb4[8].xyz / r0.xxx;
  r0.x = dot(r7.yzx, r5.xyz);
  r0.x = 1 + r0.x;
  r3.y = saturate(dot(-r8.xyz, r7.xyz));
  r3.y = saturate(r3.y + r3.z);
  r0.x = r3.y * r0.x;
  r0.x = r0.x * r0.y;
  r3.yzw = cb4[9].xyz * r0.xxx;
  r3.yzw = cb4[1].yyy * r3.yzw;
  r1.xyz = r1.xyz * cb4[1].xxx + r3.yzw;
  r1.xyz = cb3[2].xyz * r1.xyz;
  r3.yzw = cb5[2].xyz * r1.xyz;
  r1.xyz = -r1.xyz * cb5[2].xyz + cb5[3].xyz;
  r1.xyz = cb5[17].yyy * r1.xyz + r3.yzw;
  r7.xyzw = cmp(abs(r5.xyyz) < abs(r5.zzxx));
  r0.x = r7.y ? r7.x : 0;
  r3.yzw = r7.zzz ? float3(1.40129846e-045,2.80259693e-045,0) : float3(2.80259693e-045,0,1.40129846e-045);
  r3.yzw = r0.xxx ? float3(0,1.40129846e-045,2.80259693e-045) : r3.yzw;
  r0.xy = cmp(abs(r5.zx) < abs(r5.yy));
  r0.x = r0.x ? r7.w : 0;
  r7.xyz = r0.yyy ? float3(2,1,3) : float3(1,3,2);
  r7.xyz = r0.xxx ? float3(3,2,1) : r7.xyz;
  r7.xyz = (int3)-r3.yzw + (int3)r7.xyz;
  r7.xyz = max(int3(0,0,0), (int3)r7.xyz);
  r7.xyz = min(int3(2,2,2), (int3)r7.xyz);
  r0.x = dot(abs(r5.zxy), icb[r3.y+0].xyz);
  r0.y = dot(abs(r5.zxy), icb[r7.x+0].xyz);
  r0.xy = float2(-0.577300012,-0.577300012) + r0.xy;
  r0.xy = saturate(float2(2.36574411,2.36574411) * r0.xy);
  r3.y = cmp((int)r3.w < (int)r3.z);
  r3.yz = r3.yy ? r3.wz : r3.zw;
  r3.w = cmp((int)r7.z < (int)r7.y);
  r7.xy = r3.ww ? r7.zy : r7.yz;
  r8.xyz = ddx_coarse(r4.xyz);
  r11.xyz = ddy_coarse(r4.xyz);
  r12.x = dot(r4.xyz, icb[r3.y+0].xyz);
  r12.y = dot(r4.xyz, icb[r3.z+0].xyz);
  r13.x = dot(r8.xyz, icb[r3.y+0].xyz);
  r13.y = dot(r8.xyz, icb[r3.z+0].xyz);
  r14.x = dot(r11.xyz, icb[r3.y+0].xyz);
  r14.y = dot(r11.xyz, icb[r3.z+0].xyz);
  r12.xyzw = t6.SampleGrad(s0_s, r12.xy, r13.xyxx, r14.xyxx).xyzw;
  r13.x = dot(r4.xyz, icb[r7.x+0].xyz);
  r13.y = dot(r4.xyz, icb[r7.y+0].xyz);
  r4.x = dot(r8.xyz, icb[r7.x+0].xyz);
  r4.y = dot(r8.xyz, icb[r7.y+0].xyz);
  r8.x = dot(r11.xyz, icb[r7.x+0].xyz);
  r8.y = dot(r11.xyz, icb[r7.y+0].xyz);
  r4.xyzw = t6.SampleGrad(s0_s, r13.xy, r4.xyxx, r8.xyxx).xyzw;
  r4.xyzw = r4.xyzw * r0.yyyy;
  r4.xyzw = r12.xyzw * r0.xxxx + r4.xyzw;
  r3.w = r0.x + r0.y;
  r4.xyzw = r4.xyzw / r3.wwww;
  r6.w = dot(r2.xy, float2(17,0.100000001));
  r6.w = sin(r6.w);
  r6.w = 10000 * r6.w;
  r7.z = 0.100000001 * r2.z;
  r7.w = r2.y * 13 + r2.x;
  r7.w = sin(r7.w);
  r7.w = 0.100000001 + abs(r7.w);
  r6.w = r7.w * r6.w;
  r6.w = frac(r6.w);
  r7.z = r6.w * 17 + r7.z;
  r7.z = sin(r7.z);
  r7.z = 10000 * r7.z;
  r6.w = r2.z * 13 + r6.w;
  r6.w = sin(r6.w);
  r6.w = 0.100000001 + abs(r6.w);
  r6.w = r7.z * r6.w;
  r6.w = frac(r6.w);
  r8.xyzw = cmp(abs(v1.yzzx) < abs(v1.xxyy));
  r7.z = r8.y ? r8.x : 0;
  r8.xyz = r8.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r7.zzz ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r7.zw = cmp(abs(v1.xy) < abs(v1.zz));
  r7.z = r7.z ? r8.w : 0;
  r11.xy = r7.ww ? float2(3,1) : float2(2,3);
  r7.zw = r7.zz ? float2(1.40129846e-045,2.80259693e-045) : r11.xy;
  r7.zw = (int2)-r8.zy + (int2)r7.zw;
  r7.zw = max(int2(0,0), (int2)r7.zw);
  r7.zw = min(int2(0,0), (int2)r7.zw);
  r8.x = dot(abs(v1.xyz), icb[r8.x+0].xyz);
  r8.x = -0.577300012 + r8.x;
  r8.x = saturate(2.36574411 * r8.x);
  r8.w = cmp((int)r8.z < (int)r8.y);
  r8.yz = r8.ww ? r8.zy : r8.yz;
  r8.w = cmp((int)r7.z < (int)r7.w);
  r7.zw = r8.ww ? r7.zw : r7.wz;
  r6.w = cmp(r6.w < r8.x);
  r7.zw = r6.ww ? r8.yz : r7.zw;
  r8.xyz = ddx_coarse(r6.xyz);
  r11.xyz = ddy_coarse(r6.xyz);
  r12.x = dot(r6.xyz, icb[r7.z+0].xyz);
  r12.y = dot(r6.xyz, icb[r7.w+0].xyz);
  r6.x = dot(r8.xyz, icb[r7.z+0].xyz);
  r6.y = dot(r8.xyz, icb[r7.w+0].xyz);
  r8.x = dot(r11.xyz, icb[r7.z+0].xyz);
  r8.y = dot(r11.xyz, icb[r7.w+0].xyz);
  r6.xyzw = t6.SampleGrad(s0_s, r12.xy, r6.xyxx, r8.xyxx).xyzw;
  r6.xyzw = r6.xyzw + -r4.xyzw;
  r4.xyzw = r1.wwww * r6.xyzw + r4.xyzw;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r4.xyz;
  r6.xyz = r4.www * r6.xyz + r4.xyz;
  r6.xyz = saturate(cb5[17].zzz * r6.xyz);
  r8.xyz = float3(1,1,1) + -r6.xyz;
  r8.xyz = cb5[6].xyz * r8.xyz;
  r8.xyz = -r8.xyz * float3(2,2,2) + float3(1,1,1);
  r11.xyz = cb5[5].xyz * r6.xyz;
  r11.xyz = r11.xyz + r11.xyz;
  r6.xyz = cmp(r6.xyz >= float3(0.5,0.5,0.5));
  r6.xyz = r6.xyz ? r8.xyz : r11.xyz;
  r8.xyz = cb5[5].xyz + -r6.xyz;
  r6.xyz = cb5[17].www * r8.xyz + r6.xyz;
  r4.w = r0.w / cb5[18].x;
  r6.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb5[18].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r6.w ? 0 : r4.w;
  r6.xyz = r6.xyz + -r4.xyz;
  r6.xyz = r6.xyz * r4.www;
  r4.xyz = cb5[18].zzz * r6.xyz + r4.xyz;
  r6.xyz = ddx_coarse(r9.xyz);
  r8.xyz = ddy_coarse(r9.xyz);
  r11.x = dot(r9.xyz, icb[r3.y+0].xyz);
  r11.y = dot(r9.xyz, icb[r3.z+0].xyz);
  r12.x = dot(r6.xyz, icb[r3.y+0].xyz);
  r12.y = dot(r6.xyz, icb[r3.z+0].xyz);
  r13.x = dot(r8.xyz, icb[r3.y+0].xyz);
  r13.y = dot(r8.xyz, icb[r3.z+0].xyz);
  r11.xyzw = t7.SampleGrad(s0_s, r11.xy, r12.xyxx, r13.xyxx).xyzw;
  r12.x = dot(r9.xyz, icb[r7.x+0].xyz);
  r12.y = dot(r9.xyz, icb[r7.y+0].xyz);
  r9.x = dot(r6.xyz, icb[r7.x+0].xyz);
  r9.y = dot(r6.xyz, icb[r7.y+0].xyz);
  r6.x = dot(r8.xyz, icb[r7.x+0].xyz);
  r6.y = dot(r8.xyz, icb[r7.y+0].xyz);
  r6.xyzw = t7.SampleGrad(s0_s, r12.xy, r9.xyxx, r6.xyxx).xyzw;
  r6.xyzw = r6.xyzw * r0.yyyy;
  r6.xyzw = r11.xyzw * r0.xxxx + r6.xyzw;
  r6.xyzw = r6.xyzw / r3.wwww;
  r3.yzw = ddx_coarse(r10.xyz);
  r8.xyz = ddy_coarse(r10.xyz);
  r0.x = dot(r10.xyz, icb[r7.z+0].xyz);
  r0.y = dot(r10.xyz, icb[r7.w+0].xyz);
  r7.x = dot(r3.yzw, icb[r7.z+0].xyz);
  r7.y = dot(r3.yzw, icb[r7.w+0].xyz);
  r9.x = dot(r8.xyz, icb[r7.z+0].xyz);
  r9.y = dot(r8.xyz, icb[r7.w+0].xyz);
  r7.xyzw = t7.SampleGrad(s0_s, r0.xy, r7.xyxx, r9.xyxx).xyzw;
  r7.xyzw = r7.xyzw + -r6.xyzw;
  r6.xyzw = r2.wwww * r7.xyzw + r6.xyzw;
  r0.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.yzw = r0.xxx + -r6.xyz;
  r3.yzw = r6.www * r3.yzw + r6.xyz;
  r3.yzw = saturate(cb5[18].www * r3.yzw);
  r7.xyz = float3(1,1,1) + -r3.yzw;
  r7.xyz = cb5[9].xyz * r7.xyz;
  r7.xyz = -r7.xyz * float3(2,2,2) + float3(1,1,1);
  r8.xyz = cb5[8].xyz * r3.yzw;
  r8.xyz = r8.xyz + r8.xyz;
  r3.yzw = cmp(r3.yzw >= float3(0.5,0.5,0.5));
  r3.yzw = r3.yzw ? r7.xyz : r8.xyz;
  r7.xyz = cb5[8].xyz + -r3.yzw;
  r3.yzw = cb5[19].xxx * r7.xyz + r3.yzw;
  r0.y = r0.w / cb5[19].y;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb5[19].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.w ? 0 : r0.y;
  r3.yzw = r3.yzw + -r6.xyz;
  r3.yzw = r3.yzw * r0.yyy;
  r3.yzw = cb5[19].www * r3.yzw + r6.xyz;
  r3.yzw = r3.yzw + -r4.xyz;
  r3.yzw = r3.xxx * r3.yzw + r4.xyz;
  r3.yzw = max(float3(0.00999999978,0.00999999978,0.00999999978), r3.yzw);
  r0.y = saturate(cb5[20].x + r1.w);
  r0.w = saturate(cb5[20].y + r0.x);
  r0.w = r0.w + -r0.y;
  r4.x = saturate(r3.x * r0.w + r0.y);
  r0.y = cb5[20].z * r0.z;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb5[20].w * r0.y;
  r0.z = saturate(cb5[21].y + v1.z);
  r0.y = r0.z * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r4.y = saturate(cb5[21].z * r0.y);
  r0.y = saturate(cb5[21].w + r1.w);
  r0.x = saturate(cb5[22].x + r0.x);
  r0.x = r0.x + -r0.y;
  r0.x = saturate(r3.x * r0.x + r0.y);
  r0.yzw = min(float3(1,1,1), r3.yzw);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r3.xyzw = t1.Sample(s1_s, v4.zw).xyzw;
  r6.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r3.xyzw = saturate(r3.xyzw * cb2[1].xyzw + r6.xyzw);
  r3.xyzw = r3.xyzw * r3.xyzw;
  o5.xyzw = cb2[0].xyzw * r3.xyzw;
  r0.x = 0.0799999982 * r4.y;
  r3.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.yzw;
  r3.xyz = r4.xxx * r3.xyz + r0.xxx;
  r6.xyz = -r0.yzw * r4.xxx + r0.yzw;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyz = r3.xyz * cb0[137].www + cb0[137].xyz;
  r0.x = cmp(0 != cb0[183].w);
  r7.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r0.xxx ? r7.xyz : r6.xyz;
  r3.xyz = r0.xxx ? float3(0,0,0) : r3.xyz;
  r0.x = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r0.x * 2.04040003 + -0.332399994;
  r1.w = r0.x * -4.79510021 + r1.w;
  r0.x = r0.x * 2.75519991 + r1.w;
  r0.x = 1.33200002 + r0.x;
  r0.x = max(1, r0.x);
  r4.zw = float2(1,0.5) * v4.xy;
  r7.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t0.Sample(s1_s, r4.zw).xyzw;
  r7.xyzw = t0.Sample(s1_s, r7.xy).xyzw;
  r1.w = r7.w * 0.00392156886 + r8.w;
  r1.w = -0.00196078443 + r1.w;
  r1.w = r1.w * cb2[4].w + cb2[6].w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * cb2[4].xyz + cb2[6].xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r5.w = 1;
  r2.w = dot(r7.xyzw, r5.xyzw);
  r2.w = max(0, r2.w);
  r1.w = r2.w * r1.w;
  r7.xyz = r1.www * r8.xyz;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r0.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r0.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r0.yzw * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r2.www ? r2.xyz : r1.xyz;
  }
  r2.xyz = cb0[145].yyy * r3.xyz + r7.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r1.w * r0.x;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r0.yzw;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}