// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t1.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.zw = log2(r0.xy);
  r0.zw = cb2[4].xx * r0.zw;
  r0.zw = exp2(r0.zw);
  r1.xy = cmp(float2(0,0) >= r0.xy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r0.x = sqrt(r0.x);
  r1.xy = r1.xy ? float2(0,0) : r0.zw;
  r0.y = log2(r0.x);
  r0.x = cmp(0 >= r0.x);
  r0.y = cb2[4].x * r0.y;
  r0.y = exp2(r0.y);
  r1.z = r0.x ? 0 : r0.y;
  r0.xyz = r1.xyz * cb0[138].www + cb0[138].xyz;
  r1.xyz = v1.zxy * v0.yzx;
  r1.xyz = v1.yzx * v0.zxy + -r1.xyz;
  r1.xyz = v1.www * r1.xyz;
  r1.xyz = r1.xyz * r0.yyy;
  r0.xyw = r0.xxx * v0.xyz + r1.xyz;
  r0.xyz = r0.zzz * v1.xyz + r0.xyw;
  r1.xyz = cb0[13].xyz * r0.yyy;
  r0.xyw = r0.xxx * cb0[12].xyz + r1.xyz;
  r0.xyz = r0.zzz * cb0[14].xyz + r0.xyw;
  r0.z = dot(r0.xyz, r0.xyz);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  r0.z = t2.SampleBias(s2_s, v2.xy, cb0[143].y).x;
  r0.z = r0.z * 5 + cb2[6].x;
  r0.z = saturate(-5 + r0.z);
  r0.w = -1 + cb2[7].z;
  r0.z = r0.z * r0.w;
  r0.xy = r0.xy * r0.zz;
  r0.xy = cb0[130].xy * r0.xy;
  r0.xy = cb0[132].zw * r0.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = -9.99999975e-006 + r0.z;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.w = cb1[7].y * cb1[7].x;
  r0.z = cb1[7].x;
  r0.zw = cb1[7].zw * r0.zw;
  r0.xy = r0.zw * r0.xy;
  r0.zw = -cb0[129].xy + v5.xy;
  r0.zw = r0.zw * cb0[130].zw + float2(-0.5,-0.5);
  r1.xy = v5.ww * r0.zw;
  r1.z = v5.w;
  r1.xyw = float3(2,-2,1) * r1.xyz;
  r0.zw = r1.xy / r1.ww;
  r0.zw = r0.zw * cb0[66].xy + cb0[66].wz;
  r0.zw = r0.xy * float2(0.000230000005,-0.000230000005) + r0.zw;
  r0.xy = float2(0.000230000005,-0.000230000005) * r0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r0.w = r0.z * cb0[65].z + -cb0[65].w;
  r0.z = r0.z * cb0[65].x + cb0[65].y;
  r0.w = 1 / r0.w;
  r0.z = r0.z + r0.w;
  r0.z = -r1.z * 1 + r0.z;
  r0.w = -0.5 * cb2[7].w;
  r0.w = min(50, abs(r0.w));
  r0.w = max(1, r0.w);
  r0.w = 1 / r0.w;
  r0.z = saturate(r0.z * r0.w + -cb2[7].w);
  r0.xy = r0.xy * r0.zz;
  r0.xy = float2(4,4) * r0.xy;
  r0.zw = min(float2(0,0), r0.xy);
  o0.xy = max(float2(0,0), r0.xy);
  o0.zw = -r0.zw;
  return;
}