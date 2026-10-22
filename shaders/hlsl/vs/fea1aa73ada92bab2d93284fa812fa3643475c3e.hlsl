// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[37];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[143];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : ATTRIBUTE0,
  float3 v1 : ATTRIBUTE1,
  float4 v2 : ATTRIBUTE2,
  float4 v3 : ATTRIBUTE3,
  float2 v4 : ATTRIBUTE4,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out float4 o2 : TEXCOORD0,
  out float4 o3 : TEXCOORD7,
  out float4 o4 : TEXCOORD6,
  out float3 o5 : TEXCOORD8,
  out float4 o6 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = float3(3,3,3) * cb0[2].zxy;
  r0.xyz = cb0[1].zxy * float3(6,6,6) + r0.xyz;
  r0.xyz = cb0[5].zxy * float3(3,3,3) + r0.xyz;
  r0.xyz = -cb0[4].zxy * float3(6,6,6) + r0.xyz;
  r1.xyz = float3(4,4,4) * cb0[2].zxy;
  r1.xyz = cb0[1].zxy * float3(-6,-6,-6) + -r1.xyz;
  r1.xyz = -cb0[5].zxy * float3(2,2,2) + r1.xyz;
  r1.xyz = cb0[4].zxy * float3(6,6,6) + r1.xyz;
  r0.w = dot(v0.xyz, cb0[8].xyz);
  r0.w = r0.w * cb0[7].w + -cb0[5].w;
  r1.xyz = r1.xyz * r0.www;
  r1.w = r0.w * r0.w;
  r0.xyz = r0.xyz * r1.www + r1.xyz;
  r0.xyz = cb0[2].zxy + r0.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r1.xyz = cb0[7].zxy * r0.zxy;
  r1.xyz = cb0[7].yzx * r0.xyz + -r1.xyz;
  r2.x = dot(r1.xyz, r1.xyz);
  r2.x = rsqrt(r2.x);
  r1.xyz = r2.xxx * r1.xyz;
  r2.xyz = r1.yzx * r0.xyz;
  r2.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = cmp(0 != cb0[4].w);
  r3.x = saturate(r0.w);
  r3.y = r3.x * -2 + 3;
  r3.x = r3.x * r3.x;
  r3.x = r3.y * r3.x;
  r2.w = r2.w ? r3.x : r0.w;
  r3.x = cb0[2].w + -cb0[1].w;
  r3.x = r2.w * r3.x + cb0[1].w;
  sincos(r3.x, r3.x, r4.x);
  r3.yzw = r3.xxx * r2.xyz;
  r3.yzw = r4.xxx * r1.xyz + -r3.yzw;
  r5.xyzw = cb0[6].xyzw + -cb0[3].xyzw;
  r5.xyzw = r2.wwww * r5.xyzw + cb0[3].xyzw;
  r4.yz = cmp(float2(0,0) < r5.xy);
  r6.xy = cmp(r5.xy < float2(0,0));
  r4.yz = (int2)-r4.yz + (int2)r6.xy;
  r4.yz = (int2)r4.yz;
  r6.xyz = r4.yyy * r3.yzw;
  r3.yzw = r5.xxx * r3.yzw;
  r7.xyz = cb0[9].xyz * r6.xxx;
  r7.xyz = cb0[8].xyz * r0.yyy + r7.xyz;
  r8.xyz = r3.xxx * r1.xyz;
  r4.xyw = r4.xxx * r2.xyz + r8.xyz;
  r8.xyz = r4.xyw * r4.zzz;
  r4.xyz = r4.xyw * r5.yyy;
  r7.xyz = cb0[10].xyz * r8.xxx + r7.xyz;
  r9.x = dot(v1.xyz, r7.xyz);
  r7.z = dot(v2.xyz, r7.xyz);
  r6.xyw = cb0[9].xyz * r6.yyy;
  r10.xyz = cb0[9].xyz * r6.zzz;
  r10.xyz = cb0[8].xyz * r0.xxx + r10.xyz;
  r0.xyz = cb0[8].xyz * r0.zzz + r6.xyw;
  r0.xyz = cb0[10].xyz * r8.yyy + r0.xyz;
  r6.xyz = cb0[10].xyz * r8.zzz + r10.xyz;
  r9.y = dot(v1.xyz, r0.xyz);
  r7.x = dot(v2.xyz, r0.xyz);
  r9.z = dot(v1.xyz, r6.xyz);
  r7.y = dot(v2.xyz, r6.xyz);
  r0.xyz = r9.xyz * r7.xyz;
  r0.xyz = r7.zxy * r9.yzx + -r0.xyz;
  r0.xyz = v2.www * r0.xyz;
  r6.xyz = r0.xyz * r7.xyz;
  r0.xyz = r0.zxy * r7.yzx + -r6.xyz;
  r0.xyz = v2.www * r0.xyz;
  r6.xyz = cb2[4].yyy * cb2[1].xyz;
  r8.xyz = r6.xyz * r0.yyy;
  r6.xyz = r7.xxx * r6.xyz;
  r9.xyz = cb2[4].xxx * cb2[0].xyz;
  r8.xyz = r0.xxx * r9.xyz + r8.xyz;
  r6.xyz = r7.zzz * r9.xyz + r6.xyz;
  r7.xzw = cb2[4].zzz * cb2[2].xyz;
  o0.xyz = r0.zzz * r7.xzw + r8.xyz;
  r0.xyz = r7.yyy * r7.xzw + r6.xyz;
  o0.w = 0;
  o1.xyz = r0.xyz;
  o5.xyz = r0.xyz;
  o1.w = cb2[4].w * v2.w;
  o2.xy = v4.xy;
  o2.zw = float2(0,0);
  r0.x = r1.w * r0.w;
  r0.y = -r1.w * 2 + r0.x;
  r0.y = r0.y + r0.w;
  r0.z = r1.w * r0.w + -r1.w;
  r0.w = 3 * r1.w;
  r6.xyz = cb0[2].xyz * r0.yyy;
  r0.y = r0.x * 2 + -r0.w;
  r0.x = r0.x * -2 + r0.w;
  r0.y = 1 + r0.y;
  r6.xyz = r0.yyy * cb0[1].xyz + r6.xyz;
  r0.yzw = r0.zzz * cb0[5].xyz + r6.xyz;
  r0.xyz = r0.xxx * cb0[4].xyz + r0.yzw;
  r0.xyz = r5.zzz * r1.xyz + r0.xyz;
  r0.xyw = r5.www * r2.xyz + r0.xyz;
  r1.w = r0.x;
  r2.xyz = cb0[10].xyz * r4.xxx;
  r1.xyz = cb0[9].xyz * r3.yyy + r2.xyz;
  r1.x = dot(v0.xyzw, r1.xyzw);
  r2.w = r0.y;
  r1.yzw = cb0[10].xyz * r4.yyy;
  r4.xyz = cb0[10].xyz * r4.zzz;
  r0.xyz = cb0[9].xyz * r3.www + r4.xyz;
  r2.xyz = cb0[9].xyz * r3.zzz + r1.yzw;
  r1.y = dot(v0.xyzw, r2.xyzw);
  r1.yzw = cb2[1].xyz * r1.yyy;
  r1.xyz = cb2[0].xyz * r1.xxx + r1.yzw;
  r0.x = dot(v0.xyzw, r0.xyzw);
  r0.xyz = cb2[2].xyz * r0.xxx + r1.xyz;
  r1.xyz = cb2[3].xyz + cb1[70].xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = -cb1[70].xyz + r0.xyz;
  r1.xyz = r1.xyz / cb3[24].zzz;
  r0.w = cb3[23].y * cb1[142].z;
  r1.xyz = r0.www * float3(-0.5,-0.5,-0.5) + r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) + r1.xyz;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyz = -abs(r1.xyz) * float3(2,2,2) + float3(3,3,3);
  r1.xyz = abs(r1.xyz) * abs(r1.xyz);
  r1.xyz = r1.xyz * r2.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.yzw = -cb1[70].zxy + r0.zxy;
  r2.xy = r1.zw / cb3[23].ww;
  r2.xy = r0.ww * float2(0.353553385,-0.353553385) + r2.xy;
  r2.xy = float2(0.5,0.5) + r2.xy;
  r2.xy = frac(r2.xy);
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.zw = -abs(r2.xy) * float2(2,2) + float2(3,3);
  r2.xy = abs(r2.xy) * abs(r2.xy);
  r2.xy = r2.xy * r2.zw;
  r0.w = dot(float2(-0.707106769,0.707106769), r2.xy);
  r0.w = r0.w + r1.x;
  r0.w = 6.28318548 * r0.w;
  sincos(r0.w, r1.x, r2.x);
  r2.yzw = float3(0,7.07106781,-7.07106781) * r1.xxx;
  r2.xyz = r2.xxx * float3(10,0,0) + r2.yzw;
  r2.xyz = float3(-10,0,0) + r2.xyz;
  r2.xyz = cb3[24].www * r2.xyz;
  r3.xy = r1.zw / cb3[26].yy;
  r4.z = cb3[26].x * cb1[142].z;
  r4.xy = cb3[25].xw * cb1[142].zz;
  r3.xy = r4.yz + r3.xy;
  r0.w = 6.28318548 * r4.x;
  r0.w = sin(r0.w);
  r0.w = r0.w * 0.5 + 0.75;
  r1.x = t0.SampleLevel(s0_s, r3.xy, -1).x;
  r1.x = cb3[26].z * r1.x;
  r2.w = log2(r1.x);
  r1.x = cmp(0 >= r1.x);
  r2.w = cb3[26].w * r2.w;
  r2.w = exp2(r2.w);
  r1.x = r1.x ? 0 : r2.w;
  r1.x = saturate(cb3[27].x + r1.x);
  r2.w = 0.5 + cb1[142].z;
  r2.w = cb3[25].x * r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.75;
  r0.w = -r2.w + r0.w;
  r0.w = r1.x * r0.w + r2.w;
  r0.w = cb3[27].y * r0.w;
  r0.w = cb3[27].z * r0.w;
  r2.xyz = r2.xyz * r0.www + float3(1,1,1);
  r0.w = 1 + -v4.y;
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = cb3[35].yzw * r2.xyz;
  r2.w = cb3[36].x * r2.x;
  r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
  r3.xyz = floor(r3.xyz);
  r3.xyz = r3.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r1.xzw = -r3.xyz + r1.yzw;
  r1.zw = float2(9.99999975e-005,9.99999975e-005) * r1.zw;
  r0.w = r1.x * 9.99999975e-005 + 0.200000003;
  r3.xy = t2.SampleLevel(s2_s, r1.zw, -1).xy;
  r4.xyz = t1.SampleLevel(s1_s, r1.zw, -1).xyz;
  r1.xz = t3.SampleLevel(s3_s, r1.zw, -1).xy;
  r1.xz = float2(-1,-1) + r1.xz;
  r1.w = r4.x + -r4.y;
  r1.w = max(9.99999975e-005, r1.w);
  r2.x = cb3[34].y + r4.y;
  r3.z = -r2.x + r0.w;
  r0.w = -r4.z + r0.w;
  r2.x = r2.x + -r4.z;
  r2.x = max(9.99999975e-005, r2.x);
  r3.z = max(0, r3.z);
  r1.w = r3.z / r1.w;
  r1.w = min(1, r1.w);
  r3.z = 1 + -r1.w;
  r1.w = ceil(r1.w);
  r3.z = min(0.200000003, r3.z);
  r1.w = r3.z * r1.w;
  r3.z = max(0, r0.w);
  r0.w = 10000 * r0.w;
  r0.w = max(0, r0.w);
  r2.x = r3.z / r2.x;
  r2.x = min(1, r2.x);
  r3.z = 1 + -r2.x;
  r2.x = ceil(r2.x);
  r3.z = min(0.200000003, r3.z);
  r2.x = r3.z * r2.x;
  r2.x = 5 * r2.x;
  r3.z = r1.w * 5 + -r2.x;
  r1.w = 5 * r1.w;
  r3.z = cmp(9.99999975e-006 < abs(r3.z));
  r3.w = cmp(r1.w >= r2.x);
  r1.w = max(r1.w, r2.x);
  r2.x = r3.w ? r3.y : r3.x;
  r2.x = r3.z ? r2.x : r3.x;
  r2.x = cb3[34].z * r2.x;
  r2.x = r2.x * r1.w;
  r3.x = cb3[14].z + cb2[5].z;
  r1.y = -r3.x + r1.y;
  r0.w = min(r1.y, r0.w);
  r0.w = cb3[35].x * r0.w;
  r0.w = r1.w * r0.w;
  r0.w = r2.x * r0.w;
  r1.xy = r0.ww * r1.xz;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r1.z = -1.20000005 * r0.w;
  r1.xyz = r1.xyz + r2.yzw;
  r0.xyz = r1.xyz + r0.xyz;
  o3.xyz = r0.xyz;
  o4.xyz = r0.xyz;
  o6.xyz = r0.xyz;
  o4.w = 1;
  o6.w = 1;
  return;
}