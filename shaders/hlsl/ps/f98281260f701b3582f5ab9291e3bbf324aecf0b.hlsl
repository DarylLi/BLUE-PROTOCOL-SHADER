// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[17];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = mad((int2)v3.xx, int2(36,36), int2(4,20));
  r0.w = t2[r1.z].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r4.xy = cb3[8].xx * v2.xy;
  r1.z = cb3[8].y + cb0[143].y;
  r4.zw = t4.SampleBias(s1_s, r4.xy, r1.z).xy;
  r5.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[8].zzz * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyz = r5.xyz * r1.zzz;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r5.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb2[5].xyz / r0.xxx;
  r0.x = dot(r6.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r7.xyz, r7.xyz);
  r0.y = sqrt(r0.y);
  r7.xyz = r7.xyz / r0.yyy;
  r0.y = saturate(dot(-r7.xyz, r6.xyz));
  r1.z = 1 + -cb1[1].x;
  r0.y = saturate(r1.z + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r5.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb1[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb1[0].w;
  r2.x = r2.x * r2.y + cb1[0].w;
  r2.y = cmp(r2.x >= cb1[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb1[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r0.w + 1;
  r0.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb1[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.w ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb1[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb2[4].xyz * r0.xxx;
  r0.x = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r6.xyz, r5.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r7.xyz, r6.xyz));
  r0.w = saturate(r0.w + r1.z);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.z;
  r0.xzw = cb2[9].xyz * r0.xxx;
  r0.xzw = cb2[1].yyy * r0.xzw;
  r0.xzw = r2.xyz * cb2[1].xxx + r0.xzw;
  r1.z = cmp(cb0[31].w < 1);
  r2.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.x + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.y = r1.x / cb3[8].w;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[9].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[9].y * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r1.z ? 1 : r1.y;
  r2.xy = r4.xy / cb3[10].xx;
  r2.xy = cb3[10].yz + r2.xy;
  r2.xyz = t5.SampleBias(s2_s, r2.xy, cb0[143].y).xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r6.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[9].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r2.xyz = r2.xyz * r8.xxx + r6.xyz;
  r2.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[2].xyz * r2.xyz;
  r4.zw = cb3[11].xx * v2.xy;
  r1.z = t6.SampleBias(s3_s, r4.zw, cb0[143].y).x;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[11].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = cb3[11].z * r1.z;
  r1.z = r2.w ? 0 : r1.z;
  r1.z = cb0[142].z * cb3[10].w + r1.z;
  r1.z = 6.28318548 * r1.z;
  r1.z = sin(r1.z);
  r1.z = r1.z * 0.5 + 0.5;
  r1.z = r1.z * cb3[12].x + cb3[11].w;
  r1.z = max(cb3[12].z, r1.z);
  r1.z = min(cb3[12].y, r1.z);
  r1.z = cb3[12].w * r1.z;
  r1.z = cb2[3].y * r1.z;
  r2.xyz = r2.xyz * r1.zzz;
  r2.xyz = r2.xyz * r1.yyy;
  r0.xzw = cb1[2].xyz * r0.xzw + r2.xyz;
  r2.xyz = cb3[4].xyz * r0.xzw;
  r0.xzw = -r0.xzw * cb3[4].xyz + cb3[5].xyz;
  r0.xzw = cb3[13].xxx * r0.xzw + r2.xyz;
  r2.xyzw = t7.SampleBias(s4_s, r4.xy, cb0[143].y).xyzw;
  r1.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.yyy + -r2.xyz;
  r2.xyz = cb3[13].www * r6.xyz + r2.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r6.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[13].z, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r2.xyz = r2.xyz * r8.xxx + r6.xyz;
  r2.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[7].xyz * r2.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.yz = t8.SampleBias(s5_s, r4.xy, cb0[143].y).xy;
  r3.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[14].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r3.w ? 0 : r1.y;
  r1.y = saturate(cb3[14].y + r1.y);
  r4.x = saturate(cb3[14].z + r1.z);
  r0.y = cb3[14].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb3[15].x * r0.y;
  r1.z = saturate(cb3[15].z + v1.z);
  r0.y = r1.z * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r4.y = saturate(cb3[15].w * r0.y);
  r0.y = cb3[16].x * cb1[1].w;
  r1.z = cb3[16].y + r1.x;
  r4.zw = float2(0.649999976,0.487499982) * cb1[1].ww;
  r3.w = cb1[1].w * 0.617499948 + -r1.x;
  r3.w = saturate(r3.w / r4.w);
  r4.w = -cb1[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.w + r4.z;
  r1.z = r1.z / r3.w;
  r1.x = r1.x / cb3[16].y;
  r3.w = cmp(9.99999975e-006 < abs(r0.y));
  r0.y = cmp(r0.y >= 0);
  r0.y = r0.y ? r1.z : r1.x;
  r0.y = r3.w ? r0.y : r1.x;
  r1.x = cmp(9.99999975e-006 < abs(cb3[16].x));
  r1.z = 1 + cb3[16].x;
  r1.x = r1.x ? r1.z : 1.39999998;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r1.z = r6.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.x = r1.x + -r1.z;
  r4.zw = cb0[152].xx + r6.yz;
  r4.zw = (uint2)r4.zw;
  r1.z = (uint)r4.w << 1;
  r1.z = (int)r1.z + (int)r4.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r4.zw = float2(0.015625,0.015625) * r6.yz;
  r3.w = t9.SampleBias(s6_s, r4.zw, cb0[143].y).x;
  r1.z = r3.w + r1.z;
  r1.z = 0.166666672 * r1.z;
  r0.y = r0.y * r1.x + r1.z;
  r0.y = saturate(-0.5 + r0.y);
  r0.y = r2.w * r0.y + -0.333299994;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r1.x = t2[r1.w].val[4/4];
  r1.y = t2[r1.w].val[4/4+1];
  r0.y = cmp(0 < r1.y);
  if (r0.y != 0) {
    r1.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r1.yzw = max(float3(0,0,0), r1.yzw);
    r1.yzw = min(float3(0.99000001,0.99000001,0.99000001), r1.yzw);
    r1.yzw = cb0[213].xyz * r1.yzw;
    r6.xyz = (int3)r1.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.y = 1 + cb0[213].w;
    r1.yzw = r1.yzw / r6.www;
    r1.yzw = frac(r1.yzw);
    r1.yzw = cb0[213].www * r1.yzw;
    r1.yzw = r6.xyz * r0.yyy + r1.yzw;
    r1.yzw = float3(0.5,0.5,0.5) + r1.yzw;
    r1.yzw = cb0[214].xyz * r1.yzw;
    r0.y = t1.SampleLevel(s0_s, r1.yzw, 0).x;
  } else {
    r0.y = 1;
  }
  r1.y = 0.0799999982 * r4.y;
  r6.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r1.yzw = r4.xxx * r6.xyz + r1.yyy;
  r6.xyz = -r2.xyz * r4.xxx + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r1.yzw = r1.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.yzw;
  r1.yzw = r1.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.yzw = r2.www ? r1.yzw : r6.xyz;
  r6.x = t3[0].val[0/4];
  r6.y = t3[0].val[0/4+1];
  r6.z = t3[0].val[0/4+2];
  r6.w = t3[0].val[0/4+3];
  r5.w = 1;
  r6.x = dot(r6.xyzw, r5.xyzw);
  r8.x = t3[1].val[0/4];
  r8.y = t3[1].val[0/4+1];
  r8.z = t3[1].val[0/4+2];
  r8.w = t3[1].val[0/4+3];
  r6.y = dot(r8.xyzw, r5.xyzw);
  r8.x = t3[2].val[0/4];
  r8.y = t3[2].val[0/4+1];
  r8.z = t3[2].val[0/4+2];
  r8.w = t3[2].val[0/4+3];
  r6.z = dot(r8.xyzw, r5.xyzw);
  r8.xyzw = r5.xyzz * r5.yzzx;
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
  r3.w = r5.y * r5.y;
  r3.w = r5.x * r5.x + -r3.w;
  r8.x = t3[6].val[0/4];
  r8.y = t3[6].val[0/4+1];
  r8.z = t3[6].val[0/4+2];
  r6.xyz = r9.xyz + r6.xyz;
  r6.xyz = r8.xyz * r3.www + r6.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = cb0[187].xyz * r6.xyz;
  r6.xyz = r6.xyz * r1.yzw;
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r6.xyz = r8.xyz * r6.xyz;
  r7.xyz = r2.www ? float3(0,0,0) : r7.xyz;
  r1.yzw = r7.xyz + r1.yzw;
  r0.xzw = max(float3(0,0,0), r0.xzw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r4.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r4.z].val[0/4];
    r7.y = t2[r4.z].val[0/4+1];
    r7.z = t2[r4.z].val[0/4+2];
    r7.xyz = -r7.xyz + r3.xyz;
    r8.x = t2[r4.w].val[0/4];
    r8.y = t2[r4.w].val[0/4+1];
    r8.z = t2[r4.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xzw = r2.www ? r3.xyz : r0.xzw;
  }
  r1.yzw = cb0[145].yyy * r1.yzw + r6.xyz;
  r0.xzw = r1.yzw + r0.xzw;
  r1.yzw = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.yzw = frac(r1.yzw);
  r1.yzw = r1.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.yzw = r1.yzw * r1.yzz;
  r1.y = dot(r1.yzw, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.y;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o1.w = r1.x;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}