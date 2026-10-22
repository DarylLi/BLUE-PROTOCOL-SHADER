// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb4[11];
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
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
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

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r2.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb4[6].xx * v2.xy;
  r2.w = cb4[6].y + cb0[143].y;
  r4.xy = t1.SampleBias(s1_s, r1.zw, r2.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[6].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb4[6].www * cb4[1].xyz;
  r5.xyzw = t2.SampleBias(s2_s, r1.zw, cb0[143].y).xyzw;
  r1.z = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.zzz + -r5.xyz;
  r5.xyz = cb4[7].zzz * r6.xyz + r5.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[7].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb4[3].xyz * r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r1.z = dot(r0.zxy, r3.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb4[9].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb4[9].y * r1.z;
  r1.w = saturate(cb4[9].w + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r3.y = saturate(cb4[10].x * r1.z);
  r1.z = cb4[10].z * cb3[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cb4[10].w + r1.x;
  r3.zw = float2(0.649999976,0.487499982) * cb3[1].ww;
  r1.w = cb3[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r1.w / r3.w);
  r2.w = -cb3[1].w * 0.649999976 + 8000;
  r1.w = r1.w * r2.w + r3.z;
  r1.y = r1.y / r1.w;
  r1.x = r1.x / cb4[10].w;
  r1.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.y = r1.z ? r1.y : r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb4[10].z));
  r1.z = 1 + cb4[10].z;
  r1.y = r1.y ? r1.z : 1.39999998;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r1.z = r6.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.y = r1.y + -r1.z;
  r1.zw = cb0[152].xx + r6.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r3.zw = float2(0.015625,0.015625) * r6.yz;
  r1.w = t3.SampleBias(s3_s, r3.zw, cb0[143].y).x;
  r1.z = r1.z + r1.w;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r5.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r5.xyz);
  r3.x = saturate(cb4[8].w);
  r1.w = saturate(cb4[10].y);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(r5.w);
  r5.xyz = saturate(cb0[136].xyz);
  o4.xyz = sqrt(r5.xyz);
  r1.w = 0.0799999982 * r3.y;
  r5.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r5.xyz = r3.xxx * r5.xyz + r1.www;
  r6.xyz = -r1.xyz * r3.xxx + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r7.xyz : r6.xyz;
  r5.xyz = r1.www ? float3(0,0,0) : r5.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r7.xyz = cb0[136].xyz + r6.xyz;
  r3.zw = float2(1,0.5) * v3.xy;
  r8.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t0.Sample(s0_s, r3.zw).xyzw;
  r8.xyzw = t0.Sample(s0_s, r8.xy).xyzw;
  r2.w = r8.w * 0.00392156886 + r9.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r8.xyzw = r8.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r0.w = 1;
  r0.w = dot(r8.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.w * r0.w;
  r8.xyz = r0.www * r9.xyz;
  r8.xyz = cb0[157].xyz * r8.xyz;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r8.xyz * r7.xyz;
  r8.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r2.xyz = -cb0[70].xyz + r2.xyz;
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
    r4.xyz = r2.www ? r2.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r7.xyz;
  r2.xyz = r2.xyz + r4.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r2.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
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
  o2.w = 0.760784328;
  o2.xy = r3.xy;
  o3.xyz = r1.xyz;
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}