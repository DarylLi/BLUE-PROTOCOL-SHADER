// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[22];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = t2.SampleBias(s2_s, v3.xy, cb0[143].y).xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r1.z = sqrt(r0.w);
  r2.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb3[14].xxx * r2.xyz + r1.xyz;
  r0.w = 1 + r1.z;
  r2.xy = v3.zw + -v3.xy;
  r2.zw = cb3[14].zz * r2.xy + v3.xy;
  r2.zw = cb3[1].xy * r2.zw;
  r3.xy = t3.SampleBias(s3_s, r2.zw, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r3.w = dot(r3.xy, r3.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r3.z = sqrt(r3.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb3[15].yyy * r4.xyz + r3.xyz;
  r4.xy = cb3[15].ww * r2.xy + v3.xy;
  r4.xy = cb3[2].xy * r4.xy;
  r4.zw = t4.SampleBias(s4_s, r4.xy, cb0[143].y).xy;
  r5.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r3.w = dot(r5.xy, r5.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r5.z = sqrt(r3.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[16].zzz * r6.xyz + r5.xyz;
  r4.zw = t5.SampleBias(s5_s, v3.xy, cb0[143].y).xy;
  r3.w = saturate(cb3[16].w * r4.z);
  r4.z = saturate(cb3[17].x * r4.w);
  r5.xyz = r5.xyz + -r3.xyz;
  r3.xyz = r3.www * r5.xyz + r3.xyz;
  r2.xy = cb3[17].zz * r2.xy + v3.xy;
  r2.xy = cb3[3].xy * r2.xy;
  r5.xy = t6.SampleBias(s6_s, r2.xy, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r4.w = dot(r5.xy, r5.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r5.z = sqrt(r4.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[18].yyy * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz + -r3.xyz;
  r3.xyz = r4.zzz * r5.xyz + r3.xyz;
  r1.w = 1 + r1.z;
  r3.xyz = float3(-1,-1,1) * r3.xyz;
  r1.z = dot(r1.xyw, r3.xyz);
  r3.xyz = r3.xyz * r0.www;
  r1.xyz = r1.xyw * r1.zzz + -r3.xyz;
  r1.xyz = r1.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r1.xxx * v0.yzx + r0.xyz;
  r0.xyz = r1.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb3[7].xyz + -cb3[6].xyz;
  r1.xyz = cb3[18].zzz * r1.xyz + cb3[6].xyz;
  r3.xyz = t7.SampleBias(s7_s, r2.zw, cb0[143].y).xyz;
  r1.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r1.www + -r3.xyz;
  r3.xyz = cb3[19].yyy * r5.xyz + r3.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r3.xyz);
  r3.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r3.zxy;
  r5.xyz = r3.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb3[19].x, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r3.xyz = r3.xyz * r7.xxx + r5.xyz;
  r3.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r3.xyz = cb3[9].xyz * r3.xyz;
  r5.xyz = t8.SampleBias(s8_s, r4.xy, cb0[143].y).xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r5.xyz;
  r5.xyz = cb3[20].xxx * r6.xyz + r5.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[19].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = r5.xyz * cb3[11].xyz + -r3.xyz;
  r3.xyz = r3.www * r5.xyz + r3.xyz;
  r5.xyz = t9.SampleBias(s9_s, r2.xy, cb0[143].y).xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r5.xyz;
  r5.xyz = cb3[20].www * r6.xyz + r5.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[20].z, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = r5.xyz * cb3[13].xyz + -r3.xyz;
  r3.xyz = r4.zzz * r5.xyz + r3.xyz;
  r3.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r3.xyz);
  r2.zw = t10.Sample(s0_s, r2.zw).xy;
  r1.w = saturate(cb3[21].x + r2.z);
  r4.xy = t11.Sample(s0_s, r4.xy).xy;
  r2.z = saturate(cb3[21].y + r4.x);
  r2.z = r2.z + -r1.w;
  r1.w = r3.w * r2.z + r1.w;
  r2.xy = t12.Sample(s0_s, r2.xy).xy;
  r2.x = saturate(cb3[21].z + r2.x);
  r2.x = r2.x + -r1.w;
  r1.w = saturate(r4.z * r2.x + r1.w);
  r2.x = r4.y + -r2.w;
  r2.x = r3.w * r2.x + r2.w;
  r2.y = r2.y + -r2.x;
  r2.x = saturate(r4.z * r2.y + r2.x);
  r2.z = cmp(0.00100000005 < abs(v2.w));
  r4.xy = floor(v5.xy);
  r2.w = dot(r4.xy, float2(347.834503,3343.28369));
  r2.w = cos(r2.w);
  r2.w = 1000 * r2.w;
  r2.w = frac(r2.w);
  r3.w = cmp(v2.w < 0);
  r4.x = 1 + v2.w;
  r4.x = cmp(r2.w < r4.x);
  r2.w = cmp(v2.w < r2.w);
  r2.w = r3.w ? r4.x : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r2.z = r2.z ? r2.w : 0;
  if (r2.z != 0) discard;
  r3.xyz = min(float3(1,1,1), r3.xyz);
  r2.y = saturate(cb3[21].w);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r4.xyzw = t1.Sample(s1_s, v4.zw).xyzw;
  r5.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r4.xyzw = saturate(r4.xyzw * cb2[1].xyzw + r5.xyzw);
  r4.xyzw = r4.xyzw * r4.xyzw;
  o5.xyzw = cb2[0].xyzw * r4.xyzw;
  r1.w = 0.0799999982 * r2.y;
  r4.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r4.xyz = r2.xxx * r4.xyz + r1.www;
  r5.xyz = -r3.xyz * r2.xxx + r3.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.www ? r6.xyz : r5.xyz;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.z = r1.w * 2.04040003 + -0.332399994;
  r2.z = r1.w * -4.79510021 + r2.z;
  r1.w = r1.w * 2.75519991 + r2.z;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r2.zw = float2(1,0.5) * v4.xy;
  r6.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t0.Sample(s1_s, r2.zw).xyzw;
  r6.xyzw = t0.Sample(s1_s, r6.xy).xyzw;
  r2.z = r6.w * 0.00392156886 + r7.w;
  r2.z = -0.00196078443 + r2.z;
  r2.z = r2.z * cb2[4].w + cb2[6].w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.z = exp2(r2.z);
  r2.z = -0.0185813606 + r2.z;
  r6.xyzw = r6.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r0.w = 1;
  r0.w = dot(r6.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.z * r0.w;
  r6.xyz = r0.www * r7.xyz;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r5.xyz;
  r7.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r2.z = cmp(0 < cb0[140].x);
  if (r2.z != 0) {
    r5.xyzw = cb0[45].xyzw * v5.yyyy;
    r5.xyzw = v5.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v5.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r7.xyz = -cb1[5].xyz + r5.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.z = (int)r7.y | (int)r7.x;
    r2.z = (int)r7.z | (int)r2.z;
    r2.w = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r5.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r2.zzz ? r5.xyz : r1.xyz;
  }
  r4.xyz = cb0[145].yyy * r4.xyz + r6.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r2.z = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r2.z = frac(r2.z);
  r2.z = -0.5 + r2.z;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.z * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r2.xy;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}