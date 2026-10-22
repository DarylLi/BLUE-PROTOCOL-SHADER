// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r2.xy = t3.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb2[14].xxx * r3.xyz + r2.xyz;
  r0.w = 1 + r2.z;
  r3.xy = v2.zw + -v2.xy;
  r3.zw = cb2[14].zz * r3.xy + v2.xy;
  r3.zw = cb2[1].xy * r3.zw;
  r4.xy = t4.SampleBias(s3_s, r3.zw, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[15].yyy * r5.xyz + r4.xyz;
  r5.xy = cb2[15].ww * r3.xy + v2.xy;
  r5.xy = cb2[2].xy * r5.xy;
  r5.zw = t5.SampleBias(s4_s, r5.xy, cb0[143].y).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r6.xy, r6.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r6.z = sqrt(r1.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb2[16].zzz * r7.xyz + r6.xyz;
  r5.zw = t6.SampleBias(s5_s, v2.xy, cb0[143].y).xy;
  r1.w = saturate(cb2[16].w * r5.z);
  r4.w = saturate(cb2[17].x * r5.w);
  r6.xyz = r6.xyz + -r4.xyz;
  r4.xyz = r1.www * r6.xyz + r4.xyz;
  r3.xy = cb2[17].zz * r3.xy + v2.xy;
  r3.xy = cb2[3].xy * r3.xy;
  r5.zw = t7.SampleBias(s6_s, r3.xy, cb0[143].y).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r5.z = dot(r6.xy, r6.xy);
  r5.z = 1 + -r5.z;
  r5.z = max(0, r5.z);
  r6.z = sqrt(r5.z);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb2[18].yyy * r7.xyz + r6.xyz;
  r6.xyz = r6.xyz + -r4.xyz;
  r4.xyz = r4.www * r6.xyz + r4.xyz;
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
  r2.xyz = cb2[7].xyz + -cb2[6].xyz;
  r2.xyz = cb2[18].zzz * r2.xyz + cb2[6].xyz;
  r4.xyz = t8.SampleBias(s7_s, r3.zw, cb0[143].y).xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r0.www + -r4.xyz;
  r4.xyz = cb2[19].yyy * r6.xyz + r4.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r6.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[19].x, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r4.xyz = r4.xyz * r8.xxx + r6.xyz;
  r4.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r4.xyz = cb2[9].xyz * r4.xyz;
  r6.xyz = t9.SampleBias(s8_s, r5.xy, cb0[143].y).xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.www + -r6.xyz;
  r6.xyz = cb2[20].xxx * r7.xyz + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb2[19].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = r6.xyz * cb2[11].xyz + -r4.xyz;
  r4.xyz = r1.www * r6.xyz + r4.xyz;
  r6.xyz = t10.SampleBias(s9_s, r3.xy, cb0[143].y).xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.www + -r6.xyz;
  r6.xyz = cb2[20].www * r7.xyz + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb2[20].z, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = r6.xyz * cb2[13].xyz + -r4.xyz;
  r4.xyz = r4.www * r6.xyz + r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r3.zw = t11.Sample(s0_s, r3.zw).xy;
  r0.w = saturate(cb2[21].x + r3.z);
  r5.xy = t12.Sample(s0_s, r5.xy).xy;
  r2.w = saturate(cb2[21].y + r5.x);
  r2.w = r2.w + -r0.w;
  r0.w = r1.w * r2.w + r0.w;
  r3.xy = t13.Sample(s0_s, r3.xy).xy;
  r2.w = saturate(cb2[21].z + r3.x);
  r2.w = r2.w + -r0.w;
  r0.w = saturate(r4.w * r2.w + r0.w);
  r2.w = r5.y + -r3.w;
  r1.w = r1.w * r2.w + r3.w;
  r2.w = r3.y + -r1.w;
  r3.x = saturate(r4.w * r2.w + r1.w);
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r3.y = saturate(cb2[21].w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = mad((int)v3.x, 36, 20);
  r1.w = cmp(0 < cb0[215].x);
  r3.z = t2[r0.w].val[4/4];
  r3.w = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r3.w);
  if (r0.w != 0) {
    r5.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.w = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r0.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r0.w = t1.SampleLevel(s1_s, r5.xyz, 0).x;
  } else {
    r2.w = mad((int)v3.x, 36, 18);
    r2.w = t2[r2.w].val[12/4];
    r2.w = cmp(0 < r2.w);
    r2.w = r1.w ? r2.w : 0;
    r0.w = r2.w ? cb1[5].x : 1;
  }
  r2.w = 0.0799999982 * r3.y;
  r5.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r5.xyz = r3.xxx * r5.xyz + r2.www;
  r6.xyz = -r4.xyz * r3.xxx + r4.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r5.xyz = r2.www ? float3(0,0,0) : r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r7.xyz = r0.yzy * r0.yzx;
  r8.yw = r0.zz * r0.yx;
  r3.w = r0.x * r0.x + -r7.x;
  r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r8.xz = r7.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r8.xyzw;
  r3.w = 0.429042608 * r3.w;
  r9.x = 0.886227548;
  r4.w = dot(cb1[6].xyzw, r9.xyzw);
  r5.w = dot(cb1[9].xyzw, r7.xyzw);
  r4.w = r5.w + r4.w;
  r8.x = cb1[12].x * r3.w + r4.w;
  r4.w = dot(cb1[7].xyzw, r9.xyzw);
  r5.w = dot(cb1[10].xyzw, r7.xyzw);
  r4.w = r5.w + r4.w;
  r8.y = cb1[12].y * r3.w + r4.w;
  r4.w = dot(cb1[8].xyzw, r9.xyzw);
  r5.w = dot(cb1[11].xyzw, r7.xyzw);
  r4.w = r5.w + r4.w;
  r8.z = cb1[12].z * r3.w + r4.w;
  r7.xyz = max(float3(0,0,0), r8.xyz);
  r7.xyz = r1.www ? r7.xyz : 0;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r1.xyz;
    r8.x = t2[r6.y].val[0/4];
    r8.y = t2[r6.y].val[0/4+1];
    r8.z = t2[r6.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xzw));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r3.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.xyz + r7.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r1.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r3.z;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}