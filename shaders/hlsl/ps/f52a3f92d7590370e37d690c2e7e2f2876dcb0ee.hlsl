// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[22];
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
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = v4.zw + -v4.xy;
  r1.zw = cb3[14].yy * r1.xy + v4.xy;
  r1.zw = cb3[1].xy * r1.zw;
  r2.xy = t1.Sample(s0_s, r1.zw).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb3[15].xxx * r3.xyz + r2.xyz;
  r3.xy = cb3[15].zz * r1.xy + v4.xy;
  r3.xy = cb3[2].xy * r3.xy;
  r3.zw = t2.Sample(s0_s, r3.xy).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[16].yyy * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz + -r2.xyz;
  r2.xyz = v2.xxx * r4.xyz + r2.xyz;
  r1.xy = cb3[16].ww * r1.xy + v4.xy;
  r1.xy = cb3[3].xy * r1.xy;
  r3.zw = t3.Sample(s0_s, r1.xy).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[17].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz + -r2.xyz;
  r2.xyz = v2.yyy * r4.xyz + r2.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.yzx + r0.xyz;
  r0.xyz = r2.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb3[7].xyz + -cb3[6].xyz;
  r2.xyz = cb3[17].www * r2.xyz + cb3[6].xyz;
  r4.xyz = t4.Sample(s0_s, r1.zw).xyz;
  r2.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r2.www + -r4.xyz;
  r4.xyz = cb3[18].zzz * r5.xyz + r4.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r5.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb3[18].y, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r4.xyz = r4.xyz * r7.xxx + r5.xyz;
  r4.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r4.xyz = cb3[9].xyz * r4.xyz;
  r5.xyz = t5.Sample(s0_s, r3.xy).xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r2.www + -r5.xyz;
  r5.xyz = cb3[19].yyy * r6.xyz + r5.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[19].x, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = r5.xyz * cb3[11].xyz + -r4.xyz;
  r4.xyz = v2.xxx * r5.xyz + r4.xyz;
  r5.xyz = t6.Sample(s0_s, r1.xy).xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r2.www + -r5.xyz;
  r5.xyz = cb3[20].xxx * r6.xyz + r5.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[19].w, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = r5.xyz * cb3[13].xyz + -r4.xyz;
  r4.xyz = v2.yyy * r5.xyz + r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r1.zw = t7.Sample(s0_s, r1.zw).xy;
  r1.z = saturate(cb3[20].y + r1.z);
  r3.xy = t8.Sample(s0_s, r3.xy).xy;
  r2.w = saturate(cb3[20].z + r3.x);
  r2.w = r2.w + -r1.z;
  r1.z = v2.x * r2.w + r1.z;
  r1.xy = t9.Sample(s0_s, r1.xy).xy;
  r1.x = saturate(cb3[20].w + r1.x);
  r1.x = r1.x + -r1.z;
  r1.x = saturate(v2.y * r1.x + r1.z);
  r1.z = r3.y + -r1.w;
  r1.z = v2.x * r1.z + r1.w;
  r1.y = r1.y + -r1.z;
  r3.x = saturate(v2.y * r1.y + r1.z);
  r1.y = cmp(0.00100000005 < abs(v3.w));
  r1.zw = floor(v6.xy);
  r1.z = dot(r1.zw, float2(347.834503,3343.28369));
  r1.z = cos(r1.z);
  r1.z = 1000 * r1.z;
  r1.z = frac(r1.z);
  r1.w = cmp(v3.w < 0);
  r2.w = 1 + v3.w;
  r2.w = cmp(r1.z < r2.w);
  r1.z = cmp(v3.w < r1.z);
  r1.z = r1.w ? r2.w : r1.z;
  r1.z = cmp((int)r1.z == 0);
  r1.y = r1.y ? r1.z : 0;
  if (r1.y != 0) discard;
  r1.yzw = min(float3(1,1,1), r4.xyz);
  r3.y = saturate(cb3[21].x);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r1.x = 0.0799999982 * r3.y;
  r4.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.yzw;
  r4.xyz = r3.xxx * r4.xyz + r1.xxx;
  r5.xyz = -r1.yzw * r3.xxx + r1.yzw;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r6.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.xxx ? r6.xyz : r5.xyz;
  r4.xyz = r1.xxx ? float3(0,0,0) : r4.xyz;
  r1.x = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.x * 2.04040003 + -0.332399994;
  r2.w = r1.x * -4.79510021 + r2.w;
  r1.x = r1.x * 2.75519991 + r2.w;
  r1.x = 1.33200002 + r1.x;
  r1.x = max(1, r1.x);
  r3.zw = float2(1,0.5) * v5.xy;
  r6.xy = v5.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t0.Sample(s1_s, r3.zw).xyzw;
  r6.xyzw = t0.Sample(s1_s, r6.xy).xyzw;
  r2.w = r6.w * 0.00392156886 + r7.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb2[4].w + cb2[6].w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r6.xyzw = r6.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r0.w = 1;
  r0.w = dot(r6.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.w * r0.w;
  r6.xyz = r0.www * r7.xyz;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r6.xyz * r5.xyz;
  r7.xyz = r1.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.yzw * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r6.xyz = r7.xyz * r6.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xyzw = cb0[45].xyzw * v6.yyyy;
    r5.xyzw = v6.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v6.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r7.xyz = -cb1[5].xyz + r5.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r3.z = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.z = 0.00200000009 * r3.z;
    r3.z = frac(r3.z);
    r3.z = cmp(0.5 < r3.z);
    r5.xyz = r3.zzz ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r2.www ? r5.xyz : r2.xyz;
  }
  r4.xyz = cb0[145].yyy * r4.xyz + r6.xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r2.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.x;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.75686276;
  o2.xy = r3.xy;
  o3.xyz = r1.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}