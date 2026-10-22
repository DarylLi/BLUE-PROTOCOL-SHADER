// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t5 : register(t5);

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

cbuffer cb2 : register(b2)
{
  float4 cb2[17];
}

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
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r1.xyz * r0.www;
  r0.w = (int)w4.x * 15;
  r3.xyzw = mad((int4)v4.xxyy, int4(36,36,15,15), int4(18,20,1,4));
  r4.x = t0[r3.x].val[0/4];
  r4.y = t0[r3.x].val[0/4+1];
  r4.z = t0[r3.x].val[0/4+2];
  r1.w = r4.x + r4.y;
  r1.w = r1.w + r4.z;
  r1.w = frac(r1.w);
  r1.w = cb0[142].z + r1.w;
  r1.w = cb1[2].x * r1.w;
  r2.w = cb2[9].x * r1.w;
  r4.x = cb2[9].w * r2.w;
  r4.y = cb2[10].x * r2.w;
  r4.xy = cb2[10].yz * v2.xy + r4.xy;
  r4.xy = t4.SampleBias(s1_s, r4.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[10].www * r5.xyz + r4.xyz;
  r2.w = 1 + r4.z;
  r1.w = cb2[11].x * r1.w;
  r5.x = cb2[11].w * r1.w;
  r5.y = cb2[12].x * r1.w;
  r5.xy = cb2[12].yz * v2.xy + r5.xy;
  r5.xy = t4.SampleBias(s1_s, r5.xy, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb2[12].www * r6.xyz + r5.xyz;
  r4.w = 1 + r4.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r1.w = dot(r4.xyw, r5.xyz);
  r5.xyz = r5.xyz * r2.www;
  r4.xyz = r4.xyw * r1.www + -r5.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r1.www * r0.xyz;
  r0.x = dot(r4.zxy, r2.xyz);
  r5.xyz = r4.zxy * r0.xxx;
  r2.xyz = r5.xyz * float3(2,2,2) + -r2.xyz;
  r2.xyz = t5.Sample(s2_s, r2.xyz).xyz;
  r0.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r0.yyy + -r2.xyz;
  r2.xyz = cb2[13].xxx * r5.xyz + r2.xyz;
  r2.xyz = cb2[13].yyy * r2.xyz;
  r5.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb2[13].zzz * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r5.xyz ? float3(0,0,0) : r2.xyz;
  r2.xyz = float3(-1,-1,-1) + r2.xyz;
  r2.xyz = cb2[13].www * r2.xyz + float3(1,1,1);
  r5.xyz = cb2[4].xyz * r2.xyz;
  r0.y = -cb2[15].x + r0.x;
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.z = cmp(r0.x >= cb2[15].x);
  r0.z = r0.z ? 1.000000 : 0;
  r0.y = r0.y ? r0.z : 1;
  r2.xyz = -r2.xyz * cb2[4].xyz + cb2[7].xyz;
  r2.xyz = r0.yyy * r2.xyz + r5.xyz;
  r0.z = -cb2[16].y + r0.x;
  r0.z = cmp(9.99999975e-006 < abs(r0.z));
  r0.x = cmp(r0.x >= cb2[16].y);
  r0.x = r0.x ? 1.000000 : 0;
  r0.x = r0.z ? r0.x : 1;
  r5.xyz = cb2[15].yyy * r2.xyz + -r2.xyz;
  r2.xyz = r0.xxx * r5.xyz + r2.xyz;
  r5.xyz = cb2[8].xyz + -r2.xyz;
  r2.xyz = cb2[16].zzz * r5.xyz + r2.xyz;
  r0.x = 1 + -r0.y;
  o1.w = t0[r3.y].val[4/4];
  r5.xyzw = t3.Sample(s0_s, v3.zw).xyzw;
  r6.x = t1[r3.z].val[0/4];
  r6.y = t1[r3.z].val[0/4+1];
  r6.z = t1[r3.z].val[0/4+2];
  r6.w = t1[r3.z].val[0/4+3];
  r7.xyzw = r6.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = saturate(r5.xyzw * r6.xyzw + r7.xyzw);
  r6.x = t1[r0.w].val[0/4];
  r6.y = t1[r0.w].val[0/4+1];
  r6.z = t1[r0.w].val[0/4+2];
  r6.w = t1[r0.w].val[0/4+3];
  r5.xyzw = r5.xyzw * r5.xyzw;
  o5.xyzw = r5.xyzw * r6.xyzw;
  r0.y = r0.x * -0.0203999989 + 0.0203999989;
  r0.yzw = r0.yyy * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r3.xyz = r0.yzw * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r3.xyz = r1.www ? r3.xyz : cb0[136].xyz;
  r0.yzw = r1.www ? float3(0,0,0) : r0.yzw;
  r1.w = dot(r0.yzw, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r5.xy = float2(1,0.5) * v3.xy;
  r5.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r6.xyzw = t2.Sample(s0_s, r5.xy).xyzw;
  r5.xyzw = t2.Sample(s0_s, r5.zw).xyzw;
  r2.w = r5.w * 0.00392156886 + r6.w;
  r2.w = -0.00196078443 + r2.w;
  r7.x = t1[r3.w].val[0/4];
  r7.y = t1[r3.w].val[0/4+1];
  r7.z = t1[r3.w].val[0/4+2];
  r7.w = t1[r3.w].val[0/4+3];
  r8.xyz = mad((int3)w4.xyy, int3(15,15,15), int3(6,5,7));
  r9.x = t1[r8.x].val[0/4];
  r9.y = t1[r8.x].val[0/4+1];
  r9.z = t1[r8.x].val[0/4+2];
  r9.w = t1[r8.x].val[0/4+3];
  r2.w = r2.w * r7.w + r9.w;
  r6.xyz = r6.xyz * r6.xyz;
  r6.xyz = r6.xyz * r7.xyz + r9.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r7.x = t1[r8.y].val[0/4];
  r7.y = t1[r8.y].val[0/4+1];
  r7.z = t1[r8.y].val[0/4+2];
  r7.w = t1[r8.y].val[0/4+3];
  r8.x = t1[r8.z].val[0/4];
  r8.y = t1[r8.z].val[0/4+1];
  r8.z = t1[r8.z].val[0/4+2];
  r8.w = t1[r8.z].val[0/4+3];
  r5.xyzw = r5.xyzw * r7.xyzw + r8.xyzw;
  r4.w = 1;
  r3.w = dot(r5.xyzw, r4.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r5.xyz = r2.www * r6.xyz;
  r5.xyz = cb0[157].xyz * r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r3.xyz;
  r0.yzw = r0.yzw * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.x = cmp(0 < cb0[140].x);
  if (r3.x != 0) {
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r3.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r3.x = t0[r3.x].val[0/4];
    r3.z = t0[r3.x].val[0/4+1];
    r3.w = t0[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r1.xyz;
    r6.x = t0[r3.y].val[0/4];
    r6.y = t0[r3.y].val[0/4+1];
    r6.z = t0[r3.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r3.xyz = cmp(r6.xyz < abs(r3.xzw));
    r3.x = (int)r3.y | (int)r3.x;
    r3.x = (int)r3.z | (int)r3.x;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r3.xxx ? r1.xyz : r2.xyz;
  }
  r0.yzw = cb0[145].yyy * r0.yzw + r5.xyz;
  r0.yzw = r0.yzw + r2.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r2.w * r1.w;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.yzw;
  o0.w = 0;
  o2.yw = float2(0.254999995,0.505882382);
  o2.z = cb0[139].x;
  o2.x = r0.x;
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}