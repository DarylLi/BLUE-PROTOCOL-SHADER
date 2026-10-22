// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t11 : register(t11);

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
  float4 cb2[17];
}

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xy = mad((int2)v3.xx, int2(36,36), int2(18,20));
  r3.x = t9[r3.x].val[0/4];
  r3.z = t9[r3.x].val[0/4+1];
  r3.w = t9[r3.x].val[0/4+2];
  r0.w = r3.x + r3.z;
  r0.w = r0.w + r3.w;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb1[2].x * r0.w;
  r1.w = cb2[9].x * r0.w;
  r4.x = cb2[9].w * r1.w;
  r4.y = cb2[10].x * r1.w;
  r3.xz = cb2[10].yz * v2.xy + r4.xy;
  r3.xz = t10.SampleBias(s1_s, r3.xz, cb0[143].y).xy;
  r4.xy = r3.xz * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r3.xzw = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[10].www * r3.xzw + r4.xyz;
  r1.w = 1 + r4.z;
  r0.w = cb2[11].x * r0.w;
  r5.x = cb2[11].w * r0.w;
  r5.y = cb2[12].x * r0.w;
  r3.xz = cb2[12].yz * v2.xy + r5.xy;
  r3.xz = t10.SampleBias(s1_s, r3.xz, cb0[143].y).xy;
  r5.xy = r3.xz * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r3.xzw = float3(0,0,1) + -r5.xyz;
  r3.xzw = cb2[12].www * r3.xzw + r5.xyz;
  r4.w = 1 + r4.z;
  r3.xzw = float3(-1,-1,1) * r3.xzw;
  r0.w = dot(r4.xyw, r3.xzw);
  r3.xzw = r3.xzw * r1.www;
  r3.xzw = r4.xyw * r0.www + -r3.xzw;
  r3.xzw = r3.xzw * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r3.xzw, r3.xzw);
  r0.w = rsqrt(r0.w);
  r3.xzw = r3.xzw * r0.www;
  r0.xyz = r3.zzz * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.www * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r0.xyz, r1.xyz);
  r3.xzw = r0.xyz * r0.www;
  r1.xyz = r3.xzw * float3(2,2,2) + -r1.xyz;
  r1.xyz = t11.Sample(s2_s, r1.xyz).xyz;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xzw = r1.www + -r1.xyz;
  r1.xyz = cb2[13].xxx * r3.xzw + r1.xyz;
  r1.xyz = cb2[13].yyy * r1.xyz;
  r3.xzw = cmp(float3(0,0,0) >= r1.xyz);
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb2[13].zzz * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r3.xzw ? float3(0,0,0) : r1.xyz;
  r1.xyz = float3(-1,-1,-1) + r1.xyz;
  r1.xyz = cb2[13].www * r1.xyz + float3(1,1,1);
  r3.xzw = cb2[4].xyz * r1.xyz;
  r1.w = -cb2[15].x + r0.w;
  r1.w = cmp(9.99999975e-006 < abs(r1.w));
  r2.w = cmp(r0.w >= cb2[15].x);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r1.w ? r2.w : 1;
  r1.xyz = -r1.xyz * cb2[4].xyz + cb2[7].xyz;
  r1.xyz = r1.www * r1.xyz + r3.xzw;
  r2.w = -cb2[16].y + r0.w;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r0.w = cmp(r0.w >= cb2[16].y);
  r0.w = r0.w ? 1.000000 : 0;
  r0.w = r2.w ? r0.w : 1;
  r3.xzw = cb2[15].yyy * r1.xyz + -r1.xyz;
  r1.xyz = r0.www * r3.xzw + r1.xyz;
  r3.xzw = cb2[8].xyz + -r1.xyz;
  r1.xyz = cb2[16].zzz * r3.xzw + r1.xyz;
  r0.w = 1 + -r1.w;
  r3.xzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r3.xzw = max(float3(0,0,0), r3.xzw);
  r3.xzw = min(float3(0.99000001,0.99000001,0.99000001), r3.xzw);
  r3.xzw = cb0[213].xyz * r3.xzw;
  r4.xyz = (int3)r3.xzw;
  r4.w = 0;
  r4.xyzw = t0.Load(r4.xyzw).xyzw;
  r4.xyzw = (uint4)r4.xyzw;
  r1.w = 1 + cb0[213].w;
  r3.xzw = r3.xzw / r4.www;
  r3.xzw = frac(r3.xzw);
  r3.xzw = cb0[213].www * r3.xzw;
  r3.xzw = r4.xyz * r1.www + r3.xzw;
  r3.xzw = float3(0.5,0.5,0.5) + r3.xzw;
  r3.xzw = cb0[214].xyz * r3.xzw;
  r4.x = t9[r3.y].val[4/4];
  r4.y = t9[r3.y].val[4/4+1];
  r1.w = cmp(0 < r4.y);
  if (r1.w != 0) {
    r1.w = t8.SampleLevel(s0_s, r3.xzw, 0).x;
  } else {
    r1.w = 1;
  }
  r2.w = r0.w * -0.0203999989 + 0.0203999989;
  r4.yzw = r2.www * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r5.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r5.xyz = r2.www ? r5.xyz : cb0[136].xyz;
  r4.yzw = r2.www ? float3(0,0,0) : r4.yzw;
  r2.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.y = r2.w * 2.04040003 + -0.332399994;
  r3.y = r2.w * -4.79510021 + r3.y;
  r2.w = r2.w * 2.75519991 + r3.y;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r6.xyz = t1.SampleLevel(s0_s, r3.xzw, 0).zxy;
  r7.xyzw = t2.SampleLevel(s0_s, r3.xzw, 0).xyzw;
  r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = t4.SampleLevel(s0_s, r3.xzw, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = t6.SampleLevel(s0_s, r3.xzw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r7.xyzw = r7.xyzw * r6.yyyy;
  r7.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r7.wxyz;
  r8.xyzw = r8.xyzw * r6.zzzz;
  r8.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r8.wxyz;
  r9.xyzw = r9.xyzw * r6.xxxx;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = t3.SampleLevel(s0_s, r3.xzw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t5.SampleLevel(s0_s, r3.xzw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r3.xyzw = t7.SampleLevel(s0_s, r3.xzw, 0).xyzw;
  r3.xyzw = r3.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r6.yyyy;
  r10.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r10.xyzw;
  r11.xyzw = r11.xyzw * r6.zzzz;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r3.xyzw = r3.xyzw * r6.xxxx;
  r3.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r3.xyzw;
  r12.xyz = r0.yzy * r0.yzx;
  r13.yw = r0.zz * r0.yx;
  r5.w = r0.x * r0.x + -r12.x;
  r14.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r13.xz = r12.zy * float2(1,3) + float2(0,-1);
  r12.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r13.xyzw;
  r5.w = 0.429042608 * r5.w;
  r13.x = r6.y;
  r13.yzw = r7.yzw;
  r14.x = 0.886227548;
  r13.x = dot(r13.xyzw, r14.xyzw);
  r7.yzw = r10.xyz;
  r7.x = dot(r7.xyzw, r12.xyzw);
  r7.x = r13.x + r7.x;
  r7.x = r10.w * r5.w + r7.x;
  r10.x = r6.z;
  r10.yzw = r8.yzw;
  r7.w = dot(r10.xyzw, r14.xyzw);
  r8.yzw = r11.xyz;
  r8.x = dot(r8.xyzw, r12.xyzw);
  r7.w = r8.x + r7.w;
  r7.y = r11.w * r5.w + r7.w;
  r6.yzw = r9.yzw;
  r6.x = dot(r6.xyzw, r14.xyzw);
  r9.yzw = r3.xyz;
  r3.x = dot(r9.xyzw, r12.xyzw);
  r3.x = r6.x + r3.x;
  r7.z = r3.w * r5.w + r3.x;
  r3.xyz = max(float3(0,0,0), r7.xyz);
  r3.xyz = cb0[157].xyz * r3.xyz;
  r3.xyz = float3(0.318309873,0.318309873,0.318309873) * r3.xyz;
  r3.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r3.xyz * r5.xyz;
  r4.yzw = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r5.x = cmp(0 < cb0[140].x);
  if (r5.x != 0) {
    r5.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t9[r5.x].val[0/4];
    r5.z = t9[r5.x].val[0/4+1];
    r5.w = t9[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r6.x = t9[r5.y].val[0/4];
    r6.y = t9[r5.y].val[0/4+1];
    r6.z = t9[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r5.x = (int)r5.y | (int)r5.x;
    r5.x = (int)r5.z | (int)r5.x;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r5.xxx ? r2.xyz : r1.xyz;
  }
  r2.xyz = cb0[145].yyy * r4.yzw + r3.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r3.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r4.x;
  o2.yw = float2(0.254999995,0.505882382);
  o2.z = cb0[139].x;
  o2.x = r0.w;
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}