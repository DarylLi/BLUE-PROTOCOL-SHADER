// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  float4 v3 : TEXCOORD1,
  nointerpolation uint v4 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
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
  r2.xyz = t10.SampleBias(s1_s, v2.xy, cb0[143].y).xyz;
  r2.xyz = cb1[2].xyz * r2.xyz;
  r3.xyz = t11.SampleBias(s2_s, v2.xy, cb0[143].y).xyz;
  r3.xyz = cb1[4].xyz * r3.xyz;
  r0.w = cb0[142].z / cb1[6].z;
  r1.w = cmp(r0.w >= -r0.w);
  r2.w = frac(abs(r0.w));
  r1.w = r1.w ? r2.w : -r2.w;
  r2.w = cb1[6].z + -cb1[6].y;
  r1.w = r1.w * cb1[6].z + -cb1[6].y;
  r2.w = 1 / r2.w;
  r1.w = saturate(r2.w * r1.w);
  r2.w = r1.w * -2 + 3;
  r1.w = r1.w * r1.w;
  r1.w = r2.w * r1.w;
  r2.w = r1.w * 0.25 + 0.75;
  r1.w = cmp(3.9999999e-005 < r1.w);
  r2.w = 6.28318548 * r2.w;
  r2.w = cos(r2.w);
  r1.w = r1.w ? r2.w : -4.37113883e-008;
  r2.w = max(0, r1.w);
  r4.y = v3.y + r2.w;
  r4.x = v3.x;
  r4.xy = t12.SampleLevel(s3_s, r4.xy, -1).xy;
  r0.w = 0.5 * r0.w;
  r2.w = cmp(r0.w >= -r0.w);
  r0.w = frac(abs(r0.w));
  r0.w = r2.w ? r0.w : -r0.w;
  r0.w = r0.w + r0.w;
  r0.w = floor(r0.w);
  r2.w = (uint)r0.w;
  switch (r2.w) {
    case 0 :    r5.xyz = r3.xyz;
    r3.xyz = r2.xyz;
    break;
    case 1 :    r5.xyz = r2.xyz;
    break;
    default :
    break;
  }
  r0.w = 1 + r0.w;
  r0.w = cmp(r0.w == 2.000000);
  r2.xyz = r0.www ? r2.xyz : r5.xyz;
  r2.xyz = r2.xyz + -r3.xyz;
  r2.xyz = r4.yyy * r2.xyz + r3.xyz;
  r0.w = 3.14159274 * r1.w;
  r0.w = sin(r0.w);
  r0.w = r0.w * 0.0500000045 + 0.100000001;
  r3.xyz = r2.xyz * r0.www + -r2.xyz;
  r2.xyz = r4.xxx * r3.xyz + r2.xyz;
  r3.xyz = cb1[7].yyy * r2.xyz;
  r2.xyz = -r2.xyz * cb1[7].yyy + cb1[5].xyz;
  r2.xyz = cb1[7].zzz * r2.xyz + r3.xyz;
  r3.xyz = t13.SampleBias(s4_s, v2.xy, cb0[143].y).xyz;
  r4.xy = t14.SampleBias(s5_s, v2.xy, cb0[143].y).yx;
  r0.w = saturate(cb1[7].w + r4.y);
  r3.xyz = saturate(r3.xyz);
  r4.x = saturate(r4.x);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r4.yzw = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.yzw = max(float3(0,0,0), r4.yzw);
  r4.yzw = min(float3(0.99000001,0.99000001,0.99000001), r4.yzw);
  r4.yzw = cb0[213].xyz * r4.yzw;
  r5.xyz = (int3)r4.yzw;
  r5.w = 0;
  r5.xyzw = t0.Load(r5.xyzw).xyzw;
  r5.xyzw = (uint4)r5.xyzw;
  r0.w = 1 + cb0[213].w;
  r4.yzw = r4.yzw / r5.www;
  r4.yzw = frac(r4.yzw);
  r4.yzw = cb0[213].www * r4.yzw;
  r4.yzw = r5.xyz * r0.www + r4.yzw;
  r4.yzw = float3(0.5,0.5,0.5) + r4.yzw;
  r4.yzw = cb0[214].xyz * r4.yzw;
  r0.w = mad((int)v4.x, 36, 20);
  r5.x = t9[r0.w].val[4/4];
  r5.y = t9[r0.w].val[4/4+1];
  r0.w = cmp(0 < r5.y);
  if (r0.w != 0) {
    r0.w = t8.SampleLevel(s0_s, r4.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  r5.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r3.xyz;
  r5.yzw = r4.xxx * r5.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r3.xyz * r4.xxx + r3.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.yzw = r5.yzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r7.xyz : r6.xyz;
  r5.yzw = r1.www ? float3(0,0,0) : r5.yzw;
  r1.w = dot(r5.yzw, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r7.xyz = t1.SampleLevel(s0_s, r4.yzw, 0).zxy;
  r8.xyzw = t2.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r8.xyzw = r8.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r9.xyzw = t4.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r9.xyzw = r9.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = t6.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r8.xyzw = r8.xyzw * r7.yyyy;
  r8.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r8.wxyz;
  r9.xyzw = r9.xyzw * r7.zzzz;
  r9.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r9.wxyz;
  r10.xyzw = r10.xyzw * r7.xxxx;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = t3.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t5.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = t7.SampleLevel(s0_s, r4.yzw, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = r11.xyzw * r7.yyyy;
  r11.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r11.xyzw;
  r12.xyzw = r12.xyzw * r7.zzzz;
  r12.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r12.xyzw;
  r13.xyzw = r13.xyzw * r7.xxxx;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r4.yzw = r0.yzy * r0.yzx;
  r14.yw = r0.zz * r0.yx;
  r2.w = r0.x * r0.x + -r4.y;
  r15.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r14.xz = r4.wz * float2(1,3) + float2(0,-1);
  r14.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r14.xyzw;
  r2.w = 0.429042608 * r2.w;
  r16.x = r7.y;
  r16.yzw = r8.yzw;
  r15.x = 0.886227548;
  r3.w = dot(r16.xyzw, r15.xyzw);
  r8.yzw = r11.xyz;
  r4.y = dot(r8.xyzw, r14.xyzw);
  r3.w = r4.y + r3.w;
  r8.x = r11.w * r2.w + r3.w;
  r11.x = r7.z;
  r11.yzw = r9.yzw;
  r3.w = dot(r11.xyzw, r15.xyzw);
  r9.yzw = r12.xyz;
  r4.y = dot(r9.xyzw, r14.xyzw);
  r3.w = r4.y + r3.w;
  r8.y = r12.w * r2.w + r3.w;
  r7.yzw = r10.yzw;
  r3.w = dot(r7.xyzw, r15.xyzw);
  r10.yzw = r13.xyz;
  r4.y = dot(r10.xyzw, r14.xyzw);
  r3.w = r4.y + r3.w;
  r8.z = r13.w * r2.w + r3.w;
  r4.yzw = max(float3(0,0,0), r8.xyz);
  r4.yzw = cb0[157].xyz * r4.yzw;
  r4.yzw = float3(0.318309873,0.318309873,0.318309873) * r4.yzw;
  r2.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r4.yzw = r4.yzw * r6.xyz;
  r7.xyz = r3.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r3.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r3.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r4.yzw = r7.xyz * r4.yzw;
  r5.yzw = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t9[r6.x].val[0/4];
    r6.z = t9[r6.x].val[0/4+1];
    r6.w = t9[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r1.xyz;
    r7.x = t9[r6.y].val[0/4];
    r7.y = t9[r6.y].val[0/4+1];
    r7.z = t9[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r3.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.yzw + r4.yzw;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
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
  o1.w = r5.x;
  o2.yw = float2(0.5,0.505882382);
  o2.x = r4.x;
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}