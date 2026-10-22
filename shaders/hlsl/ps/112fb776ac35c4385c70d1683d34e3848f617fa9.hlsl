// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[32];
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
  float4 v2 : TEXCOORD0,
  float4 v3 : COLOR1,
  nointerpolation float4 v4 : COLOR2,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = t2.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[17].xxx * r5.xyz + r4.xyz;
  r0.w = 1 + r4.z;
  r1.zw = cb3[17].yy * v2.xy;
  r1.zw = t3.SampleBias(s3_s, r1.zw, cb0[143].y).xy;
  r5.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[17].zzz * r6.xyz + r5.xyz;
  r4.w = 1 + r4.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r1.z = dot(r4.xyw, r5.xyz);
  r5.xyz = r5.xyz * r0.www;
  r4.xyz = r4.xyw * r1.zzz + -r5.xyz;
  r5.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r6.xyz = r5.yyy * r0.xyz;
  r5.xyw = r5.xxx * v0.xyz + r6.xyz;
  r5.xyz = r5.zzz * v1.xyz + r5.xyw;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r5.xyz * r0.www;
  r0.w = dot(r5.xyz, r2.xyz);
  r6.xyz = r5.xyz * r0.www;
  r6.xyz = r6.xyz * float3(2,2,2) + -r2.xyz;
  r0.w = 1 + -abs(r0.w);
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[17].w * r0.w;
  r0.w = exp2(r0.w);
  r7.xyz = cb3[2].xyz * r0.www;
  r7.xyz = cb3[18].xxx * r7.xyz;
  r7.xyz = r1.zzz ? float3(0,0,0) : r7.xyz;
  r8.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r8.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r0.w = dot(-r2.xyz, r4.xyz);
  r1.z = cb3[18].w * cb3[18].w;
  r1.w = -r0.w * r0.w + 1;
  r1.z = -r1.z * r1.w + 1;
  r2.w = sqrt(r1.z);
  r2.w = cb3[18].w * r0.w + r2.w;
  r1.z = cmp(r1.z >= 0);
  r8.xyz = r2.www * r4.xyz;
  r8.xyz = cb3[18].www * -r2.xyz + -r8.xyz;
  r8.xyz = r1.zzz ? r8.xyz : 0;
  r8.x = t10.Sample(s8_s, r8.xyz).x;
  r9.xy = cb3[19].zw * cb3[19].zw;
  r1.zw = -r9.xy * r1.ww + float2(1,1);
  r9.xy = sqrt(r1.zw);
  r9.xy = cb3[19].zw * r0.ww + r9.xy;
  r1.zw = cmp(r1.zw >= float2(0,0));
  r9.xzw = r9.xxx * r4.xyz;
  r9.xzw = cb3[19].zzz * -r2.xyz + -r9.xzw;
  r9.xzw = r1.zzz ? r9.xzw : 0;
  r8.y = t10.Sample(s8_s, r9.xzw).y;
  r4.xyz = r9.yyy * r4.xyz;
  r4.xyz = cb3[19].www * -r2.xyz + -r4.xyz;
  r4.xyz = r1.www ? r4.xyz : 0;
  r8.z = t10.Sample(s8_s, r4.xyz).z;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r0.www + -r8.xyz;
  r4.xyz = cb3[20].xxx * r4.xyz + r8.xyz;
  r6.xyz = t10.Sample(s8_s, r6.xyz).xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r0.www + -r6.xyz;
  r6.xyz = cb3[20].xxx * r8.xyz + r6.xyz;
  r6.xyz = cb3[6].xyz * r6.xyz;
  r8.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb3[20].zzz * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r8.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = cb3[20].yyy * r6.xyz;
  r4.xyz = r4.xyz * cb3[20].yyy + r6.xyz;
  r1.zw = float2(0.100000001,0.100000001) * r5.xy;
  r6.xy = cmp(float2(0,0) >= r5.xy);
  r1.zw = log2(r1.zw);
  r1.zw = float2(1.5,1.5) * r1.zw;
  r1.zw = exp2(r1.zw);
  r1.zw = r6.xy ? float2(0,0) : r1.zw;
  r6.xy = cb3[21].xx * r1.zw;
  r6.xy = v2.xy * cb3[20].ww + r6.xy;
  r0.w = -0.5 * cb3[21].y;
  r8.x = dot(v0.xyz, r2.xyz);
  r8.y = dot(r0.xyz, r2.xyz);
  r0.xy = r8.xy * r0.ww + r6.xy;
  r0.xyz = t4.Sample(s0_s, r0.xy).xyz;
  r2.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb3[21].zzz * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r2.xyz ? float3(0,0,0) : r0.xyz;
  r0.xyz = cb3[21].www * r0.xyz;
  r1.zw = cb3[22].yy * r1.zw;
  r1.zw = v2.xy * cb3[22].xx + r1.zw;
  r0.w = -0.5 * cb3[22].z;
  r1.zw = r8.xy * r0.ww + r1.zw;
  r2.xyz = t5.Sample(s0_s, r1.zw).xyz;
  r6.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb3[22].www * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r6.xyz ? float3(0,0,0) : r2.xyz;
  r2.xyz = cb3[23].xxx * r2.xyz;
  r2.xyz = cb3[10].xyz * r2.xyz;
  r0.xyz = r0.xyz * cb3[8].xyz + r2.xyz;
  r0.xyz = r4.xyz + r0.xyz;
  r2.xyz = t6.SampleBias(s4_s, v2.xy, cb0[143].y).xyz;
  r0.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r0.www + -r2.xyz;
  r2.xyz = cb3[23].www * r4.xyz + r2.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r4.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r4.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r4.zxy;
  sincos(cb3[23].z, r6.x, r8.x);
  r4.xyz = r6.xxx * r4.xyz;
  r2.xyz = r2.xyz * r8.xxx + r4.xyz;
  r2.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[12].xyz * r2.xyz;
  r4.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb3[24].xxx * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r4.xyz ? float3(0,0,0) : r2.xyz;
  r4.xyz = r2.xyz + r0.xyz;
  r1.zw = t7.SampleBias(s5_s, v2.xy, cb0[143].y).xy;
  r0.w = cb3[24].y + r1.z;
  r1.z = saturate(1 + -r0.w);
  r0.xyz = r0.xyz * r1.zzz + r2.xyz;
  r0.xyz = r0.xyz + -r4.xyz;
  r0.xyz = cb3[24].zzz * r0.xyz + r4.xyz;
  r0.xyz = r7.xyz + r0.xyz;
  r1.z = cb0[142].z * cb3[25].z + v2.x;
  r2.x = cb3[26].y * r1.z;
  r1.z = cb0[142].z * cb3[26].z + v2.y;
  r2.y = cb3[26].w * r1.z;
  r1.z = t8.SampleBias(s6_s, r2.xy, cb0[143].y).x;
  r1.z = r1.z * cb3[27].y + -cb3[27].y;
  r2.x = cb3[27].w * v3.w;
  r2.y = v3.w * cb3[27].w + -cb3[27].z;
  r2.y = saturate(cb3[28].x * r2.y + r1.z);
  r2.y = 1 + -r2.y;
  r2.yzw = v3.xyz * r2.yyy;
  r2.yzw = cb3[24].www * r0.xyz + r2.yzw;
  r4.xyz = cb3[16].xyz + -r2.yzw;
  r2.yzw = cb3[28].yyy * r4.xyz + r2.yzw;
  r0.xyz = cb3[24].www * -r0.xyz + r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  r4.x = saturate(cb3[28].z + r1.w);
  r1.w = cb3[29].y * cb2[1].w;
  r3.w = cmp(cb0[31].w < 1);
  r4.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.z + r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = cb3[29].z + r1.x;
  r4.zw = float2(0.649999976,0.487499982) * cb2[1].ww;
  r3.w = cb2[1].w * 0.617499948 + -r1.x;
  r3.w = saturate(r3.w / r4.w);
  r4.w = -cb2[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.w + r4.z;
  r1.y = r1.y / r3.w;
  r1.x = r1.x / cb3[29].z;
  r3.w = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.y = r1.w ? r1.y : r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[29].y));
  r1.w = 1 + cb3[29].y;
  r1.y = r1.y ? r1.w : 1.39999998;
  r6.xyz = -cb0[129].xxy + v5.xxy;
  r1.w = r6.x * cb0[130].z + -0.469999999;
  r1.w = 4.93230057 * r1.w;
  r1.w = cos(r1.w);
  r1.w = 0.899999976 + r1.w;
  r1.w = saturate(0.555555582 * r1.w);
  r1.y = r1.y + -r1.w;
  r4.zw = cb0[152].xx + r6.yz;
  r4.zw = (uint2)r4.zw;
  r1.w = (uint)r4.w << 1;
  r1.w = (int)r1.w + (int)r4.z;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r4.zw = float2(0.015625,0.015625) * r6.yz;
  r3.w = t9.SampleBias(s7_s, r4.zw, cb0[143].y).x;
  r1.w = r3.w + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r6.xyz = -cb0[67].xyz + r3.xyz;
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = sqrt(r1.y);
  r1.y = r1.y / cb3[30].y;
  r1.y = saturate(r1.y * cb3[31].x + -cb3[30].w);
  r1.y = r1.y * 3 + -1;
  r1.y = r1.y * v4.x + r1.w;
  r1.y = -0.5 + r1.y;
  r1.x = r1.x * r1.y;
  r1.y = saturate(cb3[28].x * r2.x + r1.z);
  r1.x = r1.x * r1.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r0.xyz = min(float3(1,1,1), r0.xyz);
  r4.y = saturate(cb3[29].x);
  r0.w = saturate(r0.w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r1.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r1.xyz = max(float3(0,0,0), r1.xyz);
    r1.xyz = min(float3(0.99000001,0.99000001,0.99000001), r1.xyz);
    r1.xyz = cb0[213].xyz * r1.xyz;
    r6.xyz = (int3)r1.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.w = 1 + cb0[213].w;
    r1.xyz = r1.xyz / r6.www;
    r1.xyz = frac(r1.xyz);
    r1.xyz = cb0[213].www * r1.xyz;
    r1.xyz = r6.xyz * r0.www + r1.xyz;
    r1.xyz = float3(0.5,0.5,0.5) + r1.xyz;
    r1.xyz = cb0[214].xyz * r1.xyz;
    r0.w = t1.SampleLevel(s1_s, r1.xyz, 0).x;
  } else {
    r0.w = 1;
  }
  r1.x = 0.0799999982 * r4.y;
  r1.yzw = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r1.xyz = r4.xxx * r1.yzw + r1.xxx;
  r6.xyz = -r0.xyz * r4.xxx + r0.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.xyz = r1.www ? r1.xyz : r6.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r1.xyz = r6.xyz + r1.xyz;
  r2.xyz = max(float3(0,0,0), r2.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.www ? r3.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r5.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r4.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}