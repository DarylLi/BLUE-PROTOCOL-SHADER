// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

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
  float4 cb1[6];
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xy = mad((int2)v3.xx, int2(36,36), int2(4,20));
  r0.w = t2[r3.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.w = v5.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r3.xz = t3.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r3.xz = r3.xz * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xz, r3.xz);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r4.xy = cmp(float2(0,0) >= r3.xz);
  r3.xz = log2(r3.xz);
  r3.xz = cb1[4].xx * r3.xz;
  r3.xz = exp2(r3.xz);
  r4.xy = r4.xy ? float2(0,0) : r3.xz;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb1[4].x * r1.w;
  r1.w = exp2(r1.w);
  r4.z = r2.w ? 0 : r1.w;
  r3.xzw = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r3.xzw, r3.xzw);
  r1.w = rsqrt(r1.w);
  r3.xzw = r3.xzw * r1.www;
  r0.xyz = r3.zzz * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.www * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r1.xyz, v1.xyz);
  r1.x = cb1[4].y * r0.w;
  r1.x = 6.28318548 * r1.x;
  r1.x = sin(r1.x);
  r3.xz = cb1[4].zw + r0.ww;
  r3.xz = cb1[4].yy * r3.xz;
  r3.xz = float2(6.28318548,6.28318548) * r3.xz;
  r1.yz = sin(r3.xz);
  r1.xyz = float3(1,1,1) + r1.xyz;
  r1.xyz = cb1[2].xyz * r1.xyz;
  r3.xzw = float3(0.5,0.5,0.5) * r1.xyz;
  r1.xyz = -r1.xyz * float3(0.5,0.5,0.5) + cb1[3].xyz;
  r1.xyz = cb1[5].xxx * r1.xyz + r3.xzw;
  r3.x = t2[r3.y].val[4/4];
  r3.y = t2[r3.y].val[4/4+1];
  r0.w = cmp(0 < r3.y);
  if (r0.w != 0) {
    r3.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.yzw = max(float3(0,0,0), r3.yzw);
    r3.yzw = min(float3(0.99000001,0.99000001,0.99000001), r3.yzw);
    r3.yzw = cb0[213].xyz * r3.yzw;
    r4.xyz = (int3)r3.yzw;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r0.w = 1 + cb0[213].w;
    r3.yzw = r3.yzw / r4.www;
    r3.yzw = frac(r3.yzw);
    r3.yzw = cb0[213].www * r3.yzw;
    r3.yzw = r4.xyz * r0.www + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) + r3.yzw;
    r3.yzw = cb0[214].xyz * r3.yzw;
    r0.w = t1.SampleLevel(s0_s, r3.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  r1.w = cmp(0 != cb0[183].w);
  r3.yzw = float3(0.449999988,0.449999988,0.449999988) * cb0[137].xyz;
  r4.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r4.xyz = r1.www ? r4.xyz : cb0[136].xyz;
  r3.yzw = r1.www ? float3(0,0,0) : r3.yzw;
  r3.yzw = r4.xyz + r3.yzw;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r4.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r4.x = t2[r4.x].val[0/4];
    r4.z = t2[r4.x].val[0/4+1];
    r4.w = t2[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r2.xyz;
    r5.x = t2[r4.y].val[0/4];
    r5.y = t2[r4.y].val[0/4+1];
    r5.z = t2[r4.y].val[0/4+2];
    r5.xyz = float3(1,1,1) + r5.xyz;
    r4.xyz = cmp(r5.xyz < abs(r4.xzw));
    r1.w = (int)r4.y | (int)r4.x;
    r1.w = (int)r4.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r1.www ? r2.xyz : r1.xyz;
  }
  r1.xyz = cb0[145].yyy * r3.yzw + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r3.x;
  o2.xyw = float3(0.5,0,0.505882382);
  o2.z = cb0[139].x;
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}