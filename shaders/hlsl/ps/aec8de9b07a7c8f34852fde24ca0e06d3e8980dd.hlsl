// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[10];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
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

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xyzw = mad((int4)v4.xxyy, int4(36,36,15,15), int4(18,20,4,6));
  r4.x = t0[r3.x].val[0/4];
  r4.y = t0[r3.x].val[0/4+1];
  r4.z = t0[r3.x].val[0/4+2];
  r0.w = r4.x + r4.y;
  r0.w = r0.w + r4.z;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb1[2].x * r0.w;
  r0.w = cb3[7].x * r0.w;
  r4.x = cb3[7].w * r0.w;
  r4.y = cb3[8].x * r0.w;
  r0.w = cb3[8].y * cb0[142].z;
  r0.w = 0.25 * r0.w;
  sincos(r0.w, r3.x, r5.x);
  r6.x = -r3.x;
  r7.x = cb3[8].z * v2.x + cb3[8].w;
  r7.y = v2.y * cb3[9].x + cb3[9].y;
  r4.zw = float2(-0.5,-0.5) + r7.xy;
  r6.y = r5.x;
  r5.x = dot(r6.yx, r4.zw);
  r6.z = r3.x;
  r5.y = dot(r6.zy, r4.zw);
  r4.xy = r5.xy + r4.xy;
  r4.xy = float2(0.5,0.5) + r4.xy;
  r0.w = cb3[9].z + cb0[143].y;
  r4.zw = t3.SampleBias(s1_s, r4.xy, r0.w).xy;
  r5.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[9].www * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb1[5].xyz, -cb1[5].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb1[5].xyz / r0.xxx;
  r0.x = dot(r6.yzx, r5.xyz);
  r0.x = 1 + r0.x;
  r7.xyz = cb0[67].xyz + -r2.xyz;
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = sqrt(r0.z);
  r7.xyz = r7.xyz / r0.zzz;
  r0.z = saturate(dot(-r7.xyz, r6.xyz));
  r1.w = 1 + -cb2[1].x;
  r0.z = saturate(r1.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r5.zxy, r1.xyz);
  r0.z = max(0, r0.z);
  r0.z = 1 + -r0.z;
  r0.z = max(9.99999975e-005, abs(r0.z));
  r0.z = log2(r0.z);
  r1.x = cb2[1].y * r0.z;
  r1.x = exp2(r1.x);
  r1.y = 1 + -cb2[0].w;
  r1.x = r1.x * r1.y + cb2[0].w;
  r1.y = cmp(r1.x >= cb2[0].y);
  r1.y = r1.y ? 1.000000 : 0;
  r1.x = r1.y * r1.x;
  r1.y = r0.y * r0.w + 1;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb2[0].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = r1.z ? 0 : r1.y;
  r1.x = r1.x * r1.y;
  r0.y = -r0.y * r0.w + 1;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb2[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.w ? 0 : r0.y;
  r0.y = r1.x * r0.y;
  r0.y = cb2[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r1.xyz = cb1[4].xyz * r0.xxx;
  r0.x = dot(-cb1[8].xyz, -cb1[8].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb1[8].xyz / r0.xxx;
  r0.x = dot(r6.yzx, r5.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r7.xyz, r6.xyz));
  r0.w = saturate(r0.w + r1.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.y;
  r0.xyw = cb1[9].xyz * r0.xxx;
  r0.xyw = cb1[1].yyy * r0.xyw;
  r0.xyw = r1.xyz * cb1[1].xxx + r0.xyw;
  r0.xyw = cb2[2].xyz * r0.xyw;
  r1.xyz = cb3[3].xyz * r0.xyw;
  r0.xyw = -r0.xyw * cb3[3].xyz + cb3[4].xyz;
  r0.xyw = cb3[10].xxx * r0.xyw + r1.xyz;
  r1.xyz = t4.SampleBias(s2_s, r4.xy, cb0[143].y).xyz;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r1.xyz;
  r1.xyz = cb3[10].www * r6.xyz + r1.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.xyz);
  r1.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r1.zxy;
  r6.xyz = r1.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[10].z, r3.x, r7.x);
  r6.xyz = r6.xyz * r3.xxx;
  r1.xyz = r1.xyz * r7.xxx + r6.xyz;
  r1.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r1.xyz = cb3[6].xyz * r1.xyz;
  r1.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.xyz);
  r4.xy = t5.SampleBias(s3_s, r4.xy, cb0[143].y).xy;
  r1.w = cmp(0 >= r4.x);
  r2.w = log2(r4.x);
  r2.w = cb3[11].x * r2.w;
  r2.w = exp2(r2.w);
  r1.w = r1.w ? 0 : r2.w;
  r1.w = saturate(cb3[11].y + r1.w);
  r4.x = saturate(cb3[11].z + r4.y);
  r0.z = cb3[11].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb3[12].x * r0.z;
  r2.w = saturate(cb3[12].z + v1.z);
  r0.z = r2.w * r0.z;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.z = min(0.5, r0.z);
  r4.y = saturate(cb3[12].w * r0.z);
  r1.xyz = min(float3(1,1,1), r1.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o1.w = t0[r3.y].val[4/4];
  r0.z = 0.0799999982 * r4.y;
  r6.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r6.xyz = r4.xxx * r6.xyz + r0.zzz;
  r7.xyz = -r1.xyz * r4.xxx + r1.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r0.z = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r0.zzz ? r8.xyz : r7.xyz;
  r6.xyz = r0.zzz ? float3(0,0,0) : r6.xyz;
  r0.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r0.z * 2.04040003 + -0.332399994;
  r1.w = r0.z * -4.79510021 + r1.w;
  r0.z = r0.z * 2.75519991 + r1.w;
  r0.z = 1.33200002 + r0.z;
  r0.z = max(1, r0.z);
  r3.xy = float2(1,0.5) * v3.xy;
  r4.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t2.Sample(s0_s, r3.xy).xyzw;
  r9.xyzw = t2.Sample(s0_s, r4.zw).xyzw;
  r1.w = r9.w * 0.00392156886 + r8.w;
  r1.w = -0.00196078443 + r1.w;
  r10.x = t1[r3.z].val[0/4];
  r10.y = t1[r3.z].val[0/4+1];
  r10.z = t1[r3.z].val[0/4+2];
  r10.w = t1[r3.z].val[0/4+3];
  r3.x = t1[r3.w].val[0/4];
  r3.y = t1[r3.w].val[0/4+1];
  r3.z = t1[r3.w].val[0/4+2];
  r3.w = t1[r3.w].val[0/4+3];
  r1.w = r1.w * r10.w + r3.w;
  r8.xyz = r8.xyz * r8.xyz;
  r3.xyz = r8.xyz * r10.xyz + r3.xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r4.zw = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r8.x = t1[r4.z].val[0/4];
  r8.y = t1[r4.z].val[0/4+1];
  r8.z = t1[r4.z].val[0/4+2];
  r8.w = t1[r4.z].val[0/4+3];
  r10.x = t1[r4.w].val[0/4];
  r10.y = t1[r4.w].val[0/4+1];
  r10.z = t1[r4.w].val[0/4+2];
  r10.w = t1[r4.w].val[0/4+3];
  r8.xyzw = r9.xyzw * r8.xyzw + r10.xyzw;
  r5.w = 1;
  r2.w = dot(r8.xyzw, r5.xyzw);
  r2.w = max(0, r2.w);
  r1.w = r2.w * r1.w;
  r3.xyz = r1.www * r3.xyz;
  r3.xyz = cb0[157].xyz * r3.xyz;
  r1.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r3.xyz * r7.xyz;
  r8.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r3.xyz = r8.xyz * r3.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r4.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t0[r4.z].val[0/4];
    r7.y = t0[r4.z].val[0/4+1];
    r7.z = t0[r4.z].val[0/4+2];
    r7.xyz = -r7.xyz + r2.xyz;
    r8.x = t0[r4.w].val[0/4];
    r8.y = t0[r4.w].val[0/4+1];
    r8.z = t0[r4.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyw = r2.www ? r2.xyz : r0.xyw;
  }
  r2.xyz = cb0[145].yyy * r6.xyz + r3.xyz;
  r0.xyw = r2.xyz + r0.xyw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.z = r1.w * r0.z;
  r0.z = r0.z * cb0[135].y + 0.00390625;
  r0.z = log2(r0.z);
  r0.z = r0.z * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.z;
  o0.xyz = cb0[135].yyy * r0.xyw;
  o0.w = 0;
  o2.w = 0.75686276;
  o2.xy = r4.xy;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}