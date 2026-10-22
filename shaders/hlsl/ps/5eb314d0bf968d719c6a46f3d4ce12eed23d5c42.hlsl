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

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[10];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[158];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.yzx + r0.xyz;
  r0.xyz = r2.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.x = r1.x / cb1[8].x;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb1[8].y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb1[8].z * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r1.yzw = cb1[3].xyz * r1.xxx;
  r2.xyz = -r1.xxx * cb1[3].xyz + cb1[4].xyz;
  r1.xyz = cb1[9].xxx * r2.xyz + r1.yzw;
  r1.w = t4.SampleBias(s1_s, v2.xy, cb0[143].y).x;
  r1.w = -0.333299994 + r1.w;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r2.xyz = saturate(cb1[7].xyz);
  r1.w = (int)w4.x * 15;
  r3.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,1,4,6));
  o1.w = t0[r3.x].val[4/4];
  r4.xyzw = t3.Sample(s0_s, v3.zw).xyzw;
  r5.x = t1[r3.y].val[0/4];
  r5.y = t1[r3.y].val[0/4+1];
  r5.z = t1[r3.y].val[0/4+2];
  r5.w = t1[r3.y].val[0/4+3];
  r6.xyzw = r5.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r4.xyzw = saturate(r4.xyzw * r5.xyzw + r6.xyzw);
  r5.x = t1[r1.w].val[0/4];
  r5.y = t1[r1.w].val[0/4+1];
  r5.z = t1[r1.w].val[0/4+2];
  r5.w = t1[r1.w].val[0/4+3];
  r4.xyzw = r4.xyzw * r4.xyzw;
  o5.xyzw = r4.xyzw * r5.xyzw;
  r4.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r3.xy = float2(1,0.5) * v3.xy;
  r5.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r6.xyzw = t2.Sample(s0_s, r3.xy).xyzw;
  r5.xyzw = t2.Sample(s0_s, r5.xy).xyzw;
  r1.w = r5.w * 0.00392156886 + r6.w;
  r1.w = -0.00196078443 + r1.w;
  r7.x = t1[r3.z].val[0/4];
  r7.y = t1[r3.z].val[0/4+1];
  r7.z = t1[r3.z].val[0/4+2];
  r7.w = t1[r3.z].val[0/4+3];
  r3.x = t1[r3.w].val[0/4];
  r3.y = t1[r3.w].val[0/4+1];
  r3.z = t1[r3.w].val[0/4+2];
  r3.w = t1[r3.w].val[0/4+3];
  r1.w = r1.w * r7.w + r3.w;
  r6.xyz = r6.xyz * r6.xyz;
  r3.xyz = r6.xyz * r7.xyz + r3.xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r6.xy = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r7.x = t1[r6.x].val[0/4];
  r7.y = t1[r6.x].val[0/4+1];
  r7.z = t1[r6.x].val[0/4+2];
  r7.w = t1[r6.x].val[0/4+3];
  r6.x = t1[r6.y].val[0/4];
  r6.y = t1[r6.y].val[0/4+1];
  r6.z = t1[r6.y].val[0/4+2];
  r6.w = t1[r6.y].val[0/4+3];
  r5.xyzw = r5.xyzw * r7.xyzw + r6.xyzw;
  r0.w = 1;
  r0.w = dot(r5.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r1.w * r0.w;
  r3.xyz = r0.www * r3.xyz;
  r3.xyz = cb0[157].xyz * r3.xyz;
  r0.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r3.xyz * r4.xyz;
  r5.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r3.xyz = r5.xyz * r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
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
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r2.w = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r5.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r1.www ? r5.xyz : r1.xyz;
  }
  r3.xyz = cb0[145].yyy * r4.xyz + r3.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.xyzw = float4(0,0,1,0.505882382);
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}