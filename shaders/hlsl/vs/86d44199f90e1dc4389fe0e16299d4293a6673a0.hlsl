// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

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
  float4 cb3[4];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[185];
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
  out float4 o1 : TEXCOORD5,
  out float3 o2 : PARTICLE_LIGHTING_OFFSET0,
  out float4 o3 : TANGENTX0,
  out float4 o4 : TANGENTZ0,
  out float4 o5 : TEXCOORD7,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v0.x, vertex_id
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v1.x, instance_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (uint)v1.x << 4;
  r0.y = (uint)v0.x >> 2;
  r0.x = (int)r0.y + (int)r0.x;
  r0.x = (int)r0.x + asint(cb0[1].x);
  r0.xy = t4.Load(r0.x).xy;
  r1.xyzw = t5.SampleLevel(s4_s, r0.xy, 0).xyzw;
  r2.xyz = t6.SampleLevel(s5_s, r0.xy, 0).xyz;
  r3.xyzw = t7.SampleLevel(s6_s, r0.xy, 0).xyzw;
  r0.z = cmp(1 >= r1.w);
  r0.z = r0.z ? 1.000000 : 0;
  r4.xyz = cb2[1].xyz * r2.yyy;
  r2.xyw = r2.xxx * cb2[0].xyz + r4.xyz;
  r2.xyz = r2.zzz * cb2[2].xyz + r2.xyw;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r4.xy = cb4[0].zw * r1.ww + cb4[0].xy;
  r4.xyzw = t8.SampleLevel(s7_s, r4.xy, 0).xyzw;
  r4.xyzw = r4.xyzw * cb4[1].xyzw + cb4[2].xyzw;
  o1.xyzw = cb3[3].xyzw * r4.xyzw;
  r4.xy = cb4[3].zw * r1.ww + cb4[3].xy;
  r4.xyz = t8.SampleLevel(s7_s, r4.xy, 0).xyz;
  r4.xyz = r4.xyz * cb4[4].xyz + cb4[5].xyz;
  r5.xy = cmp(r3.xy < float2(0.5,0.5));
  r5.zw = r5.xy ? float2(0,0) : float2(-0.5,-0.5);
  r3.xy = r5.zw + r3.xy;
  r3.xy = r3.xy + r3.xy;
  r4.xy = cb3[0].xy * r4.xy;
  r5.zw = cb4[6].xy * r0.ww;
  r5.zw = max(float2(1,1), r5.zw);
  r5.zw = min(cb4[6].zw, r5.zw);
  r3.xy = r4.xy * r3.xy;
  r3.xy = r3.xy * r5.zw;
  r0.zw = r3.xy * r0.zz;
  r3.xy = float2(1,1) + -v2.xy;
  r3.xy = r5.xy ? r3.xy : v2.xy;
  r2.w = frac(r4.z);
  r2.w = r4.z + -r2.w;
  r4.x = r2.w / cb4[7].x;
  r4.y = cmp(r4.x >= -r4.x);
  r4.x = frac(abs(r4.x));
  r4.x = r4.y ? r4.x : -r4.x;
  r4.x = cb4[7].x * r4.x;
  r2.w = cb4[7].z * r2.w;
  r4.y = floor(r2.w);
  r3.xy = r4.xy + r3.xy;
  o0.xy = cb4[7].zw * r3.xy;
  r2.w = cb4[10].x * r3.w;
  r1.w = r2.w * r1.w + r3.z;
  r3.xyz = cb2[1].xyz * r1.yyy;
  r3.xyz = cb2[0].xyz * r1.xxx + r3.xyz;
  r1.xyz = cb2[2].xyz * r1.zzz + r3.xyz;
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
  r2.w = dot(r5.xyz, r5.xyz);
  r3.w = max(0.00999999978, r2.w);
  r3.w = sqrt(r3.w);
  r5.xyz = r5.xyz / r3.www;
  r3.w = cmp(0 < cb4[9].x);
  if (r3.w != 0) {
    r2.w = saturate(r2.w * cb4[9].y + -cb4[9].z);
    r6.xyz = float3(0,1,0) * r5.xyz;
    r6.xyz = r5.zxy * float3(1,0,0) + -r6.xyz;
    r3.w = dot(r6.xy, r6.xy);
    r3.w = max(0.00999999978, r3.w);
    r3.w = sqrt(r3.w);
    r6.xyz = r6.xyz / r3.www;
    r7.xyz = r6.yzx * r5.xyz;
    r7.xyz = r5.zxy * r6.zxy + -r7.xyz;
    r6.xyz = r6.xyz + -r3.xyz;
    r6.xyz = r2.www * r6.xyz + r3.xyz;
    r3.w = dot(r6.xyz, r6.xyz);
    r3.w = rsqrt(r3.w);
    r6.xyz = r6.xyz * r3.www;
    r7.xyz = r7.xyz + -r4.xyz;
    r7.xyz = r2.www * r7.xyz + r4.xyz;
    r2.w = dot(r7.xyz, r7.xyz);
    r2.w = rsqrt(r2.w);
    r7.xyz = r7.xyz * r2.www;
  } else {
    r2.xyz = float3(0,0,9.99999975e-005) + r2.xyz;
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = rsqrt(r2.w);
    r2.xyz = r2.xyz * r2.www;
    r8.xyz = r5.xyz * r2.yzx;
    r8.xyz = r5.zxy * r2.zxy + -r8.xyz;
    r2.w = dot(r8.xyz, r8.xyz);
    r2.w = max(0.00999999978, r2.w);
    r2.w = sqrt(r2.w);
    r8.xyz = r8.xyz / r2.www;
    r9.xyz = cb3[1].zxy * r5.zxy;
    r9.xyz = cb3[1].yzx * r5.xyz + -r9.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = max(0.00999999978, r2.w);
    r2.w = sqrt(r2.w);
    r9.xyz = r9.xyz / r2.www;
    r10.xyz = cmp(float3(0,0,0) < cb4[8].yzw);
    r11.xyz = float3(0,1,0) * r5.xyz;
    r11.xyz = r5.zxy * float3(1,0,0) + -r11.xyz;
    r2.w = dot(r11.xy, r11.xy);
    r2.w = max(0.00999999978, r2.w);
    r2.w = sqrt(r2.w);
    r11.xyz = r11.xyz / r2.www;
    r12.xyz = r11.yzx * r5.xyz;
    r5.xyz = r5.zxy * r11.zxy + -r12.xyz;
    r3.xyz = r10.zzz ? r11.xyz : r3.xyz;
    r4.xyz = r10.zzz ? r5.xyz : r4.xyz;
    r3.xyz = r10.yyy ? cb3[1].xyz : r3.xyz;
    r4.xyz = r10.yyy ? -r9.xyz : r4.xyz;
    r6.xyz = r10.xxx ? r8.xyz : r3.xyz;
    r7.xyz = r10.xxx ? -r2.xyz : r4.xyz;
  }
  r1.w = r1.w * 6.28318548 + cb4[10].y;
  sincos(r1.w, r2.x, r3.x);
  r2.yzw = r3.xxx * r6.xyz;
  r2.yzw = r2.xxx * r7.xyz + r2.yzw;
  r3.yzw = r2.xxx * r6.zxy;
  r3.xyz = r3.xxx * r7.zxy + -r3.yzw;
  r4.xy = cb4[11].xy + v2.xy;
  r0.zw = r4.xy * r0.zw;
  r4.xyz = r0.www * r3.yzx;
  r4.xyz = r0.zzz * r2.yzw + r4.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r0.xy = float2(10,10) + r0.xy;
  r0.x = r0.x * r0.y;
  r0.xyz = float3(1341.4563,2633.57788,5623.98291) * r0.xxx;
  r0.xyz = frac(r0.xyz);
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 0.5 * cb1[150].w;
  o2.xyz = r0.www * r0.xyz;
  r0.xyzw = cb1[1].xyzw * r1.yyyy;
  r0.xyzw = r1.xxxx * cb1[0].xyzw + r0.xyzw;
  r0.xyzw = r1.zzzz * cb1[2].xyzw + r0.xyzw;
  r0.xyzw = cb1[3].xyzw + r0.xyzw;
  r4.xyz = r3.zxy * r2.wyz;
  r4.xyz = r2.zwy * r3.xyz + -r4.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r5.xyz = r4.yzx * r3.xyz;
  r3.xyz = r3.zxy * r4.zxy + -r5.xyz;
  r1.w = dot(r3.xyz, r2.yzw);
  r2.x = cmp(0 < r1.w);
  r1.w = cmp(r1.w < 0);
  r1.w = (int)-r2.x + (int)r1.w;
  o4.w = (int)r1.w;
  r3.xyz = -cb1[68].xyz + r1.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r2.x = sqrt(r1.w);
  r5.xy = float2(9.99999975e-006,100) * cb1[159].xx;
  r3.w = -cb1[158].w + cb1[68].z;
  r3.w = cb1[159].y * r3.w;
  r5.zw = cb1[68].xy;
  r6.xy = r5.zw * r5.xx;
  r6.w = r3.w * r5.x + 6360.00977;
  r3.w = dot(r6.xyw, r6.xyw);
  r7.y = sqrt(r3.w);
  r1.w = rsqrt(r1.w);
  r8.xyz = r3.xyz * r1.www;
  r4.w = dot(r6.xyw, r8.xyz);
  r7.z = r4.w / r7.y;
  r5.z = r7.z * r7.z + -1;
  r5.w = r5.x * r2.x;
  r6.z = r2.x * r5.x + -cb1[159].w;
  r6.z = max(0, r6.z);
  r7.w = 0.100000001 * r6.z;
  r7.w = r7.w / cb1[159].w;
  r7.w = min(1, r7.w);
  r5.y = cmp(r5.w < r5.y);
  if (r5.y != 0) {
    r5.w = cb1[158].x * r7.w;
    r2.x = r2.x * r5.x + cb1[160].x;
    r7.x = max(1, r2.x);
  } else {
    r2.x = r3.w * r5.z + 40449600;
    r2.x = sqrt(r2.x);
    r7.x = -r4.w + -r2.x;
    r5.w = 1;
  }
  r2.x = r3.w * r5.z + 41344900;
  r2.x = sqrt(r2.x);
  r3.w = -r4.w + -r2.x;
  r4.w = cmp(0 < r3.w);
  r9.xyz = r3.www * r8.xyz + r6.xyw;
  r10.x = r7.x + -r3.w;
  r10.z = -0.000155520989 * r2.x;
  r9.xyz = r4.www ? r9.xyz : r6.xyw;
  r10.y = 6430;
  r10.xyz = r4.www ? r10.xyz : r7.xyz;
  r2.x = cmp(r10.y < 6360.01465);
  r3.w = 6360.01465 + -r10.y;
  r11.xyz = -r3.www * r8.xyz + r9.xyz;
  r12.x = r10.x + -r3.w;
  r3.w = dot(r11.xyz, r8.xyz);
  r12.z = 0.000157232338 * r3.w;
  r12.y = 6360.01465;
  r10.xyz = r2.xxx ? r12.xyz : r10.xyz;
  r3.w = cmp(6430 >= r10.y);
  r4.w = cmp(0 < r6.z);
  r3.w = r3.w ? r4.w : 0;
  if (r3.w != 0) {
    r9.xyz = r2.xxx ? r11.xyz : r9.xyz;
    r2.x = dot(r8.xyz, cb1[161].xyz);
    r3.w = dot(r9.xyz, cb1[161].xyz);
    r3.w = r3.w / r10.y;
    r4.w = 6360 / r10.y;
    r4.w = -r4.w * r4.w + 1;
    r4.w = sqrt(r4.w);
    r5.xz = float2(0.155000001,0.00499999989) + -r4.ww;
    r10.zw = max(r10.zz, r5.xz);
    r11.x = r5.y ? r10.z : r10.w;
    r5.x = -1.44269502 * r8.z;
    r5.x = exp2(r5.x);
    r12.y = saturate(-0.5 + r5.x);
    r5.x = cmp(r12.y < 1);
    r8.w = max(0.150000006, r8.z);
    r6.z = dot(r8.xyw, r8.xyw);
    r6.z = rsqrt(r6.z);
    r13.xyz = r8.xyw * r6.zzz;
    r14.xyz = r10.xxx * r13.xyz + r9.xyz;
    r6.z = dot(r14.xyz, r14.xyz);
    r6.z = sqrt(r6.z);
    r8.w = dot(r14.xyz, r13.xyz);
    r13.w = r8.w / r6.z;
    r11.yzw = r8.xyz;
    r13.xyzw = r5.xxxx ? r13.xyzw : r11.yzwx;
    r12.x = r13.w;
    r11.y = 0;
    r12.xy = r5.yy ? r12.xy : r11.xy;
    r5.x = r2.x * r2.x + 1;
    r6.z = 0.0596831031 * r5.x;
    r8.w = -r2.x * 1.60000002 + 1.63999999;
    r8.w = log2(abs(r8.w));
    r8.w = -1.5 * r8.w;
    r8.w = exp2(r8.w);
    r5.x = r8.w * r5.x;
    r14.x = 0.0162772108 * r5.x;
    r5.x = r10.y * r10.y;
    r8.w = r10.y * r10.y + -40449600;
    r8.w = sqrt(r8.w);
    r9.w = r12.x * r10.y;
    r10.z = r9.w * r9.w + -r5.x;
    r10.z = 40449600 + r10.z;
    r10.w = cmp(r9.w < 0);
    r11.y = cmp(0 < r10.z);
    r10.w = r10.w ? r11.y : 0;
    r15.xyzw = r10.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
    r10.w = asuint(cb1[182].w);
    r11.y = 0.5 / r10.w;
    r11.z = 0.00105685578 * r8.w;
    r10.w = 1 / r10.w;
    r10.w = 1 + -r10.w;
    r16.z = r11.z * r10.w + r11.y;
    r10.z = r15.y + r10.z;
    r10.z = sqrt(r10.z);
    r9.w = r9.w * r15.x + r10.z;
    r10.z = r15.z + r8.w;
    r9.w = r9.w / r10.z;
    r16.w = r9.w * 0.4921875 + r15.w;
    r9.w = max(-0.197500005, r3.w);
    r9.w = 5.34962368 * r9.w;
    r10.z = min(1, abs(r9.w));
    r11.z = max(1, abs(r9.w));
    r11.z = 1 / r11.z;
    r10.z = r11.z * r10.z;
    r11.z = r10.z * r10.z;
    r11.w = r11.z * 0.0208350997 + -0.0851330012;
    r11.w = r11.z * r11.w + 0.180141002;
    r11.w = r11.z * r11.w + -0.330299497;
    r11.z = r11.z * r11.w + 0.999866009;
    r11.w = r11.z * r10.z;
    r12.w = cmp(1 < abs(r9.w));
    r11.w = r11.w * -2 + 1.57079637;
    r11.w = r12.w ? r11.w : 0;
    r10.z = r10.z * r11.z + r11.w;
    r9.w = min(1, r9.w);
    r9.w = cmp(r9.w < -r9.w);
    r9.w = r9.w ? -r10.z : r10.z;
    r9.w = r9.w * 0.909090877 + 0.74000001;
    r9.w = r9.w * 0.484375 + 0.015625;
    r2.x = 1 + r2.x;
    r10.z = 3.5 * r2.x;
    r10.z = floor(r10.z);
    r2.x = r2.x * 3.5 + -r10.z;
    r9.w = r10.z + r9.w;
    r16.y = 0.125 * r9.w;
    r15.xyzw = t2.SampleLevel(s2_s, r16.ywz, 0).xyzw;
    r11.z = 1 + -r2.x;
    r9.w = 1 + r9.w;
    r16.x = 0.125 * r9.w;
    r17.xyzw = t2.SampleLevel(s2_s, r16.xwz, 0).xyzw;
    r17.xyzw = r17.xyzw * r2.xxxx;
    r15.xyzw = r15.xyzw * r11.zzzz + r17.xyzw;
    r15.xyzw = max(float4(0,0,0,0), r15.xyzw);
    r9.w = cmp(0 < r10.x);
    if (r9.w != 0) {
      r9.xyz = r10.xxx * r8.xyz + r9.xyz;
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = sqrt(r9.w);
      r11.w = 0.5 / cb1[159].z;
      r11.w = r11.w * r10.y;
      r11.w = sqrt(r11.w);
      r12.w = r10.x / r10.y;
      r12.z = r12.x + r12.w;
      r17.xy = r12.xz * r11.ww;
      r17.zw = cmp(float2(0,0) < r17.xy);
      r18.xy = cmp(r17.xy < float2(0,0));
      r17.zw = (int2)-r17.zw + (int2)r18.xy;
      r17.zw = (int2)r17.zw;
      r18.xyz = r17.xxy * r17.xxy;
      r11.w = cmp(r17.z < r17.w);
      r12.w = 1.44269502 * r18.x;
      r12.w = exp2(r12.w);
      r11.w = r11.w ? r12.w : 0;
      r18.xy = r18.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r18.xy = sqrt(r18.xy);
      r17.xy = abs(r17.xy) * float2(2.31929994,2.31929994) + r18.xy;
      r17.xy = r17.zw / r17.xy;
      r12.w = -r10.x / cb1[159].z;
      r13.w = r10.y + r10.y;
      r17.z = r10.x / r13.w;
      r17.z = r17.z + r12.x;
      r12.w = r17.z * r12.w;
      r12.w = 1.44269502 * r12.w;
      r18.y = exp2(r12.w);
      r18.xz = float2(1,1);
      r17.xy = r18.xy * r17.xy;
      r12.w = cb1[159].z * r10.y;
      r12.w = 6.28310013 * r12.w;
      r12.w = sqrt(r12.w);
      r17.w = 6360 + -r10.y;
      r18.x = r17.w / cb1[159].z;
      r18.x = 1.44269502 * r18.x;
      r18.x = exp2(r18.x);
      r12.w = r18.x * r12.w;
      r17.x = dot(r17.xy, float2(1,-1));
      r11.w = r17.x + r11.w;
      r11.w = r12.w * r11.w;
      r17.xy = float2(0.416666657,7.53972054) * r10.yy;
      r17.xy = sqrt(r17.xy);
      r12.zw = r17.xx * r12.xz;
      r18.xy = cmp(float2(0,0) < r12.zw);
      r19.xy = cmp(r12.zw < float2(0,0));
      r18.xy = (int2)-r18.xy + (int2)r19.xy;
      r18.xy = (int2)r18.xy;
      r19.xyz = r12.zzw * r12.zzw;
      r17.x = cmp(r18.x < r18.y);
      r19.x = 1.44269502 * r19.x;
      r19.x = exp2(r19.x);
      r17.x = r17.x ? r19.x : 0;
      r19.xy = r19.yz * float2(1.51999998,1.51999998) + float2(4,4);
      r19.xy = sqrt(r19.xy);
      r12.zw = abs(r12.zw) * float2(2.31929994,2.31929994) + r19.xy;
      r12.zw = r18.xy / r12.zw;
      r17.z = r17.z * -r10.x;
      r17.z = 1.20224583 * r17.z;
      r18.w = exp2(r17.z);
      r12.zw = r18.zw * r12.zw;
      r17.z = 1.20224583 * r17.w;
      r17.z = exp2(r17.z);
      r17.y = r17.y * r17.z;
      r12.z = dot(r12.zw, float2(1,-1));
      r12.z = r17.x + r12.z;
      r12.z = r17.y * r12.z;
      r12.z = 0.00444444455 * r12.z;
      r17.xyz = r11.www * float3(-0.00579999993,-0.0135000004,-0.0331000015) + -r12.zzz;
      r17.xyz = float3(1.44269502,1.44269502,1.44269502) * r17.xyz;
      r17.xyz = exp2(r17.xyz);
      r11.w = max(r9.w, r10.y);
      r11.w = r5.y ? r11.w : r9.w;
      r12.z = cmp(6360.00977 < r11.w);
      if (r12.z != 0) {
        r12.z = cmp(r12.y < 1);
        if (r12.z != 0) {
          r13.xyz = r5.yyy ? r13.xyz : r8.xyz;
          r12.z = dot(r9.xyz, r13.xyz);
          r12.z = r12.z / r9.w;
          r9.x = dot(r9.xyz, cb1[161].xyz);
          r9.x = r9.x / r9.w;
          r9.y = r11.w * r11.w;
          r9.z = r11.w * r11.w + -40449600;
          r9.z = sqrt(r9.z);
          r9.w = r12.z * r11.w;
          r9.y = r9.w * r9.w + -r9.y;
          r9.y = 40449600 + r9.y;
          r11.w = cmp(r9.w < 0);
          r12.z = cmp(0 < r9.y);
          r11.w = r11.w ? r12.z : 0;
          r18.xyzw = r11.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
          r11.w = r9.z * r10.w;
          r19.y = r11.w * 0.00105685578 + r11.y;
          r9.yz = r18.yz + r9.yz;
          r9.y = sqrt(r9.y);
          r9.y = r9.w * r18.x + r9.y;
          r9.y = r9.y / r9.z;
          r19.x = r9.y * 0.4921875 + r18.w;
          r9.x = max(-0.197500005, r9.x);
          r9.x = 5.34962368 * r9.x;
          r9.y = min(1, abs(r9.x));
          r9.z = max(1, abs(r9.x));
          r9.z = 1 / r9.z;
          r9.y = r9.y * r9.z;
          r9.z = r9.y * r9.y;
          r9.w = r9.z * 0.0208350997 + -0.0851330012;
          r9.w = r9.z * r9.w + 0.180141002;
          r9.w = r9.z * r9.w + -0.330299497;
          r9.z = r9.z * r9.w + 0.999866009;
          r9.w = r9.y * r9.z;
          r11.w = cmp(1 < abs(r9.x));
          r9.w = r9.w * -2 + 1.57079637;
          r9.w = r11.w ? r9.w : 0;
          r9.y = r9.y * r9.z + r9.w;
          r9.x = min(1, r9.x);
          r9.x = cmp(r9.x < -r9.x);
          r9.x = r9.x ? -r9.y : r9.y;
          r9.x = r9.x * 0.909090877 + 0.74000001;
          r9.x = r9.x * 0.484375 + r10.z;
          r9.xy = float2(0.015625,1.015625) + r9.xx;
          r19.zw = float2(0.125,0.125) * r9.xy;
          r9.xyzw = t2.SampleLevel(s2_s, r19.zxy, 0).xyzw;
          r18.xyzw = t2.SampleLevel(s2_s, r19.wxy, 0).xyzw;
          r18.xyzw = r18.xyzw * r2.xxxx;
          r9.xyzw = r9.xyzw * r11.zzzz + r18.xyzw;
          r9.xyzw = -r17.xyzx * r9.xyzw + r15.xyzw;
          r15.xyzw = max(float4(0,0,0,0), r9.xyzw);
          if (r5.y == 0) {
            r9.x = r12.x + r4.w;
            r9.y = cmp(abs(r9.x) < 0.00499999989);
            if (r9.y != 0) {
              r9.x = 0.00499999989 + r9.x;
              r9.x = 100 * r9.x;
              r4.w = -0.00499999989 + -r4.w;
              r9.y = r10.x * r10.x + r5.x;
              r9.z = r13.w * r10.x;
              r9.w = r9.z * r4.w + r9.y;
              r9.w = sqrt(r9.w);
              r10.z = r10.y * r4.w;
              r4.w = r10.y * r4.w + r10.x;
              r4.w = r4.w / r9.w;
              r4.w = max(r5.z, r4.w);
              r11.w = r10.z * r10.z + -r5.x;
              r11.w = 40449600 + r11.w;
              r12.x = cmp(r10.z < 0);
              r12.z = cmp(0 < r11.w);
              r12.x = r12.z ? r12.x : 0;
              r13.xyzw = r12.xxxx ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r11.w = r13.y + r11.w;
              r11.w = sqrt(r11.w);
              r10.z = r10.z * r13.x + r11.w;
              r11.w = r13.z + r8.w;
              r10.z = r10.z / r11.w;
              r13.x = r10.z * 0.4921875 + r13.w;
              r13.yz = r16.yz;
              r18.xyzw = t2.SampleLevel(s2_s, r13.yxz, 0).xyzw;
              r16.y = r13.x;
              r20.xyzw = t2.SampleLevel(s2_s, r16.xyz, 0).xyzw;
              r20.xyzw = r20.xyzw * r2.xxxx;
              r18.xyzw = r18.xyzw * r11.zzzz + r20.xyzw;
              r10.z = r9.w * r9.w;
              r11.w = r9.w * r9.w + -40449600;
              r11.w = sqrt(r11.w);
              r4.w = r9.w * r4.w;
              r9.w = r4.w * r4.w + -r10.z;
              r9.w = 40449600 + r9.w;
              r10.z = cmp(r4.w < 0);
              r12.x = cmp(0 < r9.w);
              r10.z = r10.z ? r12.x : 0;
              r20.xyzw = r10.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r10.z = r11.w * r10.w;
              r19.y = r10.z * 0.00105685578 + r11.y;
              r9.w = r20.y + r9.w;
              r9.w = sqrt(r9.w);
              r4.w = r4.w * r20.x + r9.w;
              r9.w = r20.z + r11.w;
              r4.w = r4.w / r9.w;
              r19.x = r4.w * 0.4921875 + r20.w;
              r20.xyzw = t2.SampleLevel(s2_s, r19.zxy, 0).xyzw;
              r21.xyzw = t2.SampleLevel(s2_s, r19.wxy, 0).xyzw;
              r21.xyzw = r21.xyzw * r2.xxxx;
              r20.xyzw = r20.xyzw * r11.zzzz + r21.xyzw;
              r18.xyzw = -r17.xyzx * r20.xyzw + r18.xyzw;
              r18.xyzw = max(float4(0,0,0,0), r18.xyzw);
              r4.w = r9.z * r5.z + r9.y;
              r4.w = sqrt(r4.w);
              r9.y = r10.y * r5.z;
              r9.z = r10.y * r5.z + r10.x;
              r9.z = r9.z / r4.w;
              r5.z = max(r9.z, r5.z);
              r9.z = r9.y * r9.y + -r5.x;
              r9.z = 40449600 + r9.z;
              r9.w = cmp(r9.y < 0);
              r10.x = cmp(0 < r9.z);
              r9.w = r9.w ? r10.x : 0;
              r20.xyzw = r9.wwww ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.z = r20.y + r9.z;
              r9.z = sqrt(r9.z);
              r9.y = r9.y * r20.x + r9.z;
              r9.z = r20.z + r8.w;
              r9.y = r9.y / r9.z;
              r13.w = r9.y * 0.4921875 + r20.w;
              r20.xyzw = t2.SampleLevel(s2_s, r13.ywz, 0).xyzw;
              r16.w = r13.w;
              r13.xyzw = t2.SampleLevel(s2_s, r16.xwz, 0).xyzw;
              r13.xyzw = r13.xyzw * r2.xxxx;
              r13.xyzw = r20.xyzw * r11.zzzz + r13.xyzw;
              r9.y = r4.w * r4.w;
              r9.z = r4.w * r4.w + -40449600;
              r9.z = sqrt(r9.z);
              r4.w = r5.z * r4.w;
              r5.z = r4.w * r4.w + -r9.y;
              r5.z = 40449600 + r5.z;
              r9.y = cmp(r4.w < 0);
              r9.w = cmp(0 < r5.z);
              r9.y = r9.w ? r9.y : 0;
              r20.xyzw = r9.yyyy ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r9.y = r9.z * r10.w;
              r19.y = r9.y * 0.00105685578 + r11.y;
              r5.z = r20.y + r5.z;
              r5.z = sqrt(r5.z);
              r4.w = r4.w * r20.x + r5.z;
              r5.z = r20.z + r9.z;
              r4.w = r4.w / r5.z;
              r19.x = r4.w * 0.4921875 + r20.w;
              r20.xyzw = t2.SampleLevel(s2_s, r19.zxy, 0).xyzw;
              r19.xyzw = t2.SampleLevel(s2_s, r19.wxy, 0).xyzw;
              r19.xyzw = r19.xyzw * r2.xxxx;
              r19.xyzw = r20.xyzw * r11.zzzz + r19.xyzw;
              r13.xyzw = -r17.xyzx * r19.xyzw + r13.xyzw;
              r13.xyzw = max(float4(0,0,0,0), r13.xyzw);
              r13.xyzw = r13.xyzw + -r18.xyzw;
              r15.xyzw = r9.xxxx * r13.xyzw + r18.xyzw;
            }
          } else {
            r4.w = cmp(0 < r12.y);
            if (r4.w != 0) {
              r9.xyzw = float4(1,1,1,1) + -r17.xyzx;
              r4.w = r11.x * r10.y;
              r5.x = r4.w * r4.w + -r5.x;
              r5.x = 40449600 + r5.x;
              r5.z = cmp(r4.w < 0);
              r10.x = cmp(0 < r5.x);
              r5.z = r5.z ? r10.x : 0;
              r10.xyzw = r5.zzzz ? float4(1,0,0,0.49609375) : float4(-1,895300,946.202942,0.50390625);
              r5.x = r10.y + r5.x;
              r5.x = sqrt(r5.x);
              r4.w = r4.w * r10.x + r5.x;
              r5.x = r10.z + r8.w;
              r4.w = r4.w / r5.x;
              r10.y = r4.w * 0.4921875 + r10.w;
              r10.xz = r16.yz;
              r13.xyzw = t2.SampleLevel(s2_s, r10.xyz, 0).xyzw;
              r10.xz = r16.xz;
              r10.xyzw = t2.SampleLevel(s2_s, r10.xyz, 0).xyzw;
              r10.xyzw = r10.xyzw * r2.xxxx;
              r10.xyzw = r13.xyzw * r11.zzzz + r10.xyzw;
              r10.xyzw = max(float4(0,0,0,0), r10.xyzw);
              r9.xyzw = r9.xyzw * r10.xyzw + -r15.xyzw;
              r15.xyzw = r12.yyyy * r9.xyzw + r15.xyzw;
            }
          }
        } else {
          r9.xyzw = float4(1,1,1,1) + -r17.xyzx;
          r15.xyzw = r9.xyzw * r15.xyzw;
        }
      }
    } else {
      r17.xyz = float3(1,1,1);
    }
    r2.x = saturate(50 * r3.w);
    r3.w = r2.x * -2 + 3;
    r2.x = r2.x * r2.x;
    r2.x = r3.w * r2.x;
    r2.x = r15.w * r2.x;
    r9.xyz = r15.xyz * r2.xxx;
    r2.x = max(9.99999975e-005, r15.x);
    r9.xyz = r9.xyz / r2.xxx;
    r14.yzw = float3(1,0.429629624,0.175226584);
    r9.xyz = r9.xyz * r14.yxx;
    r9.xyz = r9.xyz * r14.xzw;
    r9.xyz = r15.xyz * r6.zzz + r9.xyz;
    r9.xyz = max(float3(0,0,0), r9.xyz);
  } else {
    r17.xyz = float3(1,1,1);
    r9.xyz = float3(0,0,0);
  }
  r5.xz = asint(cb1[182].zz) & int2(2,1);
  if (r5.x == 0) {
    r2.x = cmp(0 < r7.x);
    if (r2.x != 0) {
      r6.xyz = r7.xxx * r8.xyz + r6.xyw;
      r2.x = dot(r6.xyz, r6.xyz);
      r2.x = sqrt(r2.x);
      r6.xyz = r6.xyz / r2.xxx;
      r3.w = dot(r6.xyz, cb1[161].xyz);
      r2.x = -6360 + r2.x;
      r10.z = 0.0142857144 * r2.x;
      r11.y = sqrt(r10.z);
      r11.zw = float2(0.150000006,0.200000003) + r3.ww;
      r10.xy = float2(12.262105,0.833333313) * r11.zw;
      r2.x = min(1, abs(r10.x));
      r4.w = max(1, abs(r10.x));
      r4.w = 1 / r4.w;
      r2.x = r4.w * r2.x;
      r4.w = r2.x * r2.x;
      r5.x = r4.w * 0.0208350997 + -0.0851330012;
      r5.x = r4.w * r5.x + 0.180141002;
      r5.x = r4.w * r5.x + -0.330299497;
      r4.w = r4.w * r5.x + 0.999866009;
      r5.x = r4.w * r2.x;
      r6.w = cmp(1 < abs(r10.x));
      r5.x = r5.x * -2 + 1.57079637;
      r5.x = r6.w ? r5.x : 0;
      r2.x = r2.x * r4.w + r5.x;
      r4.w = min(1, r10.x);
      r4.w = cmp(r4.w < -r4.w);
      r2.x = r4.w ? -r2.x : r2.x;
      r11.x = 0.666666687 * r2.x;
      r11.xyz = t0.SampleLevel(s0_s, r11.xy, 0).xyz;
      r11.xyz = r5.yyy ? float3(0,0,0) : r11.xyz;
      r10.xyz = t1.SampleLevel(s1_s, r10.yz, 0).xyz;
      r2.x = max(0, r3.w);
      r10.xyz = r2.xxx * r11.xyz + r10.xyz;
      r10.xyz = float3(0.00318309898,0.00318309898,0.00318309898) * r10.xyz;
      r3.xyz = -r3.xyz * r1.www + cb1[161].xyz;
      r1.w = dot(r3.xyz, r3.xyz);
      r1.w = rsqrt(r1.w);
      r3.xyz = r3.xyz * r1.www;
      r1.w = dot(-r8.xyz, r3.xyz);
      r1.w = 1 + -r1.w;
      r2.x = r1.w * r1.w;
      r2.x = r2.x * r2.x;
      r1.w = r2.x * r1.w;
      r1.w = r1.w * 0.980000019 + 0.0199999996;
      r2.x = dot(r3.xyz, r6.xyz);
      r2.x = max(0, r2.x);
      r2.x = log2(r2.x);
      r2.x = 150 * r2.x;
      r2.x = exp2(r2.x);
      r1.w = r2.x * r1.w;
      r1.w = max(0, r1.w);
      r3.xyz = r1.www * r11.xyz + r10.xyz;
      r3.xyz = r5.yyy ? r10.xyz : r3.xyz;
      r3.xyz = r17.xyz * r3.xyz;
    } else {
      r3.xyz = float3(0,0,0);
    }
  } else {
    r3.xyz = float3(0,0,0);
  }
  if (r5.z == 0) {
    r1.w = cmp(6430 >= r7.y);
    r5.xy = float2(-6360,0.150000006) + r7.yz;
    r5.xy = float2(0.0142857144,12.262105) * r5.xy;
    r6.y = sqrt(r5.x);
    r2.x = min(1, abs(r5.y));
    r3.w = max(1, abs(r5.y));
    r3.w = 1 / r3.w;
    r2.x = r3.w * r2.x;
    r3.w = r2.x * r2.x;
    r4.w = r3.w * 0.0208350997 + -0.0851330012;
    r4.w = r3.w * r4.w + 0.180141002;
    r4.w = r3.w * r4.w + -0.330299497;
    r3.w = r3.w * r4.w + 0.999866009;
    r4.w = r3.w * r2.x;
    r5.x = cmp(1 < abs(r5.y));
    r4.w = r4.w * -2 + 1.57079637;
    r4.w = r5.x ? r4.w : 0;
    r2.x = r2.x * r3.w + r4.w;
    r3.w = min(1, r5.y);
    r3.w = cmp(r3.w < -r3.w);
    r2.x = r3.w ? -r2.x : r2.x;
    r6.x = 0.666666687 * r2.x;
    r5.xyz = t0.SampleLevel(s0_s, r6.xy, 0).xyz;
    r5.xyz = r1.www ? r5.xyz : float3(1,1,1);
    r1.w = cmp(0 < r7.x);
    r2.x = dot(r8.xyz, cb1[161].xyz);
    r2.x = cmp(r2.x >= cb1[169].x);
    r2.x = r2.x ? 1.000000 : 0;
    r5.xyz = r5.xyz * r2.xxx;
    r5.xyz = cb1[167].xyz * r5.xyz;
    r5.xyz = r1.www ? float3(0,0,0) : r5.xyz;
  } else {
    r5.xyz = float3(0,0,0);
  }
  r3.xyz = r5.xyz + r3.xyz;
  r3.xyz = r3.xyz + r9.xyz;
  r1.w = cb1[157].w * r5.w;
  r5.xyz = cb1[163].xyz * r1.www;
  r3.xyz = r5.xyz * r3.xyz;
  r1.w = saturate(r17.x * cb1[158].y + -cb1[158].z);
  r2.x = 1 + -r7.w;
  r4.w = 1 + -r1.w;
  r3.w = r2.x * r4.w + r1.w;
  r1.w = cmp(0 < cb1[182].y);
  if (r1.w != 0) {
    r1.w = cmp(0 != cb1[184].x);
    r5.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb1[68].xyz;
    r6.xy = r0.xy / r0.ww;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.xyz = r1.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r5.xyz;
    r2.x = dot(r1.xyz, r1.xyz);
    r4.w = sqrt(r2.x);
    r4.w = -cb1[181].x + r4.w;
    r4.w = max(0, r4.w);
    r4.w = cb1[182].x * r4.w;
    r4.w = cb1[181].z * r4.w;
    r5.z = sqrt(r4.w);
    r4.w = cb1[181].y * r5.z;
    r5.w = cmp(r4.w < 0.707106769);
    r4.w = dot(r4.ww, r4.ww);
    r4.w = min(1, r4.w);
    r4.w = r5.w ? r4.w : 1;
    r2.x = rsqrt(r2.x);
    r1.xyz = r2.xxx * r1.xyz;
    r2.x = -r1.z * r1.z + 1;
    r2.x = sqrt(r2.x);
    r7.y = r1.z * 0.5 + 0.5;
    r1.xy = r1.xy / r2.xx;
    r1.z = 1 + -abs(r1.x);
    r1.z = sqrt(r1.z);
    r2.x = abs(r1.x) * -0.0187292993 + 0.0742610022;
    r2.x = r2.x * abs(r1.x) + -0.212114394;
    r2.x = r2.x * abs(r1.x) + 1.57072878;
    r5.w = r2.x * r1.z;
    r5.w = r5.w * -2 + 3.14159274;
    r1.x = cmp(r1.x < -r1.x);
    r1.x = r1.x ? r5.w : 0;
    r1.x = r2.x * r1.z + r1.x;
    r1.y = cmp(r1.y < 0);
    r1.z = 6.28318548 + -r1.x;
    r1.x = r1.y ? r1.z : r1.x;
    r7.x = 0.159154937 * r1.x;
    r1.xy = cb1[180].zw * float2(0.5,0.5) + r7.xy;
    r6.zw = float2(1,1) + cb1[180].xy;
    r6.zw = cb1[180].xy / r6.zw;
    r1.xy = r6.zw * r1.xy;
    r5.xy = r1.ww ? r1.xy : r6.xy;
    r1.xyzw = t3.SampleLevel(s3_s, r5.xyz, 0).xyzw;
    r1.xyz = r1.xyz * r4.www;
    r1.w = 1 + -r1.w;
    r1.w = -r4.w * r1.w + 1;
    r1.xyz = cb1[135].zzz * r1.xyz;
    o5.xyz = r1.xyz * r3.www + r3.xyz;
    o5.w = r3.w * r1.w;
  } else {
    o5.xyzw = r3.xyzw;
  }
  o0.zw = float2(0,0);
  o3.xyz = r2.yzw;
  o3.w = 0;
  o4.xyz = r4.xyz;
  o6.xyzw = r0.xyzw;
  return;
}