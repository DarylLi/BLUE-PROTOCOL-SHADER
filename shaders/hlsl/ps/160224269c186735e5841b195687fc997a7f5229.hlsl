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

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
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
  r1.z = r3.x + r3.y;
  r1.z = r1.z + r3.z;
  r1.z = frac(r1.z);
  r3.xy = v2.xy + r1.zz;
  r3.xy = float2(10,10) * r3.xy;
  r3.zw = cmp(r3.xy >= -r3.xy);
  r3.xy = frac(abs(r3.xy));
  r3.xy = r3.zw ? r3.xy : -r3.xy;
  r1.z = r3.y * r3.x;
  r1.z = max(cb2[6].x, r1.z);
  r1.z = min(1, r1.z);
  r1.z = -1 + r1.z;
  r1.z = cb2[6].y * r1.z + 1;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[6].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r2.w = saturate(cb2[6].x);
  r2.w = -1 + r2.w;
  r2.w = cb2[6].w * r2.w + 1;
  r3.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb2[6].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.x ? 0 : r2.w;
  r1.z = r2.w * r1.z;
  r2.w = cmp(cb0[31].w < 1);
  r3.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.x + r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.y = r1.x / cb2[7].x;
  r2.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb2[7].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb2[7].z * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r2.w ? 1 : r1.y;
  r3.xyz = cb2[2].xyz * r1.yyy;
  r3.xyz = r3.xyz * r1.zzz;
  r4.xyz = cb2[7].www * r3.xyz;
  r3.xyz = -r3.xyz * cb2[7].www + cb2[3].xyz;
  r3.xyz = cb2[8].xxx * r3.xyz + r4.xyz;
  r1.y = cb2[8].w * cb1[1].w;
  r1.z = cb2[9].x + r1.x;
  r4.xy = float2(0.649999976,0.487499982) * cb1[1].ww;
  r2.w = cb1[1].w * 0.617499948 + -r1.x;
  r2.w = saturate(r2.w / r4.y);
  r3.w = -cb1[1].w * 0.649999976 + 8000;
  r2.w = r2.w * r3.w + r4.x;
  r1.z = r1.z / r2.w;
  r1.x = r1.x / cb2[9].x;
  r2.w = cmp(9.99999975e-006 < abs(r1.y));
  r1.y = cmp(r1.y >= 0);
  r1.y = r1.y ? r1.z : r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb2[8].w));
  r1.z = 1 + cb2[8].w;
  r1.y = r1.y ? r1.z : 1.39999998;
  r4.xyz = -cb0[129].xxy + v4.xxy;
  r1.z = r4.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.y = r1.y + -r1.z;
  r4.xw = cb0[152].xx + r4.yz;
  r4.xw = (uint2)r4.xw;
  r1.z = (uint)r4.w << 1;
  r1.z = (int)r1.z + (int)r4.x;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r4.xy = float2(0.015625,0.015625) * r4.yz;
  r2.w = t4.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r1.z = r2.w + r1.z;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = -0.333299994 + r1.x;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = saturate(cb2[5].xyz);
  r4.xy = saturate(cb2[8].yz);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  r4.y = t2[r1.w].val[4/4];
  r4.z = t2[r1.w].val[4/4+1];
  r1.w = cmp(0 < r4.z);
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
    r1.w = 1;
  }
  r5.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r1.xyz;
  r5.xyz = r4.xxx * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r1.xyz * r4.xxx + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = r2.www ? r5.xyz : r6.xyz;
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
  r8.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r6.xyz = r8.xyz * r6.xyz;
  r7.xyz = r2.www ? float3(0,0,0) : r7.xyz;
  r5.xyz = r7.xyz + r5.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r4.z].val[0/4];
    r7.y = t2[r4.z].val[0/4+1];
    r7.z = t2[r4.z].val[0/4+2];
    r7.xyz = -r7.xyz + r2.xyz;
    r8.x = t2[r4.w].val[0/4];
    r8.y = t2[r4.w].val[0/4+1];
    r8.z = t2[r4.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r0.w = (int)r7.y | (int)r7.x;
    r0.w = (int)r7.z | (int)r0.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r0.www ? r2.xyz : r3.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r6.xyz;
  r2.xyz = r2.xyz + r3.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r0.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r4.y;
  o2.x = r4.x;
  o2.yw = float2(0.5,0.505882382);
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}