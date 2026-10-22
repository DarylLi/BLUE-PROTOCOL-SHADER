// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t14 : register(t14);

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

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
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
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r2.xyz = -cb0[70].xyz + r2.xyz;
  r1.zw = t12.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r3.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb2[2].xxx * r4.xyz + r3.xyz;
  r3.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r0.xyz * r0.www;
  r4.xyz = cb2[2].yyy * cb2[1].xyz;
  r5.xyz = t13.SampleBias(s2_s, v2.xy, cb0[143].y).xyz;
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.x = r1.x / cb2[3].x;
  r1.yzw = -cb0[129].xxy + v4.xxy;
  r1.y = r1.y * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb2[3].z + -r1.y;
  r6.xy = cb0[152].xx + r1.zw;
  r6.xy = (uint2)r6.xy;
  r2.w = (uint)r6.y << 1;
  r2.w = (int)r2.w + (int)r6.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r1.zw = float2(0.015625,0.015625) * r1.zw;
  r1.z = t14.SampleBias(s3_s, r1.zw, cb0[143].y).x;
  r1.z = r2.w + r1.z;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.y = cmp(cb1[0].x != 0.000000);
  r1.z = cmp(0.00100000005 < abs(cb1[0].x));
  r1.y = r1.z ? r1.y : 0;
  r1.zw = floor(v4.xy);
  r1.z = dot(r1.zw, float2(347.834503,3343.28369));
  r1.z = cos(r1.z);
  r1.z = 1000 * r1.z;
  r1.z = frac(r1.z);
  r1.w = cmp(cb1[0].x < 0);
  r2.w = 1 + cb1[0].x;
  r2.w = cmp(r1.z < r2.w);
  r1.z = cmp(cb1[0].x < r1.z);
  r1.z = r1.w ? r2.w : r1.z;
  r1.z = cmp((int)r1.z == 0);
  r1.y = r1.y ? r1.z : 0;
  if (r1.y != 0) discard;
  r1.x = -0.333299994 + r1.x;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r5.xyz = saturate(r5.xyz);
  r1.xy = saturate(cb2[2].zw);
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r1.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r1.yzw = min(float3(0.99000001,0.99000001,0.99000001), r1.yzw);
  r1.yzw = cb0[213].xyz * r1.yzw;
  r6.xyz = (int3)r1.yzw;
  r6.w = 0;
  r6.xyzw = t0.Load(r6.xyzw).xyzw;
  r6.xyzw = (uint4)r6.xyzw;
  r2.w = 1 + cb0[213].w;
  r1.yzw = r1.yzw / r6.www;
  r1.yzw = frac(r1.yzw);
  r1.yzw = cb0[213].www * r1.yzw;
  r1.yzw = r6.xyz * r2.www + r1.yzw;
  r1.yzw = float3(0.5,0.5,0.5) + r1.yzw;
  r1.yzw = cb0[214].xyz * r1.yzw;
  r2.w = mad((int)v3.x, 36, 20);
  r6.x = t10[r2.w].val[4/4];
  r6.y = t10[r2.w].val[4/4+1];
  r2.w = cmp(0 < r6.y);
  if (r2.w != 0) {
    r2.w = t9.SampleLevel(s0_s, r1.yzw, 0).x;
  } else {
    r2.w = 1;
  }
  r3.w = cb0[137].w * r1.x;
  r6.yzw = r5.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r3.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.yzw;
  r6.yzw = r3.www ? r8.xyz : r6.yzw;
  r7.xyz = r3.www ? float3(0,0,0) : r7.xyz;
  r3.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.w * 2.04040003 + -0.332399994;
  r4.w = r3.w * -4.79510021 + r4.w;
  r3.w = r3.w * 2.75519991 + r4.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r8.xyz = t1.SampleLevel(s0_s, r1.yzw, 0).zxy;
  r9.xyzw = t2.SampleLevel(s0_s, r1.yzw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t4.SampleLevel(s0_s, r1.yzw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t6.SampleLevel(s0_s, r1.yzw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = r9.xyzw * r8.yyyy;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r8.zzzz;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r8.xxxx;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = t3.SampleLevel(s0_s, r1.yzw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t5.SampleLevel(s0_s, r1.yzw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t7.SampleLevel(s0_s, r1.yzw, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = r12.xyzw * r8.yyyy;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r8.zzzz;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r8.xxxx;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyz = r3.yzy * r3.yzx;
  r16.yw = r3.zz * r3.yx;
  r4.w = r3.x * r3.x + -r15.x;
  r17.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r3.yzx;
  r16.xz = r15.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r16.xyzw;
  r4.w = 0.429042608 * r4.w;
  r16.x = r8.y;
  r16.yzw = r9.yzw;
  r17.x = 0.886227548;
  r5.w = dot(r16.xyzw, r17.xyzw);
  r9.yzw = r12.xyz;
  r7.w = dot(r9.xyzw, r15.xyzw);
  r5.w = r7.w + r5.w;
  r9.x = r12.w * r4.w + r5.w;
  r12.x = r8.z;
  r12.yzw = r10.yzw;
  r5.w = dot(r12.xyzw, r17.xyzw);
  r10.yzw = r13.xyz;
  r7.w = dot(r10.xyzw, r15.xyzw);
  r5.w = r7.w + r5.w;
  r9.y = r13.w * r4.w + r5.w;
  r8.yzw = r11.yzw;
  r5.w = dot(r8.xyzw, r17.xyzw);
  r11.yzw = r14.xyz;
  r7.w = dot(r11.xyzw, r15.xyzw);
  r5.w = r7.w + r5.w;
  r9.z = r14.w * r4.w + r5.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r1.yzw = t8.SampleLevel(s0_s, r1.yzw, 0).xyz;
    r1.yzw = r1.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r4.w = dot(r1.yzw, r1.yzw);
    r9.x = sqrt(r4.w);
    r4.w = max(9.99999975e-005, r9.x);
    r1.yzw = r1.yzw / r4.www;
    r4.w = 1 + -r9.x;
    r4.w = -r4.w * r4.w + 1;
    r0.xyz = r0.xyz * r0.www + -r1.yzw;
    r0.xyz = r4.www * r0.xyz + r1.yzw;
    r1.y = saturate(dot(r1.yzw, r3.xyz));
    r1.z = 1 + -r1.y;
    r9.y = r4.w * r1.z + r1.y;
  } else {
    r0.xyz = r3.xyz;
    r9.xy = float2(1,1);
  }
  r10.x = t11[0].val[0/4];
  r10.y = t11[0].val[0/4+1];
  r10.z = t11[0].val[0/4+2];
  r10.w = t11[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t11[1].val[0/4];
  r11.y = t11[1].val[0/4+1];
  r11.z = t11[1].val[0/4+2];
  r11.w = t11[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t11[2].val[0/4];
  r11.y = t11[2].val[0/4+1];
  r11.z = t11[2].val[0/4+2];
  r11.w = t11[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t11[3].val[0/4];
  r12.y = t11[3].val[0/4+1];
  r12.z = t11[3].val[0/4+2];
  r12.w = t11[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t11[4].val[0/4];
  r13.y = t11[4].val[0/4+1];
  r13.z = t11[4].val[0/4+2];
  r13.w = t11[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t11[5].val[0/4];
  r13.y = t11[5].val[0/4+1];
  r13.z = t11[5].val[0/4+2];
  r13.w = t11[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t11[6].val[0/4];
  r0.z = t11[6].val[0/4+1];
  r0.w = t11[6].val[0/4+2];
  r1.yzw = r12.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r1.yzw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r6.yzw;
  r1.yzw = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.yzw = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.yzw;
  r1.yzw = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.yzw;
  r1.yzw = float3(1.33200002,1.33200002,1.33200002) + r1.yzw;
  r1.yzw = max(float3(1,1,1), r1.yzw);
  r0.xyz = r1.yzw * r0.xyz;
  r1.yzw = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.yzw;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.yz = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t10[r6.y].val[0/4];
    r7.y = t10[r6.y].val[0/4+1];
    r7.z = t10[r6.y].val[0/4+2];
    r7.xyz = -r7.xyz + r2.xyz;
    r6.y = t10[r6.z].val[0/4];
    r6.z = t10[r6.z].val[0/4+1];
    r6.w = t10[r6.z].val[0/4+2];
    r6.yzw = float3(1,1,1) + r6.yzw;
    r6.yzw = cmp(r6.yzw < abs(r7.xyz));
    r4.w = (int)r6.z | (int)r6.y;
    r4.w = (int)r6.w | (int)r4.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r4.www ? r2.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r1.yzw + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r1.yzw = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.yzw = frac(r1.yzw);
  r1.yzw = r1.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.yzw = r1.yzw * r1.yzz;
  r1.y = dot(r1.yzw, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r6.x;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.x;
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}