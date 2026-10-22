// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v4.yyyy;
  r0.xyzw = v4.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v4.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r0.w = dot(-r0.xyz, -r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = -r0.xyz * r0.www;
  r2.xyzw = float4(12,12,0.5,0.5) * v2.zwxy;
  r3.xyz = t1.SampleBias(s0_s, r2.xy, cb0[143].y).xyz;
  r3.xyz = cb1[16].xxx * r3.xyz;
  r3.xyz = r3.xyz * cb1[16].yyy + cb1[2].xyz;
  r0.w = saturate(-r0.z);
  r1.w = 1 + -r0.w;
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb1[16].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.x ? 0 : r1.w;
  r4.xyz = cb1[4].xyz + -r3.xyz;
  r3.xyz = r1.www * r4.xyz + r3.xyz;
  r0.x = dot(r0.xyz, cb1[7].xyz);
  r0.x = -1 + r0.x;
  r0.y = saturate(-abs(r0.x) * cb1[17].w + 1);
  r3.xyz = r0.yyy * cb1[10].xyz + r3.xyz;
  r0.y = cb1[18].y * cb0[142].z;
  r4.xy = float2(0.000199999995,0.00100000005) * r0.yy;
  r4.z = 0;
  r4.xyzw = v2.xyxy + r4.xzyz;
  r0.y = t2.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r0.z = t3.SampleBias(s2_s, r4.zw, cb0[143].y).x;
  r0.z = r0.z + -r0.y;
  r0.y = r0.w * r0.z + r0.y;
  r0.z = mad((int)v3.x, 36, 5);
  r2.x = t0[r0.z].val[8/4];
  r2.y = t0[r0.z].val[8/4+1];
  r0.w = -r2.x + r1.z;
  r1.w = -0.100000001 * r2.y;
  r0.w = saturate(r0.w / r1.w);
  r0.w = 1 + -r0.w;
  r0.w = cb1[18].z * r0.w;
  r0.y = r0.w * r0.y;
  r0.w = t3.SampleBias(s2_s, r2.zw, cb0[143].y).x;
  r1.w = -cb1[19].x + cb1[18].w;
  r0.w = r0.w * r1.w + cb1[19].x;
  r1.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = r0.w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r1.w ? 0 : r0.y;
  r0.x = -abs(r0.x) * 0.769230783 + 1;
  r0.x = max(0, r0.x);
  r0.w = cmp(0 >= r0.x);
  r0.x = log2(r0.x);
  r0.x = 10 * r0.x;
  r0.x = exp2(r0.x);
  r2.xyz = cb1[9].xyz * r0.xxx;
  r2.xyz = r0.www ? float3(0,0,0) : r2.xyz;
  r0.x = r0.y * r0.y;
  r0.w = 0.400000006 * r0.x;
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = cb1[12].xyz * r0.yyy + r2.xyz;
  r0.x = min(1, r0.x);
  r2.xyz = r2.xyz + -r3.xyz;
  r0.xyw = r0.xxx * r2.xyz + r3.xyz;
  r0.xyw = cb1[14].xyz * r0.xyw;
  r2.xyz = float3(1.5,1.5,1.5) * r0.xyw;
  r0.xyw = -r0.xyw * float3(1.5,1.5,1.5) + cb1[15].xyz;
  r0.xyw = cb1[19].yyy * r0.xyw + r2.xyz;
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r2.x = t0[r0.z].val[0/4];
    r2.y = t0[r0.z].val[0/4+1];
    r2.z = t0[r0.z].val[0/4+2];
    r2.xyz = -r2.xyz + r1.xyz;
    r0.z = mad((int)v3.x, 36, 19);
    r3.x = t0[r0.z].val[0/4];
    r3.y = t0[r0.z].val[0/4+1];
    r3.z = t0[r0.z].val[0/4+2];
    r3.xyz = float3(1,1,1) + r3.xyz;
    r2.xyz = cmp(r3.xyz < abs(r2.xyz));
    r0.z = (int)r2.y | (int)r2.x;
    r0.z = (int)r2.z | (int)r0.z;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyw = r0.zzz ? r1.xyz : r0.xyw;
  }
  o0.xyz = cb0[135].yyy * r0.xyw;
  o0.w = 0;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}