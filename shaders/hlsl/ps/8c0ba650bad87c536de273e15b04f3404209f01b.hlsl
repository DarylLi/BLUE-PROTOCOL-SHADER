// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

cbuffer cb2 : register(b2)
{
  float4 cb2[30];
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
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = mad((int2)v3.xx, int2(36,36), int2(4,20));
  r0.w = t2[r1.z].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r4.xy = r3.xy / cb2[18].yy;
  r1.z = t4.SampleBias(s2_s, r4.xy, cb0[143].y).x;
  r2.w = cb2[18].z + -cb2[18].w;
  r1.z = saturate(r1.z * r2.w + cb2[18].w);
  r1.z = cb2[19].x + r1.z;
  r1.z = r1.z * -cb2[19].y + cb2[19].y;
  r4.xyz = -cb0[67].xyz + r3.xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r3.w = cb2[19].w * r2.w;
  r1.z = r1.z * r3.w + cb0[143].y;
  r4.xy = t5.SampleBias(s3_s, v2.xy, r1.z).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r3.w = dot(r4.xy, r4.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r4.z = sqrt(r3.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[20].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r4.xyz * r3.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r3.w = dot(r0.xyz, r0.xyz);
  r3.w = rsqrt(r3.w);
  r0.xyz = r3.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb2[20].yyy * cb2[1].xyz;
  r5.xyz = t6.SampleBias(s4_s, v2.xy, r1.z).yzw;
  r6.xyz = -cb2[5].xyz + cb2[4].xyz;
  r6.xyz = r5.xxx * r6.xyz + cb2[5].xyz;
  r7.xyzw = r3.xyxy / cb2[21].xxyy;
  r1.z = t4.Sample(s0_s, r7.xy).x;
  r3.w = t4.Sample(s0_s, r7.zw).x;
  r4.w = r2.w / cb2[21].z;
  r5.x = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb2[21].w * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r4.w = r5.x ? 0 : r4.w;
  r3.w = r3.w + -r1.z;
  r1.z = r4.w * r3.w + r1.z;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[22].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = saturate(cb2[22].y * r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r7.xyz = cb2[7].xyz + -r6.xyz;
  r6.xyz = r1.zzz * r7.xyz + r6.xyz;
  r3.w = saturate(dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r4.w = 1 + -r3.w;
  r4.w = r4.w + r4.w;
  r7.xyz = -r4.www * cb2[10].xyz + float3(1,1,1);
  r4.w = r3.w + r3.w;
  r8.xyz = cb2[9].xyz * r4.www;
  r3.w = cmp(r3.w >= 0.5);
  r7.xyz = r3.www ? r7.xyz : r8.xyz;
  r8.xyz = cb2[9].xyz + -r7.xyz;
  r7.xyz = cb2[22].zzz * r8.xyz + r7.xyz;
  r3.w = r2.w / cb2[22].w;
  r4.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb2[23].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r4.w ? 0 : r3.w;
  r7.xyz = r7.xyz + -r6.xyz;
  r7.xyz = r7.xyz * r3.www;
  r6.xyz = cb2[23].yyy * r7.xyz + r6.xyz;
  r5.xw = r3.xy / cb2[23].ww;
  r4.w = t7.SampleBias(s5_s, r5.xw, cb0[143].y).x;
  r4.w = cb2[24].x * r4.w;
  r5.x = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb2[24].z * r4.w;
  r4.w = exp2(r4.w);
  r4.w = min(1, r4.w);
  r7.xyz = -cb2[14].xyz + cb2[13].xyz;
  r7.xyz = r7.xyz * r4.www;
  r7.xyz = r5.xxx ? float3(0,0,0) : r7.xyz;
  r7.xyz = cb2[14].xyz + r7.xyz;
  r8.xyz = r7.xyz * r5.yyy;
  r7.xyz = -r7.xyz * r5.yyy + cb2[7].xyz;
  r7.xyz = r7.xyz * r1.zzz;
  r7.xyz = cb2[24].www * r7.xyz + r8.xyz;
  r1.z = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r4.w = 1 + -r1.z;
  r4.w = r4.w + r4.w;
  r8.xyz = -r4.www * cb2[10].xyz + float3(1,1,1);
  r4.w = r1.z + r1.z;
  r9.xyz = cb2[9].xyz * r4.www;
  r1.z = cmp(r1.z >= 0.5);
  r8.xyz = r1.zzz ? r8.xyz : r9.xyz;
  r9.xyz = cb2[9].xyz + -r8.xyz;
  r8.xyz = cb2[22].zzz * r9.xyz + r8.xyz;
  r8.xyz = r8.xyz + -r7.xyz;
  r8.xyz = r8.xyz * r3.www;
  r8.xyz = cb2[23].yyy * r8.xyz;
  r7.xyz = cb2[25].xxx * r8.xyz + r7.xyz;
  r1.z = saturate(10 * r5.y);
  r5.xyw = r7.xyz + -r6.xyz;
  r5.xyw = r1.zzz * r5.xyw + r6.xyz;
  r1.z = dot(r5.xyw, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.zzz + -r5.xyw;
  r5.xyw = cb2[25].yyy * r6.xyz + r5.xyw;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyw);
  r5.xyw = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r5.xyw;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.wxy;
  r6.xyz = r5.wxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[20].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyw = r5.xyw * r8.xxx + r6.xyz;
  r5.xyw = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r5.xyw;
  r5.xyw = cb2[16].xyz * r5.xyw;
  r5.xyw = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyw);
  r1.z = dot(r0.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb2[25].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb2[25].w * r1.z;
  r2.x = saturate(cb2[26].y + v1.z);
  r1.z = r2.x * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r1.z = saturate(cb2[26].z * r1.z);
  r2.xy = r3.xy / cb2[27].xx;
  r2.x = t4.SampleBias(s2_s, r2.xy, cb0[143].y).x;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb2[27].y * r2.x;
  r2.x = exp2(r2.x);
  r2.x = cb2[27].z * r2.x;
  r2.x = r2.y ? -0 : -r2.x;
  r2.x = cb2[28].x + r2.x;
  r2.x = 1 + r2.x;
  r2.y = r2.w / cb2[28].y;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb2[28].z * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = saturate(r2.x * r2.y);
  r2.x = 1 + -r2.x;
  r2.x = r5.z * r2.x;
  r2.y = cb2[28].w * cb1[1].w;
  r2.z = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r2.z ? r1.y : r1.x;
  r1.y = cb2[29].x + r1.x;
  r2.zw = float2(0.649999976,0.487499982) * cb1[1].ww;
  r3.w = cb1[1].w * 0.617499948 + -r1.x;
  r2.w = saturate(r3.w / r2.w);
  r3.w = -cb1[1].w * 0.649999976 + 8000;
  r2.z = r2.w * r3.w + r2.z;
  r1.y = r1.y / r2.z;
  r1.x = r1.x / cb2[29].x;
  r2.z = cmp(9.99999975e-006 < abs(r2.y));
  r2.y = cmp(r2.y >= 0);
  r1.y = r2.y ? r1.y : r1.x;
  r1.x = r2.z ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb2[28].w));
  r2.y = 1 + cb2[28].w;
  r1.y = r1.y ? r2.y : 1.39999998;
  r2.yzw = -cb0[129].xxy + v4.xxy;
  r2.y = r2.y * cb0[130].z + -0.469999999;
  r2.y = 4.93230057 * r2.y;
  r2.y = cos(r2.y);
  r2.y = 0.899999976 + r2.y;
  r2.y = saturate(0.555555582 * r2.y);
  r1.y = -r2.y + r1.y;
  r6.xy = cb0[152].xx + r2.zw;
  r6.xy = (uint2)r6.xy;
  r2.y = (uint)r6.y << 1;
  r2.y = (int)r2.y + (int)r6.x;
  r2.y = (uint)r2.y % 5;
  r2.y = (uint)r2.y;
  r2.zw = float2(0.015625,0.015625) * r2.zw;
  r2.z = t8.SampleBias(s6_s, r2.zw, cb0[143].y).x;
  r2.y = r2.y + r2.z;
  r2.y = 0.166666672 * r2.y;
  r1.x = r1.x * r1.y + r2.y;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r2.x * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r5.xyw);
  r1.x = saturate(cb2[26].w);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r1.x = t2[r1.w].val[4/4];
  r1.y = t2[r1.w].val[4/4+1];
  r1.y = cmp(0 < r1.y);
  if (r1.y != 0) {
    r5.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.y = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r1.yyy + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r1.y = t1.SampleLevel(s1_s, r5.xyz, 0).x;
  } else {
    r1.y = 1;
  }
  r1.w = cb0[137].w * r1.z;
  r5.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r6.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.www ? r6.xyz : r5.xyz;
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
  r8.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r6.xyz = r8.xyz * r6.xyz;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r5.xyz = r7.xyz + r5.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r7.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r7.x].val[0/4];
    r7.z = t2[r7.x].val[0/4+1];
    r7.w = t2[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r3.xyz;
    r8.x = t2[r7.y].val[0/4];
    r8.y = t2[r7.y].val[0/4+1];
    r8.z = t2[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r0.w = (int)r7.y | (int)r7.x;
    r0.w = (int)r7.z | (int)r0.w;
    r1.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r3.xyz = r1.www ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r0.www ? r3.xyz : r4.xyz;
  }
  r3.xyz = cb0[145].yyy * r5.xyz + r6.xyz;
  r3.xyz = r3.xyz + r4.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r0.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r3.xyz;
  o0.w = 0;
  o1.w = r1.x;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.z;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}