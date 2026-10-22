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
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : TEXCOORD15,
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float3 v5 : TEXCOORD9,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = mad((int)v4.x, 36, 3);
  r2.x = t2[r0.w].val[0/4];
  r2.y = t2[r0.w].val[0/4+1];
  r2.z = t2[r0.w].val[0/4+2];
  r2.xyz = -cb0[67].xyz + r2.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r2.xyz = r2.xyz / r0.www;
  r3.x = dot(v0.xyz, r2.xyz);
  r3.y = dot(r0.xyz, r2.xyz);
  r3.z = dot(v1.xyz, r2.xyz);
  r2.xyzw = t3.SampleBias(s1_s, v3.xy, cb0[143].y).wxyz;
  r2.yzw = float3(-0.5,-0.5,-0.5) + r2.yzw;
  r2.yzw = r2.yzw + r2.yzw;
  r4.xyz = cb0[17].xyz + cb0[16].xyz;
  r5.x = dot(v0.xyz, r4.xyz);
  r5.y = dot(r0.xyz, r4.xyz);
  r4.xy = r5.xy * r2.yz;
  r4.z = 0;
  r2.yzw = -r3.xyz * r2.www + r4.xyz;
  r0.w = dot(r2.yzw, r2.yzw);
  r0.w = sqrt(r0.w);
  r2.yzw = r2.yzw / r0.www;
  r2.yzw = r2.yzw * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.yzw, r2.yzw);
  r0.w = rsqrt(r0.w);
  r2.yzw = r2.yzw * r0.www;
  r0.xyz = r2.zzz * r0.xyz;
  r0.xyz = r2.yyy * v0.xyz + r0.xyz;
  r0.xyz = r2.www * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.yzw = cb2[6].xxx * cb2[1].xyz;
  r3.xyzw = t4.SampleBias(s2_s, v3.xy, cb0[143].y).xyzw;
  r4.xyz = t5.SampleBias(s3_s, v3.xy, cb0[143].y).xyz;
  r0.w = cmp(cb1[0].x != 0.000000);
  r1.w = cmp(0.00100000005 < abs(cb1[0].x));
  r0.w = r0.w ? r1.w : 0;
  r5.xy = floor(v6.xy);
  r1.w = dot(r5.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r4.w = cmp(cb1[0].x < 0);
  r5.x = 1 + cb1[0].x;
  r5.x = cmp(r1.w < r5.x);
  r1.w = cmp(cb1[0].x < r1.w);
  r1.w = r4.w ? r5.x : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r0.w = r0.w ? r1.w : 0;
  if (r0.w != 0) discard;
  r0.w = r3.w * v3.z + -0.100000001;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r3.xyz = saturate(r3.xyz);
  r2.x = saturate(r2.x);
  r0.w = r2.x * cb0[139].y + cb0[139].x;
  r4.xyz = saturate(r4.xyz);
  r4.xyz = saturate(r4.xyz * cb0[136].www + cb0[136].xyz);
  r1.w = mad((int)v4.x, 36, 20);
  r5.x = t2[r1.w].val[4/4];
  r5.y = t2[r1.w].val[4/4+1];
  r1.w = cmp(0 < r5.y);
  if (r1.w != 0) {
    r5.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.yzw = max(float3(0,0,0), r5.yzw);
    r5.yzw = min(float3(0.99000001,0.99000001,0.99000001), r5.yzw);
    r5.yzw = cb0[213].xyz * r5.yzw;
    r6.xyz = (int3)r5.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.w = 1 + cb0[213].w;
    r5.yzw = r5.yzw / r6.www;
    r5.yzw = frac(r5.yzw);
    r5.yzw = cb0[213].www * r5.yzw;
    r5.yzw = r6.xyz * r1.www + r5.yzw;
    r5.yzw = float3(0.5,0.5,0.5) + r5.yzw;
    r5.yzw = cb0[214].xyz * r5.yzw;
    r1.w = t1.SampleLevel(s0_s, r5.yzw, 0).x;
  } else {
    r1.w = 1;
  }
  o4.xyz = sqrt(r4.xyz);
  r4.xyz = ddx_coarse(v2.xyz);
  r5.yzw = ddy_coarse(v2.xyz);
  r2.x = dot(r4.xyz, r4.xyz);
  r3.w = dot(r5.yzw, r5.yzw);
  r2.x = max(r3.w, r2.x);
  r2.x = log2(r2.x);
  r2.x = cb0[183].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = saturate(r2.x * cb0[183].x + cb0[183].y);
  o2.z = max(r2.x, r0.w);
  r4.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r5.yzw = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.yzw;
  r5.yzw = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r0.www ? r5.yzw : r4.xyz;
  r5.yzw = r0.www ? float3(0,0,0) : r6.xyz;
  r4.xyz = r5.yzw + r4.xyz;
  r2.xyz = max(float3(0,0,0), r2.yzw);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.yz = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t2[r5.y].val[0/4];
    r6.y = t2[r5.y].val[0/4+1];
    r6.z = t2[r5.y].val[0/4+2];
    r6.xyz = -r6.xyz + r1.xyz;
    r5.y = t2[r5.z].val[0/4];
    r5.z = t2[r5.z].val[0/4+1];
    r5.w = t2[r5.z].val[0/4+2];
    r5.yzw = float3(1,1,1) + r5.yzw;
    r5.yzw = cmp(r5.yzw < abs(r6.xyz));
    r0.w = (int)r5.z | (int)r5.y;
    r0.w = (int)r5.w | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r0.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r4.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r0.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r5.x;
  o2.xyw = float3(0,0.5,0.525490224);
  o3.xyz = r3.xyz;
  o4.w = 1;
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}