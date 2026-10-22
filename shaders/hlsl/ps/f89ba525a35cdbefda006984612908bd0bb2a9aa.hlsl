// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[16];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  nointerpolation uint v5 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v6.z;
  r1.y = 1;
  r1.xy = v6.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r4.xyz = mad((int3)v5.xxx, int3(36,36,36), int3(4,18,20));
  r0.w = t2[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v7.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb4[7].xx * v3.xy;
  r2.w = cb4[7].y + cb0[143].y;
  r4.xw = t3.SampleBias(s1_s, r1.zw, r2.w).xy;
  r5.xy = r4.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r5.z = sqrt(r2.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[7].zzz * r6.xyz + r5.xyz;
  r2.w = 1 + r5.z;
  r6.x = t2[r4.y].val[0/4];
  r6.y = t2[r4.y].val[0/4+1];
  r6.z = t2[r4.y].val[0/4+2];
  r3.w = r6.x + r6.y;
  r3.w = r3.w + r6.z;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = cb2[2].x * r3.w;
  r3.w = cb4[7].w * r3.w;
  r4.xw = v4.xy + -v3.xy;
  r4.xw = cb4[9].xx * r4.xw + v3.xy;
  r4.xw = cb4[9].yy * r4.xw;
  r4.xw = r3.ww * cb4[8].zw + r4.xw;
  r4.xw = t4.SampleBias(s2_s, r4.xw, cb0[143].y).xy;
  r6.xy = r4.xw + r4.xw;
  r4.xw = r4.xw * float2(2,2) + float2(-1,-1);
  r3.w = dot(r4.xw, r4.xw);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r6.z = sqrt(r3.w);
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = v2.xxx * r6.xyz + float3(0,0,1);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb4[9].zzz * r7.xyz + r6.xyz;
  r5.w = 1 + r5.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r3.w = dot(r5.xyw, r6.xyz);
  r6.xyz = r6.xyz * r2.www;
  r5.xyz = r5.xyw * r3.www + -r6.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r5.xyz * r2.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r5.xyz = cb4[9].www * cb4[2].xyz;
  r6.xyzw = t5.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.www + -r6.xyz;
  r6.xyz = cb4[10].zzz * r7.xyz + r6.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[10].y, r4.x, r8.x);
  r7.xyz = r7.xyz * r4.xxx;
  r6.xyz = r6.xyz * r8.xxx + r7.xyz;
  r6.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb4[4].xyz * r6.xyz;
  r7.xyz = cb4[10].www * r6.xyz;
  r0.w = saturate(v2.x + v2.x);
  r8.xyz = cb4[6].xyz * r7.xyz + -r7.xyz;
  r7.xyz = r0.www * r8.xyz + r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r1.zw = t6.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r0.w = -cb4[11].x * v2.x + r1.z;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[11].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r0.w = saturate(cb4[11].z + r0.w);
  r8.x = saturate(cb4[11].w + r1.w);
  r1.z = dot(r0.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb4[12].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb4[12].y * r1.z;
  r1.w = saturate(cb4[12].w + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r8.y = saturate(cb4[13].x * r1.z);
  r1.z = cb4[13].z * cb3[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.x + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cb4[13].w + r1.x;
  r2.xy = float2(0.649999976,0.487499982) * cb3[1].ww;
  r1.w = cb3[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r1.w / r2.y);
  r2.y = -cb3[1].w * 0.649999976 + 8000;
  r1.w = r1.w * r2.y + r2.x;
  r1.y = r1.y / r1.w;
  r1.x = r1.x / cb4[13].w;
  r1.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.y = r1.z ? r1.y : r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb4[13].z));
  r1.z = 1 + cb4[13].z;
  r1.y = r1.y ? r1.z : 1.39999998;
  r2.xyz = -cb0[129].xxy + v6.xxy;
  r1.z = r2.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.y = r1.y + -r1.z;
  r1.zw = cb0[152].xx + r2.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r2.xy = float2(0.015625,0.015625) * r2.yz;
  r1.w = t7.SampleBias(s5_s, r2.xy, cb0[143].y).x;
  r1.z = r1.z + r1.w;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.yzw = saturate(cb4[15].yyy * r6.xyz);
  r1.x = r6.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r7.xyz);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb4[13].y);
  r1.xyz = r1.yzw * cb0[136].www + cb0[136].xyz;
  r0.w = cmp(0 < cb0[215].x);
  r4.x = t2[r4.z].val[4/4];
  r4.z = t2[r4.z].val[4/4+1];
  r1.w = cmp(0 < r4.z);
  if (r1.w != 0) {
    r6.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r1.w = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r1.www + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r1.w = t1.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r2.w = t2[r4.y].val[12/4];
    r2.w = cmp(0 < r2.w);
    r2.w = r0.w ? r2.w : 0;
    r1.w = r2.w ? cb1[5].x : 1;
  }
  r4.yzw = saturate(r1.xyz);
  o4.xyz = sqrt(r4.yzw);
  r2.w = 0.0799999982 * r8.y;
  r4.yzw = -r8.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r4.yzw = r8.xxx * r4.yzw + r2.www;
  r6.xyz = -r2.xyz * r8.xxx + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.yzw = r4.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r4.yzw = r2.www ? float3(0,0,0) : r4.yzw;
  r2.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r1.xyz = r6.xyz + r1.xyz;
  r7.xyz = r0.yzy * r0.yzx;
  r9.yw = r0.zz * r0.yx;
  r3.w = r0.x * r0.x + -r7.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r9.xz = r7.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r3.w = 0.429042608 * r3.w;
  r10.x = 0.886227548;
  r5.w = dot(cb1[6].xyzw, r10.xyzw);
  r6.w = dot(cb1[9].xyzw, r7.xyzw);
  r5.w = r6.w + r5.w;
  r9.x = cb1[12].x * r3.w + r5.w;
  r5.w = dot(cb1[7].xyzw, r10.xyzw);
  r6.w = dot(cb1[10].xyzw, r7.xyzw);
  r5.w = r6.w + r5.w;
  r9.y = cb1[12].y * r3.w + r5.w;
  r5.w = dot(cb1[8].xyzw, r10.xyzw);
  r6.w = dot(cb1[11].xyzw, r7.xyzw);
  r5.w = r6.w + r5.w;
  r9.z = cb1[12].z * r3.w + r5.w;
  r7.xyz = max(float3(0,0,0), r9.xyz);
  r7.xyz = r0.www ? r7.xyz : 0;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r7.xyz * r1.xyz;
  r7.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r1.xyz = r7.xyz * r1.xyz;
  r4.yzw = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r3.xyz;
    r7.x = t2[r6.y].val[0/4];
    r7.y = t2[r6.y].val[0/4+1];
    r7.z = t2[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r3.www ? r3.xyz : r5.xyz;
  }
  r1.xyz = cb0[145].yyy * r4.yzw + r1.xyz;
  r1.xyz = r1.xyz + r5.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r4.x;
  o2.w = 0.509803951;
  o2.xy = r8.xy;
  o3.xyz = r2.xyz;
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}