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

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
  r1.zw = cb2[5].xx * v3.xy;
  r2.w = cb2[5].y + cb0[143].y;
  r4.xw = t3.SampleBias(s1_s, r1.zw, r2.w).xy;
  r5.xy = r4.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r5.z = sqrt(r2.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb2[5].zzz * r6.xyz + r5.xyz;
  r2.w = 1 + r5.z;
  r4.x = t2[r4.y].val[0/4];
  r4.y = t2[r4.y].val[0/4+1];
  r4.w = t2[r4.y].val[0/4+2];
  r3.w = r4.x + r4.y;
  r3.w = r3.w + r4.w;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = cb1[2].x * r3.w;
  r3.w = cb2[5].w * r3.w;
  r4.xy = v4.xy + -v3.xy;
  r4.xy = cb2[7].xx * r4.xy + v3.xy;
  r4.xy = cb2[7].yy * r4.xy;
  r4.xy = r3.ww * cb2[6].zw + r4.xy;
  r4.xy = t4.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
  r6.xy = r4.xy + r4.xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r3.w = dot(r4.xy, r4.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r6.z = sqrt(r3.w);
  r4.xyw = float3(-1,-1,-1) + r6.xyz;
  r4.xyw = v2.xxx * r4.xyw + float3(0,0,1);
  r6.xyz = float3(0,0,1) + -r4.xyw;
  r4.xyw = cb2[7].zzz * r6.xyz + r4.xyw;
  r5.w = 1 + r5.z;
  r4.xyw = float3(-1,-1,1) * r4.xyw;
  r3.w = dot(r5.xyw, r4.xyw);
  r4.xyw = r4.xyw * r2.www;
  r4.xyw = r5.xyw * r3.www + -r4.xyw;
  r4.xyw = r4.xyw * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyw, r4.xyw);
  r2.w = rsqrt(r2.w);
  r4.xyw = r4.xyw * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.www * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyw = cb2[7].www * cb2[2].xyz;
  r5.xyzw = t5.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r0.www + -r5.xyz;
  r5.xyz = cb2[8].zzz * r6.xyz + r5.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[8].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb2[4].xyz * r5.xyz;
  r6.xyz = cb2[8].www * r5.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.zw = t6.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r0.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[9].x * r1.z;
  r1.z = exp2(r1.z);
  r0.w = r0.w ? 0 : r1.z;
  r0.w = saturate(cb2[9].y + r0.w);
  r7.x = saturate(cb2[9].z + r1.w);
  r1.z = dot(r0.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb2[9].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb2[10].x * r1.z;
  r1.w = saturate(cb2[10].z + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r7.y = saturate(cb2[10].w * r1.z);
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.x = r1.x / cb2[11].y;
  r1.yzw = -cb0[129].xxy + v6.xxy;
  r1.y = r1.y * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb2[11].w + -r1.y;
  r2.xy = cb0[152].xx + r1.zw;
  r2.xy = (uint2)r2.xy;
  r2.y = (uint)r2.y << 1;
  r2.x = (int)r2.y + (int)r2.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r1.zw = float2(0.015625,0.015625) * r1.zw;
  r1.z = t7.SampleBias(s5_s, r1.zw, cb0[143].y).x;
  r1.z = r2.x + r1.z;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.yzw = saturate(cb2[13].yyy * r5.xyz);
  r1.x = r5.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r6.xyz);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb2[11].x);
  r1.xyz = saturate(r1.yzw * cb0[136].www + cb0[136].xyz);
  r5.x = t2[r4.z].val[4/4];
  r5.y = t2[r4.z].val[4/4+1];
  r0.w = cmp(0 < r5.y);
  if (r0.w != 0) {
    r5.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
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
    r0.w = t1.SampleLevel(s0_s, r5.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  o4.xyz = sqrt(r1.xyz);
  r1.x = 0.0799999982 * r7.y;
  r1.yzw = -r7.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r1.xyz = r7.xxx * r1.yzw + r1.xxx;
  r5.yzw = -r2.xyz * r7.xxx + r2.xyz;
  r5.yzw = r5.yzw * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.yzw;
  r1.xyz = r1.www ? r1.xyz : r5.yzw;
  r5.yzw = r1.www ? float3(0,0,0) : r6.xyz;
  r1.xyz = r5.yzw + r1.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.yz = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r6.x = t2[r5.y].val[0/4];
    r6.y = t2[r5.y].val[0/4+1];
    r6.z = t2[r5.y].val[0/4+2];
    r6.xyz = -r6.xyz + r3.xyz;
    r5.y = t2[r5.z].val[0/4];
    r5.z = t2[r5.z].val[0/4+1];
    r5.w = t2[r5.z].val[0/4+2];
    r5.yzw = float3(1,1,1) + r5.yzw;
    r5.yzw = cmp(r5.yzw < abs(r6.xyz));
    r1.w = (int)r5.z | (int)r5.y;
    r1.w = (int)r5.w | (int)r1.w;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r1.www ? r3.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r5.x;
  o2.w = 0.509803951;
  o2.xy = r7.xy;
  o3.xyz = r2.xyz;
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}