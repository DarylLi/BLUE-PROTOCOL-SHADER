// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
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
  r1.xyzw = cb0[45].xyzw * v3.yyyy;
  r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xy = cb3[4].xx * v2.xy;
  r0.w = cb3[4].y + cb0[143].y;
  r3.zw = t2.SampleBias(s1_s, r3.xy, r0.w).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[4].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb3[4].www * cb3[1].xyz;
  r5.xyzw = t3.SampleBias(s2_s, r3.xy, cb0[143].y).xyzw;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r0.www + -r5.xyz;
  r5.xyz = cb3[5].zzz * r6.xyz + r5.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[5].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb3[3].xyz * r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r3.xy = t4.SampleBias(s3_s, r3.xy, cb0[143].y).xy;
  r0.w = cmp(0 >= r3.x);
  r1.w = log2(r3.x);
  r1.w = cb3[5].w * r1.w;
  r1.w = exp2(r1.w);
  r0.w = r0.w ? 0 : r1.w;
  r0.w = saturate(cb3[6].x + r0.w);
  r3.x = saturate(cb3[6].y + r3.y);
  r1.x = dot(r0.xyz, r1.xyz);
  r1.x = max(0, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-005, abs(r1.x));
  r1.x = log2(r1.x);
  r1.x = cb3[6].z * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.x * 0.959999979 + 0.0399999991;
  r1.x = cb3[6].w * r1.x;
  r1.y = saturate(cb3[7].y + v1.z);
  r1.x = r1.y * r1.x;
  r1.x = max(0, r1.x);
  r1.x = min(0.5, r1.x);
  r3.y = saturate(cb3[7].z * r1.x);
  r1.xyz = -cb0[67].xyz + r2.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = r1.x / cb3[8].y;
  r1.x = saturate(r1.x * cb3[9].x + -cb3[8].w);
  r1.x = r1.x * 3 + -1;
  r1.yz = -cb0[129].xy + v3.xy;
  r3.zw = cb0[152].xx + r1.yz;
  r3.zw = (uint2)r3.zw;
  r1.w = (uint)r3.w << 1;
  r1.w = (int)r1.w + (int)r3.z;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r1.yz = float2(0.015625,0.015625) * r1.yz;
  r1.y = t5.SampleBias(s4_s, r1.yz, cb0[143].y).x;
  r1.y = r1.w + r1.y;
  r1.y = 0.166666672 * r1.y;
  r1.x = r1.x * cb3[9].y + r1.y;
  r1.x = -0.5 + r1.x;
  r1.x = r5.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r5.xyz);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = cmp(0 < cb0[215].x);
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r5.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
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
    r1.w = t1.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r2.w = cmp(0 < cb1[18].w);
    r2.w = r0.w ? r2.w : 0;
    r1.w = r2.w ? cb2[5].x : 1;
  }
  r2.w = 0.0799999982 * r3.y;
  r5.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r5.xyz = r3.xxx * r5.xyz + r2.www;
  r6.xyz = -r1.xyz * r3.xxx + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r5.xyz = r2.www ? float3(0,0,0) : r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.z = r2.w * 2.04040003 + -0.332399994;
  r3.z = r2.w * -4.79510021 + r3.z;
  r2.w = r2.w * 2.75519991 + r3.z;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r7.xyz = r0.yzy * r0.yzx;
  r8.yw = r0.zz * r0.yx;
  r3.z = r0.x * r0.x + -r7.x;
  r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r8.xz = r7.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r8.xyzw;
  r3.z = 0.429042608 * r3.z;
  r9.x = 0.886227548;
  r3.w = dot(cb2[6].xyzw, r9.xyzw);
  r4.w = dot(cb2[9].xyzw, r7.xyzw);
  r3.w = r4.w + r3.w;
  r8.x = cb2[12].x * r3.z + r3.w;
  r3.w = dot(cb2[7].xyzw, r9.xyzw);
  r4.w = dot(cb2[10].xyzw, r7.xyzw);
  r3.w = r4.w + r3.w;
  r8.y = cb2[12].y * r3.z + r3.w;
  r3.w = dot(cb2[8].xyzw, r9.xyzw);
  r4.w = dot(cb2[11].xyzw, r7.xyzw);
  r3.w = r4.w + r3.w;
  r8.z = cb2[12].z * r3.z + r3.w;
  r7.xyz = max(float3(0,0,0), r8.xyz);
  r7.xyz = r0.www ? r7.xyz : 0;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r3.z = cmp(0 < cb0[140].x);
  if (r3.z != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r3.z = (int)r6.y | (int)r6.x;
    r3.z = (int)r6.z | (int)r3.z;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r3.zzz ? r2.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r7.xyz;
  r2.xyz = r2.xyz + r4.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r3.z = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r3.z = frac(r3.z);
  r3.z = -0.5 + r3.z;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.z * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}