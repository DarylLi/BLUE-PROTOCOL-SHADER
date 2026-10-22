// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[91];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb3[14].xy + v3.xy;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.z = max(abs(r0.y), abs(r0.x));
  r0.z = 1 / r0.z;
  r0.w = min(abs(r0.y), abs(r0.x));
  r0.z = r0.w * r0.z;
  r0.w = r0.z * r0.z;
  r1.x = r0.w * 0.0208350997 + -0.0851330012;
  r1.x = r0.w * r1.x + 0.180141002;
  r1.x = r0.w * r1.x + -0.330299497;
  r0.w = r0.w * r1.x + 0.999866009;
  r1.x = r0.z * r0.w;
  r1.x = r1.x * -2 + 1.57079637;
  r1.y = cmp(abs(r0.x) < abs(r0.y));
  r1.x = r1.y ? r1.x : 0;
  r0.z = r0.z * r0.w + r1.x;
  r0.w = cmp(r0.x < -r0.x);
  r0.w = r0.w ? -3.141593 : 0;
  r0.z = r0.z + r0.w;
  r0.w = min(r0.y, r0.x);
  r0.w = cmp(r0.w < -r0.w);
  r1.x = max(r0.y, r0.x);
  r0.xy = r0.xy * r0.xy;
  r0.x = r0.x + r0.y;
  r0.x = sqrt(r0.x);
  r0.y = cmp(r1.x >= -r1.x);
  r0.y = r0.y ? r0.w : 0;
  r0.y = r0.y ? -r0.z : r0.z;
  r0.y = 0.159154952 * r0.y;
  r0.y = frac(r0.y);
  r0.z = cb1[142].z * cb3[69].y + r0.y;
  r0.y = cb1[142].z * cb3[67].y + r0.y;
  r1.x = cb3[68].x * r0.y;
  r0.y = cb1[142].z * cb3[70].y + r0.x;
  r0.x = cb1[142].z * cb3[68].y + r0.x;
  r1.y = cb3[68].z * r0.x;
  r2.xy = cb3[70].xz * r0.zy;
  r0.x = t1.SampleBias(s1_s, r2.xy, cb1[143].y).y;
  r0.yz = cb3[12].xy + -v3.xy;
  r0.w = dot(r0.yz, r0.yz);
  r0.w = sqrt(r0.w);
  r0.yz = r0.yz / r0.ww;
  r0.xw = r0.yz * r0.xx;
  r0.xw = r0.xw * cb3[71].xx + r1.xy;
  r0.x = t2.SampleBias(s2_s, r0.xw, cb1[143].y).x;
  r0.xy = r0.yz * r0.xx;
  r0.xy = r0.xy * cb3[71].zz + v3.xy;
  r0.z = t3.SampleBias(s3_s, r0.xy, cb1[143].y).w;
  r0.x = t5.SampleBias(s5_s, r0.xy, cb1[143].y).y;
  r0.x = r0.x * cb3[75].y + cb3[75].z;
  r0.y = cmp(r0.z >= cb3[89].z);
  r0.y = r0.y ? 1.000000 : 0;
  r0.z = -cb3[90].x + v2.w;
  r0.y = r0.y * r0.z;
  r0.z = cb1[142].z * cb3[72].z + v3.x;
  r1.x = cb3[73].y * r0.z;
  r0.z = cb1[142].z * cb3[73].z + v3.y;
  r1.y = cb3[73].w * r0.z;
  r0.z = t4.SampleBias(s4_s, r1.xy, cb1[143].y).x;
  r0.z = -0.5 + r0.z;
  r0.z = r0.z + r0.z;
  r1.x = cb3[74].z * r0.z;
  r1.y = cb3[75].x * r0.z;
  r0.xz = r1.xy * r0.xx + v3.xy;
  r0.x = t0.SampleBias(s0_s, r0.xz, cb1[143].y).x;
  r0.x = -1 + r0.x;
  r0.z = cb3[76].w + r0.x;
  r0.x = cb3[78].x + r0.x;
  r0.xz = saturate(ceil(r0.xz));
  r0.w = 1 + -r0.z;
  r0.z = cb3[89].y * r0.w + r0.z;
  r0.y = r0.z * r0.y;
  r0.z = 1 + -r0.x;
  r0.x = cb3[90].y * r0.z + r0.x;
  r0.x = r0.y * r0.x;
  r0.x = saturate(ceil(r0.x));
  r0.yz = -cb1[129].xy + v5.xy;
  r1.xy = cb1[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t6.SampleBias(s6_s, r0.yz, cb1[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.y = 0.166666672 * r0.y;
  r0.z = saturate(cb1[142].w * cb2[0].x + cb2[0].y);
  r0.y = cb3[89].x * r0.z + r0.y;
  r0.y = -0.5 + r0.y;
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = cb0[2].xyzw;
  return;
}