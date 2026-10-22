// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
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
  r1.zw = cb2[4].xx * v2.xy;
  r0.w = cb2[4].y + cb0[143].y;
  r4.xy = t3.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[4].zzz * r5.xyz + r4.xyz;
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
  r4.xyz = cb2[4].www * cb2[1].xyz;
  r5.xyzw = t4.SampleBias(s2_s, r1.zw, cb0[143].y).xyzw;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r0.www + -r5.xyz;
  r5.xyz = cb2[5].zzz * r6.xyz + r5.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[5].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb2[3].xyz * r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r1.zw = t5.SampleBias(s3_s, r1.zw, cb0[143].y).xy;
  r0.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[5].w * r1.z;
  r1.z = exp2(r1.z);
  r0.w = r0.w ? 0 : r1.z;
  r0.w = saturate(cb2[6].x + r0.w);
  r6.x = saturate(cb2[6].y + r1.w);
  r1.z = dot(r0.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb2[6].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb2[6].w * r1.z;
  r1.w = saturate(cb2[7].y + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r6.y = saturate(cb2[7].z * r1.z);
  r1.z = cb2[7].w * cb1[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.x + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cb2[8].x + r1.x;
  r2.xy = float2(0.649999976,0.487499982) * cb1[1].ww;
  r1.w = cb1[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r1.w / r2.y);
  r2.y = -cb1[1].w * 0.649999976 + 8000;
  r1.w = r1.w * r2.y + r2.x;
  r1.y = r1.y / r1.w;
  r1.x = r1.x / cb2[8].x;
  r1.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.y = r1.z ? r1.y : r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb2[7].w));
  r1.z = 1 + cb2[7].w;
  r1.y = r1.y ? r1.z : 1.39999998;
  r2.xyz = -cb0[129].xxy + v4.xxy;
  r1.z = r2.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.y = r1.y + -r1.z;
  r1.zw = cb0[152].xx + r2.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r2.xy = float2(0.015625,0.015625) * r2.yz;
  r1.w = t6.SampleBias(s4_s, r2.xy, cb0[143].y).x;
  r1.z = r1.z + r1.w;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r5.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r5.xyz);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(r5.w);
  r0.w = mad((int)v3.x, 36, 20);
  r2.x = t2[r0.w].val[4/4];
  r2.y = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r2.y);
  if (r0.w != 0) {
    r2.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r2.yzw = max(float3(0,0,0), r2.yzw);
    r2.yzw = min(float3(0.99000001,0.99000001,0.99000001), r2.yzw);
    r2.yzw = cb0[213].xyz * r2.yzw;
    r5.xyz = (int3)r2.yzw;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r0.w = 1 + cb0[213].w;
    r2.yzw = r2.yzw / r5.www;
    r2.yzw = frac(r2.yzw);
    r2.yzw = cb0[213].www * r2.yzw;
    r2.yzw = r5.xyz * r0.www + r2.yzw;
    r2.yzw = float3(0.5,0.5,0.5) + r2.yzw;
    r2.yzw = cb0[214].xyz * r2.yzw;
    r0.w = t1.SampleLevel(s0_s, r2.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  r2.yzw = saturate(cb0[136].xyz);
  o4.xyz = sqrt(r2.yzw);
  r1.w = 0.0799999982 * r6.y;
  r2.yzw = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r2.yzw = r6.xxx * r2.yzw + r1.www;
  r5.xyz = -r1.xyz * r6.xxx + r1.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r2.yzw = r2.yzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r2.yzw;
  r2.yzw = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r2.yzw = r1.www ? r2.yzw : r5.xyz;
  r5.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r2.yzw = r5.xyz + r2.yzw;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t2[r5.x].val[0/4];
    r5.z = t2[r5.x].val[0/4+1];
    r5.w = t2[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r3.xyz;
    r7.x = t2[r5.y].val[0/4];
    r7.y = t2[r5.y].val[0/4+1];
    r7.z = t2[r5.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r5.xyz = cmp(r7.xyz < abs(r5.xzw));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r1.www ? r3.xyz : r4.xyz;
  }
  r2.yzw = cb0[145].yyy * r2.yzw + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r2.yzw;
  o0.w = 0;
  o1.w = r2.x;
  o2.w = 0.509803951;
  o2.xy = r6.xy;
  o3.xyz = r1.xyz;
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}