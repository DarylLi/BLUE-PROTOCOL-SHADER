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

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r2.xyz = -cb0[70].xyz + r2.xyz;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.zw = mad((int2)v3.xx, int2(36,36), int2(18,20));
  r3.x = t2[r1.z].val[0/4];
  r3.y = t2[r1.z].val[0/4+1];
  r3.z = t2[r1.z].val[0/4+2];
  r0.w = r3.x + r3.y;
  r0.w = r0.w + r3.z;
  r0.w = frac(r0.w);
  r3.xy = v2.xy + r0.ww;
  r3.xy = float2(10,10) * r3.xy;
  r3.zw = cmp(r3.xy >= -r3.xy);
  r3.xy = frac(abs(r3.xy));
  r3.xy = r3.zw ? r3.xy : -r3.xy;
  r0.w = r3.y * r3.x;
  r0.w = max(cb3[6].x, r0.w);
  r0.w = min(1, r0.w);
  r0.w = -1 + r0.w;
  r0.w = cb3[6].y * r0.w + 1;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[6].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r2.w ? 0 : r0.w;
  r2.w = saturate(cb3[6].x);
  r2.w = -1 + r2.w;
  r2.w = cb3[6].w * r2.w + 1;
  r3.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[6].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.x ? 0 : r2.w;
  r0.w = r2.w * r0.w;
  r2.w = cmp(cb0[31].w < 1);
  r3.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.x + r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.y = r1.x / cb3[7].x;
  r2.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[7].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[7].z * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r2.w ? 1 : r1.y;
  r3.xyz = cb3[2].xyz * r1.yyy;
  r3.xyz = r3.xyz * r0.www;
  r4.xyz = cb3[7].www * r3.xyz;
  r3.xyz = -r3.xyz * cb3[7].www + cb3[3].xyz;
  r3.xyz = cb3[8].xxx * r3.xyz + r4.xyz;
  r0.w = cb3[8].w * cb2[1].w;
  r1.y = cb3[9].x + r1.x;
  r4.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r2.w = cb2[1].w * 0.617499948 + -r1.x;
  r2.w = saturate(r2.w / r4.y);
  r3.w = -cb2[1].w * 0.649999976 + 8000;
  r2.w = r2.w * r3.w + r4.x;
  r1.y = r1.y / r2.w;
  r1.x = r1.x / cb3[9].x;
  r2.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = cmp(r0.w >= 0);
  r0.w = r0.w ? r1.y : r1.x;
  r0.w = r2.w ? r0.w : r1.x;
  r1.x = cmp(9.99999975e-006 < abs(cb3[8].w));
  r1.y = 1 + cb3[8].w;
  r1.x = r1.x ? r1.y : 1.39999998;
  r4.xyz = -cb0[129].xxy + v4.xxy;
  r1.y = r4.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.x = r1.x + -r1.y;
  r4.xw = cb0[152].xx + r4.yz;
  r4.xw = (uint2)r4.xw;
  r1.y = (uint)r4.w << 1;
  r1.y = (int)r1.y + (int)r4.x;
  r1.y = (uint)r1.y % 5;
  r1.y = (uint)r1.y;
  r4.xy = float2(0.015625,0.015625) * r4.yz;
  r2.w = t3.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r1.y = r2.w + r1.y;
  r1.y = 0.166666672 * r1.y;
  r0.w = r0.w * r1.x + r1.y;
  r0.w = saturate(-0.5 + r0.w);
  r0.w = -0.333299994 + r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r4.xyz = saturate(cb3[5].xyz);
  r1.xy = saturate(cb3[8].yz);
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r0.w = cmp(0 < cb0[215].x);
  r1.y = t2[r1.w].val[4/4];
  r1.w = t2[r1.w].val[4/4+1];
  r1.w = cmp(0 < r1.w);
  if (r1.w != 0) {
    r5.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.w = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r1.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r1.w = t1.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r1.z = t2[r1.z].val[12/4];
    r1.z = cmp(0 < r1.z);
    r1.z = r0.w ? r1.z : 0;
    r1.w = r1.z ? cb1[5].x : 1;
  }
  r5.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r4.xyz;
  r5.xyz = r1.xxx * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r4.xyz * r1.xxx + r4.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.zzz ? r7.xyz : r6.xyz;
  r5.xyz = r1.zzz ? float3(0,0,0) : r5.xyz;
  r1.z = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.z * 2.04040003 + -0.332399994;
  r2.w = r1.z * -4.79510021 + r2.w;
  r1.z = r1.z * 2.75519991 + r2.w;
  r1.z = 1.33200002 + r1.z;
  r1.z = max(1, r1.z);
  r7.xyz = r0.yzy * r0.yzx;
  r8.yw = r0.zz * r0.yx;
  r2.w = r0.x * r0.x + -r7.x;
  r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r8.xz = r7.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r8.xyzw;
  r2.w = 0.429042608 * r2.w;
  r9.x = 0.886227548;
  r3.w = dot(cb1[6].xyzw, r9.xyzw);
  r4.w = dot(cb1[9].xyzw, r7.xyzw);
  r3.w = r4.w + r3.w;
  r8.x = cb1[12].x * r2.w + r3.w;
  r3.w = dot(cb1[7].xyzw, r9.xyzw);
  r4.w = dot(cb1[10].xyzw, r7.xyzw);
  r3.w = r4.w + r3.w;
  r8.y = cb1[12].y * r2.w + r3.w;
  r3.w = dot(cb1[8].xyzw, r9.xyzw);
  r4.w = dot(cb1[11].xyzw, r7.xyzw);
  r3.w = r4.w + r3.w;
  r8.z = cb1[12].z * r2.w + r3.w;
  r7.xyz = max(float3(0,0,0), r8.xyz);
  r7.xyz = r0.www ? r7.xyz : 0;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r8.x = t2[r6.y].val[0/4];
    r8.y = t2[r6.y].val[0/4+1];
    r8.z = t2[r6.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xzw));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r2.www ? r2.xyz : r3.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r7.xyz;
  r2.xyz = r2.xyz + r3.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.z;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r1.y;
  o2.x = r1.x;
  o2.yw = float2(0.5,0.505882382);
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}