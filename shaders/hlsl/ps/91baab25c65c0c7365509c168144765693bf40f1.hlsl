// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = float4(0.5,0.5,10,10) * v2.xyxy;
  r1.zw = t3.SampleBias(s1_s, r2.zw, cb0[143].y).xy;
  r3.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.x = cb0[138].w;
  r4.z = 1;
  r3.xyz = r4.xxz * r3.xyz;
  r4.x = 0.300000012;
  r4.z = cb0[138].w;
  r3.xyz = r3.xyz * r4.xxz + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.yzx + r0.xyz;
  r0.xyz = r3.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r3.xyz = cb1[2].xxx * cb1[1].xyz;
  r4.xyzw = float4(20,20,5,5) * v2.xyxy;
  r1.z = t4.SampleBias(s2_s, r4.xy, cb0[143].y).x;
  r1.z = r1.z * 0.600000024 + 0.400000006;
  r1.w = t4.SampleBias(s2_s, r4.zw, cb0[143].y).y;
  r2.z = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r2.z ? r1.y : r1.x;
  r1.x = -24 + r1.x;
  r1.x = saturate(0.00066666666 * r1.x);
  r1.y = 1 + -r1.w;
  r1.y = r1.x * r1.y + r1.w;
  r2.z = r1.z * -2 + 1;
  r1.y = r1.y * r2.z + r1.z;
  r1.z = t4.SampleBias(s2_s, r2.xy, cb0[143].y).y;
  r2.x = r1.x * -r1.w + r1.w;
  r2.x = r2.x + r1.z;
  r2.y = 0.5 + -r2.x;
  r2.x = r2.y * 0.5 + r2.x;
  r2.x = r2.x * 0.365000039 + 0.294999987;
  r1.y = r2.x * r1.y;
  r1.y = 0.5 * r1.y;
  r1.w = r1.w * 0.300000012 + 0.699999988;
  r2.x = 1 + -r1.w;
  r1.x = r1.x * r2.x + r1.w;
  r1.x = saturate(r1.z * 0.5 + r1.x);
  r1.yzw = saturate(r1.yyy);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r2.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,4,6,5));
  o1.w = t0[r2.x].val[4/4];
  r4.xyz = r1.www * cb0[136].www + cb0[136].xyz;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r6.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r1.xxx ? r6.xyz : r4.xyz;
  r5.xyz = r1.xxx ? float3(0,0,0) : r5.xyz;
  r1.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.x = r1.x * 2.04040003 + -0.332399994;
  r2.x = r1.x * -4.79510021 + r2.x;
  r1.x = r1.x * 2.75519991 + r2.x;
  r1.x = 1.33200002 + r1.x;
  r1.x = max(1, r1.x);
  r6.xy = float2(1,0.5) * v3.xy;
  r6.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t2.Sample(s0_s, r6.xy).xyzw;
  r6.xyzw = t2.Sample(s0_s, r6.zw).xyzw;
  r2.x = r6.w * 0.00392156886 + r7.w;
  r2.x = -0.00196078443 + r2.x;
  r8.x = t1[r2.y].val[0/4];
  r8.y = t1[r2.y].val[0/4+1];
  r8.z = t1[r2.y].val[0/4+2];
  r8.w = t1[r2.y].val[0/4+3];
  r9.x = t1[r2.z].val[0/4];
  r9.y = t1[r2.z].val[0/4+1];
  r9.z = t1[r2.z].val[0/4+2];
  r9.w = t1[r2.z].val[0/4+3];
  r2.x = r2.x * r8.w + r9.w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * r8.xyz + r9.xyz;
  r2.x = exp2(r2.x);
  r2.x = -0.0185813606 + r2.x;
  r8.x = t1[r2.w].val[0/4];
  r8.y = t1[r2.w].val[0/4+1];
  r8.z = t1[r2.w].val[0/4+2];
  r8.w = t1[r2.w].val[0/4+3];
  r2.y = mad((int)w4.x, 15, 7);
  r9.x = t1[r2.y].val[0/4];
  r9.y = t1[r2.y].val[0/4+1];
  r9.z = t1[r2.y].val[0/4+2];
  r9.w = t1[r2.y].val[0/4+3];
  r6.xyzw = r6.xyzw * r8.xyzw + r9.xyzw;
  r0.w = 1;
  r0.w = dot(r6.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.x * r0.w;
  r2.xyz = r0.www * r7.xyz;
  r2.xyz = cb0[157].xyz * r2.xyz;
  r0.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.xyz = r2.xyz * r4.xyz;
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r2.w = r1.w * 2.75519991 + r2.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r2.xyz = r2.xyz * r2.www;
  r4.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xyzw = cb0[45].xyzw * v5.yyyy;
    r5.xyzw = v5.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v5.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t0[r6.x].val[0/4];
    r6.z = t0[r6.x].val[0/4+1];
    r6.w = t0[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r5.xyz;
    r7.x = t0[r6.y].val[0/4];
    r7.y = t0[r6.y].val[0/4+1];
    r7.z = t0[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r3.w = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.w = 0.00200000009 * r3.w;
    r3.w = frac(r3.w);
    r3.w = cmp(0.5 < r3.w);
    r5.xyz = r3.www ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r2.www ? r5.xyz : r3.xyz;
  }
  r2.xyz = cb0[145].yyy * r4.xyz + r2.xyz;
  r2.xyz = r2.xyz + r3.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.x;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o2.xyw = float3(0,0.5,0.75686276);
  o3.xyz = r1.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}