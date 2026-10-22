// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[17];
}

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
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xy = mad((int2)v3.xx, int2(36,36), int2(18,20));
  r4.x = t2[r3.x].val[0/4];
  r4.y = t2[r3.x].val[0/4+1];
  r4.z = t2[r3.x].val[0/4+2];
  r0.w = r4.x + r4.y;
  r0.w = r0.w + r4.z;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r1.w = cb3[9].x * r0.w;
  r4.x = cb3[9].w * r1.w;
  r4.y = cb3[10].x * r1.w;
  r3.zw = cb3[10].yz * v2.xy + r4.xy;
  r3.zw = t3.SampleBias(s1_s, r3.zw, cb0[143].y).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[10].www * r5.xyz + r4.xyz;
  r1.w = 1 + r4.z;
  r0.w = cb3[11].x * r0.w;
  r5.x = cb3[11].w * r0.w;
  r5.y = cb3[12].x * r0.w;
  r3.zw = cb3[12].yz * v2.xy + r5.xy;
  r3.zw = t3.SampleBias(s1_s, r3.zw, cb0[143].y).xy;
  r5.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[12].www * r6.xyz + r5.xyz;
  r4.w = 1 + r4.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r0.w = dot(r4.xyw, r5.xyz);
  r5.xyz = r5.xyz * r1.www;
  r4.xyz = r4.xyw * r0.www + -r5.xyz;
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
  r0.w = dot(r0.xyz, r1.xyz);
  r4.xyz = r0.xyz * r0.www;
  r1.xyz = r4.xyz * float3(2,2,2) + -r1.xyz;
  r1.xyz = t4.Sample(s2_s, r1.xyz).xyz;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r1.www + -r1.xyz;
  r1.xyz = cb3[13].xxx * r4.xyz + r1.xyz;
  r1.xyz = cb3[13].yyy * r1.xyz;
  r4.xyz = cmp(float3(0,0,0) >= r1.xyz);
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb3[13].zzz * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r4.xyz ? float3(0,0,0) : r1.xyz;
  r1.xyz = float3(-1,-1,-1) + r1.xyz;
  r1.xyz = cb3[13].www * r1.xyz + float3(1,1,1);
  r4.xyz = cb3[4].xyz * r1.xyz;
  r1.w = -cb3[15].x + r0.w;
  r1.w = cmp(9.99999975e-006 < abs(r1.w));
  r2.w = cmp(r0.w >= cb3[15].x);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r1.w ? r2.w : 1;
  r1.xyz = -r1.xyz * cb3[4].xyz + cb3[7].xyz;
  r1.xyz = r1.www * r1.xyz + r4.xyz;
  r2.w = -cb3[16].y + r0.w;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r0.w = cmp(r0.w >= cb3[16].y);
  r0.w = r0.w ? 1.000000 : 0;
  r0.w = r2.w ? r0.w : 1;
  r4.xyz = cb3[15].yyy * r1.xyz + -r1.xyz;
  r1.xyz = r0.www * r4.xyz + r1.xyz;
  r4.xyz = cb3[8].xyz + -r1.xyz;
  r1.xyz = cb3[16].zzz * r4.xyz + r1.xyz;
  r0.w = 1 + -r1.w;
  r1.w = cmp(0 < cb0[215].x);
  r3.y = t2[r3.y].val[4/4];
  r3.z = t2[r3.y].val[4/4+1];
  r2.w = cmp(0 < r3.z);
  if (r2.w != 0) {
    r4.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
    r4.xyz = cb0[213].xyz * r4.xyz;
    r5.xyz = (int3)r4.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r2.w = 1 + cb0[213].w;
    r4.xyz = r4.xyz / r5.www;
    r4.xyz = frac(r4.xyz);
    r4.xyz = cb0[213].www * r4.xyz;
    r4.xyz = r5.xyz * r2.www + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
    r4.xyz = cb0[214].xyz * r4.xyz;
    r2.w = t1.SampleLevel(s0_s, r4.xyz, 0).x;
  } else {
    r3.x = t2[r3.x].val[12/4];
    r3.x = cmp(0 < r3.x);
    r3.x = r1.w ? r3.x : 0;
    r2.w = r3.x ? cb1[5].x : 1;
  }
  r3.x = r0.w * -0.0203999989 + 0.0203999989;
  r3.xzw = r3.xxx * cb0[137].www + cb0[137].xyz;
  r4.x = cmp(0 != cb0[183].w);
  r4.yzw = r3.xzw * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r4.yzw = r4.xxx ? r4.yzw : cb0[136].xyz;
  r3.xzw = r4.xxx ? float3(0,0,0) : r3.xzw;
  r4.x = dot(r3.xzw, float3(0.300000012,0.589999974,0.109999999));
  r5.x = r4.x * 2.04040003 + -0.332399994;
  r5.x = r4.x * -4.79510021 + r5.x;
  r4.x = r4.x * 2.75519991 + r5.x;
  r4.x = 1.33200002 + r4.x;
  r4.x = max(1, r4.x);
  r5.xyz = r0.yzy * r0.yzx;
  r6.yw = r0.zz * r0.yx;
  r5.x = r0.x * r0.x + -r5.x;
  r7.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r6.xz = r5.zy * float2(1,3) + float2(0,-1);
  r6.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r6.xyzw;
  r5.x = 0.429042608 * r5.x;
  r7.x = 0.886227548;
  r5.y = dot(cb1[6].xyzw, r7.xyzw);
  r5.z = dot(cb1[9].xyzw, r6.xyzw);
  r5.y = r5.y + r5.z;
  r8.x = cb1[12].x * r5.x + r5.y;
  r5.y = dot(cb1[7].xyzw, r7.xyzw);
  r5.z = dot(cb1[10].xyzw, r6.xyzw);
  r5.y = r5.y + r5.z;
  r8.y = cb1[12].y * r5.x + r5.y;
  r5.y = dot(cb1[8].xyzw, r7.xyzw);
  r5.z = dot(cb1[11].xyzw, r6.xyzw);
  r5.y = r5.y + r5.z;
  r8.z = cb1[12].z * r5.x + r5.y;
  r5.xyz = max(float3(0,0,0), r8.xyz);
  r5.xyz = r1.www ? r5.xyz : 0;
  r5.xyz = cb0[157].xyz * r5.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r4.yzw;
  r3.xzw = r3.xzw * float3(0.449999988,0.449999988,0.449999988) + r4.yzw;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r4.y = cmp(0 < cb0[140].x);
  if (r4.y != 0) {
    r4.yz = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r4.y].val[0/4];
    r6.y = t2[r4.y].val[0/4+1];
    r6.z = t2[r4.y].val[0/4+2];
    r6.xyz = -r6.xyz + r2.xyz;
    r4.y = t2[r4.z].val[0/4];
    r4.z = t2[r4.z].val[0/4+1];
    r4.w = t2[r4.z].val[0/4+2];
    r4.yzw = float3(1,1,1) + r4.yzw;
    r4.yzw = cmp(r4.yzw < abs(r6.xyz));
    r4.y = (int)r4.z | (int)r4.y;
    r4.y = (int)r4.w | (int)r4.y;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r4.yyy ? r2.xyz : r1.xyz;
  }
  r2.xyz = cb0[145].yyy * r3.xzw + r5.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r1.w * r4.x;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r3.y;
  o2.yw = float2(0.254999995,0.505882382);
  o2.z = cb0[139].x;
  o2.x = r0.w;
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}