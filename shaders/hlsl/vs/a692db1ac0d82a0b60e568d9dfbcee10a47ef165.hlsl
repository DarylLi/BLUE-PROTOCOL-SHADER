// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[12];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  uint v0 : SV_VertexID0,
  uint v1 : SV_InstanceID0,
  float2 v2 : ATTRIBUTE0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TANGENTX0,
  out float4 o2 : TANGENTZ0,
  out float4 o3 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v1.x << 4;
  r0.y = (uint)v0.x >> 2;
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + asint(cb0[1].x);
  r0.xy = t0.Load(r0.x).xy;
  r1.xyzw = t1.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r2.xyz = t2.SampleLevel(s1_s, r0.xy, 0).xyz;
  r0.xyzw = t3.SampleLevel(s2_s, r0.xy, 0).xyzw;
  r2.w = cmp(1 >= r1.w);
  r2.w = r2.w ? 1.000000 : 0;
  r3.xyz = cb2[1].xyz * r2.yyy;
  r3.xyz = r2.xxx * cb2[0].xyz + r3.xyz;
  r2.xyz = r2.zzz * cb2[2].xyz + r3.xyz;
  r3.x = dot(r2.xyz, r2.xyz);
  r3.x = sqrt(r3.x);
  r3.yz = cb4[3].zw * r1.ww + cb4[3].xy;
  r3.yzw = t4.SampleLevel(s3_s, r3.yz, 0).xyz;
  r3.yzw = r3.yzw * cb4[4].xyz + cb4[5].xyz;
  r4.xy = cmp(r0.xy < float2(0.5,0.5));
  r4.zw = r4.xy ? float2(0,0) : float2(-0.5,-0.5);
  r0.xy = r4.zw + r0.xy;
  r0.xy = r0.xy + r0.xy;
  r3.yz = cb3[0].xy * r3.yz;
  r4.zw = cb4[6].xy * r3.xx;
  r4.zw = max(float2(1,1), r4.zw);
  r4.zw = min(cb4[6].zw, r4.zw);
  r0.xy = r3.yz * r0.xy;
  r0.xy = r0.xy * r4.zw;
  r0.xy = r0.xy * r2.ww;
  r3.xy = float2(1,1) + -v2.xy;
  r3.xy = r4.xy ? r3.xy : v2.xy;
  r2.w = frac(r3.w);
  r2.w = r3.w + -r2.w;
  r3.z = r2.w / cb4[7].x;
  r3.w = cmp(r3.z >= -r3.z);
  r3.z = frac(abs(r3.z));
  r3.z = r3.w ? r3.z : -r3.z;
  r4.x = cb4[7].x * r3.z;
  r2.w = cb4[7].z * r2.w;
  r4.y = floor(r2.w);
  r3.xy = r4.xy + r3.xy;
  o0.xy = cb4[7].zw * r3.xy;
  r0.w = cb4[10].x * r0.w;
  r0.z = r0.w * r1.w + r0.z;
  r3.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r3.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r3.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyz = cb1[64].xyz + -cb1[62].xyz;
  r3.xyz = cb4[9].www * r3.xyz + cb1[62].xyz;
  r4.xyz = cb1[63].xyz + -cb1[61].xyz;
  r4.xyz = cb4[9].www * r4.xyz + cb1[61].xyz;
  r5.xyz = cb3[1].xyz + -r3.xyz;
  r3.xyz = cb3[1].www * r5.xyz + r3.xyz;
  r5.xyz = cb3[2].xyz + r4.xyz;
  r4.xyz = cb3[2].www * r5.xyz + -r4.xyz;
  r5.xyz = cb1[68].zxy + -r1.zxy;
  r0.w = dot(r5.xyz, r5.xyz);
  r1.w = max(0.00999999978, r0.w);
  r1.w = sqrt(r1.w);
  r5.xyz = r5.xyz / r1.www;
  r1.w = cmp(0 < cb4[9].x);
  if (r1.w != 0) {
    r0.w = saturate(r0.w * cb4[9].y + -cb4[9].z);
    r6.xyz = float3(0,1,0) * r5.xyz;
    r6.xyz = r5.zxy * float3(1,0,0) + -r6.xyz;
    r1.w = dot(r6.xy, r6.xy);
    r1.w = max(0.00999999978, r1.w);
    r1.w = sqrt(r1.w);
    r6.xyz = r6.xyz / r1.www;
    r7.xyz = r6.yzx * r5.xyz;
    r7.xyz = r5.zxy * r6.zxy + -r7.xyz;
    r6.xyz = r6.xyz + -r3.xyz;
    r6.xyz = r0.www * r6.xyz + r3.xyz;
    r1.w = dot(r6.xyz, r6.xyz);
    r1.w = rsqrt(r1.w);
    r6.xyz = r6.xyz * r1.www;
    r7.xyz = r7.xyz + -r4.xyz;
    r7.xyz = r0.www * r7.xyz + r4.xyz;
    r0.w = dot(r7.xyz, r7.xyz);
    r0.w = rsqrt(r0.w);
    r7.xyz = r7.xyz * r0.www;
  } else {
    r2.xyz = float3(0,0,9.99999975e-005) + r2.xyz;
    r0.w = dot(r2.xyz, r2.xyz);
    r0.w = rsqrt(r0.w);
    r2.xyz = r2.xyz * r0.www;
    r8.xyz = r5.xyz * r2.yzx;
    r8.xyz = r5.zxy * r2.zxy + -r8.xyz;
    r0.w = dot(r8.xyz, r8.xyz);
    r0.w = max(0.00999999978, r0.w);
    r0.w = sqrt(r0.w);
    r8.xyz = r8.xyz / r0.www;
    r9.xyz = cb3[1].zxy * r5.zxy;
    r9.xyz = cb3[1].yzx * r5.xyz + -r9.xyz;
    r0.w = dot(r9.xyz, r9.xyz);
    r0.w = max(0.00999999978, r0.w);
    r0.w = sqrt(r0.w);
    r9.xyz = r9.xyz / r0.www;
    r10.xyz = cmp(float3(0,0,0) < cb4[8].yzw);
    r11.xyz = float3(0,1,0) * r5.xyz;
    r11.xyz = r5.zxy * float3(1,0,0) + -r11.xyz;
    r0.w = dot(r11.xy, r11.xy);
    r0.w = max(0.00999999978, r0.w);
    r0.w = sqrt(r0.w);
    r11.xyz = r11.xyz / r0.www;
    r12.xyz = r11.yzx * r5.xyz;
    r5.xyz = r5.zxy * r11.zxy + -r12.xyz;
    r3.xyz = r10.zzz ? r11.xyz : r3.xyz;
    r4.xyz = r10.zzz ? r5.xyz : r4.xyz;
    r3.xyz = r10.yyy ? cb3[1].xyz : r3.xyz;
    r4.xyz = r10.yyy ? -r9.xyz : r4.xyz;
    r6.xyz = r10.xxx ? r8.xyz : r3.xyz;
    r7.xyz = r10.xxx ? -r2.xyz : r4.xyz;
  }
  r0.z = r0.z * 6.28318548 + cb4[10].y;
  sincos(r0.z, r2.x, r3.x);
  r2.yzw = r3.xxx * r6.xyz;
  r2.yzw = r2.xxx * r7.xyz + r2.yzw;
  r3.yzw = r2.xxx * r6.zxy;
  r3.xyz = r3.xxx * r7.zxy + -r3.yzw;
  r0.zw = cb4[11].xy + v2.xy;
  r0.xy = r0.xy * r0.zw;
  r0.yzw = r0.yyy * r3.yzx;
  r0.xyz = r0.xxx * r2.yzw + r0.yzw;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  o3.xyzw = cb1[3].xyzw + r0.xyzw;
  r0.xyz = r3.zxy * r2.wyz;
  r0.xyz = r2.zwy * r3.xyz + -r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = r3.xyz * r0.yzx;
  r1.xyz = r3.zxy * r0.zxy + -r1.xyz;
  r0.w = dot(r1.xyz, r2.yzw);
  r1.x = cmp(0 < r0.w);
  r0.w = cmp(r0.w < 0);
  r0.w = (int)-r1.x + (int)r0.w;
  o2.w = (int)r0.w;
  o0.zw = float2(0,0);
  o1.xyz = r2.yzw;
  o1.w = 0;
  o2.xyz = r0.xyz;
  return;
}