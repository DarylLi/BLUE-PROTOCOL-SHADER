// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[35];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = r3.xy / cb4[16].yy;
  r1.z = t2.SampleBias(s1_s, r1.zw, cb0[143].y).x;
  r1.w = cb4[16].z + -cb4[16].w;
  r1.z = saturate(r1.z * r1.w + cb4[16].w);
  r1.z = cb4[17].x + r1.z;
  r1.z = r1.z * -cb4[17].y + cb4[17].y;
  r4.xyz = -cb0[67].xyz + r3.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r2.w = cb4[17].w * r1.w;
  r1.z = r1.z * r2.w + cb0[143].y;
  r4.xy = t3.SampleBias(s2_s, v3.xy, r1.z).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[18].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.www;
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
  r4.xyz = cb4[18].yyy * cb4[1].xyz;
  r5.xyzw = t4.SampleBias(s3_s, v3.xy, r1.z).xyzw;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r0.www + -r5.xyz;
  r5.xyz = cb4[19].xxx * r6.xyz + r5.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[18].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = cb4[3].xyz * r5.xyz;
  r0.w = saturate(dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r1.z = 1 + -r0.w;
  r1.z = r1.z + r1.z;
  r7.xyz = -r1.zzz * cb4[6].xyz + float3(1,1,1);
  r1.z = r0.w + r0.w;
  r8.xyz = cb4[5].xyz * r1.zzz;
  r0.w = cmp(r0.w >= 0.5);
  r7.xyz = r0.www ? r7.xyz : r8.xyz;
  r8.xyz = cb4[5].xyz + -r7.xyz;
  r7.xyz = cb4[19].yyy * r8.xyz + r7.xyz;
  r0.w = r1.w / cb4[19].z;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[19].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r5.xyz = -r5.xyz * cb4[3].xyz + r7.xyz;
  r5.xyz = r5.xyz * r0.www;
  r5.xyz = cb4[20].xxx * r5.xyz + r6.xyz;
  r6.xy = r3.xy / cb4[21].xx;
  r6.xy = float2(-0.5,-0.5) + r6.xy;
  r7.x = dot(r6.xy, cb4[9].xy);
  r7.y = dot(r6.xy, cb4[10].xy);
  r6.xy = cb0[142].zz * cb4[20].zw + r7.xy;
  r6.xy = float2(0.5,0.5) + r6.xy;
  r0.w = t5.SampleBias(s4_s, r6.xy, cb0[143].y).x;
  r0.w = cb4[22].z * r0.w;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb4[22].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r1.z = cb4[23].y * cb0[142].z;
  r6.xy = r3.xy / cb4[23].ww;
  r6.xy = r1.zz * float2(0.353553385,-0.353553385) + r6.xy;
  r6.xy = float2(0.5,0.5) + r6.xy;
  r6.xy = frac(r6.xy);
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r6.zw = -abs(r6.xy) * float2(2,2) + float2(3,3);
  r6.xy = abs(r6.xy) * abs(r6.xy);
  r6.xy = r6.xy * r6.zw;
  r2.w = dot(float2(-0.707106769,0.707106769), r6.xy);
  r6.xyz = r3.xyz / cb4[24].zzz;
  r6.xyz = r1.zzz * float3(-0.5,-0.5,-0.5) + r6.xyz;
  r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
  r6.xyz = frac(r6.xyz);
  r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r7.xyz = -abs(r6.xyz) * float3(2,2,2) + float3(3,3,3);
  r6.xyz = abs(r6.xyz) * abs(r6.xyz);
  r6.xyz = r6.xyz * r7.xyz;
  r1.z = dot(r6.xyz, r6.xyz);
  r1.z = sqrt(r1.z);
  r1.z = r2.w + r1.z;
  r1.z = 6.28318548 * r1.z;
  r1.z = sin(r1.z);
  r1.z = cb4[24].w * r1.z;
  r1.z = -7.07106781 * r1.z;
  r2.w = 0.5 + cb0[142].z;
  r2.w = cb4[25].x * r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.75;
  r6.xy = cb4[25].xw * cb0[142].zz;
  r3.w = 6.28318548 * r6.x;
  r3.w = sin(r3.w);
  r3.w = r3.w * 0.5 + 0.75;
  r6.z = cb4[26].x * cb0[142].z;
  r6.xw = r3.xy / cb4[26].yy;
  r6.xy = r6.yz + r6.xw;
  r4.w = t6.SampleBias(s5_s, r6.xy, cb0[143].y).x;
  r4.w = cb4[26].z * r4.w;
  r6.x = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb4[26].w * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r6.x ? 0 : r4.w;
  r4.w = saturate(cb4[27].x + r4.w);
  r3.w = r3.w + -r2.w;
  r2.w = r4.w * r3.w + r2.w;
  r2.w = cb4[27].y * r2.w;
  r2.w = cb4[27].z * r2.w;
  r1.z = r1.z * r2.w + 1;
  r2.w = 1 + -v3.y;
  r1.z = -r1.z * r2.w + 1;
  r1.z = cb4[27].w * r1.z;
  r2.w = cmp(0 >= abs(r1.z));
  r1.z = log2(abs(r1.z));
  r1.z = cb4[28].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r2.w = r1.w / cb4[28].y;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb4[28].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r3.w ? -0 : -r2.w;
  r1.z = r2.w + r1.z;
  r1.z = 1 + r1.z;
  r1.z = min(1, r1.z);
  r2.w = -cb4[29].x + cb4[28].w;
  r1.z = r1.z * r2.w + cb4[29].x;
  r1.z = 1 + -r1.z;
  r0.w = r1.z * r0.w;
  r6.xyz = cb4[12].xyz * r0.www;
  r0.w = cb1[18].x + cb1[18].y;
  r0.w = cb1[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = v2.x + r0.w;
  r0.w = cb3[2].x * r0.w;
  r0.w = cb4[29].y * r0.w;
  r7.xy = r0.ww * cb4[30].xy + v3.xy;
  r7.xyz = t7.SampleBias(s6_s, r7.xy, cb0[143].y).xyz;
  r5.xyz = r7.xyz * r6.xyz + r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r0.w = dot(r0.xyz, r2.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb4[30].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb4[30].w * r0.w;
  r1.z = saturate(cb4[31].y + v1.z);
  r0.w = r1.z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb4[31].z * r0.w);
  r2.xy = r3.xy / cb4[31].ww;
  r1.z = t2.SampleBias(s1_s, r2.xy, cb0[143].y).x;
  r2.x = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[32].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = cb4[32].y * r1.z;
  r1.z = r2.x ? -0 : -r1.z;
  r1.z = cb4[32].w + r1.z;
  r1.z = 1 + r1.z;
  r1.w = r1.w / cb4[33].x;
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb4[33].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.x ? 0 : r1.w;
  r1.z = saturate(r1.z * r1.w);
  r1.z = 1 + -r1.z;
  r1.z = r5.w * r1.z;
  r1.w = cmp(cb0[31].w < 1);
  r2.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.x + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.x = r1.x / cb4[33].z;
  r2.xyz = -cb0[129].xxy + v4.xxy;
  r1.y = r2.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb4[34].x + -r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r1.w = (uint)r2.w << 1;
  r1.w = (int)r1.w + (int)r2.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r2.xy = float2(0.015625,0.015625) * r2.yz;
  r2.x = t8.SampleBias(s7_s, r2.xy, cb0[143].y).x;
  r1.w = r2.x + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r1.z * r1.x;
  r1.y = cmp(0.00100000005 < abs(v2.w));
  r1.zw = floor(v4.xy);
  r1.z = dot(r1.zw, float2(347.834503,3343.28369));
  r1.z = cos(r1.z);
  r1.z = 1000 * r1.z;
  r1.z = frac(r1.z);
  r1.w = cmp(v2.w < 0);
  r2.x = 1 + v2.w;
  r2.x = cmp(r1.z < r2.x);
  r1.z = cmp(v2.w < r1.z);
  r1.z = r1.w ? r2.x : r1.z;
  r1.z = cmp((int)r1.z == 0);
  r1.y = r1.y ? r1.z : 0;
  if (r1.y != 0) discard;
  r1.x = r1.x * v2.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyz = min(float3(1,1,1), r5.xyz);
  r1.w = saturate(cb4[28].w);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = cmp(0 < cb0[215].x);
  r2.x = cmp(0 < cb1[20].z);
  if (r2.x != 0) {
    r2.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r2.xyz = max(float3(0,0,0), r2.xyz);
    r2.xyz = min(float3(0.99000001,0.99000001,0.99000001), r2.xyz);
    r2.xyz = cb0[213].xyz * r2.xyz;
    r5.xyz = (int3)r2.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r2.w = 1 + cb0[213].w;
    r2.xyz = r2.xyz / r5.www;
    r2.xyz = frac(r2.xyz);
    r2.xyz = cb0[213].www * r2.xyz;
    r2.xyz = r5.xyz * r2.www + r2.xyz;
    r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
    r2.xyz = cb0[214].xyz * r2.xyz;
    r2.x = t1.SampleLevel(s0_s, r2.xyz, 0).x;
  } else {
    r2.y = cmp(0 < cb1[18].w);
    r2.y = r1.w ? r2.y : 0;
    r2.x = r2.y ? cb2[5].x : 1;
  }
  r2.y = cb0[137].w * r0.w;
  r5.xyz = r1.xyz * cb0[136].www + cb0[136].xyz;
  r2.yzw = r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r6.xyz = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r3.www ? r6.xyz : r5.xyz;
  r2.yzw = r3.www ? float3(0,0,0) : r2.yzw;
  r3.w = dot(r2.yzw, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r3.w * 2.04040003 + -0.332399994;
  r4.w = r3.w * -4.79510021 + r4.w;
  r3.w = r3.w * 2.75519991 + r4.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r6.xyz = r0.yzy * r0.yzx;
  r7.yw = r0.zz * r0.yx;
  r4.w = r0.x * r0.x + -r6.x;
  r8.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r7.xz = r6.zy * float2(1,3) + float2(0,-1);
  r6.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r7.xyzw;
  r4.w = 0.429042608 * r4.w;
  r8.x = 0.886227548;
  r5.w = dot(cb2[6].xyzw, r8.xyzw);
  r7.x = dot(cb2[9].xyzw, r6.xyzw);
  r5.w = r7.x + r5.w;
  r7.x = cb2[12].x * r4.w + r5.w;
  r5.w = dot(cb2[7].xyzw, r8.xyzw);
  r7.w = dot(cb2[10].xyzw, r6.xyzw);
  r5.w = r7.w + r5.w;
  r7.y = cb2[12].y * r4.w + r5.w;
  r5.w = dot(cb2[8].xyzw, r8.xyzw);
  r6.x = dot(cb2[11].xyzw, r6.xyzw);
  r5.w = r6.x + r5.w;
  r7.z = cb2[12].z * r4.w + r5.w;
  r6.xyz = max(float3(0,0,0), r7.xyz);
  r6.xyz = r1.www ? r6.xyz : 0;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r5.xyz;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r2.yzw = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r5.xyz = -cb1[5].xyz + r3.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r7.xyz < abs(r5.xyz));
    r4.w = (int)r5.y | (int)r5.x;
    r4.w = (int)r5.z | (int)r4.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r4.www ? r3.xyz : r4.xyz;
  }
  r2.yzw = cb0[145].yyy * r2.yzw + r6.xyz;
  r2.yzw = r2.yzw + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r1.w * r3.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.yzw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.505882382);
  o2.y = r0.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}