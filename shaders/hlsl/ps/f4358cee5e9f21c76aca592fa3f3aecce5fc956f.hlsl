// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[24];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[11];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  linear centroid float4 v1 : TEXCOORD10,
  linear centroid float4 v2 : TEXCOORD11,
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float4 v5 : TEXCOORD6,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v2.zxy * v1.yzx;
  r0.xyz = v2.yzx * v1.zxy + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r1.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r1.xxx * v1.xyz + r0.xyz;
  r0.xyz = r1.zzz * v2.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = mad((int)v4.x, 36, 4);
  r0.w = t0[r0.w].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.x = v6.x ? 1 : -1;
  r0.w = r1.x * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r1.xyzw = cb0[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v0.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r1.xyz * r0.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r0.x = dot(r2.xyz, r0.xyz);
  r0.x = r0.x * cb2[19].y + -cb2[19].y;
  r0.x = saturate(cb2[19].w + r0.x);
  r0.yz = cb2[12].xy * v3.xy;
  r0.yz = cb0[142].zz * cb2[18].xy + r0.yz;
  r0.y = t1.SampleBias(s0_s, r0.yz, cb0[143].y).x;
  r0.y = saturate(10 * r0.y);
  r0.y = r0.y * 0.699999988 + 0.300000012;
  r0.x = r0.y * r0.x;
  r0.y = cb2[20].x + -cb2[20].y;
  r0.x = r0.x * r0.y + cb2[20].y;
  r0.z = cb0[142].z * cb2[21].z + v3.x;
  r0.z = cb2[22].y * r0.z;
  r2.xz = floor(r0.zz);
  r3.y = frac(r0.z);
  r0.z = (int)r2.x;
  r0.z = mad((int)r0.z, 0x0019660d, 0xd17070a0);
  r0.w = mad(0x3c6ef35f, (int)r0.z, 0x3c6ef35f);
  r1.w = mad((int)r0.z, (int)r0.w, 0x3c6ef35f);
  r0.z = mad((int)r0.w, (int)r1.w, (int)r0.z);
  r0.w = mad((int)r1.w, (int)r0.z, (int)r0.w);
  r0.z = mad((int)r0.z, (int)r0.w, (int)r1.w);
  r0.z = (uint)r0.z >> 16;
  r0.z = (uint)r0.z;
  r0.z = cb2[23].x * r0.z;
  r0.z = r0.z * 1.52590219e-005 + cb2[20].w;
  r0.w = cb0[142].z * cb2[22].z + v3.y;
  r0.w = cb2[22].w * r0.w;
  r0.z = cb0[142].z * r0.z + r0.w;
  r2.y = floor(r0.z);
  r3.x = frac(r0.z);
  r0.zw = (int2)r2.yz;
  r0.zw = mad((int2)r0.zw, int2(0x19660d,0x19660d), int2(0x3c6ef35f,0x3c6ef35f));
  r0.z = mad((int)r0.w, 0x3c6ef35f, (int)r0.z);
  r0.w = mad(0x3c6ef35f, (int)r0.z, (int)r0.w);
  r1.w = mad((int)r0.z, (int)r0.w, 0x3c6ef35f);
  r2.x = mad((int)r0.w, (int)r1.w, (int)r0.z);
  r2.y = mad((int)r1.w, (int)r2.x, (int)r0.w);
  r2.z = mad((int)r2.x, (int)r2.y, (int)r1.w);
  r2.xyz = (uint3)r2.xyz >> int3(16,16,16);
  r2.xyz = (uint3)r2.xyz;
  r2.xyw = float3(1.52590219e-005,1.52590219e-005,1.52590219e-005) * r2.xyz;
  r0.z = r2.z * 1.52590219e-005 + cb0[142].z;
  r0.yz = float2(0.5,6.28318548) * r0.xz;
  r0.z = sin(r0.z);
  r0.y = r2.w * r0.y + r0.y;
  r0.y = max(0, r0.y);
  r0.x = min(r0.y, r0.x);
  r0.y = 1 + -r0.x;
  r0.w = -r0.y * 0.5 + 0.5;
  r0.y = r0.y * 0.5 + 0.5;
  r2.xy = max(r2.xy, r0.ww);
  r0.yw = min(r2.xy, r0.yy);
  r0.yw = float2(-0.5,-0.5) + r0.yw;
  r0.yz = r0.yw * r0.zz;
  r0.yz = r0.yz * float2(5,5) + float2(0.5,0.5);
  r0.yz = r0.yz + -r3.xy;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = -r0.y * 2 + 1;
  r0.y = max(0, r0.y);
  r0.y = r0.y * 100 + -100;
  r0.x = saturate(r0.x * 100 + r0.y);
  r0.yz = -cb0[129].xy + v0.xy;
  r2.xy = cb0[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t2.SampleBias(s1_s, r0.yz, cb0[143].y).x;
  r0.zw = (uint2)r2.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.y = r0.y * 0.166666672 + cb2[23].y;
  r0.y = -0.5 + r0.y;
  r0.x = r0.x * r0.y;
  r0.yzw = cb1[9].xyz + -r1.xyz;
  r1.xyz = cb1[10].xyz + -r1.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = r1.x * 0.333333343 + -50;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.z = -r0.y * 0.00666666683 + 1;
  r0.y = r0.y * 0.333333343 + -50;
  r0.z = max(0, r0.z);
  r0.z = r0.z * 50 + -50;
  r0.z = saturate(cb1[2].y * 51.5099983 + r0.z);
  r1.yz = float2(1,1) + -cb1[0].yz;
  r0.y = saturate(r1.y * 51.5099983 + r0.y);
  r0.w = saturate(r1.z * 51 + r1.x);
  r0.y = r0.y * r0.z;
  r0.y = r0.y * r0.w;
  r0.y = ceil(r0.y);
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}