// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
  r4.xy = t4.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.z = dot(r4.xy, r4.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r4.z = sqrt(r1.z);
  r5.xyz = r4.xyz * r0.www;
  r4.xyz = -r4.xyz * r0.www + float3(0,0,1);
  r4.xyz = cb2[8].xxx * r4.xyz + r5.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb2[8].yyy * cb2[1].xyz;
  r5.xyzw = t5.SampleBias(s3_s, v2.xy, cb0[143].y).xyzw;
  r6.xyzw = r3.xyxy / cb2[8].zzww;
  r1.z = t6.Sample(s0_s, r6.xy).x;
  r2.w = t6.Sample(s0_s, r6.zw).x;
  r6.xyz = -cb0[67].xyz + r3.xyz;
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r3.w);
  r4.w = r3.w / cb2[9].x;
  r6.x = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb2[9].y * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r6.x ? 0 : r4.w;
  r2.w = r2.w + -r1.z;
  r1.z = r4.w * r2.w + r1.z;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[9].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = saturate(cb2[9].w * r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r6.xyz = cb2[3].xyz + -r5.xyz;
  r6.xyz = r6.xyz * r1.zzz;
  r5.xyz = cb2[10].xxx * r6.xyz + r5.xyz;
  r1.z = saturate(dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r2.w = 1 + -r1.z;
  r2.w = r2.w + r2.w;
  r6.xyz = -r2.www * cb2[6].xyz + float3(1,1,1);
  r2.w = r1.z + r1.z;
  r7.xyz = cb2[5].xyz * r2.www;
  r1.z = cmp(r1.z >= 0.5);
  r6.xyz = r1.zzz ? r6.xyz : r7.xyz;
  r7.xyz = cb2[5].xyz + -r6.xyz;
  r6.xyz = cb2[10].yyy * r7.xyz + r6.xyz;
  r1.z = r3.w / cb2[10].z;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[10].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r6.xyz = r6.xyz + -r5.xyz;
  r6.xyz = r6.xyz * r1.zzz;
  r5.xyz = cb2[11].xxx * r6.xyz + r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r1.z = dot(r0.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb2[11].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb2[11].z * r1.z;
  r2.x = saturate(cb2[12].x + v1.z);
  r1.z = r2.x * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r1.z = saturate(cb2[12].y * r1.z);
  r2.x = cb2[12].w * cb1[1].w;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cb2[13].x + r1.x;
  r2.yz = float2(0.649999976,0.487499982) * cb1[1].ww;
  r2.w = cb1[1].w * 0.617499948 + -r1.x;
  r2.z = saturate(r2.w / r2.z);
  r2.w = -cb1[1].w * 0.649999976 + 8000;
  r2.y = r2.z * r2.w + r2.y;
  r1.y = r1.y / r2.y;
  r1.x = r1.x / cb2[13].x;
  r2.y = cmp(9.99999975e-006 < abs(r2.x));
  r2.x = cmp(r2.x >= 0);
  r1.y = r2.x ? r1.y : r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb2[12].w));
  r2.x = 1 + cb2[12].w;
  r1.y = r1.y ? r2.x : 1.39999998;
  r2.xyz = -cb0[129].xxy + v4.xxy;
  r2.x = r2.x * cb0[130].z + -0.469999999;
  r2.x = 4.93230057 * r2.x;
  r2.x = cos(r2.x);
  r2.x = 0.899999976 + r2.x;
  r2.x = saturate(0.555555582 * r2.x);
  r1.y = -r2.x + r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r2.w = (uint)r2.w << 1;
  r2.x = (int)r2.w + (int)r2.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r2.yz = float2(0.015625,0.015625) * r2.yz;
  r2.y = t7.SampleBias(s4_s, r2.yz, cb0[143].y).x;
  r2.x = r2.x + r2.y;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r5.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r5.xyz);
  r1.x = saturate(cb2[12].z);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r1.x = t2[r1.w].val[4/4];
  r1.y = t2[r1.w].val[4/4+1];
  r1.y = cmp(0 < r1.y);
  if (r1.y != 0) {
    r5.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.y = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r1.yyy + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r1.y = t1.SampleLevel(s1_s, r5.xyz, 0).x;
  } else {
    r1.y = 1;
  }
  r1.w = cb0[137].w * r1.z;
  r5.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r6.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.www ? r6.xyz : r5.xyz;
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
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r6.xyz = r8.xyz * r6.xyz;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r5.xyz = r7.xyz + r5.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r7.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r7.x].val[0/4];
    r7.z = t2[r7.x].val[0/4+1];
    r7.w = t2[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r3.xyz;
    r8.x = t2[r7.y].val[0/4];
    r8.y = t2[r7.y].val[0/4+1];
    r8.z = t2[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r0.w = (int)r7.y | (int)r7.x;
    r0.w = (int)r7.z | (int)r0.w;
    r1.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r3.xyz = r1.www ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r0.www ? r3.xyz : r4.xyz;
  }
  r3.xyz = cb0[145].yyy * r5.xyz + r6.xyz;
  r3.xyz = r3.xyz + r4.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r0.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r3.xyz;
  o0.w = 0;
  o1.w = r1.x;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.z;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}