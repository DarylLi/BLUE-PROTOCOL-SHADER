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
  float4 cb1[12];
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
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
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
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r0.w = mad((int)v3.x, 36, 4);
  r0.w = t0[r0.w].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.w = v5.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r1.x = dot(r1.xyz, r0.xyz);
  r1.y = r1.x * cb2[16].y + -cb2[16].y;
  r1.y = saturate(cb2[17].x + r1.y);
  r3.xyz = -cb2[4].xyz + cb2[3].xyz;
  r3.xyz = r1.yyy * r3.xyz + cb2[4].xyz;
  r0.x = dot(abs(r0.xyz), float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r3.xyz * r0.xxx;
  r4.xyz = -cb2[8].xyz + cb2[7].xyz;
  r1.yzw = r1.yyy * r4.xyz + cb2[8].xyz;
  r0.w = saturate(r0.w);
  r0.xyz = r1.yzw * r0.xxx + -r3.xyz;
  r0.xyz = r0.www * r0.xyz + r3.xyz;
  r1.yzw = cb1[9].xyz + -r2.xyz;
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = sqrt(r0.w);
  r1.y = r0.w * 0.333333343 + -50;
  r3.xyz = float3(1,1,1) + -cb1[0].yyz;
  r1.z = r3.x * 1.00999999 + -0.00999999978;
  r1.z = saturate(r1.z * 51 + r1.y);
  r1.z = 1 + -r1.z;
  r0.w = -r0.w * 0.00666666683 + 1;
  r0.w = max(0, r0.w);
  r0.w = r0.w * 50 + -50;
  r1.w = cb1[2].y * 1.00999999 + -0.00999999978;
  r1.w = saturate(r1.w * 51 + r0.w);
  r1.z = r1.z + -r1.w;
  r1.z = 1 + r1.z;
  r4.xyz = cb1[11].xyz + -r0.xyz;
  r0.xyz = r1.zzz * r4.xyz + r0.xyz;
  r4.xyz = cb2[9].xyz + -r0.xyz;
  r0.xyz = cb2[17].yyy * r4.xyz + r0.xyz;
  r1.y = saturate(r3.y * 51.5099983 + r1.y);
  r0.w = saturate(cb1[2].y * 51.5099983 + r0.w);
  r0.w = r1.y * r0.w;
  r1.yzw = cb1[10].xyz + -r2.xyz;
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = sqrt(r1.y);
  r1.y = r1.y * 0.333333343 + -50;
  r1.y = saturate(r3.z * 51 + r1.y);
  r0.w = r1.y * r0.w;
  r0.w = ceil(r0.w);
  r1.yz = cb2[12].xy * v2.xy;
  r1.yz = cb0[142].zz * cb2[18].xy + r1.yz;
  r1.y = t1.SampleBias(s0_s, r1.yz, cb0[143].y).x;
  r1.y = saturate(10 * r1.y);
  r1.y = r1.y * 0.699999988 + 0.300000012;
  r1.x = r1.x * cb2[19].y + -cb2[19].y;
  r1.x = saturate(cb2[19].w + r1.x);
  r1.x = r1.y * r1.x;
  r1.y = cb2[20].x + -cb2[20].y;
  r1.x = r1.x * r1.y + cb2[20].y;
  r1.y = 0.5 * r1.x;
  r1.z = cb0[142].z * cb2[21].z + v2.x;
  r1.w = cb0[142].z * cb2[22].z + v2.y;
  r1.zw = cb2[22].yw * r1.zw;
  r3.xz = floor(r1.zz);
  r2.w = (int)r3.x;
  r2.w = mad((int)r2.w, 0x0019660d, 0xd17070a0);
  r3.x = mad(0x3c6ef35f, (int)r2.w, 0x3c6ef35f);
  r3.w = mad((int)r2.w, (int)r3.x, 0x3c6ef35f);
  r2.w = mad((int)r3.x, (int)r3.w, (int)r2.w);
  r3.x = mad((int)r3.w, (int)r2.w, (int)r3.x);
  r2.w = mad((int)r2.w, (int)r3.x, (int)r3.w);
  r2.w = (uint)r2.w >> 16;
  r2.w = (uint)r2.w;
  r2.w = cb2[23].x * r2.w;
  r2.w = r2.w * 1.52590219e-005 + cb2[20].w;
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
  r1.y = r3.w * r1.y + r1.y;
  r1.y = max(0, r1.y);
  r1.x = min(r1.y, r1.x);
  r1.y = 1 + -r1.x;
  r2.w = -r1.y * 0.5 + 0.5;
  r1.y = r1.y * 0.5 + 0.5;
  r3.xy = max(r3.xy, r2.ww);
  r3.xy = min(r3.xy, r1.yy);
  r3.xy = float2(-0.5,-0.5) + r3.xy;
  r1.y = r3.z * 1.52590219e-005 + cb0[142].z;
  r1.y = 6.28318548 * r1.y;
  r1.y = sin(r1.y);
  r3.xy = r3.xy * r1.yy;
  r3.xy = r3.xy * float2(5,5) + float2(0.5,0.5);
  r4.xy = frac(r1.wz);
  r1.yz = -r4.xy + r3.xy;
  r1.y = dot(r1.yz, r1.yz);
  r1.y = sqrt(r1.y);
  r1.y = -r1.y * 2 + 1;
  r1.y = max(0, r1.y);
  r1.y = r1.y * 100 + -100;
  r1.x = saturate(r1.x * 100 + r1.y);
  r1.yz = -cb0[129].xy + v4.xy;
  r3.xy = cb0[152].xx + r1.yz;
  r3.xy = (uint2)r3.xy;
  r1.w = (uint)r3.y << 1;
  r1.w = (int)r1.w + (int)r3.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r1.yz = float2(0.015625,0.015625) * r1.yz;
  r1.y = t2.SampleBias(s1_s, r1.yz, cb0[143].y).x;
  r1.y = r1.w + r1.y;
  r1.y = r1.y * 0.166666672 + cb2[23].y;
  r1.y = -0.5 + r1.y;
  r1.x = r1.x * r1.y;
  r0.w = r0.w * r1.x + -0.333299994;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r1.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r1.x = t0[r1.x].val[0/4];
    r1.z = t0[r1.x].val[0/4+1];
    r1.w = t0[r1.x].val[0/4+2];
    r1.xzw = r2.xyz + -r1.xzw;
    r3.x = t0[r1.y].val[0/4];
    r3.y = t0[r1.y].val[0/4+1];
    r3.z = t0[r1.y].val[0/4+2];
    r3.xyz = float3(1,1,1) + r3.xyz;
    r1.xyz = cmp(r3.xyz < abs(r1.xzw));
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