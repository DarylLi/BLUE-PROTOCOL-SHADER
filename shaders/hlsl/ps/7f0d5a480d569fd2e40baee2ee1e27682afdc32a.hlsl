// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[16];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : TEXCOORD1,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
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
  r1.x = v6.z;
  r1.y = 1;
  r1.xy = v6.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v7.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb4[7].xx * v4.xy;
  r2.w = cb4[7].y + cb0[143].y;
  r4.xy = t9.SampleBias(s1_s, r1.zw, r2.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[7].zzz * r5.xyz + r4.xyz;
  r2.w = 1 + r4.z;
  r3.w = cb1[18].x + cb1[18].y;
  r3.w = cb1[18].z + r3.w;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = v3.x + r3.w;
  r3.w = cb2[2].x * r3.w;
  r3.w = cb4[7].w * r3.w;
  r5.xy = v5.xy + -v4.xy;
  r5.xy = cb4[9].xx * r5.xy + v4.xy;
  r5.xy = cb4[9].yy * r5.xy;
  r5.xy = r3.ww * cb4[8].zw + r5.xy;
  r5.xy = t10.SampleBias(s2_s, r5.xy, cb0[143].y).xy;
  r6.xy = r5.xy + r5.xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r3.w = dot(r5.xy, r5.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r6.z = sqrt(r3.w);
  r5.xyz = float3(-1,-1,-1) + r6.xyz;
  r5.xyz = v2.xxx * r5.xyz + float3(0,0,1);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[9].zzz * r6.xyz + r5.xyz;
  r4.w = 1 + r4.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r3.w = dot(r4.xyw, r5.xyz);
  r5.xyz = r5.xyz * r2.www;
  r4.xyz = r4.xyw * r3.www + -r5.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb4[9].www * cb4[2].xyz;
  r5.xyzw = t11.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r0.www + -r5.xyz;
  r5.xyz = cb4[10].zzz * r6.xyz + r5.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[10].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb4[4].xyz * r5.xyz;
  r6.xyz = cb4[10].www * r5.xyz;
  r0.w = saturate(v2.x + v2.x);
  r7.xyz = cb4[6].xyz * r6.xyz + -r6.xyz;
  r6.xyz = r0.www * r7.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.zw = t12.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r0.w = -cb4[11].x * v2.x + r1.z;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[11].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r0.w = saturate(cb4[11].z + r0.w);
  r7.x = saturate(cb4[11].w + r1.w);
  r1.z = dot(r0.xyz, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb4[12].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb4[12].y * r1.z;
  r1.w = saturate(cb4[12].w + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r7.y = saturate(cb4[13].x * r1.z);
  r1.z = cb4[13].z * cb3[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.x + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cb4[13].w + r1.x;
  r2.xy = float2(0.649999976,0.487499982) * cb3[1].ww;
  r1.w = cb3[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r1.w / r2.y);
  r2.y = -cb3[1].w * 0.649999976 + 8000;
  r1.w = r1.w * r2.y + r2.x;
  r1.y = r1.y / r1.w;
  r1.x = r1.x / cb4[13].w;
  r1.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.y = r1.z ? r1.y : r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb4[13].z));
  r1.z = 1 + cb4[13].z;
  r1.y = r1.y ? r1.z : 1.39999998;
  r2.xyz = -cb0[129].xxy + v6.xxy;
  r1.z = r2.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.y = r1.y + -r1.z;
  r1.zw = cb0[152].xx + r2.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r2.xy = float2(0.015625,0.015625) * r2.yz;
  r1.w = t13.SampleBias(s5_s, r2.xy, cb0[143].y).x;
  r1.z = r1.z + r1.w;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r5.w * r1.x;
  r1.yzw = saturate(cb4[15].yyy * r5.xyz);
  r2.x = cmp(0.00100000005 < abs(v3.w));
  r2.yz = floor(v6.xy);
  r2.y = dot(r2.yz, float2(347.834503,3343.28369));
  r2.y = cos(r2.y);
  r2.y = 1000 * r2.y;
  r2.y = frac(r2.y);
  r2.z = cmp(v3.w < 0);
  r2.w = 1 + v3.w;
  r2.w = cmp(r2.y < r2.w);
  r2.y = cmp(v3.w < r2.y);
  r2.y = r2.z ? r2.w : r2.y;
  r2.y = cmp((int)r2.y == 0);
  r2.x = r2.x ? r2.y : 0;
  if (r2.x != 0) discard;
  r1.x = r1.x * v3.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r6.xyz);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb4[13].y);
  r1.xyz = r1.yzw * cb0[136].www + cb0[136].xyz;
  r5.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
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
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r0.w = t8.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r6.xyz = saturate(r1.xyz);
  o4.xyz = sqrt(r6.xyz);
  r1.w = 0.0799999982 * r7.y;
  r6.xyz = -r7.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r6.xyz = r7.xxx * r6.xyz + r1.www;
  r8.xyz = -r2.xyz * r7.xxx + r2.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.www ? r9.xyz : r8.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r1.xyz = r8.xyz + r1.xyz;
  r9.xyz = t1.SampleLevel(s0_s, r5.xyz, 0).zxy;
  r10.xyzw = t2.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t4.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t6.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r9.yyyy;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r9.zzzz;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r9.xxxx;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = t3.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t5.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r5.xyzw = t7.SampleLevel(s0_s, r5.xyz, 0).xyzw;
  r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = r13.xyzw * r9.yyyy;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r9.zzzz;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r5.xyzw = r5.xyzw * r9.xxxx;
  r5.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r5.xyzw;
  r15.xyz = r0.yzy * r0.yzx;
  r16.yw = r0.zz * r0.yx;
  r2.w = r0.x * r0.x + -r15.x;
  r17.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r16.xz = r15.zy * float2(1,3) + float2(0,-1);
  r15.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r16.xyzw;
  r2.w = 0.429042608 * r2.w;
  r16.x = r9.y;
  r16.yzw = r10.yzw;
  r17.x = 0.886227548;
  r3.w = dot(r16.xyzw, r17.xyzw);
  r10.yzw = r13.xyz;
  r4.w = dot(r10.xyzw, r15.xyzw);
  r3.w = r4.w + r3.w;
  r10.x = r13.w * r2.w + r3.w;
  r13.x = r9.z;
  r13.yzw = r11.yzw;
  r3.w = dot(r13.xyzw, r17.xyzw);
  r11.yzw = r14.xyz;
  r4.w = dot(r11.xyzw, r15.xyzw);
  r3.w = r4.w + r3.w;
  r10.y = r14.w * r2.w + r3.w;
  r9.yzw = r12.yzw;
  r3.w = dot(r9.xyzw, r17.xyzw);
  r12.yzw = r5.xyz;
  r4.w = dot(r12.xyzw, r15.xyzw);
  r3.w = r4.w + r3.w;
  r10.z = r5.w * r2.w + r3.w;
  r5.xyz = max(float3(0,0,0), r10.xyz);
  r5.xyz = cb0[157].xyz * r5.xyz;
  r5.xyz = float3(0.318309873,0.318309873,0.318309873) * r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r5.xyz * r1.xyz;
  r5.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r1.xyz = r5.xyz * r1.xyz;
  r5.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r3.www ? r3.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.xyz + r1.xyz;
  r1.xyz = r1.xyz + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r2.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.509803951;
  o2.xy = r7.xy;
  o3.xyz = r2.xyz;
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}