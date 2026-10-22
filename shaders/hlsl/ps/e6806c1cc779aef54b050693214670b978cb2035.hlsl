// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[30];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r1.zw = r3.xy / cb2[18].yy;
  r1.z = t2.SampleBias(s2_s, r1.zw, cb0[143].y).x;
  r1.w = cb2[18].z + -cb2[18].w;
  r1.z = saturate(r1.z * r1.w + cb2[18].w);
  r1.z = cb2[19].x + r1.z;
  r1.z = r1.z * -cb2[19].y + cb2[19].y;
  r4.xyz = -cb0[67].xyz + r3.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r2.w = cb2[19].w * r1.w;
  r1.z = r1.z * r2.w + cb0[143].y;
  r4.xy = t3.SampleBias(s3_s, v3.xy, r1.z).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[20].xxx * r5.xyz + r4.xyz;
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
  r4.xyz = cb2[20].yyy * cb2[1].xyz;
  r5.xyz = t4.SampleBias(s4_s, v3.xy, r1.z).yzw;
  r6.xyz = -cb2[5].xyz + cb2[4].xyz;
  r6.xyz = r5.xxx * r6.xyz + cb2[5].xyz;
  r7.xyzw = r3.xyxy / cb2[21].xxyy;
  r0.w = t2.Sample(s0_s, r7.xy).x;
  r1.z = t2.Sample(s0_s, r7.zw).x;
  r2.w = r1.w / cb2[21].z;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb2[21].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r1.z = r1.z + -r0.w;
  r0.w = r2.w * r1.z + r0.w;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[22].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb2[22].y * r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r7.xyz = cb2[7].xyz + -r6.xyz;
  r6.xyz = r0.www * r7.xyz + r6.xyz;
  r1.z = saturate(dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r2.w = 1 + -r1.z;
  r2.w = r2.w + r2.w;
  r7.xyz = -r2.www * cb2[10].xyz + float3(1,1,1);
  r2.w = r1.z + r1.z;
  r8.xyz = cb2[9].xyz * r2.www;
  r1.z = cmp(r1.z >= 0.5);
  r7.xyz = r1.zzz ? r7.xyz : r8.xyz;
  r8.xyz = cb2[9].xyz + -r7.xyz;
  r7.xyz = cb2[22].zzz * r8.xyz + r7.xyz;
  r1.z = r1.w / cb2[22].w;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[23].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r7.xyz = r7.xyz + -r6.xyz;
  r7.xyz = r7.xyz * r1.zzz;
  r6.xyz = cb2[23].yyy * r7.xyz + r6.xyz;
  r5.xw = r3.xy / cb2[23].ww;
  r2.w = t5.SampleBias(s5_s, r5.xw, cb0[143].y).x;
  r2.w = cb2[24].x * r2.w;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb2[24].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r7.xyz = -cb2[14].xyz + cb2[13].xyz;
  r7.xyz = r7.xyz * r2.www;
  r7.xyz = r3.www ? float3(0,0,0) : r7.xyz;
  r7.xyz = cb2[14].xyz + r7.xyz;
  r8.xyz = r7.xyz * r5.yyy;
  r7.xyz = -r7.xyz * r5.yyy + cb2[7].xyz;
  r7.xyz = r7.xyz * r0.www;
  r7.xyz = cb2[24].www * r7.xyz + r8.xyz;
  r0.w = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r2.w = 1 + -r0.w;
  r2.w = r2.w + r2.w;
  r8.xyz = -r2.www * cb2[10].xyz + float3(1,1,1);
  r2.w = r0.w + r0.w;
  r9.xyz = cb2[9].xyz * r2.www;
  r0.w = cmp(r0.w >= 0.5);
  r8.xyz = r0.www ? r8.xyz : r9.xyz;
  r9.xyz = cb2[9].xyz + -r8.xyz;
  r8.xyz = cb2[22].zzz * r9.xyz + r8.xyz;
  r8.xyz = r8.xyz + -r7.xyz;
  r8.xyz = r8.xyz * r1.zzz;
  r8.xyz = cb2[23].yyy * r8.xyz;
  r7.xyz = cb2[25].xxx * r8.xyz + r7.xyz;
  r0.w = saturate(10 * r5.y);
  r5.xyw = r7.xyz + -r6.xyz;
  r5.xyw = r0.www * r5.xyw + r6.xyz;
  r0.w = dot(r5.xyw, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r0.www + -r5.xyw;
  r5.xyw = cb2[25].yyy * r6.xyz + r5.xyw;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyw);
  r5.xyw = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyw;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.wxy;
  r6.xyz = r5.wxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[20].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyw = r5.xyw * r8.xxx + r6.xyz;
  r5.xyw = r0.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyw;
  r5.xyw = cb2[16].xyz * r5.xyw;
  r5.xyw = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyw);
  r0.w = dot(r0.xyz, r2.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb2[25].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb2[25].w * r0.w;
  r1.z = saturate(cb2[26].y + v1.z);
  r0.w = r1.z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb2[26].z * r0.w);
  r2.xy = r3.xy / cb2[27].xx;
  r1.z = t2.SampleBias(s2_s, r2.xy, cb0[143].y).x;
  r2.x = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[27].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = cb2[27].z * r1.z;
  r1.z = r2.x ? -0 : -r1.z;
  r1.z = cb2[28].x + r1.z;
  r1.z = 1 + r1.z;
  r1.w = r1.w / cb2[28].y;
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[28].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.x ? 0 : r1.w;
  r1.z = saturate(r1.z * r1.w);
  r1.z = 1 + -r1.z;
  r1.z = r5.z * r1.z;
  r1.w = cmp(cb0[31].w < 1);
  r2.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.x + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.x = r1.x / cb2[28].w;
  r2.xyz = -cb0[129].xxy + v4.xxy;
  r1.y = r2.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb2[29].y + -r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r1.w = (uint)r2.w << 1;
  r1.w = (int)r1.w + (int)r2.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r2.xy = float2(0.015625,0.015625) * r2.yz;
  r2.x = t6.SampleBias(s6_s, r2.xy, cb0[143].y).x;
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
  r1.xyz = min(float3(1,1,1), r5.xyw);
  r1.w = saturate(cb2[26].w);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r2.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r2.xyz = max(float3(0,0,0), r2.xyz);
    r2.xyz = min(float3(0.99000001,0.99000001,0.99000001), r2.xyz);
    r2.xyz = cb0[213].xyz * r2.xyz;
    r5.xyz = (int3)r2.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r1.w = 1 + cb0[213].w;
    r2.xyz = r2.xyz / r5.www;
    r2.xyz = frac(r2.xyz);
    r2.xyz = cb0[213].www * r2.xyz;
    r2.xyz = r5.xyz * r1.www + r2.xyz;
    r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
    r2.xyz = cb0[214].xyz * r2.xyz;
    r1.w = t1.SampleLevel(s1_s, r2.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r2.x = cb0[137].w * r0.w;
  r2.yzw = r1.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r2.x = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r2.yzw;
  r2.yzw = r2.xxx ? r5.xyz : r2.yzw;
  r5.xyz = r2.xxx ? float3(0,0,0) : r6.xyz;
  r2.xyz = r5.xyz + r2.yzw;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xyz = -cb1[5].xyz + r3.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r2.w = (int)r5.y | (int)r5.x;
    r2.w = (int)r5.z | (int)r2.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r2.www ? r3.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r2.xyz + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r2.w;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.505882382);
  o2.y = r0.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}