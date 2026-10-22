// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v3.z;
  r1.y = 1;
  r1.xy = v3.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v3.yyyy;
  r2.xyzw = v3.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v3.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r2.xyz = -cb0[70].xyz + r2.xyz;
  r3.xyzw = float4(0.5,0.5,10,10) * v2.xyxy;
  r1.zw = t2.SampleBias(s1_s, r3.zw, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.x = cb0[138].w;
  r5.z = 1;
  r4.xyz = r5.xxz * r4.xyz;
  r5.x = 0.300000012;
  r5.z = cb0[138].w;
  r4.xyz = r4.xyz * r5.xxz + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb2[2].xxx * cb2[1].xyz;
  r5.xyzw = float4(20,20,5,5) * v2.xyxy;
  r0.w = t3.SampleBias(s2_s, r5.xy, cb0[143].y).x;
  r0.w = r0.w * 0.600000024 + 0.400000006;
  r1.z = t3.SampleBias(s2_s, r5.zw, cb0[143].y).y;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.x = -24 + r1.x;
  r1.x = saturate(0.00066666666 * r1.x);
  r1.y = 1 + -r1.z;
  r1.y = r1.x * r1.y + r1.z;
  r1.w = r0.w * -2 + 1;
  r0.w = r1.y * r1.w + r0.w;
  r1.y = t3.SampleBias(s2_s, r3.xy, cb0[143].y).y;
  r1.w = r1.x * -r1.z + r1.z;
  r1.w = r1.y + r1.w;
  r2.w = 0.5 + -r1.w;
  r1.w = r2.w * 0.5 + r1.w;
  r1.w = r1.w * 0.365000039 + 0.294999987;
  r0.w = r1.w * r0.w;
  r0.w = 0.5 * r0.w;
  r1.z = r1.z * 0.300000012 + 0.699999988;
  r1.w = 1 + -r1.z;
  r1.x = r1.x * r1.w + r1.z;
  r1.x = saturate(r1.y * 0.5 + r1.x);
  r1.yzw = saturate(r0.www);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r3.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.xyz = max(float3(0,0,0), r3.xyz);
    r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
    r3.xyz = cb0[213].xyz * r3.xyz;
    r5.xyz = (int3)r3.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r0.w = 1 + cb0[213].w;
    r3.xyz = r3.xyz / r5.www;
    r3.xyz = frac(r3.xyz);
    r3.xyz = cb0[213].www * r3.xyz;
    r3.xyz = r5.xyz * r0.www + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
    r3.xyz = cb0[214].xyz * r3.xyz;
    r0.w = t1.SampleLevel(s0_s, r3.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r3.xyz = r1.www * cb0[136].www + cb0[136].xyz;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r3.xyz = r1.xxx ? r5.xyz : r3.xyz;
  r5.xyz = r1.xxx ? float3(0,0,0) : r6.xyz;
  r3.xyz = r5.xyz + r3.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r1.x = (int)r5.y | (int)r5.x;
    r1.x = (int)r5.z | (int)r1.x;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r1.xxx ? r2.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r3.xyz + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = r1.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}