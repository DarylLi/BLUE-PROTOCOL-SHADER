// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[14];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[216];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb5[8].xx * v3.xy;
  r0.w = cb5[8].y + cb0[143].y;
  r4.xy = t5.SampleBias(s2_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[8].zzz * r5.xyz + r4.xyz;
  r5.xy = cb5[8].ww * r1.zw;
  r5.zw = t6.SampleBias(s3_s, r5.xy, r0.w).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb5[9].xxx * r7.xyz + r6.xyz;
  r6.xyz = cb5[9].yyy * r4.xyz + r6.xyz;
  r0.w = dot(v2.yyy, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz + -r4.xyz;
  r4.xyz = r0.www * r6.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r2.www * r0.xyz;
  r0.x = dot(-cb4[5].xyz, -cb4[5].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb4[5].xyz / r0.xxx;
  r0.x = dot(r6.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r0.y = dot(r7.xyz, r7.xyz);
  r0.y = sqrt(r0.y);
  r7.xyz = r7.xyz / r0.yyy;
  r0.y = saturate(dot(-r7.xyz, r6.xyz));
  r3.w = 1 + -cb3[1].x;
  r0.y = saturate(r3.w + r0.y);
  r0.x = r0.x * r0.y;
  r0.y = dot(r4.xyz, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r2.x = cb3[1].y * r0.y;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb3[0].w;
  r2.x = r2.x * r2.y + cb3[0].w;
  r2.y = cmp(r2.x >= cb3[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.z * r2.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb3[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.z = -r0.z * r2.w + 1;
  r2.y = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb3[1].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.z = r2.y ? 0 : r0.z;
  r0.z = r2.x * r0.z;
  r0.z = cb3[0].z * r0.z;
  r0.x = r0.x * r0.z;
  r2.xyz = cb4[4].xyz * r0.xxx;
  r0.x = dot(-cb4[8].xyz, -cb4[8].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb4[8].xyz / r0.xxx;
  r0.x = dot(r6.xyz, r4.xyz);
  r0.x = 1 + r0.x;
  r2.w = saturate(dot(-r7.xyz, r6.xyz));
  r2.w = saturate(r2.w + r3.w);
  r0.x = r2.w * r0.x;
  r0.x = r0.x * r0.z;
  r6.xyz = cb4[9].xyz * r0.xxx;
  r6.xyz = cb4[1].yyy * r6.xyz;
  r2.xyz = r2.xyz * cb4[1].xxx + r6.xyz;
  r2.xyz = cb3[2].xyz * r2.xyz;
  r6.xyz = cb5[2].xyz * r2.xyz;
  r2.xyz = -r2.xyz * cb5[2].xyz + cb5[3].xyz;
  r2.xyz = cb5[9].zzz * r2.xyz + r6.xyz;
  r6.xyzw = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xyzw;
  r0.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.xxx + -r6.xyz;
  r6.xyz = cb5[10].yyy * r7.xyz + r6.xyz;
  r0.x = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[10].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb5[5].xyz * r6.xyz;
  r7.xyz = t8.SampleBias(s5_s, r5.xy, cb0[143].y).xyz;
  r0.x = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r0.xxx + -r7.xyz;
  r7.xyz = cb5[11].xxx * r8.xyz + r7.xyz;
  r0.x = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb5[10].w, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r0.xxx * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb5[7].xyz + -r6.xyz;
  r6.xyz = r0.www * r7.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r0.xz = t9.SampleBias(s6_s, r1.zw, cb0[143].y).xy;
  r7.yz = cb5[11].yz + r0.xz;
  r7.x = saturate(r7.y);
  r0.xz = t10.SampleBias(s7_s, r5.xy, cb0[143].y).xy;
  r5.y = saturate(cb5[11].w + r0.x);
  r5.x = cb5[12].x + r0.z;
  r0.xz = r5.xy + -r7.zx;
  r0.xz = saturate(r0.ww * r0.xz + r7.zx);
  r0.y = cb5[12].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb5[12].z * r0.y;
  r0.w = saturate(cb5[13].x + v1.z);
  r0.y = r0.w * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb5[13].y * r0.y);
  r0.w = cb5[13].z * cb3[1].w;
  r1.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r1.x = r1.z ? r1.y : r1.x;
  r1.y = cb5[13].w + r1.x;
  r1.zw = float2(0.649999976,0.487499982) * cb3[1].ww;
  r2.w = cb3[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r2.w / r1.w);
  r2.w = -cb3[1].w * 0.649999976 + 8000;
  r1.z = r1.w * r2.w + r1.z;
  r1.y = r1.y / r1.z;
  r1.x = r1.x / cb5[13].w;
  r1.z = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = cmp(r0.w >= 0);
  r0.w = r0.w ? r1.y : r1.x;
  r0.w = r1.z ? r0.w : r1.x;
  r1.x = cmp(9.99999975e-006 < abs(cb5[13].z));
  r1.y = 1 + cb5[13].z;
  r1.x = r1.x ? r1.y : 1.39999998;
  r1.yzw = -cb0[129].xxy + v4.xxy;
  r1.y = r1.y * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.x = r1.x + -r1.y;
  r5.xy = cb0[152].xx + r1.zw;
  r5.xy = (uint2)r5.xy;
  r1.y = (uint)r5.y << 1;
  r1.y = (int)r1.y + (int)r5.x;
  r1.y = (uint)r1.y % 5;
  r1.y = (uint)r1.y;
  r1.zw = float2(0.015625,0.015625) * r1.zw;
  r1.z = t11.SampleBias(s8_s, r1.zw, cb0[143].y).x;
  r1.y = r1.y + r1.z;
  r1.y = 0.166666672 * r1.y;
  r0.w = r0.w * r1.x + r1.y;
  r0.w = saturate(-0.5 + r0.w);
  r0.w = r6.w * r0.w + -0.333299994;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r1.xyz = min(float3(1,1,1), r6.xyz);
  o2.z = r0.z * cb0[139].y + cb0[139].x;
  r0.z = cmp(0 < cb0[215].x);
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
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
    r0.w = t1.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r1.w = cmp(0 < cb1[18].w);
    r1.w = r0.z ? r1.w : 0;
    r0.w = r1.w ? cb2[5].x : 1;
  }
  r1.w = 0.0799999982 * r0.y;
  r5.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r5.xyz = r0.xxx * r5.xyz + r1.www;
  r6.xyz = -r1.xyz * r0.xxx + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r7.xyz : r6.xyz;
  r5.xyz = r1.www ? float3(0,0,0) : r5.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  if (r0.z != 0) {
    r7.xyz = r3.xyz * cb2[1].xyz + cb2[0].xyz;
    r7.xyz = max(cb2[2].xyz, r7.xyz);
    r7.xyz = min(cb2[3].xyz, r7.xyz);
    r8.xyzw = t2.Sample(s1_s, r7.xyz).xyzw;
    r9.xyzw = t3.Sample(s0_s, r7.xyz).xyzw;
    r7.xyzw = t4.Sample(s0_s, r7.xyz).xyzw;
    r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
    r11.xw = r8.xw;
    r11.y = r9.x;
    r11.z = r7.x;
    r10.x = 0.886227548;
    r11.x = dot(r11.xyzw, r10.xyzw);
    r12.x = r8.y;
    r12.yw = r9.yw;
    r12.z = r7.y;
    r11.y = dot(r12.xyzw, r10.xyzw);
    r7.x = r8.z;
    r7.y = r9.z;
    r11.z = dot(r7.xyzw, r10.xyzw);
    r7.xyz = max(float3(0,0,0), r11.xyz);
    r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r7.xyz = cb0[157].xyz * r7.xyz;
  r0.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r2.www ? r3.xyz : r2.xyz;
  }
  r3.xyz = cb0[145].yyy * r5.xyz + r7.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.z = r0.z * r1.w;
  r0.z = r0.z * cb0[135].y + 0.00390625;
  r0.z = log2(r0.z);
  r0.z = r0.z * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.z;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r0.xy;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}