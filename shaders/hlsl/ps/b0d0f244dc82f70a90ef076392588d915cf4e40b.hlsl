// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
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
  nointerpolation uint v2 : PRIMITIVE_ID0,
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
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xyz = mad((int3)v2.xxx, int3(36,36,36), int3(4,18,20));
  r0.w = t2[r2.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.w = v4.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r3.xyz = cb2[4].xyz + -cb2[3].xyz;
  r3.xyz = cb2[5].yyy * r3.xyz + cb2[3].xyz;
  r1.w = cb2[5].z * cb0[142].z;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r0.w = max(0, -r0.w);
  r0.w = abs(r1.w) * r0.w;
  r4.x = t2[r2.y].val[0/4];
  r4.y = t2[r2.y].val[0/4+1];
  r4.z = t2[r2.y].val[0/4+2];
  r4.xyz = -cb0[67].xyz + r4.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb2[5].w;
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[6].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = r2.x ? 1 : r1.w;
  r2.xw = -cb0[129].xy + v3.xy;
  r4.xy = cb0[152].xx + r2.xw;
  r4.xy = (uint2)r4.xy;
  r3.w = (uint)r4.y << 1;
  r3.w = (int)r3.w + (int)r4.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r2.xw = float2(0.015625,0.015625) * r2.xw;
  r2.x = t6.SampleBias(s2_s, r2.xw, cb0[143].y).x;
  r2.x = r3.w + r2.x;
  r2.x = 0.166666672 * r2.x;
  r0.w = r0.w * r1.w + r2.x;
  r0.w = -0.833299994 + r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.w = cmp(0 < cb0[215].x);
  r2.x = t2[r2.z].val[4/4];
  r2.z = t2[r2.z].val[4/4+1];
  r1.w = cmp(0 < r2.z);
  if (r1.w != 0) {
    r4.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
    r4.xyz = cb0[213].xyz * r4.xyz;
    r5.xyz = (int3)r4.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r1.w = 1 + cb0[213].w;
    r4.xyz = r4.xyz / r5.www;
    r4.xyz = frac(r4.xyz);
    r4.xyz = cb0[213].www * r4.xyz;
    r4.xyz = r5.xyz * r1.www + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = cb0[214].xyz * r4.xyz;
    r1.w = t1.SampleLevel(s0_s, r4.xyz, 0).x;
  } else {
    r2.y = t2[r2.y].val[12/4];
    r2.y = cmp(0 < r2.y);
    r2.y = r0.w ? r2.y : 0;
    r1.w = r2.y ? cb1[5].x : 1;
  }
  r2.yzw = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  if (r0.w != 0) {
    r4.xyz = r1.xyz * cb1[1].xyz + cb1[0].xyz;
    r4.xyz = max(cb1[2].xyz, r4.xyz);
    r4.xyz = min(cb1[3].xyz, r4.xyz);
    r5.xyzw = t3.Sample(s1_s, r4.xyz).xyzw;
    r6.xyzw = t4.Sample(s0_s, r4.xyz).xyzw;
    r4.xyzw = t5.Sample(s0_s, r4.xyz).xyzw;
    r7.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
    r8.xw = r5.xw;
    r8.y = r6.x;
    r8.z = r4.x;
    r7.x = 0.886227548;
    r8.x = dot(r8.xyzw, r7.xyzw);
    r9.x = r5.y;
    r9.yw = r6.yw;
    r9.z = r4.y;
    r8.y = dot(r9.xyzw, r7.xyzw);
    r4.x = r5.z;
    r4.y = r6.z;
    r8.z = dot(r4.xyzw, r7.xyzw);
    r4.xyz = max(float3(0,0,0), r8.xyz);
    r4.xyz = float3(0.318309873,0.318309873,0.318309873) * r4.xyz;
  } else {
    r4.xyz = float3(0,0,0);
  }
  r4.xyz = cb0[157].xyz * r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r2.yzw;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r5.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r5.x = t2[r5.x].val[0/4];
    r5.z = t2[r5.x].val[0/4+1];
    r5.w = t2[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r1.xyz;
    r6.x = t2[r5.y].val[0/4];
    r6.y = t2[r5.y].val[0/4+1];
    r6.z = t2[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r3.w = (int)r5.y | (int)r5.x;
    r3.w = (int)r5.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r3.www ? r1.xyz : r3.xyz;
  }
  r1.xyz = cb0[145].yyy * r2.yzw + r4.xyz;
  r1.xyz = r1.xyz + r3.xyz;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r2.y = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r2.y = frac(r2.y);
  r2.y = -0.5 + r2.y;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.y * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r2.x;
  o2.xyzw = float4(0,0,1,0.505882382);
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}