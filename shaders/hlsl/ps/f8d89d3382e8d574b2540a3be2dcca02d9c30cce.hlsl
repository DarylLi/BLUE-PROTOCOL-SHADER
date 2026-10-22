// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[34];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[215];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r4.xyzw = cb3[18].xxww * v3.xyxy;
  r0.w = cb3[18].y + cb0[143].y;
  r5.xy = t10.SampleBias(s2_s, r4.xy, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[18].zzz * r6.xyz + r5.xyz;
  r1.w = 1 + r5.z;
  r2.w = (int)v4.x * 36;
  r6.x = t9[r2.w].val[0/4];
  r6.y = t9[r2.w].val[0/4+1];
  r6.z = t9[r2.w].val[0/4+2];
  r2.w = dot(-r6.xyz, -r6.xyz);
  r2.w = sqrt(r2.w);
  r3.w = mad((int)v4.x, 36, 1);
  r6.x = t9[r3.w].val[0/4];
  r6.y = t9[r3.w].val[0/4+1];
  r6.z = t9[r3.w].val[0/4+2];
  r3.w = dot(-r6.xyz, -r6.xyz);
  r3.w = sqrt(r3.w);
  r2.w = r3.w + r2.w;
  r3.w = mad((int)v4.x, 36, 2);
  r6.x = t9[r3.w].val[0/4];
  r6.y = t9[r3.w].val[0/4+1];
  r6.z = t9[r3.w].val[0/4+2];
  r3.w = dot(-r6.xyz, -r6.xyz);
  r3.w = sqrt(r3.w);
  r2.w = r3.w + r2.w;
  r2.w = 0.333333343 * r2.w;
  r4.zw = r4.zw * r2.ww;
  r4.zw = t11.SampleBias(s3_s, r4.zw, r0.w).xy;
  r6.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[19].xxx * r7.xyz + r6.xyz;
  r5.w = 1 + r5.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r0.w = dot(r5.xyw, r6.xyz);
  r6.xyz = r6.xyz * r1.www;
  r6.xyz = r5.xyw * r0.www + -r6.xyz;
  r7.xyz = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r1.w = saturate(r0.w / cb3[19].y);
  r1.w = 1 + -r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[19].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r1.w = max(cb3[19].w, r1.w);
  r6.xyz = r6.xyz + -r5.xyz;
  r5.xyz = r1.www * r6.xyz + r5.xyz;
  r6.xyz = r3.xyz / cb3[20].zzz;
  r4.zw = t12.SampleBias(s4_s, r6.xz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.zw, r4.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.y = v1.y * r1.w;
  r7.xz = -r4.zw;
  r4.zw = t12.SampleBias(s4_s, r6.yz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.zw, r4.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r8.x = v1.x * r1.w;
  r8.yz = -r4.zw;
  r4.zw = min(float2(1,1), abs(v1.xz));
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.zzz * r8.xyz + r7.xyz;
  r8.xy = t12.SampleBias(s4_s, r6.xy, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r8.xy, r8.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r8.xy = -r8.xy;
  r8.z = v1.z * r1.w;
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.www * r8.xyz + r7.xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = sqrt(r1.w);
  r7.xyz = r7.xyz / r1.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.xyz, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb3[20].www * r7.xyz + r8.xyz;
  r7.xyz = cb3[21].yyy * r5.xyz + r7.xyz;
  r4.zw = cmp(float2(0,0) >= v2.yz);
  r8.xy = log2(v2.yz);
  r8.xy = cb3[21].zz * r8.xy;
  r8.xy = exp2(r8.xy);
  r4.zw = r4.zw ? float2(0,0) : r8.xy;
  r3.xyz = r3.xyz / cb3[22].yyy;
  r1.w = t13.Sample(s0_s, r3.xz).x;
  r2.w = t13.Sample(s0_s, r3.yz).x;
  r3.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.w = r2.w + -r1.w;
  r1.w = r3.z * r2.w + r1.w;
  r2.w = t13.Sample(s0_s, r3.xy).x;
  r2.w = r2.w + -r1.w;
  r1.w = r3.w * r2.w + r1.w;
  r2.w = cmp(0 >= abs(r1.w));
  r1.w = log2(abs(r1.w));
  r1.w = cb3[22].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r3.xy = r1.ww * r4.zw + r4.zw;
  r3.zw = cmp(float2(0,0) >= r3.xy);
  r3.xy = log2(r3.xy);
  r3.xy = cb3[22].ww * r3.xy;
  r3.xy = exp2(r3.xy);
  r3.xy = r3.zw ? float2(0,0) : r3.xy;
  r3.xy = r3.xy + -r4.zw;
  r8.xyz = float3(0,0,1) + r5.xyz;
  r9.xyz = r8.yyy * r0.xyz;
  r8.xyw = r8.xxx * v0.xyz + r9.xyz;
  r8.xyz = r8.zzz * v1.xyz + r8.xyw;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = sqrt(r2.w);
  r8.xyz = r8.xyz / r2.www;
  r2.w = dot(r8.xyz, cb3[3].xyz);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * r1.w + -r1.w;
  r1.w = cb3[24].w * r2.w + r1.w;
  r1.w = saturate(r1.w * cb3[25].x + cb3[25].w);
  r3.xy = cb3[23].xx * r3.xy + r4.zw;
  r1.w = saturate(-r3.y + r1.w);
  r1.w = saturate(r3.x + r1.w);
  r3.xyz = t14.SampleBias(s5_s, r4.xy, cb0[143].y).xyw;
  r2.w = r3.z * -2 + 1;
  r2.w = cb3[26].x * r2.w + r3.z;
  r3.z = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[26].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb3[26].z * r2.w);
  r2.w = r3.z ? 0 : r2.w;
  r1.w = max(r2.w, r1.w);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r1.www * r7.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r5.xyz * r2.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r2.www * r0.xyz;
  r0.x = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb2[5].xyz / r0.xxx;
  r0.x = dot(r7.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r8.xyz = cb0[67].xyz + -r2.xyz;
  r0.y = dot(r8.xyz, r8.xyz);
  r0.y = sqrt(r0.y);
  r8.xyz = r8.xyz / r0.yyy;
  r0.y = saturate(dot(-r8.xyz, r7.xyz));
  r3.z = 1 + -cb1[1].x;
  r0.y = saturate(r3.z + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r5.xyz, r1.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r1.x = cb1[1].y * r0.y;
  r1.x = exp2(r1.x);
  r1.y = 1 + -cb1[0].w;
  r1.x = r1.x * r1.y + cb1[0].w;
  r1.y = cmp(r1.x >= cb1[0].y);
  r1.y = r1.y ? 1.000000 : 0;
  r1.x = r1.y * r1.x;
  r1.y = r0.z * r2.w + 1;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb1[0].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = r1.z ? 0 : r1.y;
  r1.x = r1.x * r1.y;
  r0.z = -r0.z * r2.w + 1;
  r1.y = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb1[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r1.y ? 0 : r0.z;
  r0.z = r1.x * r0.z;
  r0.z = cb1[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r1.xyz = cb2[4].xyz * r0.xxx;
  r0.x = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r7.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r2.w = saturate(dot(-r8.xyz, r7.xyz));
  r2.w = saturate(r2.w + r3.z);
  r0.x = r2.w * r0.x;
  r0.x = r0.x * r0.z;
  r7.xyz = cb2[9].xyz * r0.xxx;
  r7.xyz = cb2[1].yyy * r7.xyz;
  r1.xyz = r1.xyz * cb2[1].xxx + r7.xyz;
  r1.xyz = cb1[2].xyz * r1.xyz;
  r7.xyz = cb3[5].xyz * r1.xyz;
  r1.xyz = -r1.xyz * cb3[5].xyz + cb3[6].xyz;
  r1.xyz = cb3[26].www * r1.xyz + r7.xyz;
  r4.xyz = t15.SampleBias(s6_s, r4.xy, cb0[143].y).xyz;
  r0.x = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.xxx + -r4.xyz;
  r4.xyz = cb3[27].zzz * r7.xyz + r4.xyz;
  r0.x = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r7.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[27].y, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r4.xyz = r4.xyz * r9.xxx + r7.xyz;
  r4.xyz = r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r7.xyz = cb3[8].xyz * r4.xyz;
  r8.xyzw = cmp(abs(r5.yzzx) < abs(r5.xxyy));
  r0.x = r8.y ? r8.x : 0;
  r8.xyz = r8.zzz ? float3(1,2,0) : float3(2,0,1);
  r8.xyz = r0.xxx ? float3(0,1.40129846e-045,2.80259693e-045) : r8.xyz;
  r0.xz = cmp(abs(r5.xy) < abs(r5.zz));
  r0.x = r0.x ? r8.w : 0;
  r9.xyz = r0.zzz ? float3(2,1,3) : float3(1,3,2);
  r9.xyz = r0.xxx ? float3(3,2,1) : r9.xyz;
  r9.xyz = (int3)-r8.xyz + (int3)r9.xyz;
  r9.xyz = max(int3(0,0,0), (int3)r9.xyz);
  r9.xyz = min(int3(2,2,2), (int3)r9.xyz);
  r10.x = dot(abs(r5.xyz), icb[r8.x+0].xyz);
  r10.y = dot(abs(r5.xyz), icb[r9.x+0].xyz);
  r0.xz = float2(-0.577300012,-0.577300012) + r10.xy;
  r0.xz = saturate(float2(2.36574411,2.36574411) * r0.xz);
  r2.w = cmp((int)r8.z < (int)r8.y);
  r3.zw = r2.ww ? r8.zy : r8.yz;
  r2.w = cmp((int)r9.z < (int)r9.y);
  r8.xy = r2.ww ? r9.zy : r9.yz;
  r9.xyz = ddx_coarse(r6.xyz);
  r10.xyz = ddy_coarse(r6.xyz);
  r11.x = dot(r6.xyz, icb[r3.z+0].xyz);
  r11.y = dot(r6.xyz, icb[r3.w+0].xyz);
  r12.x = dot(r9.xyz, icb[r3.z+0].xyz);
  r12.y = dot(r9.xyz, icb[r3.w+0].xyz);
  r13.x = dot(r10.xyz, icb[r3.z+0].xyz);
  r13.y = dot(r10.xyz, icb[r3.w+0].xyz);
  r14.xyz = t16.SampleGrad(s0_s, r11.xy, r12.xyx, r13.xyx).xyz;
  r15.x = dot(r6.xyz, icb[r8.x+0].xyz);
  r15.y = dot(r6.xyz, icb[r8.y+0].xyz);
  r6.x = dot(r9.xyz, icb[r8.x+0].xyz);
  r6.y = dot(r9.xyz, icb[r8.y+0].xyz);
  r9.x = dot(r10.xyz, icb[r8.x+0].xyz);
  r9.y = dot(r10.xyz, icb[r8.y+0].xyz);
  r8.xyz = t16.SampleGrad(s0_s, r15.xy, r6.xyx, r9.xyx).xyz;
  r8.xyz = r8.xyz * r0.zzz;
  r8.xyz = r14.xyz * r0.xxx + r8.xyz;
  r2.w = r0.x + r0.z;
  r8.xyz = r8.xyz / r2.www;
  r3.z = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r3.zzz + -r8.xyz;
  r8.xyz = cb3[28].yyy * r10.xyz + r8.xyz;
  r3.z = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r3.zzz * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r10.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb3[28].x, r14.x, r16.x);
  r10.xyz = r14.xxx * r10.xyz;
  r8.xyz = r8.xyz * r16.xxx + r10.xyz;
  r8.xyz = r3.zzz * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = cb3[10].xyz * r8.xyz;
  r10.xyzw = r2.xyxy / cb3[28].zzww;
  r3.z = t17.Sample(s0_s, r10.xy).x;
  r3.w = t17.Sample(s0_s, r10.zw).x;
  r4.w = r0.w / cb3[29].x;
  r5.w = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb3[29].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r5.w ? 0 : r4.w;
  r3.w = r3.w + -r3.z;
  r3.z = r4.w * r3.w + r3.z;
  r3.w = cmp(0 >= r3.z);
  r3.z = log2(r3.z);
  r3.z = cb3[29].z * r3.z;
  r3.z = exp2(r3.z);
  r3.z = saturate(cb3[29].w * r3.z);
  r3.z = r3.w ? 0 : r3.z;
  r10.xyz = r8.xyz * cb3[12].xyz + -r8.xyz;
  r8.xyz = r3.zzz * r10.xyz + r8.xyz;
  r3.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = saturate(cb3[30].x * r3.w);
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r10.xyz = -r4.www * cb3[15].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r14.xyz = cb3[14].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r10.xyz = r3.www ? r10.xyz : r14.xyz;
  r14.xyz = cb3[14].xyz + -r10.xyz;
  r10.xyz = cb3[30].yyy * r14.xyz + r10.xyz;
  r0.w = r0.w / cb3[30].z;
  r3.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[30].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r3.w ? 0 : r0.w;
  r10.xyz = r10.xyz + -r8.xyz;
  r10.xyz = r10.xyz * r0.www;
  r10.xyz = cb3[31].xxx * r10.xyz + r8.xyz;
  r8.xyz = -r10.xyz + r8.xyz;
  r8.xyz = r3.zzz * r8.xyz + r10.xyz;
  r4.xyz = -r4.xyz * cb3[8].xyz + r8.xyz;
  r4.xyz = r1.www * r4.xyz + r7.xyz;
  r0.w = saturate(v2.x + v2.x);
  r7.xyz = cb3[17].xyz * r4.xyz + -r4.xyz;
  r4.xyz = r0.www * r7.xyz + r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r0.w = -cb3[31].y * v2.x + r3.x;
  r3.x = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[31].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r3.x ? 0 : r0.w;
  r7.y = saturate(cb3[31].w + r0.w);
  r7.x = cb3[32].x + r3.y;
  r3.xy = t18.SampleGrad(s0_s, r11.xy, r12.xy, r13.xy).xy;
  r3.zw = t18.SampleGrad(s0_s, r15.xy, r6.xx, r9.xx).xy;
  r0.zw = r3.zw * r0.zz;
  r0.xz = r3.xy * r0.xx + r0.zw;
  r0.xz = r0.xz / r2.ww;
  r0.x = -cb3[31].y * v2.x + r0.x;
  r3.y = saturate(cb3[32].y + r0.x);
  r3.x = cb3[32].z + r0.z;
  r0.xz = r3.xy + -r7.xy;
  r0.xz = saturate(r1.ww * r0.xz + r7.xy);
  r0.y = cb3[32].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb3[33].x * r0.y;
  r0.w = saturate(cb3[33].z + v1.z);
  r0.y = r0.w * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb3[33].w * r0.y);
  r3.xyz = min(float3(1,1,1), r4.xyz);
  o2.z = r0.z * cb0[139].y + cb0[139].x;
  r4.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
  r4.xyz = cb0[213].xyz * r4.xyz;
  r6.xyz = (int3)r4.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r0.z = 1 + cb0[213].w;
  r4.xyz = r4.xyz / r6.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = cb0[213].www * r4.xyz;
  r4.xyz = r6.xyz * r0.zzz + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = cb0[214].xyz * r4.xyz;
  r0.z = mad((int)v4.x, 36, 20);
  r0.z = t9[r0.z].val[4/4];
  r0.w = t9[r0.z].val[4/4+1];
  r0.w = cmp(0 < r0.w);
  if (r0.w != 0) {
    r0.w = t8.SampleLevel(s1_s, r4.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r1.w = 0.0799999982 * r0.y;
  r6.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r6.xyz = r0.xxx * r6.xyz + r1.www;
  r7.xyz = -r3.xyz * r0.xxx + r3.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.www ? r8.xyz : r7.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r8.xyz = t1.SampleLevel(s1_s, r4.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r4.xyzw = t7.SampleLevel(s1_s, r4.xyz, 0).xyzw;
  r4.xyzw = r4.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r4.xyzw = r4.xyzw * r8.xxxx;
  r4.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r4.xyzw;
  r14.xyz = r5.yzy * r5.yzx;
  r15.yw = r5.zz * r5.yx;
  r2.w = r5.x * r5.x + -r14.x;
  r16.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.yzx;
  r15.xz = r14.zy * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r15.xyzw;
  r2.w = 0.429042608 * r2.w;
  r15.x = r8.y;
  r15.yzw = r9.yzw;
  r16.x = 0.886227548;
  r3.w = dot(r15.xyzw, r16.xyzw);
  r9.yzw = r12.xyz;
  r5.w = dot(r9.xyzw, r14.xyzw);
  r3.w = r5.w + r3.w;
  r9.x = r12.w * r2.w + r3.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r3.w = dot(r12.xyzw, r16.xyzw);
  r10.yzw = r13.xyz;
  r5.w = dot(r10.xyzw, r14.xyzw);
  r3.w = r5.w + r3.w;
  r9.y = r13.w * r2.w + r3.w;
  r8.yzw = r11.yzw;
  r3.w = dot(r8.xyzw, r16.xyzw);
  r11.yzw = r4.xyz;
  r4.x = dot(r11.xyzw, r14.xyzw);
  r3.w = r4.x + r3.w;
  r9.z = r4.w * r2.w + r3.w;
  r4.xyz = max(float3(0,0,0), r9.xyz);
  r4.xyz = cb0[157].xyz * r4.xyz;
  r4.xyz = float3(0.318309873,0.318309873,0.318309873) * r4.xyz;
  r2.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r7.xyz;
  r8.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r4.xyz = r8.xyz * r4.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r7.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t9[r7.x].val[0/4];
    r7.z = t9[r7.x].val[0/4+1];
    r7.w = t9[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r2.xyz;
    r8.x = t9[r7.y].val[0/4];
    r8.y = t9[r7.y].val[0/4+1];
    r8.z = t9[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r3.w = (int)r7.y | (int)r7.x;
    r3.w = (int)r7.z | (int)r3.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r3.www ? r2.xyz : r1.xyz;
  }
  r2.xyz = cb0[145].yyy * r6.xyz + r4.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r2.w * r1.w;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r0.z;
  o2.w = 0.505882382;
  o2.xy = r0.xy;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}