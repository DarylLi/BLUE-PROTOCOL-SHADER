// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[24];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[11];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[28];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float v3 : TEXCOORD6,
  float w3 : TEXCOORD8,
  float3 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r1.xxx * v0.xyz + r0.xyz;
  r0.xyz = r1.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(-v4.xyz, -v4.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -v4.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.x = r0.x * cb3[19].y + -cb3[19].y;
  r0.x = saturate(cb3[19].w + r0.x);
  r0.yz = cb3[12].xy * v2.xy;
  r0.yz = cb0[142].zz * cb3[18].xy + r0.yz;
  r0.y = t0.SampleBias(s0_s, r0.yz, cb0[143].y).x;
  r0.y = saturate(10 * r0.y);
  r0.y = r0.y * 0.699999988 + 0.300000012;
  r0.x = r0.y * r0.x;
  r0.y = cb3[20].x + -cb3[20].y;
  r0.x = r0.x * r0.y + cb3[20].y;
  r0.z = cb0[142].z * cb3[21].z + v2.x;
  r0.z = cb3[22].y * r0.z;
  r1.xz = floor(r0.zz);
  r2.y = frac(r0.z);
  r0.z = (int)r1.x;
  r0.z = mad((int)r0.z, 0x0019660d, 0xd17070a0);
  r0.w = mad(0x3c6ef35f, (int)r0.z, 0x3c6ef35f);
  r1.x = mad((int)r0.z, (int)r0.w, 0x3c6ef35f);
  r0.z = mad((int)r0.w, (int)r1.x, (int)r0.z);
  r0.w = mad((int)r1.x, (int)r0.z, (int)r0.w);
  r0.z = mad((int)r0.z, (int)r0.w, (int)r1.x);
  r0.z = (uint)r0.z >> 16;
  r0.z = (uint)r0.z;
  r0.z = cb3[23].x * r0.z;
  r0.z = r0.z * 1.52590219e-005 + cb3[20].w;
  r0.w = cb0[142].z * cb3[22].z + v2.y;
  r0.w = cb3[22].w * r0.w;
  r0.z = cb0[142].z * r0.z + r0.w;
  r1.y = floor(r0.z);
  r2.x = frac(r0.z);
  r0.zw = (int2)r1.yz;
  r0.zw = mad((int2)r0.zw, int2(0x19660d,0x19660d), int2(0x3c6ef35f,0x3c6ef35f));
  r0.z = mad((int)r0.w, 0x3c6ef35f, (int)r0.z);
  r0.w = mad(0x3c6ef35f, (int)r0.z, (int)r0.w);
  r1.x = mad((int)r0.z, (int)r0.w, 0x3c6ef35f);
  r3.x = mad((int)r0.w, (int)r1.x, (int)r0.z);
  r3.y = mad((int)r1.x, (int)r3.x, (int)r0.w);
  r3.z = mad((int)r3.x, (int)r3.y, (int)r1.x);
  r1.xyz = (uint3)r3.xyz >> int3(16,16,16);
  r1.xyz = (uint3)r1.xyz;
  r1.xyw = float3(1.52590219e-005,1.52590219e-005,1.52590219e-005) * r1.xyz;
  r0.z = r1.z * 1.52590219e-005 + cb0[142].z;
  r0.yz = float2(0.5,6.28318548) * r0.xz;
  r0.z = sin(r0.z);
  r0.y = r1.w * r0.y + r0.y;
  r0.y = max(0, r0.y);
  r0.x = min(r0.y, r0.x);
  r0.y = 1 + -r0.x;
  r0.w = -r0.y * 0.5 + 0.5;
  r0.y = r0.y * 0.5 + 0.5;
  r1.xy = max(r1.xy, r0.ww);
  r0.yw = min(r1.xy, r0.yy);
  r0.yw = float2(-0.5,-0.5) + r0.yw;
  r0.yz = r0.yw * r0.zz;
  r0.yz = r0.yz * float2(5,5) + float2(0.5,0.5);
  r0.yz = r0.yz + -r2.xy;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = -r0.y * 2 + 1;
  r0.y = max(0, r0.y);
  r0.y = r0.y * 100 + -100;
  r0.x = saturate(r0.x * 100 + r0.y);
  r0.yz = -cb0[129].xy + v5.xy;
  r1.xy = cb0[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t1.SampleBias(s1_s, r0.yz, cb0[143].y).x;
  r0.zw = (uint2)r1.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.y = r0.y * 0.166666672 + cb3[23].y;
  r0.y = -0.5 + r0.y;
  r0.x = r0.x * r0.y;
  r0.yzw = -cb0[70].xyz + v4.xyz;
  r1.xyz = cb2[9].xyz + -r0.yzw;
  r0.yzw = cb2[10].xyz + -r0.yzw;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.y = r0.y * 0.333333343 + -50;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = sqrt(r0.z);
  r0.w = -r0.z * 0.00666666683 + 1;
  r0.z = r0.z * 0.333333343 + -50;
  r0.w = max(0, r0.w);
  r0.w = r0.w * 50 + -50;
  r0.w = saturate(cb2[2].y * 51.5099983 + r0.w);
  r1.xy = float2(1,1) + -cb2[0].yz;
  r0.z = saturate(r1.x * 51.5099983 + r0.z);
  r0.y = saturate(r1.y * 51 + r0.y);
  r0.z = r0.z * r0.w;
  r0.y = r0.z * r0.y;
  r0.y = ceil(r0.y);
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  oDepth = saturate(v3.x * cb1[27].w + w3.x);
  return;
}