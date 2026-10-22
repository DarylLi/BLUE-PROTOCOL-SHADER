// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r2.xyz = mad((int3)v2.xxx, int3(36,36,36), int3(4,18,20));
  r0.w = t10[r2.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.w = v4.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r3.xyz = r0.xyz * r0.www;
  r4.xyz = cb1[4].xyz + -cb1[3].xyz;
  r4.xyz = cb1[5].yyy * r4.xyz + cb1[3].xyz;
  r1.w = cb1[5].z * cb0[142].z;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r2.x = max(0, -r0.w);
  r1.w = r2.x * abs(r1.w);
  r2.x = t10[r2.y].val[0/4];
  r2.y = t10[r2.y].val[0/4+1];
  r2.w = t10[r2.y].val[0/4+2];
  r2.xyw = -cb0[67].xyz + r2.xyw;
  r2.x = dot(r2.xyw, r2.xyw);
  r2.x = sqrt(r2.x);
  r2.x = r2.x / cb1[5].w;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb1[6].x * r2.x;
  r2.x = exp2(r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = r2.y ? 1 : r2.x;
  r2.yw = -cb0[129].xy + v3.xy;
  r5.xy = cb0[152].xx + r2.yw;
  r5.xy = (uint2)r5.xy;
  r3.w = (uint)r5.y << 1;
  r3.w = (int)r3.w + (int)r5.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r2.yw = float2(0.015625,0.015625) * r2.yw;
  r2.y = t12.SampleBias(s1_s, r2.yw, cb0[143].y).x;
  r2.y = r3.w + r2.y;
  r2.y = 0.166666672 * r2.y;
  r1.w = r1.w * r2.x + r2.y;
  r1.w = -0.833299994 + r1.w;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r2.xyw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r2.xyw = max(float3(0,0,0), r2.xyw);
  r2.xyw = min(float3(0.99000001,0.99000001,0.99000001), r2.xyw);
  r2.xyw = cb0[213].xyz * r2.xyw;
  r5.xyz = (int3)r2.xyw;
  r5.w = 0;
  r5.xyzw = t0.Load(r5.xyzw).xyzw;
  r5.xyzw = (uint4)r5.xyzw;
  r1.w = 1 + cb0[213].w;
  r2.xyw = r2.xyw / r5.www;
  r2.xyw = frac(r2.xyw);
  r2.xyw = cb0[213].www * r2.xyw;
  r2.xyw = r5.xyz * r1.www + r2.xyw;
  r2.xyw = float3(0.5,0.5,0.5) + r2.xyw;
  r2.xyw = cb0[214].xyz * r2.xyw;
  r5.x = t10[r2.z].val[4/4];
  r5.y = t10[r2.z].val[4/4+1];
  r1.w = cmp(0 < r5.y);
  if (r1.w != 0) {
    r1.w = t9.SampleLevel(s0_s, r2.xyw, 0).x;
  } else {
    r1.w = 1;
  }
  r5.yzw = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r6.xyz = t1.SampleLevel(s0_s, r2.xyw, 0).zxy;
  r7.xyzw = t2.SampleLevel(s0_s, r2.xyw, 0).xyzw;
  r7.xyzw = r7.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = t4.SampleLevel(s0_s, r2.xyw, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = t6.SampleLevel(s0_s, r2.xyw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r7.xyzw = r7.xyzw * r6.yyyy;
  r7.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r7.wxyz;
  r8.xyzw = r8.xyzw * r6.zzzz;
  r8.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r8.wxyz;
  r9.xyzw = r9.xyzw * r6.xxxx;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = t3.SampleLevel(s0_s, r2.xyw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t5.SampleLevel(s0_s, r2.xyw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t7.SampleLevel(s0_s, r2.xyw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r6.yyyy;
  r10.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r10.xyzw;
  r11.xyzw = r11.xyzw * r6.zzzz;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r12.xyzw = r12.xyzw * r6.xxxx;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyz = r3.yzy * r3.yzx;
  r14.yw = r3.zz * r3.yx;
  r2.z = r3.x * r3.x + -r13.x;
  r15.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r3.yzx;
  r14.xz = r13.zy * float2(1,3) + float2(0,-1);
  r13.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r14.xyzw;
  r2.z = 0.429042608 * r2.z;
  r14.x = r6.y;
  r14.yzw = r7.yzw;
  r15.x = 0.886227548;
  r3.w = dot(r14.xyzw, r15.xyzw);
  r7.yzw = r10.xyz;
  r4.w = dot(r7.xyzw, r13.xyzw);
  r3.w = r4.w + r3.w;
  r7.x = r10.w * r2.z + r3.w;
  r10.x = r6.z;
  r10.yzw = r8.yzw;
  r3.w = dot(r10.xyzw, r15.xyzw);
  r8.yzw = r11.xyz;
  r4.w = dot(r8.xyzw, r13.xyzw);
  r3.w = r4.w + r3.w;
  r7.y = r11.w * r2.z + r3.w;
  r6.yzw = r9.yzw;
  r3.w = dot(r6.xyzw, r15.xyzw);
  r9.yzw = r12.xyz;
  r4.w = dot(r9.xyzw, r13.xyzw);
  r3.w = r4.w + r3.w;
  r7.z = r12.w * r2.z + r3.w;
  r6.xyz = max(float3(0,0,0), r7.xyz);
  r6.xyz = cb0[157].xyz * r6.xyz;
  r2.z = cmp(cb0[186].y != 0.000000);
  if (r2.z != 0) {
    r2.xyz = t8.SampleLevel(s0_s, r2.xyw, 0).xyz;
    r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r2.xyz, r2.xyz);
    r7.x = sqrt(r2.w);
    r2.w = max(9.99999975e-005, r7.x);
    r2.xyz = r2.xyz / r2.www;
    r2.w = 1 + -r7.x;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.xyz * r0.www + -r2.xyz;
    r0.xyz = r2.www * r0.xyz + r2.xyz;
    r2.x = saturate(dot(r2.xyz, r3.xyz));
    r2.y = 1 + -r2.x;
    r7.y = r2.w * r2.y + r2.x;
  } else {
    r0.xyz = r3.xyz;
    r7.xy = float2(1,1);
  }
  r2.x = t11[0].val[0/4];
  r2.y = t11[0].val[0/4+1];
  r2.z = t11[0].val[0/4+2];
  r2.w = t11[0].val[0/4+3];
  r0.w = 1;
  r2.x = dot(r2.xyzw, r0.xyzw);
  r8.x = t11[1].val[0/4];
  r8.y = t11[1].val[0/4+1];
  r8.z = t11[1].val[0/4+2];
  r8.w = t11[1].val[0/4+3];
  r2.y = dot(r8.xyzw, r0.xyzw);
  r8.x = t11[2].val[0/4];
  r8.y = t11[2].val[0/4+1];
  r8.z = t11[2].val[0/4+2];
  r8.w = t11[2].val[0/4+3];
  r2.z = dot(r8.xyzw, r0.xyzw);
  r8.xyzw = r0.xyzz * r0.yzzx;
  r9.x = t11[3].val[0/4];
  r9.y = t11[3].val[0/4+1];
  r9.z = t11[3].val[0/4+2];
  r9.w = t11[3].val[0/4+3];
  r9.x = dot(r9.xyzw, r8.xyzw);
  r10.x = t11[4].val[0/4];
  r10.y = t11[4].val[0/4+1];
  r10.z = t11[4].val[0/4+2];
  r10.w = t11[4].val[0/4+3];
  r9.y = dot(r10.xyzw, r8.xyzw);
  r10.x = t11[5].val[0/4];
  r10.y = t11[5].val[0/4+1];
  r10.z = t11[5].val[0/4+2];
  r10.w = t11[5].val[0/4+3];
  r9.z = dot(r10.xyzw, r8.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t11[6].val[0/4];
  r0.z = t11[6].val[0/4+1];
  r0.w = t11[6].val[0/4+2];
  r2.xyz = r9.xyz + r2.xyz;
  r0.xyz = r0.yzw * r0.xxx + r2.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r7.x * r7.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r6.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r5.yzw;
  r2.xyz = max(float3(0,0,0), r4.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r4.xy = mad((int2)v2.xx, int2(36,36), int2(5,19));
    r4.x = t10[r4.x].val[0/4];
    r4.z = t10[r4.x].val[0/4+1];
    r4.w = t10[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r1.xyz;
    r6.x = t10[r4.y].val[0/4];
    r6.y = t10[r4.y].val[0/4+1];
    r6.z = t10[r4.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r4.xyz = cmp(r6.xyz < abs(r4.xzw));
    r2.w = (int)r4.y | (int)r4.x;
    r2.w = (int)r4.z | (int)r2.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r2.www ? r1.xyz : r2.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.yzw + r0.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r5.x;
  o2.xyzw = float4(0,0,1,0.505882382);
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}