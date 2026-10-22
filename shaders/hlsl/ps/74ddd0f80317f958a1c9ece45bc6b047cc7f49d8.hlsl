// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

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

SamplerState s11_s : register(s11);

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

cbuffer cb1 : register(b1)
{
  float4 cb1[28];
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
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xy = t4.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb1[17].xxx * r3.xyz + r2.xyz;
  r0.w = 1 + r2.z;
  r3.xy = v2.zw + -v2.xy;
  r3.zw = cb1[17].zz * r3.xy + v2.xy;
  r3.zw = cb1[1].xy * r3.zw;
  r4.xy = t5.SampleBias(s3_s, r3.zw, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb1[18].yyy * r5.xyz + r4.xyz;
  r5.xy = cb1[18].ww * r3.xy + v2.xy;
  r5.xy = cb1[2].xy * r5.xy;
  r5.zw = t6.SampleBias(s4_s, r5.xy, cb0[143].y).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r6.xy, r6.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r6.z = sqrt(r1.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb1[19].zzz * r7.xyz + r6.xyz;
  r7.xyz = t7.SampleBias(s5_s, v2.xy, cb0[143].y).xyz;
  r1.w = saturate(cb1[19].w * r7.x);
  r5.zw = saturate(cb1[20].xy * r7.yz);
  r6.xyz = r6.xyz + -r4.xyz;
  r4.xyz = r1.www * r6.xyz + r4.xyz;
  r6.xy = cb1[20].ww * r3.xy + v2.xy;
  r6.xy = cb1[3].xy * r6.xy;
  r6.zw = t8.SampleBias(s6_s, r6.xy, cb0[143].y).xy;
  r7.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r4.w = dot(r7.xy, r7.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r7.z = sqrt(r4.w);
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb1[21].zzz * r8.xyz + r7.xyz;
  r7.xyz = r7.xyz + -r4.xyz;
  r4.xyz = r5.zzz * r7.xyz + r4.xyz;
  r3.xy = cb1[22].xx * r3.xy + v2.xy;
  r3.xy = cb1[4].xy * r3.xy;
  r6.zw = t9.SampleBias(s7_s, r3.xy, cb0[143].y).xy;
  r7.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r4.w = dot(r7.xy, r7.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r7.z = sqrt(r4.w);
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb1[22].www * r8.xyz + r7.xyz;
  r7.xyz = r7.xyz + -r4.xyz;
  r4.xyz = r5.www * r7.xyz + r4.xyz;
  r2.w = 1 + r2.z;
  r4.xyz = float3(-1,-1,1) * r4.xyz;
  r2.z = dot(r2.xyw, r4.xyz);
  r4.xyz = r4.xyz * r0.www;
  r2.xyz = r2.xyw * r2.zzz + -r4.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb1[8].xyz + -cb1[7].xyz;
  r2.xyz = cb1[23].xxx * r2.xyz + cb1[7].xyz;
  r4.xyz = t10.SampleBias(s8_s, r3.zw, cb0[143].y).xyz;
  r2.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r4.xyz;
  r4.xyz = cb1[23].www * r7.xyz + r4.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r7.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb1[23].z, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r4.xyz = r4.xyz * r9.xxx + r7.xyz;
  r4.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r4.xyz = cb1[10].xyz * r4.xyz;
  r7.xyz = t11.SampleBias(s9_s, r5.xy, cb0[143].y).xyz;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r2.www + -r7.xyz;
  r7.xyz = cb1[24].zzz * r8.xyz + r7.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb1[24].y, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb1[12].xyz + -r4.xyz;
  r4.xyz = r1.www * r7.xyz + r4.xyz;
  r7.xyz = t12.SampleBias(s10_s, r6.xy, cb0[143].y).xyz;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r2.www + -r7.xyz;
  r7.xyz = cb1[25].yyy * r8.xyz + r7.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb1[25].x, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb1[14].xyz + -r4.xyz;
  r4.xyz = r5.zzz * r7.xyz + r4.xyz;
  r7.xyz = t13.SampleBias(s11_s, r3.xy, cb0[143].y).xyz;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r2.www + -r7.xyz;
  r7.xyz = cb1[26].xxx * r8.xyz + r7.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb1[25].w, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb1[16].xyz + -r4.xyz;
  r4.xyz = r5.www * r7.xyz + r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r3.zw = t14.Sample(s0_s, r3.zw).xy;
  r2.w = saturate(cb1[26].y + r3.z);
  r5.xy = t15.Sample(s0_s, r5.xy).xy;
  r3.z = saturate(cb1[26].z + r5.x);
  r3.z = r3.z + -r2.w;
  r2.w = r1.w * r3.z + r2.w;
  r6.xy = t16.Sample(s0_s, r6.xy).xy;
  r3.z = saturate(cb1[26].w + r6.x);
  r3.z = r3.z + -r2.w;
  r2.w = r5.z * r3.z + r2.w;
  r3.xy = t17.Sample(s0_s, r3.xy).xy;
  r3.x = saturate(cb1[27].x + r3.x);
  r3.x = r3.x + -r2.w;
  r2.w = saturate(r5.w * r3.x + r2.w);
  r3.x = r5.y + -r3.w;
  r1.w = r1.w * r3.x + r3.w;
  r3.x = r6.y + -r1.w;
  r1.w = r5.z * r3.x + r1.w;
  r3.x = r3.y + -r1.w;
  r3.x = saturate(r5.w * r3.x + r1.w);
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r3.y = saturate(cb1[27].y);
  o2.z = r2.w * cb0[139].y + cb0[139].x;
  r1.w = mad((int)v3.x, 36, 20);
  r3.z = t2[r1.w].val[4/4];
  r3.w = t2[r1.w].val[4/4+1];
  r1.w = cmp(0 < r3.w);
  if (r1.w != 0) {
    r5.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.w = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r1.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r1.w = t1.SampleLevel(s1_s, r5.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r2.w = 0.0799999982 * r3.y;
  r5.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r5.xyz = r3.xxx * r5.xyz + r2.www;
  r6.xyz = -r4.xyz * r3.xxx + r4.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = r2.www ? r5.xyz : r6.xyz;
  r6.x = t3[0].val[0/4];
  r6.y = t3[0].val[0/4+1];
  r6.z = t3[0].val[0/4+2];
  r6.w = t3[0].val[0/4+3];
  r0.w = 1;
  r6.x = dot(r6.xyzw, r0.xyzw);
  r8.x = t3[1].val[0/4];
  r8.y = t3[1].val[0/4+1];
  r8.z = t3[1].val[0/4+2];
  r8.w = t3[1].val[0/4+3];
  r6.y = dot(r8.xyzw, r0.xyzw);
  r8.x = t3[2].val[0/4];
  r8.y = t3[2].val[0/4+1];
  r8.z = t3[2].val[0/4+2];
  r8.w = t3[2].val[0/4+3];
  r6.z = dot(r8.xyzw, r0.xyzw);
  r8.xyzw = r0.xyzz * r0.yzzx;
  r9.x = t3[3].val[0/4];
  r9.y = t3[3].val[0/4+1];
  r9.z = t3[3].val[0/4+2];
  r9.w = t3[3].val[0/4+3];
  r9.x = dot(r9.xyzw, r8.xyzw);
  r10.x = t3[4].val[0/4];
  r10.y = t3[4].val[0/4+1];
  r10.z = t3[4].val[0/4+2];
  r10.w = t3[4].val[0/4+3];
  r9.y = dot(r10.xyzw, r8.xyzw);
  r10.x = t3[5].val[0/4];
  r10.y = t3[5].val[0/4+1];
  r10.z = t3[5].val[0/4+2];
  r10.w = t3[5].val[0/4+3];
  r9.z = dot(r10.xyzw, r8.xyzw);
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r8.x = t3[6].val[0/4];
  r8.y = t3[6].val[0/4+1];
  r8.z = t3[6].val[0/4+2];
  r6.xyz = r9.xyz + r6.xyz;
  r6.xyz = r8.xyz * r0.www + r6.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = cb0[187].xyz * r6.xyz;
  r6.xyz = r6.xyz * r5.xyz;
  r8.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r6.xyz = r8.xyz * r6.xyz;
  r7.xyz = r2.www ? float3(0,0,0) : r7.xyz;
  r5.xyz = r7.xyz + r5.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r7.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r7.x].val[0/4];
    r7.z = t2[r7.x].val[0/4+1];
    r7.w = t2[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r1.xyz;
    r8.x = t2[r7.y].val[0/4];
    r8.y = t2[r7.y].val[0/4+1];
    r8.z = t2[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r0.w = (int)r7.y | (int)r7.x;
    r0.w = (int)r7.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r0.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.xyz + r6.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r0.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r3.z;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}