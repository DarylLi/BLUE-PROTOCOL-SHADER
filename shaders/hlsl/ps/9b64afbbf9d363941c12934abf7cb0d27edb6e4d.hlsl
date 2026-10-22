// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[8];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r1.zw = t2.SampleBias(s1_s, v3.xy, cb0[143].y).xy;
  r2.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb4[5].xxx * r3.xyz + r2.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.yzx + r0.xyz;
  r0.xyz = r2.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb4[5].yyy * cb4[1].xyz;
  r3.xyzw = t3.SampleBias(s2_s, v3.xy, cb0[143].y).xyzw;
  r1.z = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r1.zzz + -r3.xyz;
  r3.xyz = cb4[6].xxx * r4.xyz + r3.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r3.xyz);
  r3.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r4.xyz = float3(0.577350259,0.577350259,0.577350259) * r3.zxy;
  r4.xyz = r3.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.zxy;
  sincos(cb4[5].w, r5.x, r6.x);
  r4.xyz = r5.xxx * r4.xyz;
  r3.xyz = r3.xyz * r6.xxx + r4.xyz;
  r3.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r3.xyz;
  r3.xyz = cb4[3].xyz * r3.xyz;
  r3.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r3.xyz);
  r1.z = cb4[6].w * cb3[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cb4[7].x + r1.x;
  r4.xy = float2(0.649999976,0.487499982) * cb3[1].ww;
  r1.w = cb3[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r1.w / r4.y);
  r2.w = -cb3[1].w * 0.649999976 + 8000;
  r1.w = r1.w * r2.w + r4.x;
  r1.y = r1.y / r1.w;
  r1.x = r1.x / cb4[7].x;
  r1.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.y = r1.z ? r1.y : r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb4[6].w));
  r1.z = 1 + cb4[6].w;
  r1.y = r1.y ? r1.z : 1.39999998;
  r4.xyz = -cb0[129].xxy + v5.xxy;
  r1.z = r4.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.y = r1.y + -r1.z;
  r1.zw = cb0[152].xx + r4.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r4.xy = float2(0.015625,0.015625) * r4.yz;
  r1.w = t4.SampleBias(s3_s, r4.xy, cb0[143].y).x;
  r1.z = r1.z + r1.w;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r3.w * r1.x;
  r1.y = cmp(0.00100000005 < abs(v2.w));
  r1.zw = floor(v5.xy);
  r1.z = dot(r1.zw, float2(347.834503,3343.28369));
  r1.z = cos(r1.z);
  r1.z = 1000 * r1.z;
  r1.z = frac(r1.z);
  r1.w = cmp(v2.w < 0);
  r2.w = 1 + v2.w;
  r2.w = cmp(r1.z < r2.w);
  r1.z = cmp(v2.w < r1.z);
  r1.z = r1.w ? r2.w : r1.z;
  r1.z = cmp((int)r1.z == 0);
  r1.y = r1.y ? r1.z : 0;
  if (r1.y != 0) discard;
  r1.x = r1.x * v2.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r3.xyz);
  r3.xy = saturate(cb4[6].yz);
  o2.z = r3.y * cb0[139].y + cb0[139].x;
  r4.xyzw = t1.Sample(s0_s, v4.zw).xyzw;
  r5.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r4.xyzw = saturate(r4.xyzw * cb2[1].xyzw + r5.xyzw);
  r4.xyzw = r4.xyzw * r4.xyzw;
  o5.xyzw = cb2[0].xyzw * r4.xyzw;
  r1.w = cb0[137].w * r3.x;
  r3.yzw = r1.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r5.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.yzw;
  r3.yzw = r1.www ? r5.xyz : r3.yzw;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r5.xy = float2(1,0.5) * v4.xy;
  r5.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r6.xyzw = t0.Sample(s0_s, r5.xy).xyzw;
  r5.xyzw = t0.Sample(s0_s, r5.zw).xyzw;
  r2.w = r5.w * 0.00392156886 + r6.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb2[4].w + cb2[6].w;
  r6.xyz = r6.xyz * r6.xyz;
  r6.xyz = r6.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r5.xyzw = r5.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r0.w = 1;
  r0.w = dot(r5.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.w * r0.w;
  r5.xyz = r0.www * r6.xyz;
  r5.xyz = cb0[157].xyz * r5.xyz;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r3.yzw;
  r6.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r5.xyz = r6.xyz * r5.xyz;
  r3.yzw = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.yzw;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r4.xyzw = cb0[45].xyzw * v5.yyyy;
    r4.xyzw = v5.xxxx * cb0[44].xyzw + r4.xyzw;
    r4.xyzw = v5.zzzz * cb0[46].xyzw + r4.xyzw;
    r4.xyzw = cb0[47].xyzw + r4.xyzw;
    r4.xyz = r4.xyz / r4.www;
    r4.xyz = -cb0[70].xyz + r4.xyz;
    r6.xyz = -cb1[5].xyz + r4.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r4.x = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r4.x = 0.00200000009 * r4.x;
    r4.x = frac(r4.x);
    r4.x = cmp(0.5 < r4.x);
    r4.xyz = r4.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r2.www ? r4.xyz : r2.xyz;
  }
  r3.yzw = cb0[145].yyy * r3.yzw + r5.xyz;
  r2.xyz = r3.yzw + r2.xyz;
  r3.yzw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.yzw = frac(r3.yzw);
  r3.yzw = r3.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.yzw = r3.yzw * r3.yzz;
  r2.w = dot(r3.yzw, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.505882382);
  o2.y = r3.x;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}