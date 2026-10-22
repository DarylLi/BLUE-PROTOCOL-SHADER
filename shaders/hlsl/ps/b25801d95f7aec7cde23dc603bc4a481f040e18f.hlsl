// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[22];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
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
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z * cb2[14].z + v2.x;
  r0.z = cb0[142].z * cb2[15].z + v2.y;
  r0.yz = cb2[15].yw * r0.xz;
  r0.w = floor(r0.y);
  r0.w = (int)r0.w;
  r0.w = mad((int)r0.w, 0x0019660d, 0xd17070a0);
  r1.x = mad(0x3c6ef35f, (int)r0.w, 0x3c6ef35f);
  r1.y = mad((int)r0.w, (int)r1.x, 0x3c6ef35f);
  r0.w = mad((int)r1.x, (int)r1.y, (int)r0.w);
  r1.x = mad((int)r1.y, (int)r0.w, (int)r1.x);
  r0.w = mad((int)r0.w, (int)r1.x, (int)r1.y);
  r0.w = (uint)r0.w >> 16;
  r0.w = (uint)r0.w;
  r0.w = r0.w * 1.52590223e-006 + 0.100000001;
  r0.x = cb0[142].z * r0.w + r0.z;
  r0.x = t0.SampleBias(s0_s, r0.xy, cb0[143].y).x;
  r0.y = -0.5 + r0.x;
  r0.y = dot(r0.yy, cb2[16].yy);
  r0.yz = v2.xy + r0.yy;
  r0.yz = -cb2[7].xy + r0.yz;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.z = -r0.y * 2 + 1;
  r0.w = 2.33299994 * r0.z;
  r0.w = r0.w * r0.w;
  r0.w = 1.44269514 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 1 / r0.w;
  r1.x = cmp(9.99999975e-006 < abs(r0.z));
  r0.z = cmp(r0.z >= 0);
  r0.w = 1 + -r0.w;
  r1.yzw = -cb2[9].xyz + cb2[8].xyz;
  r1.yzw = r1.yzw * r0.www;
  r1.yzw = r0.zzz ? r1.yzw : 0;
  r1.xyz = r1.xxx ? r1.yzw : 0;
  r1.xyz = cb2[9].xyz + r1.xyz;
  r2.xyz = cb2[10].xyz + -r1.xyz;
  r1.xyz = cb2[17].xxx * r2.xyz + r1.xyz;
  r0.x = r0.x * cb2[17].z + -cb2[17].z;
  r0.x = saturate(cb2[18].y + r0.x);
  r0.x = 1 + -r0.x;
  r0.y = r0.y / cb2[18].z;
  r0.xy = float2(1,1) + -r0.xy;
  r0.z = cb2[18].w * r0.y;
  r0.z = r0.z * r0.z;
  r0.z = 1.44269514 * r0.z;
  r0.z = exp2(r0.z);
  r0.z = 1 / r0.z;
  r0.w = cmp(9.99999975e-006 < abs(r0.y));
  r0.y = cmp(r0.y >= 0);
  r0.z = 1 + -r0.z;
  r0.z = -r0.z * 0.899999976 + 1;
  r0.y = r0.y ? r0.z : 1;
  r0.y = r0.w ? r0.y : 1;
  r0.x = -r0.x * r0.y + 1;
  r0.y = 2 + -cb2[19].x;
  r0.x = r0.x * r0.y + cb2[19].x;
  r2.z = 0.5 * r0.x;
  r0.y = cb0[142].z * cb2[19].w + v2.x;
  r0.y = cb2[20].z * r0.y;
  r0.z = cb0[142].z * cb2[20].w + v2.y;
  r0.z = cb2[21].x * r0.z;
  r3.xy = floor(r0.yz);
  r3.xy = (int2)r3.xy;
  r3.xy = mad((int2)r3.xy, int2(0x19660d,0x19660d), int2(0x3c6ef35f,0x3c6ef35f));
  r0.w = mad((int)r3.y, 0x3c6ef35f, (int)r3.x);
  r1.w = mad(0x3c6ef35f, (int)r0.w, (int)r3.y);
  r2.w = mad((int)r0.w, (int)r1.w, 0x3c6ef35f);
  r3.x = mad((int)r1.w, (int)r2.w, (int)r0.w);
  r3.y = mad((int)r2.w, (int)r3.x, (int)r1.w);
  r3.z = mad((int)r3.x, (int)r3.y, (int)r2.w);
  r3.xyz = (uint3)r3.xyz >> int3(16,16,16);
  r3.xyz = (uint3)r3.xyz;
  r2.xy = float2(1.52590219e-005,1.52590219e-005);
  r2.xyw = r3.xyz * r2.xyz;
  r0.w = r2.w * 1.52590219e-005 + r2.z;
  r0.w = max(0, r0.w);
  r0.x = min(r0.w, r0.x);
  r0.w = 1 + -r0.x;
  r1.w = -r0.w * 0.5 + 0.5;
  r0.w = r0.w * 0.5 + 0.5;
  r2.xy = max(r2.xy, r1.ww);
  r2.xy = min(r2.xy, r0.ww);
  r3.xy = frac(r0.yz);
  r0.yz = -r3.xy + r2.xy;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = -r0.y * 2 + 1;
  r0.y = max(0, r0.y);
  r0.y = r0.y * 10 + -10;
  r0.x = saturate(r0.x * 10 + r0.y);
  r0.x = -0.333299994 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyz = max(float3(0,0,0), r1.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r1.xyzw = cb0[45].xyzw * v3.yyyy;
    r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
    r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
    r1.xyzw = cb0[47].xyzw + r1.xyzw;
    r1.xyz = r1.xyz / r1.www;
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r2.xyz = -cb1[5].xyz + r1.xyz;
    r3.xyz = float3(1,1,1) + cb1[19].xyz;
    r2.xyz = cmp(r3.xyz < abs(r2.xyz));
    r0.w = (int)r2.y | (int)r2.x;
    r0.w = (int)r2.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r0.www ? r1.xyz : r0.xyz;
  }
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.xyzw = float4(0,0,0,0);
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}