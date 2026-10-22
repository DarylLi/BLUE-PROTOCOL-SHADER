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
  float4 cb2[14];
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
  out float4 o0 : SV_POSITION0,
  out float4 o1 : TEXCOORD6,
  out float4 o2 : TEXCOORD7,
  out float4 o3 : TEXCOORD0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v0.xyz, cb0[8].xyz);
  r0.x = r0.x * cb0[7].w + -cb0[5].w;
  r0.y = r0.x * r0.x;
  r0.z = r0.y * r0.x;
  r0.w = -r0.y * 2 + r0.z;
  r0.w = r0.w + r0.x;
  r1.xyz = cb0[2].xyz * r0.www;
  r0.w = 3 * r0.y;
  r1.w = r0.z * 2 + -r0.w;
  r0.z = r0.z * -2 + r0.w;
  r0.w = 1 + r1.w;
  r1.xyz = r0.www * cb0[1].xyz + r1.xyz;
  r0.w = r0.y * r0.x + -r0.y;
  r1.xyz = r0.www * cb0[5].xyz + r1.xyz;
  r1.xyz = r0.zzz * cb0[4].xyz + r1.xyz;
  r2.xyz = float3(3,3,3) * cb0[2].zxy;
  r2.xyz = cb0[1].zxy * float3(6,6,6) + r2.xyz;
  r2.xyz = cb0[5].zxy * float3(3,3,3) + r2.xyz;
  r2.xyz = -cb0[4].zxy * float3(6,6,6) + r2.xyz;
  r3.xyz = float3(4,4,4) * cb0[2].zxy;
  r3.xyz = cb0[1].zxy * float3(-6,-6,-6) + -r3.xyz;
  r3.xyz = -cb0[5].zxy * float3(2,2,2) + r3.xyz;
  r3.xyz = cb0[4].zxy * float3(6,6,6) + r3.xyz;
  r3.xyz = r3.xyz * r0.xxx;
  r0.yzw = r2.xyz * r0.yyy + r3.xyz;
  r0.yzw = cb0[2].zxy + r0.yzw;
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = rsqrt(r1.w);
  r0.yzw = r1.www * r0.yzw;
  r2.xyz = cb0[7].zxy * r0.wyz;
  r2.xyz = cb0[7].yzx * r0.yzw + -r2.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = r2.xyz * r1.www;
  r1.w = saturate(r0.x);
  r2.w = r1.w * -2 + 3;
  r1.w = r1.w * r1.w;
  r1.w = r2.w * r1.w;
  r2.w = cmp(0 != cb0[4].w);
  r0.x = r2.w ? r1.w : r0.x;
  r3.xyzw = cb0[6].zwxy + -cb0[3].zwxy;
  r3.xyzw = r0.xxxx * r3.xyzw + cb0[3].zwxy;
  r1.xyz = r3.xxx * r2.xyz + r1.xyz;
  r4.xyz = r2.yzx * r0.yzw;
  r0.yzw = r0.wyz * r2.zxy + -r4.xyz;
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = rsqrt(r1.w);
  r0.yzw = r1.www * r0.yzw;
  r1.xyw = r3.yyy * r0.yzw + r1.xyz;
  r4.w = r1.y;
  r2.w = cb0[2].w + -cb0[1].w;
  r0.x = r0.x * r2.w + cb0[1].w;
  sincos(r0.x, r0.x, r3.x);
  r5.xyz = r0.xxx * r2.xyz;
  r5.xyz = r3.xxx * r0.yzw + r5.xyz;
  r0.xyz = r0.xxx * r0.yzw;
  r0.xyz = r3.xxx * r2.xyz + -r0.xyz;
  r0.xyz = r0.xyz * r3.zzz;
  r2.xyz = r5.xyz * r3.www;
  r3.xyz = cb0[10].xyz * r2.yyy;
  r4.xyz = cb0[9].xyz * r0.yyy + r3.xyz;
  r3.y = dot(v0.xyzw, r4.xyzw);
  r4.xyz = cb2[1].xyz * r3.yyy;
  r5.w = r1.x;
  r2.xyw = cb0[10].xyz * r2.xxx;
  r6.xyz = cb0[10].xyz * r2.zzz;
  r1.xyz = cb0[9].xyz * r0.zzz + r6.xyz;
  r5.xyz = cb0[9].xyz * r0.xxx + r2.xyw;
  r3.x = dot(v0.xyzw, r5.xyzw);
  r3.z = dot(v0.xyzw, r1.xyzw);
  r0.xyz = cb2[0].xyz * r3.xxx + r4.xyz;
  r0.xyz = cb2[2].xyz * r3.zzz + r0.xyz;
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
  r4.xy = r1.zw / cb3[26].yy;
  r5.z = cb3[26].x * cb1[142].z;
  r5.xy = cb3[25].xw * cb1[142].zz;
  r4.xy = r5.yz + r4.xy;
  r0.w = 6.28318548 * r5.x;
  r0.w = sin(r0.w);
  r0.w = r0.w * 0.5 + 0.75;
  r1.x = t0.SampleLevel(s0_s, r4.xy, -1).x;
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
  r4.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[67].zxy;
  r4.xyz = floor(r4.xyz);
  r4.xyz = r4.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r1.xzw = -r4.xyz + r1.yzw;
  r1.zw = float2(9.99999975e-005,9.99999975e-005) * r1.zw;
  r1.x = r1.x * 9.99999975e-005 + 0.200000003;
  r4.xyz = t1.SampleLevel(s1_s, r1.zw, -1).xyz;
  r2.x = r4.x + -r4.y;
  r2.x = max(9.99999975e-005, r2.x);
  r4.x = cb3[34].y + r4.y;
  r4.y = -r4.x + r1.x;
  r1.x = -r4.z + r1.x;
  r4.x = r4.x + -r4.z;
  r4.xy = max(float2(9.99999975e-005,0), r4.xy);
  r2.x = r4.y / r2.x;
  r2.x = min(1, r2.x);
  r4.y = 1 + -r2.x;
  r2.x = ceil(r2.x);
  r4.y = min(0.200000003, r4.y);
  r2.x = r4.y * r2.x;
  r4.y = max(0, r1.x);
  r1.x = 10000 * r1.x;
  r1.x = max(0, r1.x);
  r4.x = r4.y / r4.x;
  r4.x = min(1, r4.x);
  r4.y = 1 + -r4.x;
  r4.x = ceil(r4.x);
  r4.y = min(0.200000003, r4.y);
  r4.x = r4.x * r4.y;
  r4.x = 5 * r4.x;
  r4.y = r2.x * 5 + -r4.x;
  r2.x = 5 * r2.x;
  r4.y = cmp(9.99999975e-006 < abs(r4.y));
  r4.z = cmp(r2.x >= r4.x);
  r2.x = max(r2.x, r4.x);
  r4.xw = t2.SampleLevel(s2_s, r1.zw, -1).xy;
  r1.zw = t3.SampleLevel(s3_s, r1.zw, -1).xy;
  r1.zw = float2(-1,-1) + r1.zw;
  r4.z = r4.z ? r4.w : r4.x;
  r4.x = r4.y ? r4.z : r4.x;
  r4.x = cb3[34].z * r4.x;
  r4.x = r4.x * r2.x;
  r4.y = cb3[14].z + cb2[5].z;
  r1.y = -r4.y + r1.y;
  r1.x = min(r1.x, r1.y);
  r1.x = cb3[35].x * r1.x;
  r1.x = r2.x * r1.x;
  r1.x = r4.x * r1.x;
  r1.xy = r1.xx * r1.zw;
  r1.w = dot(r1.xy, r1.xy);
  r1.w = sqrt(r1.w);
  r1.z = -1.20000005 * r1.w;
  r1.xyz = r1.xyz + r2.yzw;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[1].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[0].xyzw + r1.xyzw;
  r1.xyzw = r0.zzzz * cb1[2].xyzw + r1.xyzw;
  r1.xyzw = cb1[3].xyzw + r1.xyzw;
  r0.x = 0.00100000005 * r1.w;
  r0.y = cmp(1 < asint(cb1[135].x));
  r0.x = r0.y ? r0.x : 0;
  o0.z = r1.z + r0.x;
  o0.xyw = r1.xyw;
  o1.xyzw = r1.xyzw;
  r1.x = cb2[10].x;
  r1.y = cb2[11].x;
  r1.z = cb2[12].x;
  r2.xyw = cb2[13].xyz + cb1[113].xyz;
  r1.w = r2.x;
  r3.w = v0.w;
  r0.x = dot(r3.xyzw, r1.xyzw);
  r1.w = r2.y;
  r1.x = cb2[10].y;
  r1.y = cb2[11].y;
  r1.z = cb2[12].y;
  r0.y = dot(r3.xyzw, r1.xyzw);
  r2.x = cb2[10].z;
  r2.y = cb2[11].z;
  r2.z = cb2[12].z;
  r0.z = dot(r3.xyzw, r2.xyzw);
  r1.xyz = -cb1[113].xyz + r0.xyz;
  r1.xyz = r1.xyz / cb3[24].zzz;
  r1.w = cb3[23].y * cb1[139].z;
  r1.xyz = r1.www * float3(-0.5,-0.5,-0.5) + r1.xyz;
  r1.xyz = float3(0.5,0.5,0.5) + r1.xyz;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyz = -abs(r1.xyz) * float3(2,2,2) + float3(3,3,3);
  r1.xyz = abs(r1.xyz) * abs(r1.xyz);
  r1.xyz = r1.xyz * r2.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r2.xyz = -cb1[113].zxy + r0.zxy;
  r1.yz = r2.yz / cb3[23].ww;
  r1.yz = r1.ww * float2(0.353553385,-0.353553385) + r1.yz;
  r1.yz = float2(0.5,0.5) + r1.yz;
  r1.yz = frac(r1.yz);
  r1.yz = r1.yz * float2(2,2) + float2(-1,-1);
  r3.xy = -abs(r1.yz) * float2(2,2) + float2(3,3);
  r1.yz = abs(r1.yz) * abs(r1.yz);
  r1.yz = r1.yz * r3.xy;
  r1.y = dot(float2(-0.707106769,0.707106769), r1.yz);
  r1.x = r1.y + r1.x;
  r1.x = 6.28318548 * r1.x;
  sincos(r1.x, r1.x, r3.x);
  r1.xyz = float3(0,7.07106781,-7.07106781) * r1.xxx;
  r1.xyz = r3.xxx * float3(10,0,0) + r1.xyz;
  r1.xyz = float3(-10,0,0) + r1.xyz;
  r1.xyz = cb3[24].www * r1.xyz;
  r3.xy = r2.yz / cb3[26].yy;
  r5.z = cb3[26].x * cb1[139].z;
  r5.xy = cb3[25].xw * cb1[139].zz;
  r3.xy = r5.yz + r3.xy;
  r1.w = 6.28318548 * r5.x;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.5 + 0.75;
  r2.w = t0.SampleLevel(s0_s, r3.xy, -1).x;
  r2.w = cb3[26].z * r2.w;
  r3.x = log2(r2.w);
  r2.w = cmp(0 >= r2.w);
  r3.x = cb3[26].w * r3.x;
  r3.x = exp2(r3.x);
  r2.w = r2.w ? 0 : r3.x;
  r2.w = saturate(cb3[27].x + r2.w);
  r3.x = 0.5 + cb1[139].z;
  r3.x = cb3[25].x * r3.x;
  r3.x = 6.28318548 * r3.x;
  r3.x = sin(r3.x);
  r3.x = r3.x * 0.5 + 0.75;
  r1.w = -r3.x + r1.w;
  r1.w = r2.w * r1.w + r3.x;
  r1.w = cb3[27].y * r1.w;
  r1.w = cb3[27].z * r1.w;
  r1.xyz = r1.xyz * r1.www + float3(1,1,1);
  r1.xyz = r1.xyz * r0.www;
  r1.xyz = cb3[35].yzw * r1.xyz;
  r1.w = cb3[36].x * r1.x;
  r3.xyz = float3(0.00200000009,0.00200000009,0.00200000009) * cb1[111].zxy;
  r3.xyz = floor(r3.xyz);
  r3.xyz = r3.xyz * float3(500,500,500) + float3(250,-4750,-4750);
  r2.yzw = -r3.xyz + r2.xyz;
  r0.w = r2.x + -r4.y;
  r2.xz = float2(9.99999975e-005,9.99999975e-005) * r2.zw;
  r1.x = r2.y * 9.99999975e-005 + 0.200000003;
  r3.xyz = t1.SampleLevel(s1_s, r2.xz, -1).xyz;
  r2.y = r3.x + -r3.y;
  r2.w = cb3[34].y + r3.y;
  r3.x = -r2.w + r1.x;
  r1.x = -r3.z + r1.x;
  r2.w = r2.w + -r3.z;
  r2.yw = max(float2(9.99999975e-005,9.99999975e-005), r2.yw);
  r3.x = max(0, r3.x);
  r2.y = r3.x / r2.y;
  r2.y = min(1, r2.y);
  r3.x = 1 + -r2.y;
  r2.y = ceil(r2.y);
  r3.x = min(0.200000003, r3.x);
  r2.y = r3.x * r2.y;
  r3.x = max(0, r1.x);
  r1.x = 10000 * r1.x;
  r1.x = max(0, r1.x);
  r0.w = min(r1.x, r0.w);
  r0.w = cb3[35].x * r0.w;
  r1.x = r3.x / r2.w;
  r1.x = min(1, r1.x);
  r2.w = 1 + -r1.x;
  r1.x = ceil(r1.x);
  r2.w = min(0.200000003, r2.w);
  r1.x = r2.w * r1.x;
  r1.x = 5 * r1.x;
  r2.w = r2.y * 5 + -r1.x;
  r2.y = 5 * r2.y;
  r2.w = cmp(9.99999975e-006 < abs(r2.w));
  r3.xy = t2.SampleLevel(s2_s, r2.xz, -1).xy;
  r2.xz = t3.SampleLevel(s3_s, r2.xz, -1).xy;
  r2.xz = float2(-1,-1) + r2.xz;
  r3.z = cmp(r2.y >= r1.x);
  r1.x = max(r2.y, r1.x);
  r2.y = r3.z ? r3.y : r3.x;
  r2.y = r2.w ? r2.y : r3.x;
  r2.y = cb3[34].z * r2.y;
  r2.y = r2.y * r1.x;
  r0.w = r1.x * r0.w;
  r0.w = r2.y * r0.w;
  r2.xy = r0.ww * r2.xz;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = sqrt(r0.w);
  r2.z = -1.20000005 * r0.w;
  r1.xyz = r2.xyz + r1.yzw;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyzw = cb1[92].xyzw * r0.yyyy;
  r1.xyzw = r0.xxxx * cb1[91].xyzw + r1.xyzw;
  r0.xyzw = r0.zzzz * cb1[93].xyzw + r1.xyzw;
  o2.xyzw = cb1[94].xyzw + r0.xyzw;
  o3.xy = v4.xy;
  o3.zw = float2(0,0);
  return;
}