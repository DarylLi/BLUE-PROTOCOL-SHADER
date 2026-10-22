// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[22];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float v3 : TEXCOORD6,
  float3 w3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z * cb1[14].z + v2.x;
  r0.y = cb1[15].y * r0.x;
  r0.z = floor(r0.y);
  r0.z = (int)r0.z;
  r0.z = mad((int)r0.z, 0x0019660d, 0xd17070a0);
  r0.w = mad(0x3c6ef35f, (int)r0.z, 0x3c6ef35f);
  r1.x = mad((int)r0.z, (int)r0.w, 0x3c6ef35f);
  r0.z = mad((int)r0.w, (int)r1.x, (int)r0.z);
  r0.w = mad((int)r1.x, (int)r0.z, (int)r0.w);
  r0.z = mad((int)r0.z, (int)r0.w, (int)r1.x);
  r0.z = (uint)r0.z >> 16;
  r0.z = (uint)r0.z;
  r0.z = r0.z * 1.52590223e-006 + 0.100000001;
  r0.w = cb0[142].z * cb1[15].z + v2.y;
  r0.w = cb1[15].w * r0.w;
  r0.x = cb0[142].z * r0.z + r0.w;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb0[143].y).x;
  r0.y = -0.5 + r0.x;
  r0.x = r0.x * cb1[17].z + -cb1[17].z;
  r0.x = saturate(cb1[18].y + r0.x);
  r0.x = 1 + -r0.x;
  r0.y = dot(r0.yy, cb1[16].yy);
  r0.yz = v2.xy + r0.yy;
  r0.yz = -cb1[7].xy + r0.yz;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = r0.y / cb1[18].z;
  r0.xy = float2(1,1) + -r0.xy;
  r0.z = cb1[18].w * r0.y;
  r0.z = r0.z * r0.z;
  r0.z = 1.44269514 * r0.z;
  r0.z = exp2(r0.z);
  r0.z = 1 / r0.z;
  r0.z = 1 + -r0.z;
  r0.z = -r0.z * 0.899999976 + 1;
  r0.w = cmp(r0.y >= 0);
  r0.y = cmp(9.99999975e-006 < abs(r0.y));
  r0.z = r0.w ? r0.z : 1;
  r0.y = r0.y ? r0.z : 1;
  r0.x = -r0.x * r0.y + 1;
  r0.y = 2 + -cb1[19].x;
  r0.x = r0.x * r0.y + cb1[19].x;
  r1.z = 0.5 * r0.x;
  r0.y = cb0[142].z * cb1[19].w + v2.x;
  r0.y = cb1[20].z * r0.y;
  r2.x = floor(r0.y);
  r3.x = frac(r0.y);
  r0.y = cb0[142].z * cb1[20].w + v2.y;
  r0.y = cb1[21].x * r0.y;
  r2.y = floor(r0.y);
  r3.y = frac(r0.y);
  r0.yz = (int2)r2.xy;
  r0.yz = mad((int2)r0.yz, int2(0x19660d,0x19660d), int2(0x3c6ef35f,0x3c6ef35f));
  r0.y = mad((int)r0.z, 0x3c6ef35f, (int)r0.y);
  r0.z = mad(0x3c6ef35f, (int)r0.y, (int)r0.z);
  r0.w = mad((int)r0.y, (int)r0.z, 0x3c6ef35f);
  r2.x = mad((int)r0.z, (int)r0.w, (int)r0.y);
  r2.y = mad((int)r0.w, (int)r2.x, (int)r0.z);
  r2.z = mad((int)r2.x, (int)r2.y, (int)r0.w);
  r0.yzw = (uint3)r2.xyz >> int3(16,16,16);
  r0.yzw = (uint3)r0.yzw;
  r1.xy = float2(1.52590219e-005,1.52590219e-005);
  r0.yzw = r0.yzw * r1.xyz;
  r0.w = r0.w * 1.52590219e-005 + r1.z;
  r0.w = max(0, r0.w);
  r0.x = min(r0.w, r0.x);
  r0.w = 1 + -r0.x;
  r1.x = -r0.w * 0.5 + 0.5;
  r0.w = r0.w * 0.5 + 0.5;
  r0.yz = max(r1.xx, r0.yz);
  r0.yz = min(r0.yz, r0.ww);
  r0.yz = r0.yz + -r3.xy;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = -r0.y * 2 + 1;
  r0.y = max(0, r0.y);
  r0.y = r0.y * 10 + -10;
  r0.x = saturate(r0.x * 10 + r0.y);
  r0.x = -0.333299994 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}