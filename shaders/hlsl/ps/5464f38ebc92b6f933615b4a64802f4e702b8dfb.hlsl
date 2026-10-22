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
  float4 cb3[9];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xy = t3.Sample(s0_s, v2.xy).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb3[4].xyz + -cb3[3].xyz;
  r2.xyz = cb3[7].yyy * r2.xyz + cb3[3].xyz;
  r0.w = cmp(cb1[0].x != 0.000000);
  r1.w = cmp(0.00100000005 < abs(cb1[0].x));
  r0.w = r0.w ? r1.w : 0;
  r3.xy = floor(v4.xy);
  r1.w = dot(r3.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r2.w = cmp(cb1[0].x < 0);
  r3.x = 1 + cb1[0].x;
  r3.x = cmp(r1.w < r3.x);
  r1.w = cmp(cb1[0].x < r1.w);
  r1.w = r2.w ? r3.x : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r0.w = r0.w ? r1.w : 0;
  if (r0.w != 0) discard;
  r3.xyz = saturate(cb3[6].xyz);
  r4.xy = saturate(cb3[7].zw);
  r4.zw = saturate(cb3[8].yx);
  o2.z = r4.w * cb0[139].y + cb0[139].x;
  r0.w = mad((int)v3.x, 36, 20);
  r1.w = cmp(0 < cb0[215].x);
  r5.x = t2[r0.w].val[4/4];
  r5.y = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r5.y);
  if (r0.w != 0) {
    r5.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.yzw = max(float3(0,0,0), r5.yzw);
    r5.yzw = min(float3(0.99000001,0.99000001,0.99000001), r5.yzw);
    r5.yzw = cb0[213].xyz * r5.yzw;
    r6.xyz = (int3)r5.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.w = 1 + cb0[213].w;
    r5.yzw = r5.yzw / r6.www;
    r5.yzw = frac(r5.yzw);
    r5.yzw = cb0[213].www * r5.yzw;
    r5.yzw = r6.xyz * r0.www + r5.yzw;
    r5.yzw = float3(0.5,0.5,0.5) + r5.yzw;
    r5.yzw = cb0[214].xyz * r5.yzw;
    r0.w = t1.SampleLevel(s1_s, r5.yzw, 0).x;
  } else {
    r2.w = mad((int)v3.x, 36, 18);
    r2.w = t2[r2.w].val[12/4];
    r2.w = cmp(0 < r2.w);
    r2.w = r1.w ? r2.w : 0;
    r0.w = r2.w ? cb2[5].x : 1;
  }
  r2.w = 0.0799999982 * r4.y;
  r5.yzw = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r3.xyz;
  r5.yzw = r4.xxx * r5.yzw + r2.www;
  r6.xyz = -r3.xyz * r4.xxx + r3.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.yzw = r5.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r5.yzw = r2.www ? float3(0,0,0) : r5.yzw;
  r2.w = dot(r5.yzw, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r2.w = r4.z * r7.x + r7.y;
  r2.w = r2.w * r4.z + r7.z;
  r2.w = r2.w * r4.z;
  r2.w = max(r4.z, r2.w);
  r7.xyz = r0.yzy * r0.yzx;
  r8.yw = r0.zz * r0.yx;
  r3.w = r0.x * r0.x + -r7.x;
  r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r8.xz = r7.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r8.xyzw;
  r3.w = 0.429042608 * r3.w;
  r9.x = 0.886227548;
  r4.w = dot(cb2[6].xyzw, r9.xyzw);
  r6.w = dot(cb2[9].xyzw, r7.xyzw);
  r4.w = r6.w + r4.w;
  r8.x = cb2[12].x * r3.w + r4.w;
  r4.w = dot(cb2[7].xyzw, r9.xyzw);
  r6.w = dot(cb2[10].xyzw, r7.xyzw);
  r4.w = r6.w + r4.w;
  r8.y = cb2[12].y * r3.w + r4.w;
  r4.w = dot(cb2[8].xyzw, r9.xyzw);
  r6.w = dot(cb2[11].xyzw, r7.xyzw);
  r4.w = r6.w + r4.w;
  r8.z = cb2[12].z * r3.w + r4.w;
  r7.xyz = max(float3(0,0,0), r8.xyz);
  r7.xyz = r1.www ? r7.xyz : 0;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r8.xyz = r4.zzz * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz * r4.zzz + r10.xyz;
  r8.xyz = r8.xyz * r4.zzz;
  r8.xyz = max(r8.xyz, r4.zzz);
  r7.xyz = r8.xyz * r7.xyz;
  r5.yzw = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r4.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r4.z].val[0/4];
    r6.y = t2[r4.z].val[0/4+1];
    r6.z = t2[r4.z].val[0/4+2];
    r6.xyz = -r6.xyz + r1.xyz;
    r8.x = t2[r4.w].val[0/4];
    r8.y = t2[r4.w].val[0/4+1];
    r8.z = t2[r4.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r3.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.yzw + r7.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
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
  o1.w = r5.x;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}