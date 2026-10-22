// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
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
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t2.Sample(s1_s, v1.zw).zw;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r1.x = dot(r0.xy, r0.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r0.z = sqrt(r1.x);
  r0.w = -r0.x;
  r1.x = dot(r0.zw, r0.zw);
  r1.x = rsqrt(r1.x);
  r1.yz = r1.xx * r0.wz;
  r1.x = 0;
  r2.xyz = r1.xyz * r0.zxy;
  r2.xyz = r0.yzx * r1.yzx + -r2.xyz;
  r1.xyw = cb3[11].xyz * r1.yyy;
  r1.xyz = r1.zzz * cb3[9].xyz + r1.xyw;
  r3.xyz = cb3[10].xyz * r2.yyy;
  r2.xyw = r2.xxx * cb3[9].xyz + r3.xyz;
  r2.xyz = r2.zzz * cb3[11].xyz + r2.xyw;
  r3.xyz = cb3[10].xyz * r0.yyy;
  r0.xyw = r0.xxx * cb3[9].xyz + r3.xyz;
  r0.xyz = r0.zzz * cb3[11].xyz + r0.xyw;
  r3.x = v3.z;
  r3.y = 1;
  r3.xy = v3.ww * r3.xy;
  r4.xyzw = cb0[45].xyzw * v3.yyyy;
  r4.xyzw = v3.xxxx * cb0[44].xyzw + r4.xyzw;
  r4.xyzw = v3.zzzz * cb0[46].xyzw + r4.xyzw;
  r4.xyzw = cb0[47].xyzw + r4.xyzw;
  r4.xyz = r4.xyz / r4.www;
  r4.xyz = -cb0[70].xyz + r4.xyz;
  r5.xyzw = float4(0.5,0.5,10,10) * v0.xyxy;
  r3.zw = t3.SampleBias(s2_s, r5.zw, cb0[143].y).xy;
  r6.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.x = cb0[138].w;
  r7.z = 1;
  r6.xyz = r7.xxz * r6.xyz;
  r7.x = 0.300000012;
  r7.z = cb0[138].w;
  r6.xyz = r6.xyz * r7.xxz + cb0[138].xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = r6.xyz * r0.www;
  r2.xyz = r6.yyy * r2.xyz;
  r1.xyz = r6.xxx * r1.xyz + r2.xyz;
  r0.xyz = r6.zzz * r0.xyz + r1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb4[2].xxx * cb4[1].xyz;
  r2.xyzw = float4(20,20,5,5) * v0.xyxy;
  r0.w = t4.SampleBias(s3_s, r2.xy, cb0[143].y).x;
  r0.w = r0.w * 0.600000024 + 0.400000006;
  r1.w = t4.SampleBias(s3_s, r2.zw, cb0[143].y).y;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r3.x * cb0[65].x + cb0[65].y;
  r2.z = r3.x * cb0[65].z + -cb0[65].w;
  r2.z = 1 / r2.z;
  r2.y = r2.y + r2.z;
  r2.x = r2.x ? r3.y : r2.y;
  r2.x = -24 + r2.x;
  r2.x = saturate(0.00066666666 * r2.x);
  r2.y = 1 + -r1.w;
  r2.y = r2.x * r2.y + r1.w;
  r2.z = r0.w * -2 + 1;
  r0.w = r2.y * r2.z + r0.w;
  r2.y = t4.SampleBias(s3_s, r5.xy, cb0[143].y).y;
  r2.z = r2.x * -r1.w + r1.w;
  r2.z = r2.y + r2.z;
  r2.w = 0.5 + -r2.z;
  r2.z = r2.w * 0.5 + r2.z;
  r2.z = r2.z * 0.365000039 + 0.294999987;
  r0.w = r2.z * r0.w;
  r0.w = 0.5 * r0.w;
  r1.w = r1.w * 0.300000012 + 0.699999988;
  r2.z = 1 + -r1.w;
  r1.w = r2.x * r2.z + r1.w;
  r1.w = saturate(r2.y * 0.5 + r1.w);
  r2.xyz = saturate(r0.www);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r0.w = cmp(0 < cb0[215].x);
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r3.xyz = r4.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.xyz = max(float3(0,0,0), r3.xyz);
    r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
    r3.xyz = cb0[213].xyz * r3.xyz;
    r5.xyz = (int3)r3.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r1.w = 1 + cb0[213].w;
    r3.xyz = r3.xyz / r5.www;
    r3.xyz = frac(r3.xyz);
    r3.xyz = cb0[213].www * r3.xyz;
    r3.xyz = r5.xyz * r1.www + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
    r3.xyz = cb0[214].xyz * r3.xyz;
    r1.w = t1.SampleLevel(s0_s, r3.xyz, 0).x;
  } else {
    r2.w = cmp(0 < cb1[18].w);
    r2.w = r0.w ? r2.w : 0;
    r1.w = r2.w ? cb2[5].x : 1;
  }
  r3.xyz = r2.zzz * cb0[136].www + cb0[136].xyz;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r6.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r3.xyz = r2.www ? r6.xyz : r3.xyz;
  r5.xyz = r2.www ? float3(0,0,0) : r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r6.xyz = r0.yzy * r0.yzx;
  r7.yw = r0.zz * r0.yx;
  r3.w = r0.x * r0.x + -r6.x;
  r8.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r7.xz = r6.zy * float2(1,3) + float2(0,-1);
  r6.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r7.xyzw;
  r3.w = 0.429042608 * r3.w;
  r8.x = 0.886227548;
  r4.w = dot(cb2[6].xyzw, r8.xyzw);
  r5.w = dot(cb2[9].xyzw, r6.xyzw);
  r4.w = r5.w + r4.w;
  r7.x = cb2[12].x * r3.w + r4.w;
  r4.w = dot(cb2[7].xyzw, r8.xyzw);
  r5.w = dot(cb2[10].xyzw, r6.xyzw);
  r4.w = r5.w + r4.w;
  r7.y = cb2[12].y * r3.w + r4.w;
  r4.w = dot(cb2[8].xyzw, r8.xyzw);
  r5.w = dot(cb2[11].xyzw, r6.xyzw);
  r4.w = r5.w + r4.w;
  r7.z = cb2[12].z * r3.w + r4.w;
  r6.xyz = max(float3(0,0,0), r7.xyz);
  r6.xyz = r0.www ? r6.xyz : 0;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r3.xyz;
  r3.w = r2.z * 2.04040003 + -0.332399994;
  r3.w = r2.z * -4.79510021 + r3.w;
  r3.w = r2.z * 2.75519991 + r3.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r6.xyz = r6.xyz * r3.www;
  r3.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r5.xyz = -cb1[5].xyz + r4.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r7.xyz < abs(r5.xyz));
    r3.w = (int)r5.y | (int)r5.x;
    r3.w = (int)r5.z | (int)r3.w;
    r4.x = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r4.x = 0.00200000009 * r4.x;
    r4.x = frac(r4.x);
    r4.x = cmp(0.5 < r4.x);
    r4.xyz = r4.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r3.www ? r4.xyz : r1.xyz;
  }
  r3.xyz = cb0[145].yyy * r3.xyz + r6.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}