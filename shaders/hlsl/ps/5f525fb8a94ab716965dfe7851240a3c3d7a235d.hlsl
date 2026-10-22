// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[15];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[139];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  uint v2 : PRIMITIVE_ID0,
  float4 v3 : TEXCOORD6,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v4.yyyy;
  r0.xyzw = v4.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v4.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.w = dot(-r0.xyz, -r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = -r0.xyz * r0.www;
  r0.x = dot(v1.xyz, r0.xyz);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.x = log2(r0.x);
  r0.x = cb2[14].y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * 0.959999979 + 0.0399999991;
  r0.y = -1 + cb2[14].z;
  r0.x = r0.x * r0.y;
  r0.yzw = v1.zxy * v0.yzx;
  r0.yzw = v1.yzx * v0.zxy + -r0.yzw;
  r0.yzw = v1.www * r0.yzw;
  r1.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.yzw = r1.yyy * r0.yzw;
  r0.yzw = r1.xxx * v0.xyz + r0.yzw;
  r0.yzw = r1.zzz * v1.xyz + r0.yzw;
  r1.xyz = cb0[13].xyz * r0.zzz;
  r1.xyz = r0.yyy * cb0[12].xyz + r1.xyz;
  r0.yzw = r0.www * cb0[14].xyz + r1.xyz;
  r0.w = dot(r0.yzw, r0.yzw);
  r0.w = rsqrt(r0.w);
  r0.yz = r0.yz * r0.ww;
  r0.xy = r0.yz * r0.xx;
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
  r0.zw = -cb0[129].xy + v4.xy;
  r0.zw = r0.zw * cb0[130].zw + float2(-0.5,-0.5);
  r1.xy = v4.ww * r0.zw;
  r1.z = v4.w;
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
  r0.w = -0.5 * cb2[14].w;
  r0.w = min(50, abs(r0.w));
  r0.w = max(1, r0.w);
  r0.w = 1 / r0.w;
  r0.z = saturate(r0.z * r0.w + -cb2[14].w);
  r0.xy = r0.xy * r0.zz;
  r0.xy = float2(4,4) * r0.xy;
  r0.zw = min(float2(0,0), r0.xy);
  o0.xy = max(float2(0,0), r0.xy);
  o0.zw = -r0.zw;
  return;
}