// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[6];
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
  float4 cb0[158];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = t1.SampleBias(s1_s, v3.xy, cb0[143].y).xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r1.z = sqrt(r0.w);
  r2.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb3[4].xxx * r2.xyz + r1.xyz;
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
  r1.xyz = cb3[4].yyy * cb3[1].xyz;
  r2.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * cb1[5].xyz;
  r2.xyz = v2.xxx * float3(100,10,1) + r2.xyz;
  r2.xyz = frac(r2.xyz);
  r1.w = dot(r2.xy, r2.yz);
  r1.w = -0.5 + r1.w;
  r1.w = dot(r1.ww, cb3[4].zz);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = sqrt(r2.w);
  r2.xyz = r2.xyz / r2.www;
  r3.xyzw = t2.SampleBias(s2_s, v3.xy, cb0[143].y).xyzw;
  r2.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r2.www + -r3.xyz;
  r3.xyz = cb3[5].yyy * r4.xyz + r3.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r3.xyz);
  r3.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r4.xyz = float3(0.577350259,0.577350259,0.577350259) * r3.zxy;
  r4.xyz = r3.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.zxy;
  sincos(cb3[5].x, r5.x, r6.x);
  r4.xyz = r5.xxx * r4.xyz;
  r3.xyz = r3.xyz * r6.xxx + r4.xyz;
  r3.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r3.xyz = cb3[3].xyz * r3.xyz;
  r2.xyz = r1.www * r2.xyz + r3.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.w = cb3[5].z * r3.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[5].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r3.x = cmp(0.00100000005 < abs(v2.w));
  r3.yz = floor(v5.xy);
  r3.y = dot(r3.yz, float2(347.834503,3343.28369));
  r3.y = cos(r3.y);
  r3.y = 1000 * r3.y;
  r3.y = frac(r3.y);
  r3.z = cmp(v2.w < 0);
  r3.w = 1 + v2.w;
  r3.w = cmp(r3.y < r3.w);
  r3.y = cmp(v2.w < r3.y);
  r3.y = r3.z ? r3.w : r3.y;
  r3.y = cmp((int)r3.y == 0);
  r3.x = r3.x ? r3.y : 0;
  if (r3.x != 0) discard;
  r1.w = -0.333299994 + r1.w;
  r1.w = cmp(r1.w < 0);
  r1.w = (int)r1.w | (int)r2.w;
  if (r1.w != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r3.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r4.xy = float2(1,0.5) * v4.xy;
  r4.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r5.xyzw = t0.Sample(s0_s, r4.xy).xyzw;
  r4.xyzw = t0.Sample(s0_s, r4.zw).xyzw;
  r1.w = r4.w * 0.00392156886 + r5.w;
  r1.w = -0.00196078443 + r1.w;
  r1.w = r1.w * cb2[4].w + cb2[6].w;
  r5.xyz = r5.xyz * r5.xyz;
  r5.xyz = r5.xyz * cb2[4].xyz + cb2[6].xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r4.xyzw = r4.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r0.w = 1;
  r0.w = dot(r4.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r1.w * r0.w;
  r4.xyz = r0.www * r5.xyz;
  r4.xyz = cb0[157].xyz * r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r3.xyz;
  r5.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r4.xyz = r5.xyz * r4.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xyzw = cb0[45].xyzw * v5.yyyy;
    r5.xyzw = v5.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v5.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r6.xyz = -cb1[5].xyz + r5.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r2.w = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r5.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r1.www ? r5.xyz : r1.xyz;
  }
  r3.xyz = cb0[145].yyy * r3.xyz + r4.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyzw = float4(0,0,1,0.75686276);
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}