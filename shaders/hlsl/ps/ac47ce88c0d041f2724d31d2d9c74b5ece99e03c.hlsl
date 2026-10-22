// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = mad((int2)v3.xx, int2(36,36), int2(4,20));
  r0.w = t2[r1.z].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r4.xy = cb2[6].xx * v2.xy;
  r1.z = cb2[6].y + cb0[143].y;
  r4.zw = t3.SampleBias(s1_s, r4.xy, r1.z).xy;
  r5.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb2[6].zzz * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyz = r5.xyz * r1.zzz;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r5.xyz = cb2[6].www * cb2[1].xyz;
  r4.xyzw = t4.SampleBias(s2_s, r4.xy, cb0[143].y).xyzw;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r0.www + -r4.xyz;
  r4.xyz = cb2[7].zzz * r6.xyz + r4.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r6.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[7].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r4.xyz = r4.xyz * r8.xxx + r6.xyz;
  r4.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r4.xyz = cb2[3].xyz * r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r0.w = dot(r0.xyz, r2.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb2[9].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb2[9].y * r0.w;
  r1.z = saturate(cb2[9].w + v1.z);
  r0.w = r1.z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r2.y = saturate(cb2[10].x * r0.w);
  r0.w = cb2[10].z * cb1[1].w;
  r1.z = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.y = cb2[10].w + r1.x;
  r2.zw = float2(0.649999976,0.487499982) * cb1[1].ww;
  r1.z = cb1[1].w * 0.617499948 + -r1.x;
  r1.z = saturate(r1.z / r2.w);
  r2.w = -cb1[1].w * 0.649999976 + 8000;
  r1.z = r1.z * r2.w + r2.z;
  r1.y = r1.y / r1.z;
  r1.x = r1.x / cb2[10].w;
  r1.z = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = cmp(r0.w >= 0);
  r0.w = r0.w ? r1.y : r1.x;
  r0.w = r1.z ? r0.w : r1.x;
  r1.x = cmp(9.99999975e-006 < abs(cb2[10].z));
  r1.y = 1 + cb2[10].z;
  r1.x = r1.x ? r1.y : 1.39999998;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r1.y = r6.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.x = r1.x + -r1.y;
  r1.yz = cb0[152].xx + r6.yz;
  r1.yz = (uint2)r1.yz;
  r1.z = (uint)r1.z << 1;
  r1.y = (int)r1.z + (int)r1.y;
  r1.y = (uint)r1.y % 5;
  r1.y = (uint)r1.y;
  r2.zw = float2(0.015625,0.015625) * r6.yz;
  r1.z = t5.SampleBias(s3_s, r2.zw, cb0[143].y).x;
  r1.y = r1.y + r1.z;
  r1.y = 0.166666672 * r1.y;
  r0.w = r0.w * r1.x + r1.y;
  r0.w = saturate(-0.5 + r0.w);
  r0.w = r4.w * r0.w + -0.333299994;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r1.xyz = min(float3(1,1,1), r4.xyz);
  r2.x = saturate(cb2[8].w);
  r0.w = saturate(cb2[10].y);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(r4.w);
  r2.z = t2[r1.w].val[4/4];
  r2.w = t2[r1.w].val[4/4+1];
  r0.w = cmp(0 < r2.w);
  if (r0.w != 0) {
    r4.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
    r4.xyz = cb0[213].xyz * r4.xyz;
    r6.xyz = (int3)r4.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.w = 1 + cb0[213].w;
    r4.xyz = r4.xyz / r6.www;
    r4.xyz = frac(r4.xyz);
    r4.xyz = cb0[213].www * r4.xyz;
    r4.xyz = r6.xyz * r0.www + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = cb0[214].xyz * r4.xyz;
    r0.w = t1.SampleLevel(s0_s, r4.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r4.xyz = saturate(cb0[136].xyz);
  o4.xyz = sqrt(r4.xyz);
  r1.w = 0.0799999982 * r2.y;
  r4.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r4.xyz = r2.xxx * r4.xyz + r1.www;
  r6.xyz = -r1.xyz * r2.xxx + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r4.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.xyz = r1.www ? r4.xyz : r6.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r4.xyz = r6.xyz + r4.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r3.xyz;
    r7.x = t2[r6.y].val[0/4];
    r7.y = t2[r6.y].val[0/4+1];
    r7.z = t2[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r1.www ? r3.xyz : r5.xyz;
  }
  r3.xyz = cb0[145].yyy * r4.xyz + r5.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r1.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r3.xyz;
  o0.w = 0;
  o1.w = r2.z;
  o2.w = 0.509803951;
  o2.xy = r2.xy;
  o3.xyz = r1.xyz;
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}