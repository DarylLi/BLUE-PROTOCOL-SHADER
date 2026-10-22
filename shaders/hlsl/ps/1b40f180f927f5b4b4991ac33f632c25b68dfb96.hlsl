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
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[188];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = t6.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r1.z = sqrt(r0.w);
  r2.xyz = float3(0,0,1) + -r1.xyz;
  r1.xyz = cb2[4].xxx * r2.xyz + r1.xyz;
  r1.xyz = r1.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r1.xxx * v0.yzx + r0.xyz;
  r0.xyz = r1.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[4].yyy * cb2[1].xyz;
  r2.w = (int)w4.x * 15;
  r3.xyzw = mad((int4)v4.xxyy, int4(36,36,15,15), int4(5,20,1,4));
  r4.x = t0[r3.x].val[0/4];
  r4.y = t0[r3.x].val[0/4+1];
  r4.z = t0[r3.x].val[0/4+2];
  r5.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r4.xyz;
  r5.xyz = frac(r5.xyz);
  r3.x = dot(r5.xy, r5.yz);
  r3.x = -0.5 + r3.x;
  r3.x = dot(r3.xx, cb2[4].zz);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = sqrt(r4.w);
  r5.xyz = r5.xyz / r4.www;
  r6.xyzw = t7.SampleBias(s2_s, v2.xy, cb0[143].y).xyzw;
  r4.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r4.www + -r6.xyz;
  r6.xyz = cb2[5].yyy * r7.xyz + r6.xyz;
  r4.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r4.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb2[5].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r4.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb2[3].xyz * r6.xyz;
  r5.xyz = r3.xxx * r5.xyz + r6.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r3.x = cb2[5].z * r6.w;
  r4.w = cmp(0 >= r3.x);
  r3.x = log2(r3.x);
  r3.x = cb2[5].w * r3.x;
  r3.x = exp2(r3.x);
  r3.x = min(1, r3.x);
  r5.w = cmp(cb1[0].x != 0.000000);
  r6.x = cmp(0.00100000005 < abs(cb1[0].x));
  r5.w = r5.w ? r6.x : 0;
  r6.xy = floor(v5.xy);
  r6.x = dot(r6.xy, float2(347.834503,3343.28369));
  r6.x = cos(r6.x);
  r6.x = 1000 * r6.x;
  r6.x = frac(r6.x);
  r6.y = cmp(cb1[0].x < 0);
  r6.z = 1 + cb1[0].x;
  r6.z = cmp(r6.x < r6.z);
  r6.x = cmp(cb1[0].x < r6.x);
  r6.x = r6.y ? r6.z : r6.x;
  r6.x = cmp((int)r6.x == 0);
  r5.w = r5.w ? r6.x : 0;
  if (r5.w != 0) discard;
  r3.x = -0.333299994 + r3.x;
  r3.x = cmp(r3.x < 0);
  r3.x = (int)r3.x | (int)r4.w;
  if (r3.x != 0) discard;
  r5.xyz = min(float3(1,1,1), r5.xyz);
  o1.w = t0[r3.y].val[4/4];
  r6.xyzw = t5.Sample(s0_s, v3.zw).xyzw;
  r7.x = t1[r3.z].val[0/4];
  r7.y = t1[r3.z].val[0/4+1];
  r7.z = t1[r3.z].val[0/4+2];
  r7.w = t1[r3.z].val[0/4+3];
  r8.xyzw = r7.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r6.xyzw = saturate(r6.xyzw * r7.xyzw + r8.xyzw);
  r7.x = t1[r2.w].val[0/4];
  r7.y = t1[r2.w].val[0/4+1];
  r7.z = t1[r2.w].val[0/4+2];
  r7.w = t1[r2.w].val[0/4+3];
  r6.xyzw = r6.xyzw * r6.xyzw;
  o5.xyzw = r6.xyzw * r7.xyzw;
  r3.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r6.xy = float2(1,0.5) * v3.xy;
  r6.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t3.Sample(s0_s, r6.xy).xyzw;
  r6.xyzw = t3.Sample(s0_s, r6.zw).xyzw;
  r2.w = r6.w * 0.00392156886 + r7.w;
  r2.w = -0.00196078443 + r2.w;
  r8.x = t1[r3.w].val[0/4];
  r8.y = t1[r3.w].val[0/4+1];
  r8.z = t1[r3.w].val[0/4+2];
  r8.w = t1[r3.w].val[0/4+3];
  r9.xyz = mad((int3)w4.xyy, int3(15,15,15), int3(6,5,7));
  r10.x = t1[r9.x].val[0/4];
  r10.y = t1[r9.x].val[0/4+1];
  r10.z = t1[r9.x].val[0/4+2];
  r10.w = t1[r9.x].val[0/4+3];
  r2.w = r2.w * r8.w + r10.w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * r8.xyz + r10.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r8.x = t1[r9.y].val[0/4];
  r8.y = t1[r9.y].val[0/4+1];
  r8.z = t1[r9.y].val[0/4+2];
  r8.w = t1[r9.y].val[0/4+3];
  r9.x = t1[r9.z].val[0/4];
  r9.y = t1[r9.z].val[0/4+1];
  r9.z = t1[r9.z].val[0/4+2];
  r9.w = t1[r9.z].val[0/4+3];
  r6.xyzw = r6.xyzw * r8.xyzw + r9.xyzw;
  r1.w = 1;
  r1.w = dot(r6.xyzw, r1.xyzw);
  r1.w = max(0, r1.w);
  r1.w = r2.w * r1.w;
  r6.xyz = r1.www * r7.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r7.xyzw = t4.Sample(s0_s, v3.xy).xyzw;
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.x = r7.w * r7.w;
    r1.w = dot(r7.xyz, r7.xyz);
    r1.w = rsqrt(r1.w);
    r7.xyz = r7.xyz * r1.www;
    r1.w = -r7.w * r7.w + 1;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.zxy * r0.www + -r7.xyz;
    r0.xyz = r1.www * r0.xyz + r7.xyz;
    r2.w = saturate(dot(r7.yzx, r1.xyz));
    r3.w = 1 + -r2.w;
    r8.y = r1.w * r3.w + r2.w;
  } else {
    r0.xyz = r1.zxy;
    r8.xy = float2(1,1);
  }
  r7.x = t2[0].val[0/4];
  r7.y = t2[0].val[0/4+1];
  r7.z = t2[0].val[0/4+2];
  r7.w = t2[0].val[0/4+3];
  r0.w = 1;
  r7.x = dot(r7.xyzw, r0.xyzw);
  r9.x = t2[1].val[0/4];
  r9.y = t2[1].val[0/4+1];
  r9.z = t2[1].val[0/4+2];
  r9.w = t2[1].val[0/4+3];
  r7.y = dot(r9.xyzw, r0.xyzw);
  r9.x = t2[2].val[0/4];
  r9.y = t2[2].val[0/4+1];
  r9.z = t2[2].val[0/4+2];
  r9.w = t2[2].val[0/4+3];
  r7.z = dot(r9.xyzw, r0.xyzw);
  r9.xyzw = r0.xyzz * r0.yzzx;
  r10.x = t2[3].val[0/4];
  r10.y = t2[3].val[0/4+1];
  r10.z = t2[3].val[0/4+2];
  r10.w = t2[3].val[0/4+3];
  r10.x = dot(r10.xyzw, r9.xyzw);
  r11.x = t2[4].val[0/4];
  r11.y = t2[4].val[0/4+1];
  r11.z = t2[4].val[0/4+2];
  r11.w = t2[4].val[0/4+3];
  r10.y = dot(r11.xyzw, r9.xyzw);
  r11.x = t2[5].val[0/4];
  r11.y = t2[5].val[0/4+1];
  r11.z = t2[5].val[0/4+2];
  r11.w = t2[5].val[0/4+3];
  r10.z = dot(r11.xyzw, r9.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r7.xyz = r10.xyz + r7.xyz;
  r0.xyz = r0.yzw * r0.xxx + r7.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r8.x * r8.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r6.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r3.xyz;
  r6.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r0.xyz = r6.xyz * r0.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xyzw = cb0[45].xyzw * v5.yyyy;
    r6.xyzw = v5.xxxx * cb0[44].xyzw + r6.xyzw;
    r6.xyzw = v5.zzzz * cb0[46].xyzw + r6.xyzw;
    r6.xyzw = cb0[47].xyzw + r6.xyzw;
    r6.xyz = r6.xyz / r6.www;
    r6.xyz = -cb0[70].xyz + r6.xyz;
    r4.xyz = r6.xyz + -r4.xyz;
    r1.w = mad((int)v4.x, 36, 19);
    r7.x = t0[r1.w].val[0/4];
    r7.y = t0[r1.w].val[0/4+1];
    r7.z = t0[r1.w].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r4.xyz = cmp(r7.xyz < abs(r4.xyz));
    r1.w = (int)r4.y | (int)r4.x;
    r1.w = (int)r4.z | (int)r1.w;
    r2.w = dot(r6.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r4.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.www ? r4.xyz : r2.xyz;
  }
  r0.xyz = cb0[145].yyy * r3.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r1.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.xyzw = float4(0,0,1,0.505882382);
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}