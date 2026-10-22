// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  float4 v2 : TEXCOORD4,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  nointerpolation uint w3 : LIGHTMAP_ID0,
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

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r1.xxx * v0.yzx + r0.xyz;
  r0.xyz = r1.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb1[2].xxx * cb1[1].xyz;
  o2.z = cb0[139].y * 0.800000012 + cb0[139].x;
  r2.xyzw = mad((int4)v3.xyyy, int4(36,15,15,15), int4(20,4,6,5));
  o1.w = t0[r2.x].val[4/4];
  r3.xyz = cb0[136].www * float3(1,0.0500000007,0) + cb0[136].xyz;
  r4.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r5.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r3.xyz = r1.www ? r5.xyz : r3.xyz;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.x = r1.w * 2.04040003 + -0.332399994;
  r2.x = r1.w * -4.79510021 + r2.x;
  r1.w = r1.w * 2.75519991 + r2.x;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r5.xy = float2(1,0.5) * v2.xy;
  r5.zw = v2.xy * float2(1,0.5) + float2(0,0.5);
  r6.xyzw = t2.Sample(s0_s, r5.xy).xyzw;
  r5.xyzw = t2.Sample(s0_s, r5.zw).xyzw;
  r2.x = r5.w * 0.00392156886 + r6.w;
  r2.x = -0.00196078443 + r2.x;
  r7.x = t1[r2.y].val[0/4];
  r7.y = t1[r2.y].val[0/4+1];
  r7.z = t1[r2.y].val[0/4+2];
  r7.w = t1[r2.y].val[0/4+3];
  r8.x = t1[r2.z].val[0/4];
  r8.y = t1[r2.z].val[0/4+1];
  r8.z = t1[r2.z].val[0/4+2];
  r8.w = t1[r2.z].val[0/4+3];
  r2.x = r2.x * r7.w + r8.w;
  r6.xyz = r6.xyz * r6.xyz;
  r6.xyz = r6.xyz * r7.xyz + r8.xyz;
  r2.x = exp2(r2.x);
  r2.x = -0.0185813606 + r2.x;
  r7.x = t1[r2.w].val[0/4];
  r7.y = t1[r2.w].val[0/4+1];
  r7.z = t1[r2.w].val[0/4+2];
  r7.w = t1[r2.w].val[0/4+3];
  r2.y = mad((int)w3.x, 15, 7);
  r8.x = t1[r2.y].val[0/4];
  r8.y = t1[r2.y].val[0/4+1];
  r8.z = t1[r2.y].val[0/4+2];
  r8.w = t1[r2.y].val[0/4+3];
  r5.xyzw = r5.xyzw * r7.xyzw + r8.xyzw;
  r0.w = 1;
  r0.w = dot(r5.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.x * r0.w;
  r2.xyz = r0.www * r6.xyz;
  r2.xyz = cb0[157].xyz * r2.xyz;
  r0.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.xyz = r2.xyz * r3.xyz;
  r2.xyz = float3(1.00009966,1,1) * r2.xyz;
  r3.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r4.xyzw = cb0[45].xyzw * v4.yyyy;
    r4.xyzw = v4.xxxx * cb0[44].xyzw + r4.xyzw;
    r4.xyzw = v4.zzzz * cb0[46].xyzw + r4.xyzw;
    r4.xyzw = cb0[47].xyzw + r4.xyzw;
    r4.xyz = r4.xyz / r4.www;
    r4.xyz = -cb0[70].xyz + r4.xyz;
    r5.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t0[r5.x].val[0/4];
    r5.z = t0[r5.x].val[0/4+1];
    r5.w = t0[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r4.xyz;
    r6.x = t0[r5.y].val[0/4];
    r6.y = t0[r5.y].val[0/4+1];
    r6.z = t0[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r2.w = (int)r5.y | (int)r5.x;
    r2.w = (int)r5.z | (int)r2.w;
    r3.w = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.w = 0.00200000009 * r3.w;
    r3.w = frac(r3.w);
    r3.w = cmp(0.5 < r3.w);
    r4.xyz = r3.www ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r2.www ? r4.xyz : r1.xyz;
  }
  r2.xyz = cb0[145].yyy * r3.xyz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.xyw = float3(0,0.5,0.75686276);
  o3.xyz = float3(1,0.0500000007,0);
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}