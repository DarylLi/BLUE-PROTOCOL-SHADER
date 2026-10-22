// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r3.xyz = r0.xyz * r0.www;
  r0.xyz = cb1[4].xyz + -cb1[3].xyz;
  r0.xyz = cb1[5].yyy * r0.xyz + cb1[3].xyz;
  r1.w = cb1[5].z * cb0[142].z;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r0.w = max(0, -r0.w);
  r0.w = abs(r1.w) * r0.w;
  r2.x = t2[r2.y].val[0/4];
  r2.y = t2[r2.y].val[0/4+1];
  r2.w = t2[r2.y].val[0/4+2];
  r2.xyw = -cb0[67].xyz + r2.xyw;
  r1.w = dot(r2.xyw, r2.xyw);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb1[5].w;
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb1[6].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = r2.x ? 1 : r1.w;
  r2.xy = -cb0[129].xy + v3.xy;
  r4.xy = cb0[152].xx + r2.xy;
  r4.xy = (uint2)r4.xy;
  r2.w = (uint)r4.y << 1;
  r2.w = (int)r2.w + (int)r4.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r2.xy = float2(0.015625,0.015625) * r2.xy;
  r2.x = t4.SampleBias(s1_s, r2.xy, cb0[143].y).x;
  r2.x = r2.w + r2.x;
  r2.x = 0.166666672 * r2.x;
  r0.w = r0.w * r1.w + r2.x;
  r0.w = -0.833299994 + r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r2.x = t2[r2.z].val[4/4];
  r2.y = t2[r2.z].val[4/4+1];
  r0.w = cmp(0 < r2.y);
  if (r0.w != 0) {
    r2.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r2.yzw = max(float3(0,0,0), r2.yzw);
    r2.yzw = min(float3(0.99000001,0.99000001,0.99000001), r2.yzw);
    r2.yzw = cb0[213].xyz * r2.yzw;
    r4.xyz = (int3)r2.yzw;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r0.w = 1 + cb0[213].w;
    r2.yzw = r2.yzw / r4.www;
    r2.yzw = frac(r2.yzw);
    r2.yzw = cb0[213].www * r2.yzw;
    r2.yzw = r4.xyz * r0.www + r2.yzw;
    r2.yzw = float3(0.5,0.5,0.5) + r2.yzw;
    r2.yzw = cb0[214].xyz * r2.yzw;
    r0.w = t1.SampleLevel(s0_s, r2.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  r2.yzw = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r4.x = t3[0].val[0/4];
  r4.y = t3[0].val[0/4+1];
  r4.z = t3[0].val[0/4+2];
  r4.w = t3[0].val[0/4+3];
  r3.w = 1;
  r4.x = dot(r4.xyzw, r3.xyzw);
  r5.x = t3[1].val[0/4];
  r5.y = t3[1].val[0/4+1];
  r5.z = t3[1].val[0/4+2];
  r5.w = t3[1].val[0/4+3];
  r4.y = dot(r5.xyzw, r3.xyzw);
  r5.x = t3[2].val[0/4];
  r5.y = t3[2].val[0/4+1];
  r5.z = t3[2].val[0/4+2];
  r5.w = t3[2].val[0/4+3];
  r4.z = dot(r5.xyzw, r3.xyzw);
  r5.xyzw = r3.xyzz * r3.yzzx;
  r6.x = t3[3].val[0/4];
  r6.y = t3[3].val[0/4+1];
  r6.z = t3[3].val[0/4+2];
  r6.w = t3[3].val[0/4+3];
  r6.x = dot(r6.xyzw, r5.xyzw);
  r7.x = t3[4].val[0/4];
  r7.y = t3[4].val[0/4+1];
  r7.z = t3[4].val[0/4+2];
  r7.w = t3[4].val[0/4+3];
  r6.y = dot(r7.xyzw, r5.xyzw);
  r7.x = t3[5].val[0/4];
  r7.y = t3[5].val[0/4+1];
  r7.z = t3[5].val[0/4+2];
  r7.w = t3[5].val[0/4+3];
  r6.z = dot(r7.xyzw, r5.xyzw);
  r1.w = r3.y * r3.y;
  r1.w = r3.x * r3.x + -r1.w;
  r5.x = t3[6].val[0/4];
  r5.y = t3[6].val[0/4+1];
  r5.z = t3[6].val[0/4+2];
  r4.xyz = r6.xyz + r4.xyz;
  r4.xyz = r5.xyz * r1.www + r4.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = cb0[187].xyz * r4.xyz;
  r4.xyz = r4.xyz * r2.yzw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
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
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r1.www ? r1.xyz : r0.xyz;
  }
  r1.xyz = cb0[145].yyy * r2.yzw + r4.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.x;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r2.x;
  o2.xyzw = float4(0,0,1,0.505882382);
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}