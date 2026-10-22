// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xy = t10.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb2[4].xxx * r3.xyz + r2.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[4].yyy * cb2[1].xyz;
  r3.xy = mad((int2)v3.xx, int2(36,36), int2(5,20));
  r3.x = t9[r3.x].val[0/4];
  r3.z = t9[r3.x].val[0/4+1];
  r3.w = t9[r3.x].val[0/4+2];
  r4.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r3.xzw;
  r4.xyz = frac(r4.xyz);
  r0.w = dot(r4.xy, r4.yz);
  r0.w = -0.5 + r0.w;
  r0.w = dot(r0.ww, cb2[4].zz);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r4.xyz = r4.xyz / r1.www;
  r5.xyzw = t11.SampleBias(s2_s, v2.xy, cb0[143].y).xyzw;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r5.xyz;
  r5.xyz = cb2[5].yyy * r6.xyz + r5.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[5].x, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb2[3].xyz * r5.xyz;
  r4.xyz = r0.www * r4.xyz + r5.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r0.w = cb2[5].z * r5.w;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[5].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r2.w = cmp(cb1[0].x != 0.000000);
  r4.w = cmp(0.00100000005 < abs(cb1[0].x));
  r2.w = r2.w ? r4.w : 0;
  r5.xy = floor(v4.xy);
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
  r2.w = r2.w ? r4.w : 0;
  if (r2.w != 0) discard;
  r0.w = -0.333299994 + r0.w;
  r0.w = cmp(r0.w < 0);
  r0.w = (int)r0.w | (int)r1.w;
  if (r0.w != 0) discard;
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r5.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
  r5.xyz = cb0[213].xyz * r5.xyz;
  r6.xyz = (int3)r5.xyz;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r0.w = 1 + cb0[213].w;
  r5.xyz = r5.xyz / r6.www;
  r5.xyz = frac(r5.xyz);
  r5.xyz = cb0[213].www * r5.xyz;
  r5.xyz = r6.xyz * r0.www + r5.xyz;
  r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
  r5.xyz = cb0[214].xyz * r5.xyz;
  r6.x = t9[r3.y].val[4/4];
  r6.y = t9[r3.y].val[4/4+1];
  r0.w = cmp(0 < r6.y);
  if (r0.w != 0) {
    r0.w = t8.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r6.yzw = r4.xyz * cb0[136].www + cb0[136].xyz;
  r6.yzw = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + r6.yzw;
  r7.xyz = t1.SampleLevel(s0_s, r5.xyz, 0).zxy;
  r8.xyzw = t2.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = t4.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t6.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = r8.xyzw * r7.yyyy;
  r8.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r8.wxyz;
  r9.xyzw = r9.xyzw * r7.zzzz;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r7.xxxx;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = t3.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t5.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r5.xyzw = t7.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r7.yyyy;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r12.xyzw = r12.xyzw * r7.zzzz;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r5.xyzw = r5.xyzw * r7.xxxx;
  r5.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r5.xyzw;
  r13.xyz = r0.yzy * r0.yzx;
  r14.yw = r0.zz * r0.yx;
  r1.w = r0.x * r0.x + -r13.x;
  r15.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r14.xz = r13.zy * float2(1,3) + float2(0,-1);
  r13.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r14.xyzw;
  r1.w = 0.429042608 * r1.w;
  r14.x = r7.y;
  r14.yzw = r8.yzw;
  r15.x = 0.886227548;
  r2.w = dot(r14.xyzw, r15.xyzw);
  r8.yzw = r11.xyz;
  r3.y = dot(r8.xyzw, r13.xyzw);
  r2.w = r3.y + r2.w;
  r8.x = r11.w * r1.w + r2.w;
  r11.x = r7.z;
  r11.yzw = r9.yzw;
  r2.w = dot(r11.xyzw, r15.xyzw);
  r9.yzw = r12.xyz;
  r3.y = dot(r9.xyzw, r13.xyzw);
  r2.w = r3.y + r2.w;
  r8.y = r12.w * r1.w + r2.w;
  r7.yzw = r10.yzw;
  r2.w = dot(r7.xyzw, r15.xyzw);
  r10.yzw = r5.xyz;
  r3.y = dot(r10.xyzw, r13.xyzw);
  r2.w = r3.y + r2.w;
  r8.z = r5.w * r1.w + r2.w;
  r5.xyz = max(float3(0,0,0), r8.xyz);
  r5.xyz = cb0[157].xyz * r5.xyz;
  r5.xyz = float3(0.318309873,0.318309873,0.318309873) * r5.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r6.yzw;
  r7.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r5.xyz = r7.xyz * r5.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r3.xyz = -r3.xzw + r1.xyz;
    r2.w = mad((int)v3.x, 36, 19);
    r7.x = t9[r2.w].val[0/4];
    r7.y = t9[r2.w].val[0/4+1];
    r7.z = t9[r2.w].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r3.xyz = cmp(r7.xyz < abs(r3.xyz));
    r2.w = (int)r3.y | (int)r3.x;
    r2.w = (int)r3.z | (int)r2.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r2.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r6.yzw + r5.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r1.w * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r6.x;
  o2.xyzw = float4(0,0,1,0.505882382);
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}