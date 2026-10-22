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

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
  nointerpolation uint v5 : PRIMITIVE_ID0,
  nointerpolation uint w5 : LIGHTMAP_ID0,
  float3 v6 : TEXCOORD9,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
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
  r1.xyzw = mad((int4)v5.xxyy, int4(36,36,15,15), int4(4,20,4,6));
  r0.w = t0[r1.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.x = v8.x ? 1 : -1;
  r0.w = r1.x * r0.w;
  r2.xyzw = t3.SampleBias(s1_s, v3.xy, cb0[143].y).wxyz;
  r2.yzw = float3(-0.5,-0.5,-0.5) + r2.yzw;
  r2.yzw = cb0[138].www * r2.yzw;
  r2.yzw = r2.yzw * float3(2,2,2) + cb0[138].xyz;
  r1.x = dot(r2.yzw, r2.yzw);
  r1.x = rsqrt(r1.x);
  r2.yzw = r2.yzw * r1.xxx;
  r0.xyz = r2.zzz * r0.xyz;
  r0.xyz = r2.yyy * v0.yzx + r0.xyz;
  r0.xyz = r2.www * v1.yzx + r0.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r2.yzw = cb2[7].xxx * cb2[1].xyz;
  r3.xyzw = t4.SampleBias(s2_s, v3.xy, cb0[143].y).xyzw;
  r4.xyz = t5.SampleBias(s3_s, v3.xy, cb0[143].y).xyz;
  r1.x = cmp(cb1[0].x != 0.000000);
  r4.w = cmp(0.00100000005 < abs(cb1[0].x));
  r1.x = r1.x ? r4.w : 0;
  r5.xy = floor(v7.xy);
  r4.w = dot(r5.xy, float2(347.834503,3343.28369));
  r4.w = cos(r4.w);
  r4.w = 1000 * r4.w;
  r4.w = frac(r4.w);
  r5.x = cmp(cb1[0].x < 0);
  r5.y = 1 + cb1[0].x;
  r5.y = cmp(r4.w < r5.y);
  r4.w = cmp(cb1[0].x < r4.w);
  r4.w = r5.x ? r5.y : r4.w;
  r4.w = cmp((int)r4.w == 0);
  r1.x = r1.x ? r4.w : 0;
  if (r1.x != 0) discard;
  r1.x = v2.w * r3.w + -0.100000001;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r3.xyz = saturate(r3.xyz);
  r2.x = saturate(r2.x);
  o2.z = r2.x * cb0[139].y + cb0[139].x;
  r4.xyz = saturate(r4.xyz);
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  o1.w = t0[r1.y].val[4/4];
  r5.xyz = saturate(r4.xyz);
  o4.xyz = sqrt(r5.xyz);
  r5.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r7.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.xxx ? r7.xyz : r5.xyz;
  r6.xyz = r1.xxx ? float3(0,0,0) : r6.xyz;
  r1.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.y = r1.x * 2.04040003 + -0.332399994;
  r1.y = r1.x * -4.79510021 + r1.y;
  r1.x = r1.x * 2.75519991 + r1.y;
  r1.x = 1.33200002 + r1.x;
  r7.xy = float2(1,0.5) * v4.xy;
  r7.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t2.Sample(s0_s, r7.xy).xyzw;
  r7.xyzw = t2.Sample(s0_s, r7.zw).xyzw;
  r1.y = r7.w * 0.00392156886 + r8.w;
  r1.y = -0.00196078443 + r1.y;
  r9.x = t1[r1.z].val[0/4];
  r9.y = t1[r1.z].val[0/4+1];
  r9.z = t1[r1.z].val[0/4+2];
  r9.w = t1[r1.z].val[0/4+3];
  r10.x = t1[r1.w].val[0/4];
  r10.y = t1[r1.w].val[0/4+1];
  r10.z = t1[r1.w].val[0/4+2];
  r10.w = t1[r1.w].val[0/4+3];
  r1.y = r1.y * r9.w + r10.w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * r9.xyz + r10.xyz;
  r1.y = exp2(r1.y);
  r1.y = -0.0185813606 + r1.y;
  r1.zw = mad((int2)w5.xy, int2(15,15), int2(5,7));
  r9.x = t1[r1.z].val[0/4];
  r9.y = t1[r1.z].val[0/4+1];
  r9.z = t1[r1.z].val[0/4+2];
  r9.w = t1[r1.z].val[0/4+3];
  r10.x = t1[r1.w].val[0/4];
  r10.y = t1[r1.w].val[0/4+1];
  r10.z = t1[r1.w].val[0/4+2];
  r10.w = t1[r1.w].val[0/4+3];
  r7.xyzw = r7.xyzw * r9.xyzw + r10.xyzw;
  r0.w = 1;
  r1.z = dot(r7.xyzw, r0.xyzw);
  r1.xz = max(float2(1,0), r1.xz);
  r9.xyzw = float4(-1,-1,-1,1) * r0.xyzw;
  r0.w = dot(r7.xyzw, r9.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r1.y * r0.w;
  r7.xyz = r0.www * r8.xyz;
  r0.w = r1.y * r1.z;
  r1.yzw = r0.www * r8.xyz;
  r1.yzw = cb0[157].xyz * r1.yzw;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r0.w = dot(r1.yzw, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r7.xyz * r4.xyz;
  r1.yzw = r1.yzw * r5.xyz + r4.xyz;
  r4.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r1.yzw = r4.xyz * r1.yzw;
  r4.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r2.xyz = max(float3(0,0,0), r2.yzw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xyzw = cb0[45].xyzw * v7.yyyy;
    r5.xyzw = v7.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v7.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r6.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
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
    r2.xyz = r2.www ? r5.xyz : r2.xyz;
  }
  r1.yzw = cb0[145].yyy * r4.xyz + r1.yzw;
  r1.yzw = r1.yzw + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.x;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.yzw;
  o0.w = 0;
  o2.xyw = float3(0,0.5,0.776470602);
  o3.xyz = r3.xyz;
  o4.w = 1;
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}