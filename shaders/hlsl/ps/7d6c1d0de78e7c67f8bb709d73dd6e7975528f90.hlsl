// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = cb1[18].x + cb1[18].y;
  r0.w = cb1[18].z + r0.w;
  r0.w = frac(r0.w);
  r1.zw = v3.xy + r0.ww;
  r1.zw = float2(10,10) * r1.zw;
  r3.xy = cmp(r1.zw >= -r1.zw);
  r1.zw = frac(abs(r1.zw));
  r1.zw = r3.xy ? r1.zw : -r1.zw;
  r0.w = 1 * r1.z;
  r0.w = r1.w * r0.w;
  r0.w = 1 * r0.w;
  r0.w = max(cb3[6].x, r0.w);
  r0.w = min(1, r0.w);
  r0.w = -1 + r0.w;
  r0.w = cb3[6].y * r0.w + 1;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[6].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r1.z = max(cb3[6].x, v2.x);
  r1.z = min(1, r1.z);
  r1.z = -1 + r1.z;
  r1.z = cb3[6].w * r1.z + 1;
  r1.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[6].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.w ? 0 : r1.z;
  r0.w = r1.z * r0.w;
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.y = r1.x / cb3[7].x;
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[7].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[7].z * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r1.z ? 1 : r1.y;
  r1.yzw = cb3[2].xyz * r1.yyy;
  r1.yzw = r1.yzw * r0.www;
  r3.xyz = cb3[7].www * r1.yzw;
  r1.yzw = -r1.yzw * cb3[7].www + cb3[3].xyz;
  r1.yzw = cb3[8].xxx * r1.yzw + r3.xyz;
  r0.w = cb3[8].w * cb2[1].w;
  r2.w = cb3[9].x + r1.x;
  r3.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r3.z = cb2[1].w * 0.617499948 + -r1.x;
  r3.y = saturate(r3.z / r3.y);
  r3.z = -cb2[1].w * 0.649999976 + 8000;
  r3.x = r3.y * r3.z + r3.x;
  r2.w = r2.w / r3.x;
  r1.x = r1.x / cb3[9].x;
  r3.x = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = cmp(r0.w >= 0);
  r0.w = r0.w ? r2.w : r1.x;
  r0.w = r3.x ? r0.w : r1.x;
  r1.x = cmp(9.99999975e-006 < abs(cb3[8].w));
  r2.w = 1 + cb3[8].w;
  r1.x = r1.x ? r2.w : 1.39999998;
  r3.xyz = -cb0[129].xxy + v4.xxy;
  r2.w = r3.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r1.x = -r2.w + r1.x;
  r3.xw = cb0[152].xx + r3.yz;
  r3.xw = (uint2)r3.xw;
  r2.w = (uint)r3.w << 1;
  r2.w = (int)r2.w + (int)r3.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r3.xy = float2(0.015625,0.015625) * r3.yz;
  r3.x = t9.SampleBias(s1_s, r3.xy, cb0[143].y).x;
  r2.w = r3.x + r2.w;
  r2.w = 0.166666672 * r2.w;
  r0.w = r0.w * r1.x + r2.w;
  r0.w = saturate(-0.5 + r0.w);
  r1.x = cmp(0.00100000005 < abs(v2.w));
  r3.xy = floor(v4.xy);
  r2.w = dot(r3.xy, float2(347.834503,3343.28369));
  r2.w = cos(r2.w);
  r2.w = 1000 * r2.w;
  r2.w = frac(r2.w);
  r3.x = cmp(v2.w < 0);
  r3.y = 1 + v2.w;
  r3.y = cmp(r2.w < r3.y);
  r2.w = cmp(v2.w < r2.w);
  r2.w = r3.x ? r3.y : r2.w;
  r2.w = cmp((int)r2.w == 0);
  r1.x = r1.x ? r2.w : 0;
  if (r1.x != 0) discard;
  r0.w = r0.w * v2.y + -0.333299994;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r3.xyz = saturate(cb3[5].xyz);
  r4.xy = saturate(cb3[8].yz);
  o2.z = r4.y * cb0[139].y + cb0[139].x;
  r4.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
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
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r0.w = t8.SampleLevel(s0_s, r4.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  r5.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r3.xyz;
  r5.xyz = r4.xxx * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r3.xyz * r4.xxx + r3.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.xxx ? r7.xyz : r6.xyz;
  r5.xyz = r1.xxx ? float3(0,0,0) : r5.xyz;
  r1.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.x * 2.04040003 + -0.332399994;
  r2.w = r1.x * -4.79510021 + r2.w;
  r1.x = r1.x * 2.75519991 + r2.w;
  r1.x = 1.33200002 + r1.x;
  r1.x = max(1, r1.x);
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
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.yzw = r3.www ? r2.xyz : r1.yzw;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r4.yzw;
  r1.yzw = r2.xyz + r1.yzw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r2.w * r1.x;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.yzw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r4.x;
  o2.yw = float2(0.5,0.505882382);
  o3.xyz = r3.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}