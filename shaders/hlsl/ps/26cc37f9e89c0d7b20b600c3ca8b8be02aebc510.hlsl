// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[9];
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
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r1.xyz * r0.www;
  r3.xy = cb3[4].xx * v2.xy;
  r0.w = cb3[4].y + cb0[143].y;
  r3.zw = t1.SampleBias(s1_s, r3.xy, r0.w).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[4].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb3[4].www * cb3[1].xyz;
  r5.xyzw = t2.SampleBias(s2_s, r3.xy, cb0[143].y).xyzw;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r5.xyz;
  r5.xyz = cb3[5].zzz * r6.xyz + r5.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[5].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb3[3].xyz * r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r3.xy = t3.SampleBias(s3_s, r3.xy, cb0[143].y).xy;
  r2.w = cmp(0 >= r3.x);
  r3.x = log2(r3.x);
  r3.x = cb3[5].w * r3.x;
  r3.x = exp2(r3.x);
  r2.w = r2.w ? 0 : r3.x;
  r2.w = saturate(cb3[6].x + r2.w);
  r3.x = saturate(cb3[6].y + r3.y);
  r2.x = dot(r0.zxy, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.x = cb3[6].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * 0.959999979 + 0.0399999991;
  r2.x = cb3[6].w * r2.x;
  r2.y = saturate(cb3[7].y + v1.z);
  r2.x = r2.y * r2.x;
  r2.x = max(0, r2.x);
  r2.x = min(0.5, r2.x);
  r3.y = saturate(cb3[7].z * r2.x);
  r1.w = cb3[7].w * r1.w;
  r2.x = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[8].x * r1.w;
  r1.w = exp2(r1.w);
  r2.y = -0.333299994 + r5.w;
  r2.y = cmp(r2.y < 0);
  if (r2.y != 0) discard;
  r5.xyz = min(float3(1,1,1), r5.xyz);
  r1.w = min(1, r1.w);
  r1.w = r2.x ? 0 : r1.w;
  o2.z = r2.w * cb0[139].y + cb0[139].x;
  r2.x = 0.0799999982 * r3.y;
  r2.yzw = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r2.xyz = r3.xxx * r2.yzw + r2.xxx;
  r6.xyz = -r5.xyz * r3.xxx + r5.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r2.xyz = r2.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r2.xyz = r2.www ? float3(0,0,0) : r2.xyz;
  r2.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r2.w = r1.w * r7.x + r7.y;
  r2.w = r2.w * r1.w + r7.z;
  r2.w = r2.w * r1.w;
  r2.w = max(r2.w, r1.w);
  r3.zw = float2(1,0.5) * v3.xy;
  r7.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t0.Sample(s0_s, r3.zw).xyzw;
  r7.xyzw = t0.Sample(s0_s, r7.xy).xyzw;
  r3.z = r7.w * 0.00392156886 + r8.w;
  r3.z = -0.00196078443 + r3.z;
  r3.z = r3.z * cb2[4].w + cb2[6].w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * cb2[4].xyz + cb2[6].xyz;
  r3.z = exp2(r3.z);
  r3.z = -0.0185813606 + r3.z;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r0.w = 1;
  r0.w = dot(r7.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r3.z * r0.w;
  r7.xyz = r0.www * r8.xyz;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r10.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r8.xyz = r1.www * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz * r1.www + r10.xyz;
  r8.xyz = r8.xyz * r1.www;
  r8.xyz = max(r8.xyz, r1.www);
  r7.xyz = r8.xyz * r7.xyz;
  r2.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r6.xyz = -cb1[5].xyz + r1.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r1.www ? r1.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r2.xyz + r7.xyz;
  r1.xyz = r1.xyz + r4.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.75686276;
  o2.xy = r3.xy;
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}