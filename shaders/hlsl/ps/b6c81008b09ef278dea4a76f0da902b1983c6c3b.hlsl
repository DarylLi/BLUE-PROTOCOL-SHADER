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
  float4 cb3[49];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[19];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  float4 v1 : TEXCOORD6,
  float4 v2 : TEXCOORD7,
  linear centroid float4 v3 : TEXCOORD10,
  linear centroid float4 v4 : TEXCOORD11,
  float4 v5 : COLOR0,
  float4 v6 : TEXCOORD0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z / cb3[21].z;
  r0.y = 0.5 + r0.x;
  r0.xy = frac(r0.xy);
  r0.z = r0.y + r0.y;
  r0.w = max(1, r0.z);
  r0.z = min(1, r0.z);
  r0.z = r0.z + r0.z;
  r0.w = -1 + r0.w;
  r0.w = r0.w + r0.w;
  r0.zw = min(float2(1,1), r0.zw);
  r0.w = 1 + -r0.w;
  r0.z = r0.w * r0.z;
  r0.w = cb1[18].x + cb1[18].y;
  r0.w = cb1[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r1.x = cb3[17].x * r0.w;
  r2.x = v6.x;
  r1.y = cb3[19].z * v6.y + cb3[19].w;
  r2.y = cb3[20].x * r1.y;
  r1.zw = cb3[2].xy * r2.xy;
  r2.xy = r1.zw / cb3[21].yy;
  r2.xy = r1.xx * cb3[19].xy + r2.xy;
  r2.z = cb3[20].z * r0.w;
  r0.w = cb3[32].w * r0.w;
  r3.xy = r0.ww * cb3[19].xy + r1.zw;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r0.w = t3.SampleBias(s3_s, r3.xy, cb0[143].y).x;
  r2.zw = r2.zz * cb3[19].xy + r1.zw;
  r1.zw = r1.zw / cb3[20].yy;
  r1.xz = r1.xx * cb3[19].xy + r1.zw;
  r3.xy = t1.SampleBias(s1_s, r2.zw, cb0[143].y).xy;
  r1.w = t3.SampleBias(s3_s, r2.zw, cb0[143].y).x;
  r2.zw = r3.xy * float2(2,2) + float2(-1,-1);
  r2.zw = float2(0.200000003,0.200000003) * r2.zw;
  r3.xy = r2.zw * r0.yy + r2.xy;
  r0.xy = r2.zw * r0.xx + r2.xy;
  r0.xy = t1.SampleBias(s1_s, r0.xy, cb0[143].y).xy;
  r4.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = t1.SampleBias(s1_s, r3.xy, cb0[143].y).xy;
  r3.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r3.xy, r3.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r3.z = sqrt(r0.x);
  r0.x = dot(r4.xy, r4.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r4.z = sqrt(r0.x);
  r3.xyz = -r4.xyz + r3.xyz;
  r0.xyz = r0.zzz * r3.xyz + r4.xyz;
  r3.xyz = r0.xyz + r0.xyz;
  r0.xyz = -r0.xyz * float3(2,2,2) + float3(0,0,1);
  r0.xyz = cb3[21].www * r0.xyz + r3.xyz;
  r0.xyz = float3(-1,-1,1) * r0.xyz;
  r2.x = cb0[142].z / cb3[20].w;
  r2.y = 0.5 + r2.x;
  r2.x = frac(r2.x);
  r3.xy = r2.zw * r2.xx + r1.xz;
  r3.xy = t1.SampleBias(s1_s, r3.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r2.x = frac(r2.y);
  r1.xz = r2.zw * r2.xx + r1.xz;
  r2.x = r2.x + r2.x;
  r1.xz = t1.SampleBias(s1_s, r1.xz, cb0[143].y).xy;
  r4.xy = r1.xz * float2(2,2) + float2(-1,-1);
  r1.x = dot(r4.xy, r4.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r4.z = sqrt(r1.x);
  r1.x = dot(r3.xy, r3.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r3.z = sqrt(r1.x);
  r2.yzw = r4.xyz + -r3.xyz;
  r1.x = max(1, r2.x);
  r1.z = min(1, r2.x);
  r1.z = r1.z + r1.z;
  r1.x = -1 + r1.x;
  r1.x = r1.x + r1.x;
  r1.xz = min(float2(1,1), r1.xz);
  r1.x = 1 + -r1.x;
  r1.x = r1.x * r1.z;
  r2.xyz = r1.xxx * r2.yzw + r3.xyz;
  r3.xyz = r2.xyz + r2.xyz;
  r2.xyz = -r2.xyz * float3(2,2,2) + float3(0,0,1);
  r2.xyz = cb3[21].xxx * r2.xyz + r3.xyz;
  r2.w = 1 + r2.z;
  r1.x = dot(r2.xyw, r0.xyz);
  r1.z = 1 + r2.z;
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = r2.xyw * r1.xxx + -r0.xyz;
  r2.xyz = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb3[22].xxx * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz * cb0[138].www + cb0[138].xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r2.xyz = v4.zxy * v3.yzx;
  r2.xyz = v4.yzx * v3.zxy + -r2.xyz;
  r2.xyz = v4.www * r2.xyz;
  r2.xyz = r2.xyz * r0.yyy;
  r2.xyz = r0.xxx * v3.xyz + r2.xyz;
  r0.xyz = r0.zzz * v4.xyz + r2.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r1.xxx * r0.xyz;
  r1.x = cb1[4].w * cb0[141].w;
  r1.z = v7.x ? 1 : -1;
  r1.x = r1.x * r1.z;
  r0.xyz = r1.xxx * r0.xyz;
  r2.xyzw = cb0[45].xyzw * v0.yyyy;
  r2.xyzw = v0.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v0.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r1.x = dot(-r2.xyz, -r2.xyz);
  r1.x = rsqrt(r1.x);
  r3.xyz = -r2.xyz * r1.xxx;
  r2.xyz = -cb0[70].xyz + r2.xyz;
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.x = log2(r0.x);
  r0.y = cb3[29].w * r0.x;
  r0.x = cb3[35].y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * cb3[35].w + cb3[35].z;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb3[30].x * r0.y;
  r0.y = max(9.99999975e-006, r0.y);
  r1.xz = -cb0[129].xy + v0.xy;
  r1.xz = r1.xz * cb0[130].zw + float2(-0.5,-0.5);
  r3.xy = v0.ww * r1.xz;
  r3.zw = v0.zw;
  r4.xyw = float3(2,-2,1);
  r4.z = v0.w;
  r3.xyzw = r4.xyzw * r3.xyzw;
  r0.z = r3.z * cb0[65].z + -cb0[65].w;
  r0.z = 1 / r0.z;
  r1.x = r3.z * cb0[65].x + cb0[65].y;
  r0.z = r1.x + r0.z;
  r1.x = cmp(cb0[31].w < 1);
  r0.z = r1.x ? r3.w : r0.z;
  r1.xz = r3.xy / r3.ww;
  r1.xz = r1.xz * cb0[66].xy + cb0[66].wz;
  r1.x = t0.SampleLevel(s0_s, r1.xz, 0).x;
  r1.z = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = r1.x * cb0[65].x + cb0[65].y;
  r1.z = 1 / r1.z;
  r1.x = r1.x + r1.z;
  r0.z = r1.x + -r0.z;
  r0.y = saturate(r0.z / r0.y);
  r0.y = 1 + -r0.y;
  r0.y = -r0.y * cb3[30].y + 1;
  r1.xz = r2.xy / cb3[31].yy;
  r3.xy = cb0[142].zz * cb3[30].ww + r1.xz;
  r1.xz = cb0[142].zz * cb3[31].ww + r1.xz;
  r1.x = t3.SampleBias(s3_s, r1.xz, cb0[143].y).x;
  r1.z = t3.SampleBias(s3_s, r3.xy, cb0[143].y).x;
  r1.x = r1.z * r1.x;
  r1.x = cb3[32].x * r1.x;
  r1.z = log2(r1.x);
  r1.x = cmp(0 >= r1.x);
  r1.z = cb3[32].y * r1.z;
  r1.z = exp2(r1.z);
  r1.x = r1.x ? 0 : r1.z;
  r0.y = r0.y / r1.x;
  r0.y = cb3[32].z + -r0.y;
  r0.y = 1 + r0.y;
  r0.y = 1 + -r0.y;
  r1.x = 1 + -r0.w;
  r0.w = dot(r1.ww, r0.ww);
  r1.z = 1 + -r1.w;
  r1.w = cmp(r1.w >= 0.5);
  r1.z = r1.z + r1.z;
  r1.x = -r1.z * r1.x + 1;
  r0.w = r1.w ? r1.x : r0.w;
  r1.x = cb2[2].x * cb0[142].z;
  r1.z = cb3[33].x * r1.x;
  r1.x = cb3[24].x * r1.x;
  r1.z = 6.28318548 * r1.z;
  r1.z = sin(r1.z);
  r1.z = r1.z * 0.5 + 0.5;
  r1.z = r1.z * cb3[33].y + cb3[33].z;
  r1.w = -r1.z + r0.w;
  r1.w = cmp(9.99999975e-006 < abs(r1.w));
  r2.w = cmp(r0.w >= r1.z);
  r1.z = cb3[33].w + r1.z;
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r1.w ? r2.w : 1;
  r1.w = cb3[34].x * r1.w;
  r2.w = cmp(r0.w >= r1.z);
  r0.w = -r1.z + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.z = r2.w ? 0 : r1.w;
  r0.w = r0.w ? r1.z : 0;
  r0.y = r0.y / r0.w;
  r0.y = 1 + -r0.y;
  r0.w = saturate(r0.z / cb3[34].z);
  r0.z = saturate(r0.z / cb3[36].y);
  r0.z = cb3[36].z * r0.z;
  r1.z = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.z = cb3[34].w * r1.z;
  r1.z = exp2(r1.z);
  r0.w = r0.w ? 0 : r1.z;
  r0.y = saturate(r0.y * r0.w);
  r1.z = rsqrt(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.z = 1 / r1.z;
  r1.z = cb3[35].x * r1.z;
  r0.y = r1.z * r0.y;
  r0.y = r0.w ? 0 : r0.y;
  r0.w = log2(abs(r0.z));
  r0.z = cmp(0 >= abs(r0.z));
  r0.w = cb3[36].w * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.z ? 0 : r0.w;
  r0.x = saturate(r0.x * r0.z);
  r0.x = saturate(r0.y + r0.x);
  r0.yz = float2(1,1) + -v5.wy;
  r0.w = log2(r0.y);
  r1.z = cb3[37].x * r0.w;
  r0.w = cb3[23].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 1 + -r0.w;
  r1.z = exp2(r1.z);
  r1.z = 1 + -r1.z;
  r0.y = cmp(0 >= r0.y);
  r1.z = r0.y ? 1 : r1.z;
  r0.y = r0.y ? 1 : r0.w;
  r0.x = r1.z * r0.x;
  r0.x = r0.y * r0.x;
  r0.w = -cb3[27].y + r2.z;
  r0.w = r0.w / cb3[27].z;
  r1.z = cmp(r0.w >= 1);
  r1.z = r1.z ? 1 : r0.w;
  r0.w = -1 + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = r0.w ? r1.z : 1;
  r1.z = cmp(r0.w >= 0);
  r1.z = r1.z ? r0.w : 1;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = r0.w ? r1.z : 1;
  r1.z = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.z = cb3[27].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = 1 + -r1.z;
  r0.w = r0.w ? 1 : r1.z;
  r0.zw = cb3[28].zx * r0.zw;
  r3.xyz = r2.xyz / cb3[25].yyy;
  r2.xyz = r2.xyz / cb3[26].xxx;
  r4.xy = cb3[25].zz * r3.xy;
  r3.z = -r3.z;
  r3.xy = -r4.xy;
  r5.xyzw = r1.xxxx * cb3[24].zwzw + r3.xzyz;
  r4.z = r3.z;
  r3.xyzw = r1.xxxx * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r4.xzyz;
  r1.xz = t2.SampleBias(s2_s, r2.yz, cb0[143].y).xy;
  r2.xy = t2.SampleBias(s2_s, r2.xz, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = cb3[26].yy * -r2.xy + r2.xy;
  r1.xz = r1.xz * float2(2,2) + float2(-1,-1);
  r1.xz = cb3[26].yy * -r1.xz + r1.xz;
  r1.xz = r1.xz + -r2.xy;
  r1.w = -cb3[27].x + cb3[26].w;
  r1.w = saturate(abs(v4.x) * r1.w + cb3[27].x);
  r1.xz = r1.ww * r1.xz + r2.xy;
  r2.xyzw = r5.xyzw + r1.xzxz;
  r3.xyzw = r3.xyzw + r1.xzxz;
  r1.x = t3.SampleLevel(s3_s, r2.zw, r0.w).y;
  r1.z = t3.SampleLevel(s3_s, r2.xy, r0.w).y;
  r0.w = 0.75 * r0.w;
  r1.x = r1.x + -r1.z;
  r1.x = r1.w * r1.x + r1.z;
  r1.z = t3.SampleLevel(s3_s, r3.zw, r0.w).y;
  r0.w = t3.SampleLevel(s3_s, r3.xy, r0.w).y;
  r1.z = r1.z + -r0.w;
  r0.w = r1.w * r1.z + r0.w;
  r0.w = r1.x + r0.w;
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb3[28].y * r1.x;
  r1.x = exp2(r1.x);
  r0.z = r1.x * r0.z;
  r0.z = r0.w ? 0 : r0.z;
  r0.z = -r0.y * r0.z + 1;
  r0.y = r0.z / r0.y;
  r0.y = cb3[48].y + -r0.y;
  r0.y = 1 + r0.y;
  r0.z = v4.z * 0.5 + 0.5;
  r0.z = saturate(r0.z * cb3[28].w + cb3[29].z);
  r0.y = saturate(r0.y * cb3[48].z + r0.z);
  r0.x = r0.y * r0.x;
  r0.y = 1 + -r1.y;
  r0.z = saturate(cb3[47].y * r1.y);
  r0.y = saturate(cb3[48].x * r0.y);
  r0.y = r0.z * r0.y;
  r0.x = saturate(r0.y * r0.x);
  r0.x = -0.337221563 + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyz = v1.xyz / v1.www;
  r0.xy = -cb0[126].xy + r0.xy;
  r1.xyz = v2.xyz / v2.www;
  r1.xy = -cb0[126].zw + r1.xy;
  r0.xyz = -r1.xyz + r0.xyz;
  o0.xy = r0.xy * float2(0.249500006,0.249500006) + float2(0.499992371,0.499992371);
  r0.x = (uint)r0.z >> 16;
  r0.y = (int)r0.z & 0x0000ffff;
  r0.xy = (uint2)r0.xy;
  r0.y = r0.y * 1.52590219e-005 + 1.52590223e-006;
  r0.x = r0.x * 1.52590219e-005 + 1.52590223e-006;
  o0.zw = min(float2(1,1), r0.xy);
  return;
}