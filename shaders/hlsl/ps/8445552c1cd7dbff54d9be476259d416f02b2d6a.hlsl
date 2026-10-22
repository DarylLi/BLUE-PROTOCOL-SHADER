// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  nointerpolation uint v2 : PRIMITIVE_ID0,
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v3.yyyy;
  r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb1[2].xxx * cb1[1].xyz;
  o2.z = cb0[139].y * 0.800000012 + cb0[139].x;
  r3.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
  r3.xyz = cb0[213].xyz * r3.xyz;
  r4.xyz = (int3)r3.xyz;
  r4.w = 0;
  r4.xyzw = t0.Load(r4.xyzw).xyzw;
  r4.xyzw = (uint4)r4.xyzw;
  r0.w = 1 + cb0[213].w;
  r3.xyz = r3.xyz / r4.www;
  r3.xyz = frac(r3.xyz);
  r3.xyz = cb0[213].www * r3.xyz;
  r3.xyz = r4.xyz * r0.www + r3.xyz;
  r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
  r3.xyz = cb0[214].xyz * r3.xyz;
  r0.w = mad((int)v2.x, 36, 20);
  r4.x = t9[r0.w].val[4/4];
  r4.y = t9[r0.w].val[4/4+1];
  r0.w = cmp(0 < r4.y);
  if (r0.w != 0) {
    r0.w = t8.SampleLevel(s0_s, r3.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r4.yzw = cb0[136].www * float3(1,0.0500000007,0) + cb0[136].xyz;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.yzw;
  r4.yzw = r1.www ? r6.xyz : r4.yzw;
  r5.xyz = r1.www ? float3(0,0,0) : r5.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r6.xyz = t1.SampleLevel(s0_s, r3.xyz, 0).zxy;
  r7.xyzw = t2.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = t4.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = t6.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r7.xyzw = r7.xyzw * r6.yyyy;
  r7.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r7.wxyz;
  r8.xyzw = r8.xyzw * r6.zzzz;
  r8.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r8.wxyz;
  r9.xyzw = r9.xyzw * r6.xxxx;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = t3.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t5.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r3.xyzw = t7.SampleLevel(s0_s, r3.xyz, 0).xyzw;
  r3.xyzw = r3.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r6.yyyy;
  r10.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r10.xyzw;
  r11.xyzw = r11.xyzw * r6.zzzz;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r3.xyzw = r3.xyzw * r6.xxxx;
  r3.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r3.xyzw;
  r12.xyz = r0.yzy * r0.yzx;
  r13.yw = r0.zz * r0.yx;
  r2.w = r0.x * r0.x + -r12.x;
  r14.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r13.xz = r12.zy * float2(1,3) + float2(0,-1);
  r12.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r13.xyzw;
  r2.w = 0.429042608 * r2.w;
  r13.x = r6.y;
  r13.yzw = r7.yzw;
  r14.x = 0.886227548;
  r5.w = dot(r13.xyzw, r14.xyzw);
  r7.yzw = r10.xyz;
  r7.x = dot(r7.xyzw, r12.xyzw);
  r5.w = r7.x + r5.w;
  r7.x = r10.w * r2.w + r5.w;
  r10.x = r6.z;
  r10.yzw = r8.yzw;
  r5.w = dot(r10.xyzw, r14.xyzw);
  r8.yzw = r11.xyz;
  r7.w = dot(r8.xyzw, r12.xyzw);
  r5.w = r7.w + r5.w;
  r7.y = r11.w * r2.w + r5.w;
  r6.yzw = r9.yzw;
  r5.w = dot(r6.xyzw, r14.xyzw);
  r9.yzw = r3.xyz;
  r3.x = dot(r9.xyzw, r12.xyzw);
  r3.x = r5.w + r3.x;
  r7.z = r3.w * r2.w + r3.x;
  r3.xyz = max(float3(0,0,0), r7.xyz);
  r3.xyz = cb0[157].xyz * r3.xyz;
  r3.xyz = float3(0.318309873,0.318309873,0.318309873) * r3.xyz;
  r2.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r3.xyz * r4.yzw;
  r3.xyz = float3(1.00009966,1,1) * r3.xyz;
  r4.yzw = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.yzw;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r5.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r5.x = t9[r5.x].val[0/4];
    r5.z = t9[r5.x].val[0/4+1];
    r5.w = t9[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r1.xyz;
    r6.x = t9[r5.y].val[0/4];
    r6.y = t9[r5.y].val[0/4+1];
    r6.z = t9[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r3.w = (int)r5.y | (int)r5.x;
    r3.w = (int)r5.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r3.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r4.yzw + r3.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r2.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r4.x;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = float3(1,0.0500000007,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}