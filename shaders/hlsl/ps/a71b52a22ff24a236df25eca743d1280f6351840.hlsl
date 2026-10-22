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
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v3.yyyy;
  r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r1.xyz, r0.xyz);
  r1.x = r0.w * cb3[16].y + -cb3[16].y;
  r1.x = saturate(cb3[17].x + r1.x);
  r0.x = dot(abs(r0.xyz), float3(0.300000012,0.589999974,0.109999999));
  r1.yzw = -cb3[8].xyz + cb3[7].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb3[8].xyz;
  r3.xyz = r1.xyz * r0.xxx;
  r4.xyz = cb2[9].xyz + -r2.xyz;
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = sqrt(r0.y);
  r0.z = r0.y * 0.333333343 + -50;
  r4.xyz = float3(1,1,1) + -cb2[0].yyz;
  r1.w = r4.x * 1.00999999 + -0.00999999978;
  r1.w = saturate(r1.w * 51 + r0.z);
  r1.w = 1 + -r1.w;
  r0.y = -r0.y * 0.00666666683 + 1;
  r0.y = max(0, r0.y);
  r0.y = r0.y * 50 + -50;
  r2.w = cb2[2].y * 1.00999999 + -0.00999999978;
  r2.w = saturate(r2.w * 51 + r0.y);
  r1.w = -r2.w + r1.w;
  r1.w = 1 + r1.w;
  r1.xyz = -r1.xyz * r0.xxx + cb2[11].xyz;
  r1.xyz = r1.www * r1.xyz + r3.xyz;
  r3.xyz = cb3[9].xyz + -r1.xyz;
  r1.xyz = cb3[17].yyy * r3.xyz + r1.xyz;
  r0.x = saturate(r4.y * 51.5099983 + r0.z);
  r0.y = saturate(cb2[2].y * 51.5099983 + r0.y);
  r0.x = r0.x * r0.y;
  r3.xyz = cb2[10].xyz + -r2.xyz;
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = sqrt(r0.y);
  r0.y = r0.y * 0.333333343 + -50;
  r0.y = saturate(r4.z * 51 + r0.y);
  r0.x = r0.x * r0.y;
  r0.x = ceil(r0.x);
  r0.yz = cb3[12].xy * v2.xy;
  r0.yz = cb0[142].zz * cb3[18].xy + r0.yz;
  r0.y = t0.SampleBias(s0_s, r0.yz, cb0[143].y).x;
  r0.y = saturate(10 * r0.y);
  r0.y = r0.y * 0.699999988 + 0.300000012;
  r0.z = r0.w * cb3[19].y + -cb3[19].y;
  r0.z = saturate(cb3[19].w + r0.z);
  r0.y = r0.y * r0.z;
  r0.z = cb3[20].x + -cb3[20].y;
  r0.y = r0.y * r0.z + cb3[20].y;
  r0.z = 0.5 * r0.y;
  r0.w = cb0[142].z * cb3[21].z + v2.x;
  r0.w = cb3[22].y * r0.w;
  r1.w = cb0[142].z * cb3[22].z + v2.y;
  r1.w = cb3[22].w * r1.w;
  r3.xz = floor(r0.ww);
  r2.w = (int)r3.x;
  r2.w = mad((int)r2.w, 0x0019660d, 0xd17070a0);
  r3.x = mad(0x3c6ef35f, (int)r2.w, 0x3c6ef35f);
  r3.w = mad((int)r2.w, (int)r3.x, 0x3c6ef35f);
  r2.w = mad((int)r3.x, (int)r3.w, (int)r2.w);
  r3.x = mad((int)r3.w, (int)r2.w, (int)r3.x);
  r2.w = mad((int)r2.w, (int)r3.x, (int)r3.w);
  r2.w = (uint)r2.w >> 16;
  r2.w = (uint)r2.w;
  r2.w = cb3[23].x * r2.w;
  r2.w = r2.w * 1.52590219e-005 + cb3[20].w;
  r1.w = cb0[142].z * r2.w + r1.w;
  r3.y = floor(r1.w);
  r3.xy = (int2)r3.yz;
  r3.xy = mad((int2)r3.xy, int2(0x19660d,0x19660d), int2(0x3c6ef35f,0x3c6ef35f));
  r2.w = mad((int)r3.y, 0x3c6ef35f, (int)r3.x);
  r3.x = mad(0x3c6ef35f, (int)r2.w, (int)r3.y);
  r3.y = mad((int)r2.w, (int)r3.x, 0x3c6ef35f);
  r4.x = mad((int)r3.x, (int)r3.y, (int)r2.w);
  r4.y = mad((int)r3.y, (int)r4.x, (int)r3.x);
  r4.z = mad((int)r4.x, (int)r4.y, (int)r3.y);
  r3.xyz = (uint3)r4.xyz >> int3(16,16,16);
  r3.xyz = (uint3)r3.xyz;
  r3.xyw = float3(1.52590219e-005,1.52590219e-005,1.52590219e-005) * r3.xyz;
  r0.z = r3.w * r0.z + r0.z;
  r0.z = max(0, r0.z);
  r0.y = min(r0.z, r0.y);
  r0.z = 1 + -r0.y;
  r2.w = -r0.z * 0.5 + 0.5;
  r0.z = r0.z * 0.5 + 0.5;
  r3.xy = max(r3.xy, r2.ww);
  r3.xy = min(r3.xy, r0.zz);
  r3.xy = float2(-0.5,-0.5) + r3.xy;
  r0.z = r3.z * 1.52590219e-005 + cb0[142].z;
  r0.z = 6.28318548 * r0.z;
  r0.z = sin(r0.z);
  r3.xy = r3.xy * r0.zz;
  r3.xy = r3.xy * float2(5,5) + float2(0.5,0.5);
  r4.x = frac(r1.w);
  r4.y = frac(r0.w);
  r0.zw = -r4.xy + r3.xy;
  r0.z = dot(r0.zw, r0.zw);
  r0.z = sqrt(r0.z);
  r0.z = -r0.z * 2 + 1;
  r0.z = max(0, r0.z);
  r0.z = r0.z * 100 + -100;
  r0.y = saturate(r0.y * 100 + r0.z);
  r0.zw = -cb0[129].xy + v3.xy;
  r3.xy = cb0[152].xx + r0.zw;
  r3.xy = (uint2)r3.xy;
  r1.w = (uint)r3.y << 1;
  r1.w = (int)r1.w + (int)r3.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r0.zw = float2(0.015625,0.015625) * r0.zw;
  r0.z = t1.SampleBias(s1_s, r0.zw, cb0[143].y).x;
  r0.z = r1.w + r0.z;
  r0.z = r0.z * 0.166666672 + cb3[23].y;
  r0.z = -0.5 + r0.z;
  r0.y = r0.y * r0.z;
  r0.x = r0.x * r0.y + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyz = max(float3(0,0,0), r1.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r1.xyz = -cb1[5].xyz + r2.xyz;
    r3.xyz = float3(1,1,1) + cb1[19].xyz;
    r1.xyz = cmp(r3.xyz < abs(r1.xyz));
    r0.w = (int)r1.y | (int)r1.x;
    r0.w = (int)r1.z | (int)r0.w;
    r1.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
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