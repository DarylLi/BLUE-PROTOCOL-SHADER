// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[13];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
  r2.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[2].xxx * cb2[1].xyz;
  o2.z = cb0[139].y * 0.800000012 + cb0[139].x;
  r0.w = mad((int)v2.x, 36, 20);
  r1.w = cmp(0 < cb0[215].x);
  r3.x = t2[r0.w].val[4/4];
  r3.y = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r3.y);
  if (r0.w != 0) {
    r3.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
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
    r2.w = mad((int)v2.x, 36, 18);
    r2.w = t2[r2.w].val[12/4];
    r2.w = cmp(0 < r2.w);
    r2.w = r1.w ? r2.w : 0;
    r0.w = r2.w ? cb1[5].x : 1;
  }
  r3.yzw = cb0[136].www * float3(1,0.0500000007,0) + cb0[136].xyz;
  r4.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r5.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.yzw;
  r3.yzw = r2.www ? r5.xyz : r3.yzw;
  r4.xyz = r2.www ? float3(0,0,0) : r4.xyz;
  r2.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r2.w * 2.04040003 + -0.332399994;
  r4.w = r2.w * -4.79510021 + r4.w;
  r2.w = r2.w * 2.75519991 + r4.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r5.xyz = r0.yzy * r0.yzx;
  r6.yw = r0.zz * r0.yx;
  r4.w = r0.x * r0.x + -r5.x;
  r7.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r6.xz = r5.zy * float2(1,3) + float2(0,-1);
  r5.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r6.xyzw;
  r4.w = 0.429042608 * r4.w;
  r7.x = 0.886227548;
  r6.x = dot(cb1[6].xyzw, r7.xyzw);
  r6.y = dot(cb1[9].xyzw, r5.xyzw);
  r6.x = r6.x + r6.y;
  r6.x = cb1[12].x * r4.w + r6.x;
  r6.w = dot(cb1[7].xyzw, r7.xyzw);
  r8.x = dot(cb1[10].xyzw, r5.xyzw);
  r6.w = r8.x + r6.w;
  r6.y = cb1[12].y * r4.w + r6.w;
  r6.w = dot(cb1[8].xyzw, r7.xyzw);
  r5.x = dot(cb1[11].xyzw, r5.xyzw);
  r5.x = r6.w + r5.x;
  r6.z = cb1[12].z * r4.w + r5.x;
  r5.xyz = max(float3(0,0,0), r6.xyz);
  r5.xyz = r1.www ? r5.xyz : 0;
  r5.xyz = cb0[157].xyz * r5.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r3.yzw;
  r5.xyz = float3(1.00009966,1,1) * r5.xyz;
  r3.yzw = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.yzw;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r4.x = cmp(0 < cb0[140].x);
  if (r4.x != 0) {
    r4.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r4.x = t2[r4.x].val[0/4];
    r4.z = t2[r4.x].val[0/4+1];
    r4.w = t2[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r1.xyz;
    r6.x = t2[r4.y].val[0/4];
    r6.y = t2[r4.y].val[0/4+1];
    r6.z = t2[r4.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r4.xyz = cmp(r6.xyz < abs(r4.xzw));
    r4.x = (int)r4.y | (int)r4.x;
    r4.x = (int)r4.z | (int)r4.x;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r4.xxx ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r3.yzw + r5.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r1.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r3.x;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = float3(1,0.0500000007,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}