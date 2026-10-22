// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[11];
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
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r1.zw = cb5[6].xx * v3.xy;
  r0.w = cb5[6].y + cb0[143].y;
  r4.xy = t2.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[6].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb4[5].xyz, -cb4[5].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb4[5].xyz / r0.xxx;
  r0.x = dot(r5.yzx, r4.xyz);
  r0.x = 1 + r0.x;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r6.xyz, r6.xyz);
  r0.z = sqrt(r0.z);
  r6.xyz = r6.xyz / r0.zzz;
  r0.z = saturate(dot(-r6.xyz, r5.xyz));
  r2.w = 1 + -cb3[1].x;
  r0.z = saturate(r2.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r4.zxy, r2.xyz);
  r0.z = max(0, r0.z);
  r0.z = 1 + -r0.z;
  r0.z = max(9.99999975e-005, abs(r0.z));
  r0.z = log2(r0.z);
  r2.x = cb3[1].y * r0.z;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb3[0].w;
  r2.x = r2.x * r2.y + cb3[0].w;
  r2.y = cmp(r2.x >= cb3[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.y * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb3[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.y = -r0.y * r0.w + 1;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.w ? 0 : r0.y;
  r0.y = r2.x * r0.y;
  r0.y = cb3[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r2.xyz = cb4[4].xyz * r0.xxx;
  r0.x = dot(-cb4[8].xyz, -cb4[8].xyz);
  r0.x = sqrt(r0.x);
  r5.xyz = -cb4[8].xyz / r0.xxx;
  r0.x = dot(r5.yzx, r4.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r6.xyz, r5.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.y;
  r0.xyw = cb4[9].xyz * r0.xxx;
  r0.xyw = cb4[1].yyy * r0.xyw;
  r0.xyw = r2.xyz * cb4[1].xxx + r0.xyw;
  r0.xyw = cb3[2].xyz * r0.xyw;
  r2.xyz = cb5[2].xyz * r0.xyw;
  r0.xyw = -r0.xyw * cb5[2].xyz + cb5[3].xyz;
  r0.xyw = cb5[6].www * r0.xyw + r2.xyz;
  r2.xyzw = t3.SampleBias(s2_s, r1.zw, cb0[143].y).xyzw;
  r3.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r3.www + -r2.xyz;
  r2.xyz = cb5[7].zzz * r5.xyz + r2.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r5.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb5[7].y, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r2.xyz = r2.xyz * r7.xxx + r5.xyz;
  r2.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb5[5].xyz * r2.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.zw = t4.SampleBias(s3_s, r1.zw, cb0[143].y).xy;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb5[7].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r1.z = saturate(cb5[8].x + r1.z);
  r5.x = saturate(cb5[8].y + r1.w);
  r0.z = cb5[8].z * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb5[8].w * r0.z;
  r1.w = saturate(cb5[9].y + v1.z);
  r0.z = r1.w * r0.z;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.z = min(0.5, r0.z);
  r5.y = saturate(cb5[9].z * r0.z);
  r0.z = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r0.z = r0.z ? r1.y : r1.x;
  r0.z = r0.z / cb5[9].w;
  r1.xyw = -cb0[129].xxy + v5.xxy;
  r1.x = r1.x * cb0[130].z + -0.469999999;
  r1.x = 4.93230057 * r1.x;
  r1.x = cos(r1.x);
  r1.x = 0.899999976 + r1.x;
  r1.x = saturate(0.555555582 * r1.x);
  r1.x = cb5[10].y + -r1.x;
  r5.zw = cb0[152].xx + r1.yw;
  r5.zw = (uint2)r5.zw;
  r3.w = (uint)r5.w << 1;
  r3.w = (int)r3.w + (int)r5.z;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r1.yw = float2(0.015625,0.015625) * r1.yw;
  r1.y = t5.SampleBias(s4_s, r1.yw, cb0[143].y).x;
  r1.y = r3.w + r1.y;
  r1.y = 0.166666672 * r1.y;
  r0.z = r0.z * r1.x + r1.y;
  r0.z = saturate(-0.5 + r0.z);
  r0.z = r2.w * r0.z;
  r1.x = cmp(0.00100000005 < abs(v2.w));
  r1.yw = floor(v5.xy);
  r1.y = dot(r1.yw, float2(347.834503,3343.28369));
  r1.y = cos(r1.y);
  r1.y = 1000 * r1.y;
  r1.y = frac(r1.y);
  r1.w = cmp(v2.w < 0);
  r2.w = 1 + v2.w;
  r2.w = cmp(r1.y < r2.w);
  r1.y = cmp(v2.w < r1.y);
  r1.y = r1.w ? r2.w : r1.y;
  r1.y = cmp((int)r1.y == 0);
  r1.x = r1.x ? r1.y : 0;
  if (r1.x != 0) discard;
  r0.z = r0.z * v2.y + -0.333299994;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r1.xyw = min(float3(1,1,1), r2.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r2.xyzw = t1.Sample(s0_s, v4.zw).xyzw;
  r6.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r2.xyzw = saturate(r2.xyzw * cb2[1].xyzw + r6.xyzw);
  r2.xyzw = r2.xyzw * r2.xyzw;
  o5.xyzw = cb2[0].xyzw * r2.xyzw;
  r0.z = 0.0799999982 * r5.y;
  r2.xyz = -r5.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyw;
  r2.xyz = r5.xxx * r2.xyz + r0.zzz;
  r6.xyz = -r1.xyw * r5.xxx + r1.xyw;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r2.xyz = r2.xyz * cb0[137].www + cb0[137].xyz;
  r0.z = cmp(0 != cb0[183].w);
  r7.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r0.zzz ? r7.xyz : r6.xyz;
  r2.xyz = r0.zzz ? float3(0,0,0) : r2.xyz;
  r0.z = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.z = r0.z * 2.04040003 + -0.332399994;
  r1.z = r0.z * -4.79510021 + r1.z;
  r0.z = r0.z * 2.75519991 + r1.z;
  r0.z = 1.33200002 + r0.z;
  r0.z = max(1, r0.z);
  r5.zw = float2(1,0.5) * v4.xy;
  r7.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t0.Sample(s0_s, r5.zw).xyzw;
  r7.xyzw = t0.Sample(s0_s, r7.xy).xyzw;
  r1.z = r7.w * 0.00392156886 + r8.w;
  r1.z = -0.00196078443 + r1.z;
  r1.z = r1.z * cb2[4].w + cb2[6].w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * cb2[4].xyz + cb2[6].xyz;
  r1.z = exp2(r1.z);
  r1.z = -0.0185813606 + r1.z;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r2.w = dot(r7.xyzw, r4.xyzw);
  r2.w = max(0, r2.w);
  r1.z = r2.w * r1.z;
  r7.xyz = r1.zzz * r8.xyz;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r2.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
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
    r0.xyw = r2.www ? r3.xyz : r0.xyw;
  }
  r2.xyz = cb0[145].yyy * r2.xyz + r7.xyz;
  r0.xyw = r2.xyz + r0.xyw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.z = r1.z * r0.z;
  r0.z = r0.z * cb0[135].y + 0.00390625;
  r0.z = log2(r0.z);
  r0.z = r0.z * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.z;
  o0.xyz = cb0[135].yyy * r0.xyw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r5.xy;
  o3.xyz = r1.xyw;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}