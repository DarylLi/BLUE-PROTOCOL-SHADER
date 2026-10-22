// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

struct t11_t {
  float val[4];
};
StructuredBuffer<t11_t> t11 : register(t11);

struct t10_t {
  float val[4];
};
StructuredBuffer<t10_t> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
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
  r2.xy = t12.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
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
  r2.xyz = r0.xyz * r0.www;
  r3.xyz = cb2[4].yyy * cb2[1].xyz;
  r4.xy = mad((int2)v3.xx, int2(36,36), int2(5,20));
  r4.x = t10[r4.x].val[0/4];
  r4.z = t10[r4.x].val[0/4+1];
  r4.w = t10[r4.x].val[0/4+2];
  r5.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r4.xzw;
  r5.xyz = frac(r5.xyz);
  r1.w = dot(r5.xy, r5.yz);
  r1.w = -0.5 + r1.w;
  r1.w = dot(r1.ww, cb2[4].zz);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r5.xyz = r5.xyz / r2.www;
  r6.xyzw = t13.SampleBias(s2_s, v2.xy, cb0[143].y).xyzw;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb2[5].yyy * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb2[5].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb2[3].xyz * r6.xyz;
  r5.xyz = r1.www * r5.xyz + r6.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r1.w = cb2[5].z * r6.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[5].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r3.w = cmp(cb1[0].x != 0.000000);
  r5.w = cmp(0.00100000005 < abs(cb1[0].x));
  r3.w = r3.w ? r5.w : 0;
  r6.xy = floor(v4.xy);
  r5.w = dot(r6.xy, float2(347.834503,3343.28369));
  r5.w = cos(r5.w);
  r5.w = 1000 * r5.w;
  r5.w = frac(r5.w);
  r6.x = cmp(cb1[0].x < 0);
  r6.y = 1 + cb1[0].x;
  r6.y = cmp(r5.w < r6.y);
  r5.w = cmp(cb1[0].x < r5.w);
  r5.w = r6.x ? r6.y : r5.w;
  r5.w = cmp((int)r5.w == 0);
  r3.w = r3.w ? r5.w : 0;
  if (r3.w != 0) discard;
  r1.w = -0.333299994 + r1.w;
  r1.w = cmp(r1.w < 0);
  r1.w = (int)r1.w | (int)r2.w;
  if (r1.w != 0) discard;
  r5.xyz = min(float3(1,1,1), r5.xyz);
  r6.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
  r6.xyz = cb0[213].xyz * r6.xyz;
  r7.xyz = (int3)r6.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r1.w = 1 + cb0[213].w;
  r6.xyz = r6.xyz / r7.www;
  r6.xyz = frac(r6.xyz);
  r6.xyz = cb0[213].www * r6.xyz;
  r6.xyz = r7.xyz * r1.www + r6.xyz;
  r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
  r6.xyz = cb0[214].xyz * r6.xyz;
  r7.x = t10[r4.y].val[4/4];
  r7.y = t10[r4.y].val[4/4+1];
  r1.w = cmp(0 < r7.y);
  if (r1.w != 0) {
    r1.w = t9.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r7.yzw = r5.xyz * cb0[136].www + cb0[136].xyz;
  r7.yzw = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + r7.yzw;
  r8.xyz = t1.SampleLevel(s0_s, r6.xyz, 0).zxy;
  r9.xyzw = t2.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r8.xxxx;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyz = r2.yzy * r2.yzx;
  r16.yw = r2.zz * r2.yx;
  r2.w = r2.x * r2.x + -r15.x;
  r17.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r2.yzx;
  r16.xz = r15.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r16.xyzw;
  r2.w = 0.429042608 * r2.w;
  r16.x = r8.y;
  r16.yzw = r9.yzw;
  r17.x = 0.886227548;
  r3.w = dot(r16.xyzw, r17.xyzw);
  r9.yzw = r12.xyz;
  r4.y = dot(r9.xyzw, r15.xyzw);
  r3.w = r4.y + r3.w;
  r9.x = r12.w * r2.w + r3.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r3.w = dot(r12.xyzw, r17.xyzw);
  r10.yzw = r13.xyz;
  r4.y = dot(r10.xyzw, r15.xyzw);
  r3.w = r4.y + r3.w;
  r9.y = r13.w * r2.w + r3.w;
  r8.yzw = r11.yzw;
  r3.w = dot(r8.xyzw, r17.xyzw);
  r11.yzw = r14.xyz;
  r4.y = dot(r11.xyzw, r15.xyzw);
  r3.w = r4.y + r3.w;
  r9.z = r14.w * r2.w + r3.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r6.xyz = t8.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r6.xyz, r6.xyz);
    r9.x = sqrt(r2.w);
    r2.w = max(9.99999975e-005, r9.x);
    r6.xyz = r6.xyz / r2.www;
    r2.w = 1 + -r9.x;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.xyz * r0.www + -r6.xyz;
    r0.xyz = r2.www * r0.xyz + r6.xyz;
    r3.w = saturate(dot(r6.xyz, r2.xyz));
    r4.y = 1 + -r3.w;
    r9.y = r2.w * r4.y + r3.w;
  } else {
    r0.xyz = r2.xyz;
    r9.xy = float2(1,1);
  }
  r6.x = t11[0].val[0/4];
  r6.y = t11[0].val[0/4+1];
  r6.z = t11[0].val[0/4+2];
  r6.w = t11[0].val[0/4+3];
  r0.w = 1;
  r6.x = dot(r6.xyzw, r0.xyzw);
  r10.x = t11[1].val[0/4];
  r10.y = t11[1].val[0/4+1];
  r10.z = t11[1].val[0/4+2];
  r10.w = t11[1].val[0/4+3];
  r6.y = dot(r10.xyzw, r0.xyzw);
  r10.x = t11[2].val[0/4];
  r10.y = t11[2].val[0/4+1];
  r10.z = t11[2].val[0/4+2];
  r10.w = t11[2].val[0/4+3];
  r6.z = dot(r10.xyzw, r0.xyzw);
  r10.xyzw = r0.xyzz * r0.yzzx;
  r11.x = t11[3].val[0/4];
  r11.y = t11[3].val[0/4+1];
  r11.z = t11[3].val[0/4+2];
  r11.w = t11[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t11[4].val[0/4];
  r12.y = t11[4].val[0/4+1];
  r12.z = t11[4].val[0/4+2];
  r12.w = t11[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t11[5].val[0/4];
  r12.y = t11[5].val[0/4+1];
  r12.z = t11[5].val[0/4+2];
  r12.w = t11[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t11[6].val[0/4];
  r0.z = t11[6].val[0/4+1];
  r0.w = t11[6].val[0/4+2];
  r6.xyz = r11.xyz + r6.xyz;
  r0.xyz = r0.yzw * r0.xxx + r6.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.yzw;
  r6.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r0.xyz = r6.xyz * r0.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r4.xyz = -r4.xzw + r1.xyz;
    r2.w = mad((int)v3.x, 36, 19);
    r6.x = t10[r2.w].val[0/4];
    r6.y = t10[r2.w].val[0/4+1];
    r6.z = t10[r2.w].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r4.xyz = cmp(r6.xyz < abs(r4.xyz));
    r2.w = (int)r4.y | (int)r4.x;
    r2.w = (int)r4.z | (int)r2.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r2.www ? r1.xyz : r3.xyz;
  }
  r0.xyz = cb0[145].yyy * r7.yzw + r0.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r7.x;
  o2.xyzw = float4(0,0,1,0.505882382);
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}