// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Buffer<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[18];
}

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
  float4 cb1[143];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD0,
  out float4 o4 : TANGENTX0,
  out float4 o5 : TANGENTZ0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v1.x << 4;
  r0.y = (uint)v0.x >> 2;
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + asint(cb0[1].x);
  r0.xy = t1.Load(r0.x).xy;
  r1.xyzw = t2.SampleLevel(s1_s, r0.xy, 0).xyzw;
  r2.xyz = t3.SampleLevel(s2_s, r0.xy, 0).xyz;
  r0.xyzw = t4.SampleLevel(s3_s, r0.xy, 0).xyzw;
  r2.w = cmp(1 >= r1.w);
  r2.w = r2.w ? 1.000000 : 0;
  r3.xyz = cb2[1].xyz * r2.yyy;
  r3.xyz = r2.xxx * cb2[0].xyz + r3.xyz;
  r2.xyz = r2.zzz * cb2[2].xyz + r3.xyz;
  r3.x = dot(r2.xyz, r2.xyz);
  r3.x = sqrt(r3.x);
  r3.yz = cb4[3].zw * r1.ww + cb4[3].xy;
  r3.yzw = t5.SampleLevel(s4_s, r3.yz, 0).xyz;
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
  r3.xy = cb4[7].zw * r3.xy;
  r0.w = cb4[10].x * r0.w;
  r0.z = r0.w * r1.w + r0.z;
  r4.xyz = cb2[1].xyz * r1.yyy;
  r1.xyw = cb2[0].xyz * r1.xxx + r4.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r1.xyw;
  r4.xyz = cb2[3].xyz + cb1[70].xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = cb1[64].xyz + -cb1[62].xyz;
  r4.xyz = cb4[9].www * r4.xyz + cb1[62].xyz;
  r5.xyz = cb1[63].xyz + -cb1[61].xyz;
  r5.xyz = cb4[9].www * r5.xyz + cb1[61].xyz;
  r6.xyz = cb3[1].xyz + -r4.xyz;
  r4.xyz = cb3[1].www * r6.xyz + r4.xyz;
  r6.xyz = cb3[2].xyz + r5.xyz;
  r5.xyz = cb3[2].www * r6.xyz + -r5.xyz;
  r6.xyz = cb1[68].zxy + -r1.zxy;
  r0.w = dot(r6.xyz, r6.xyz);
  r1.w = max(0.00999999978, r0.w);
  r1.w = sqrt(r1.w);
  r6.xyz = r6.xyz / r1.www;
  r1.w = cmp(0 < cb4[9].x);
  if (r1.w != 0) {
    r0.w = saturate(r0.w * cb4[9].y + -cb4[9].z);
    r7.xyz = float3(0,1,0) * r6.xyz;
    r7.xyz = r6.zxy * float3(1,0,0) + -r7.xyz;
    r1.w = dot(r7.xy, r7.xy);
    r1.w = max(0.00999999978, r1.w);
    r1.w = sqrt(r1.w);
    r7.xyz = r7.xyz / r1.www;
    r8.xyz = r7.yzx * r6.xyz;
    r8.xyz = r6.zxy * r7.zxy + -r8.xyz;
    r7.xyz = r7.xyz + -r4.xyz;
    r7.xyz = r0.www * r7.xyz + r4.xyz;
    r1.w = dot(r7.xyz, r7.xyz);
    r1.w = rsqrt(r1.w);
    r7.xyz = r7.xyz * r1.www;
    r8.xyz = r8.xyz + -r5.xyz;
    r8.xyz = r0.www * r8.xyz + r5.xyz;
    r0.w = dot(r8.xyz, r8.xyz);
    r0.w = rsqrt(r0.w);
    r8.xyz = r8.xyz * r0.www;
  } else {
    r2.xyz = float3(0,0,9.99999975e-005) + r2.xyz;
    r0.w = dot(r2.xyz, r2.xyz);
    r0.w = rsqrt(r0.w);
    r2.xyz = r2.xyz * r0.www;
    r9.xyz = r6.xyz * r2.yzx;
    r9.xyz = r6.zxy * r2.zxy + -r9.xyz;
    r0.w = dot(r9.xyz, r9.xyz);
    r0.w = max(0.00999999978, r0.w);
    r0.w = sqrt(r0.w);
    r9.xyz = r9.xyz / r0.www;
    r10.xyz = cb3[1].zxy * r6.zxy;
    r10.xyz = cb3[1].yzx * r6.xyz + -r10.xyz;
    r0.w = dot(r10.xyz, r10.xyz);
    r0.w = max(0.00999999978, r0.w);
    r0.w = sqrt(r0.w);
    r10.xyz = r10.xyz / r0.www;
    r11.xyz = cmp(float3(0,0,0) < cb4[8].yzw);
    r12.xyz = float3(0,1,0) * r6.xyz;
    r12.xyz = r6.zxy * float3(1,0,0) + -r12.xyz;
    r0.w = dot(r12.xy, r12.xy);
    r0.w = max(0.00999999978, r0.w);
    r0.w = sqrt(r0.w);
    r12.xyz = r12.xyz / r0.www;
    r13.xyz = r12.yzx * r6.xyz;
    r6.xyz = r6.zxy * r12.zxy + -r13.xyz;
    r4.xyz = r11.zzz ? r12.xyz : r4.xyz;
    r5.xyz = r11.zzz ? r6.xyz : r5.xyz;
    r4.xyz = r11.yyy ? cb3[1].xyz : r4.xyz;
    r5.xyz = r11.yyy ? -r10.xyz : r5.xyz;
    r7.xyz = r11.xxx ? r9.xyz : r4.xyz;
    r8.xyz = r11.xxx ? -r2.xyz : r5.xyz;
  }
  r0.z = r0.z * 6.28318548 + cb4[10].y;
  sincos(r0.z, r2.x, r4.x);
  r2.yzw = r4.xxx * r7.xyz;
  r2.yzw = r2.xxx * r8.xyz + r2.yzw;
  r4.yzw = r2.xxx * r7.zxy;
  r4.xyz = r4.xxx * r8.zxy + -r4.yzw;
  r0.zw = cb4[11].xy + v2.xy;
  r0.xy = r0.xy * r0.zw;
  r0.yzw = r0.yyy * r4.yzx;
  r0.xyz = r0.xxx * r2.yzw + r0.yzw;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = r4.zxy * r2.wyz;
  r1.xyz = r2.zwy * r4.xyz + -r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r5.xyz = cb2[1].xyz * r1.yyy;
  r5.xyz = r1.xxx * cb2[0].xyz + r5.xyz;
  r5.xyz = r1.zzz * cb2[2].xyz + r5.xyz;
  r0.w = cb1[142].z * cb5[16].y + r3.x;
  r6.x = cb5[17].x * r0.w;
  r0.w = cb1[142].z * cb5[17].y + r3.y;
  r6.y = cb5[17].z * r0.w;
  r0.w = t0.SampleLevel(s0_s, r6.xy, -1).x;
  r6.xyz = r5.xyz * r0.www;
  r6.xyz = r6.xyz * cb5[17].www + r0.xyz;
  r7.xyz = r4.xyz * r1.yzx;
  r4.xyz = r4.zxy * r1.zxy + -r7.xyz;
  r0.w = dot(r4.xyz, r2.yzw);
  r1.w = cmp(0 < r0.w);
  r0.w = cmp(r0.w < 0);
  r0.w = (int)-r1.w + (int)r0.w;
  o5.w = (int)r0.w;
  r0.w = cb1[139].z * cb5[16].y + r3.x;
  r4.x = cb5[17].x * r0.w;
  r0.w = cb1[139].z * cb5[17].y + r3.y;
  r4.y = cb5[17].z * r0.w;
  r0.w = t0.SampleLevel(s0_s, r4.xy, -1).x;
  r4.xyz = r5.xyz * r0.www;
  r0.xyz = r4.xyz * cb5[17].www + r0.xyz;
  r4.xyzw = cb1[92].xyzw * r0.yyyy;
  r4.xyzw = r0.xxxx * cb1[91].xyzw + r4.xyzw;
  r0.xyzw = r0.zzzz * cb1[93].xyzw + r4.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  r0.xyzw = cb1[1].xyzw * r6.yyyy;
  r0.xyzw = r6.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r6.zzzz * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r1.w = cmp(1 < asint(cb1[135].x));
  r2.x = 0.00100000005 * r0.w;
  r1.w = r1.w ? r2.x : 0;
  o0.z = r1.w + r0.z;
  o0.xyw = r0.xyw;
  o1.xyzw = r0.xyzw;
  o3.xy = r3.xy;
  o3.zw = float2(0,0);
  o4.xyz = r2.yzw;
  o4.w = 0;
  o5.xyz = r1.xyz;
  return;
}