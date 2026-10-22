// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[24];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[11];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyz = cb1[138].www * float3(0,0,1) + cb1[138].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r1.xxx * v0.xyz + r0.xyz;
  r0.xyz = r1.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = mad((int)v3.x, 36, 4);
  r0.w = t0[r0.w].val[12/4];
  r0.w = cb1[141].w * r0.w;
  r1.x = v6.x ? 1 : -1;
  r0.w = r1.x * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r1.xyzw = cb1[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb1[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb1[46].xyzw + r1.xyzw;
  r1.xyzw = cb1[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r1.xyz * r0.www;
  r1.xyz = -cb1[70].xyz + r1.xyz;
  r0.x = dot(r2.xyz, r0.xyz);
  r0.x = r0.x * cb4[19].y + -cb4[19].y;
  r0.x = saturate(cb4[19].w + r0.x);
  r0.yz = cb4[12].xy * v2.xy;
  r0.yz = cb1[142].zz * cb4[18].xy + r0.yz;
  r0.y = t2.SampleBias(s1_s, r0.yz, cb1[143].y).x;
  r0.y = saturate(10 * r0.y);
  r0.y = r0.y * 0.699999988 + 0.300000012;
  r0.x = r0.y * r0.x;
  r0.y = cb4[20].x + -cb4[20].y;
  r0.x = r0.x * r0.y + cb4[20].y;
  r0.z = cb1[142].z * cb4[21].z + v2.x;
  r0.z = cb4[22].y * r0.z;
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
  r0.z = cb4[23].x * r0.z;
  r0.z = r0.z * 1.52590219e-005 + cb4[20].w;
  r0.w = cb1[142].z * cb4[22].z + v2.y;
  r0.w = cb4[22].w * r0.w;
  r0.z = cb1[142].z * r0.z + r0.w;
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
  r0.z = r2.z * 1.52590219e-005 + cb1[142].z;
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
  r0.yz = -cb1[129].xy + v5.xy;
  r2.xy = cb1[152].xx + r0.yz;
  r0.yz = float2(0.015625,0.015625) * r0.yz;
  r0.y = t3.SampleBias(s2_s, r0.yz, cb1[143].y).x;
  r0.zw = (uint2)r2.xy;
  r0.w = (uint)r0.w << 1;
  r0.z = (int)r0.w + (int)r0.z;
  r0.z = (uint)r0.z % 5;
  r0.z = (uint)r0.z;
  r0.y = r0.z + r0.y;
  r0.y = r0.y * 0.166666672 + cb4[23].y;
  r0.y = -0.5 + r0.y;
  r0.x = r0.x * r0.y;
  r0.yzw = cb3[9].xyz + -r1.xyz;
  r1.xyz = cb3[10].xyz + -r1.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = r1.x * 0.333333343 + -50;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.z = -r0.y * 0.00666666683 + 1;
  r0.y = r0.y * 0.333333343 + -50;
  r0.z = max(0, r0.z);
  r0.z = r0.z * 50 + -50;
  r0.z = saturate(cb3[2].y * 51.5099983 + r0.z);
  r1.yz = float2(1,1) + -cb3[0].yz;
  r0.y = saturate(r1.y * 51.5099983 + r0.y);
  r0.w = saturate(r1.z * 51 + r1.x);
  r0.y = r0.y * r0.z;
  r0.y = r0.y * r0.w;
  r0.y = ceil(r0.y);
  r0.x = r0.y * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.zw = float2(0,1);
  r1.xw = float2(0,1);
  r2.x = min(0, cb2[7].w);
  r2.y = cmp(cb2[7].z < r2.x);
  r2.xz = -cb2[7].zy + r2.xx;
  r3.xyz = cb2[7].wzw + -cb2[7].zyy;
  r4.xy = r3.xy + -r2.xz;
  r0.xy = r4.yx / r3.yx;
  r1.z = r0.x;
  r3.xy = r2.xz / r3.xy;
  r2.x = r2.y ? r2.x : r2.z;
  r4.xyz = r2.xxx / r3.zzz;
  r0.x = r3.x;
  r1.y = r3.y;
  r0.xyzw = r2.yyyy ? r0.xyzw : r1.xyzw;
  r4.w = 1;
  r1.xyzw = cb0[3].xxxx * r4.xyzw;
  r0.xyzw = r0.xyzw * cb0[3].yyyy + r1.xyzw;
  r0.xyzw = r0.xyzw * cb0[2].xxxx + cb0[2].yyyy;
  r1.xyzw = cb2[9].xyzw * cb0[3].wwww;
  r0.xyzw = r0.xyzw * cb0[3].zzzz + r1.xyzw;
  r1.x = 1 + -cb0[2].z;
  r2.xyzw = cb2[8].xyzw * cb0[2].zzzz;
  r0.xyzw = r0.xyzw * r1.xxxx + r2.xyzw;
  r1.xy = float2(0.100000001,0.100000001) * cb0[1].xy;
  r1.xyzw = t1.Sample(s0_s, r1.xy).xyzw;
  o0.xyzw = r1.xyzw * r0.xyzw;
  return;
}