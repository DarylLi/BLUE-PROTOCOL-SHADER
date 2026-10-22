// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[11];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
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
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb4[6].xx * v2.xy;
  r0.w = cb4[6].y + cb0[143].y;
  r4.xy = t3.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[6].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb3[5].xyz, -cb3[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[5].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = sqrt(r0.y);
  r6.xyz = r6.xyz / r0.yyy;
  r0.y = saturate(dot(-r6.xyz, r5.xyz));
  r2.w = 1 + -cb2[1].x;
  r0.y = saturate(r2.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r4.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb2[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb2[0].w;
  r2.x = r2.x * r2.y + cb2[0].w;
  r2.y = cmp(r2.x >= cb2[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb2[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb2[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb2[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb3[4].xyz * r0.xxx;
  r0.x = dot(-cb3[8].xyz, -cb3[8].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb3[8].xyz / r0.xxx;
  r0.x = dot(r5.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r6.xyz, r5.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb3[9].xyz * r0.xxx;
  r0.xzw = cb3[1].yyy * r0.xzw;
  r0.xzw = r2.xyz * cb3[1].xxx + r0.xzw;
  r0.xzw = cb2[2].xyz * r0.xzw;
  r2.xyz = cb4[2].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb4[2].xyz + cb4[3].xyz;
  r0.xzw = cb4[6].www * r0.xzw + r2.xyz;
  r2.xyzw = t4.SampleBias(s2_s, r1.zw, cb0[143].y).xyzw;
  r3.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r3.www + -r2.xyz;
  r2.xyz = cb4[7].zzz * r5.xyz + r2.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r5.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb4[7].y, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r2.xyz = r2.xyz * r7.xxx + r5.xyz;
  r2.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb4[5].xyz * r2.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.zw = t5.SampleBias(s3_s, r1.zw, cb0[143].y).xy;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[7].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r1.z = saturate(cb4[8].x + r1.z);
  r5.x = saturate(cb4[8].y + r1.w);
  r0.y = cb4[8].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb4[8].w * r0.y;
  r1.w = saturate(cb4[9].y + v1.z);
  r0.y = r1.w * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r5.y = saturate(cb4[9].z * r0.y);
  r0.y = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r0.y = r0.y ? r1.y : r1.x;
  r0.y = r0.y / cb4[9].w;
  r1.xyw = -cb0[129].xxy + v4.xxy;
  r1.x = r1.x * cb0[130].z + -0.469999999;
  r1.x = 4.93230057 * r1.x;
  r1.x = cos(r1.x);
  r1.x = 0.899999976 + r1.x;
  r1.x = saturate(0.555555582 * r1.x);
  r1.x = cb4[10].y + -r1.x;
  r5.zw = cb0[152].xx + r1.yw;
  r5.zw = (uint2)r5.zw;
  r3.w = (uint)r5.w << 1;
  r3.w = (int)r3.w + (int)r5.z;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r1.yw = float2(0.015625,0.015625) * r1.yw;
  r1.y = t6.SampleBias(s4_s, r1.yw, cb0[143].y).x;
  r1.y = r3.w + r1.y;
  r1.y = 0.166666672 * r1.y;
  r0.y = r0.y * r1.x + r1.y;
  r0.y = saturate(-0.5 + r0.y);
  r0.y = r2.w * r0.y + -0.333299994;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  r1.xyw = min(float3(1,1,1), r2.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r0.y = mad((int)v3.x, 36, 20);
  r1.z = cmp(0 < cb0[215].x);
  r2.x = t2[r0.y].val[4/4];
  r2.y = t2[r0.y].val[4/4+1];
  r0.y = cmp(0 < r2.y);
  if (r0.y != 0) {
    r2.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r2.yzw = max(float3(0,0,0), r2.yzw);
    r2.yzw = min(float3(0.99000001,0.99000001,0.99000001), r2.yzw);
    r2.yzw = cb0[213].xyz * r2.yzw;
    r6.xyz = (int3)r2.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.y = 1 + cb0[213].w;
    r2.yzw = r2.yzw / r6.www;
    r2.yzw = frac(r2.yzw);
    r2.yzw = cb0[213].www * r2.yzw;
    r2.yzw = r6.xyz * r0.yyy + r2.yzw;
    r2.yzw = float3(0.5,0.5,0.5) + r2.yzw;
    r2.yzw = cb0[214].xyz * r2.yzw;
    r0.y = t1.SampleLevel(s0_s, r2.yzw, 0).x;
  } else {
    r2.y = mad((int)v3.x, 36, 18);
    r2.y = t2[r2.y].val[12/4];
    r2.y = cmp(0 < r2.y);
    r2.y = r1.z ? r2.y : 0;
    r0.y = r2.y ? cb1[5].x : 1;
  }
  r2.y = 0.0799999982 * r5.y;
  r6.xyz = -r5.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyw;
  r2.yzw = r5.xxx * r6.xyz + r2.yyy;
  r6.xyz = -r1.xyw * r5.xxx + r1.xyw;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r2.yzw = r2.yzw * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r7.xyz = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r3.www ? r7.xyz : r6.xyz;
  r2.yzw = r3.www ? float3(0,0,0) : r2.yzw;
  r3.w = dot(r2.yzw, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.w * 2.04040003 + -0.332399994;
  r4.w = r3.w * -4.79510021 + r4.w;
  r3.w = r3.w * 2.75519991 + r4.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r7.xyz = r4.yzy * r4.yzx;
  r8.yw = r4.zz * r4.yx;
  r4.w = r4.x * r4.x + -r7.x;
  r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r8.xz = r7.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r8.xyzw;
  r4.w = 0.429042608 * r4.w;
  r9.x = 0.886227548;
  r5.z = dot(cb1[6].xyzw, r9.xyzw);
  r5.w = dot(cb1[9].xyzw, r7.xyzw);
  r5.z = r5.z + r5.w;
  r8.x = cb1[12].x * r4.w + r5.z;
  r5.z = dot(cb1[7].xyzw, r9.xyzw);
  r5.w = dot(cb1[10].xyzw, r7.xyzw);
  r5.z = r5.z + r5.w;
  r8.y = cb1[12].y * r4.w + r5.z;
  r5.z = dot(cb1[8].xyzw, r9.xyzw);
  r5.w = dot(cb1[11].xyzw, r7.xyzw);
  r5.z = r5.z + r5.w;
  r8.z = cb1[12].z * r4.w + r5.z;
  r7.xyz = max(float3(0,0,0), r8.xyz);
  r7.xyz = r1.zzz ? r7.xyz : 0;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r2.yzw = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r0.xzw = max(float3(0,0,0), r0.xzw);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r5.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r5.z].val[0/4];
    r6.y = t2[r5.z].val[0/4+1];
    r6.z = t2[r5.z].val[0/4+2];
    r6.xyz = -r6.xyz + r3.xyz;
    r8.x = t2[r5.w].val[0/4];
    r8.y = t2[r5.w].val[0/4+1];
    r8.z = t2[r5.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r4.w = (int)r6.y | (int)r6.x;
    r4.w = (int)r6.z | (int)r4.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r4.www ? r3.xyz : r0.xzw;
  }
  r2.yzw = cb0[145].yyy * r2.yzw + r7.xyz;
  r0.xzw = r2.yzw + r0.xzw;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r2.y = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r2.y = frac(r2.y);
  r2.y = -0.5 + r2.y;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.z = r1.z * r3.w;
  r1.z = r1.z * cb0[135].y + 0.00390625;
  r1.z = log2(r1.z);
  r1.z = r1.z * 0.0625 + 0.5;
  o3.w = r2.y * 0.00392156886 + r1.z;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = r2.x;
  o2.w = 0.505882382;
  o2.xy = r5.xy;
  o3.xyz = r1.xyw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}