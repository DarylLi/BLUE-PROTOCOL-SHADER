// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

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
  float4 cb3[8];
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
  float3 v6 : TEXCOORD9,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
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
  r0.w = cb1[4].w * cb0[141].w;
  r1.x = v8.x ? 1 : -1;
  r0.w = r1.x * r0.w;
  r1.xyzw = t2.SampleBias(s1_s, v4.xy, cb0[143].y).wxyz;
  r1.yzw = float3(-0.5,-0.5,-0.5) + r1.yzw;
  r1.yzw = cb0[138].www * r1.yzw;
  r1.yzw = r1.yzw * float3(2,2,2) + cb0[138].xyz;
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = rsqrt(r2.x);
  r1.yzw = r2.xxx * r1.yzw;
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = r1.yyy * v0.yzx + r0.xyz;
  r0.xyz = r1.www * v1.yzx + r0.xyz;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r1.yzw = cb3[7].xxx * cb3[1].xyz;
  r2.xyzw = t3.SampleBias(s2_s, v4.xy, cb0[143].y).xyzw;
  r3.xyz = t4.SampleBias(s3_s, v4.xy, cb0[143].y).xyz;
  r3.w = cmp(0.00100000005 < abs(v3.w));
  r4.xy = floor(v7.xy);
  r4.x = dot(r4.xy, float2(347.834503,3343.28369));
  r4.x = cos(r4.x);
  r4.x = 1000 * r4.x;
  r4.x = frac(r4.x);
  r4.y = cmp(v3.w < 0);
  r4.z = 1 + v3.w;
  r4.z = cmp(r4.x < r4.z);
  r4.x = cmp(v3.w < r4.x);
  r4.x = r4.y ? r4.z : r4.x;
  r4.x = cmp((int)r4.x == 0);
  r3.w = r3.w ? r4.x : 0;
  if (r3.w != 0) discard;
  r2.w = v2.w * r2.w + -0.100000001;
  r2.w = cmp(r2.w < 0);
  if (r2.w != 0) discard;
  r2.xyz = saturate(r2.xyz);
  r1.x = saturate(r1.x);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r3.xyz = saturate(r3.xyz);
  r3.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyzw = t1.Sample(s0_s, v5.zw).xyzw;
  r5.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r4.xyzw = saturate(r4.xyzw * cb2[1].xyzw + r5.xyzw);
  r4.xyzw = r4.xyzw * r4.xyzw;
  o5.xyzw = cb2[0].xyzw * r4.xyzw;
  r4.xyz = saturate(r3.xyz);
  o4.xyz = sqrt(r4.xyz);
  r4.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r6.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r1.xxx ? r6.xyz : r4.xyz;
  r5.xyz = r1.xxx ? float3(0,0,0) : r5.xyz;
  r1.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.x * 2.04040003 + -0.332399994;
  r2.w = r1.x * -4.79510021 + r2.w;
  r1.x = r1.x * 2.75519991 + r2.w;
  r1.x = 1.33200002 + r1.x;
  r1.x = max(1, r1.x);
  r6.xy = float2(1,0.5) * v5.xy;
  r6.zw = v5.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t0.Sample(s0_s, r6.xy).xyzw;
  r6.xyzw = t0.Sample(s0_s, r6.zw).xyzw;
  r2.w = r6.w * 0.00392156886 + r7.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb2[4].w + cb2[6].w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r6.xyzw = r6.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r0.w = 1;
  r3.w = dot(r6.xyzw, r0.xyzw);
  r3.w = max(0, r3.w);
  r8.xyzw = float4(-1,-1,-1,1) * r0.xyzw;
  r0.w = dot(r6.xyzw, r8.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.w * r0.w;
  r6.xyz = r0.www * r7.xyz;
  r0.w = r3.w * r2.w;
  r7.xyz = r0.www * r7.xyz;
  r7.xyz = cb0[157].xyz * r7.xyz;
  r6.xyz = cb0[157].xyz * r6.xyz;
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r6.xyz * r3.xyz;
  r3.xyz = r7.xyz * r4.xyz + r3.xyz;
  r6.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r3.xyz = r6.xyz * r3.xyz;
  r4.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xyzw = cb0[45].xyzw * v7.yyyy;
    r5.xyzw = v7.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v7.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r6.xyz = -cb1[5].xyz + r5.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r3.w = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.w = 0.00200000009 * r3.w;
    r3.w = frac(r3.w);
    r3.w = cmp(0.5 < r3.w);
    r5.xyz = r3.www ? float3(0,1,1) : float3(1,1,0);
    r1.yzw = r2.www ? r5.xyz : r1.yzw;
  }
  r3.xyz = cb0[145].yyy * r4.xyz + r3.xyz;
  r1.yzw = r3.xyz + r1.yzw;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.x;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.yzw;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.5,0.525490224);
  o3.xyz = r2.xyz;
  o4.w = 1;
  o6.xyzw = float4(0,0,0,0);
  return;
}