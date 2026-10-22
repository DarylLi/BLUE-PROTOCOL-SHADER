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
  float4 cb3[54];
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
  float4 v3 : TEXCOORD0,
  float3 v4 : PARTICLE_LIGHTING_OFFSET0,
  float4 v5 : TANGENTX0,
  float4 v6 : TANGENTZ0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z / cb3[24].z;
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
  r1.x = cb3[23].z * r0.w;
  r1.y = cb3[22].z * v3.y + cb3[22].w;
  r2.y = cb3[23].x * r1.y;
  r2.xz = v3.xx;
  r1.zw = cb3[2].xy * r2.xy;
  r2.xy = r1.xx * cb3[22].xy + r1.zw;
  r3.xy = t1.SampleBias(s1_s, r2.xy, cb0[143].y).xy;
  r1.x = t3.SampleBias(s3_s, r2.xy, cb0[143].y).x;
  r2.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.200000003,0.200000003) * r2.xy;
  r3.x = cb3[20].x * r0.w;
  r0.w = cb3[41].w * r0.w;
  r3.yz = r0.ww * cb3[22].xy + r1.zw;
  r3.yz = float2(0.5,0.5) + r3.yz;
  r0.w = t3.SampleBias(s3_s, r3.yz, cb0[143].y).x;
  r3.yz = r1.zw / cb3[24].yy;
  r1.zw = r1.zw / cb3[23].yy;
  r1.zw = r3.xx * cb3[22].xy + r1.zw;
  r3.xy = r3.xx * cb3[22].xy + r3.yz;
  r3.zw = r2.xy * r0.yy + r3.xy;
  r0.xy = r2.xy * r0.xx + r3.xy;
  r0.xy = t1.SampleBias(s1_s, r0.xy, cb0[143].y).xy;
  r4.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = t1.SampleBias(s1_s, r3.zw, cb0[143].y).xy;
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
  r0.xyz = cb3[24].www * r0.xyz + r3.xyz;
  r0.xyz = float3(-1,-1,1) * r0.xyz;
  r3.x = cb0[142].z / cb3[23].w;
  r3.y = 0.5 + r3.x;
  r3.x = frac(r3.x);
  r3.xz = r2.xy * r3.xx + r1.zw;
  r3.xz = t1.SampleBias(s1_s, r3.xz, cb0[143].y).xy;
  r4.xy = r3.xz * float2(2,2) + float2(-1,-1);
  r3.x = frac(r3.y);
  r1.zw = r2.xy * r3.xx + r1.zw;
  r2.x = r3.x + r3.x;
  r1.zw = t1.SampleBias(s1_s, r1.zw, cb0[143].y).xy;
  r3.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r3.xy, r3.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r3.z = sqrt(r1.z);
  r1.z = dot(r4.xy, r4.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r4.z = sqrt(r1.z);
  r3.xyz = -r4.xyz + r3.xyz;
  r1.z = max(1, r2.x);
  r1.w = min(1, r2.x);
  r1.w = r1.w + r1.w;
  r1.z = -1 + r1.z;
  r1.z = r1.z + r1.z;
  r1.zw = min(float2(1,1), r1.zw);
  r1.z = 1 + -r1.z;
  r1.z = r1.z * r1.w;
  r3.xyz = r1.zzz * r3.xyz + r4.xyz;
  r4.xyz = r3.xyz + r3.xyz;
  r3.xyz = -r3.xyz * float3(2,2,2) + float3(0,0,1);
  r3.xyz = cb3[24].xxx * r3.xyz + r4.xyz;
  r3.w = 1 + r3.z;
  r1.z = dot(r3.xyw, r0.xyz);
  r1.w = 1 + r3.z;
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r3.xyw * r1.zzz + -r0.xyz;
  r3.xyz = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb3[25].xxx * r3.xyz + r0.xyz;
  r1.z = 0.5 + cb0[142].z;
  r1.z = frac(r1.z);
  r1.w = r1.z + r1.z;
  r2.x = max(1, r1.w);
  r1.w = min(1, r1.w);
  r1.w = r1.w + r1.w;
  r1.w = min(1, r1.w);
  r2.x = -1 + r2.x;
  r2.x = r2.x + r2.x;
  r2.x = min(1, r2.x);
  r2.x = 1 + -r2.x;
  r1.w = r2.x * r1.w;
  r3.xyzw = cb0[45].xyzw * v0.yyyy;
  r3.xyzw = v0.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v0.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r2.x = -cb3[25].y + r4.z;
  r4.xy = r4.xy / cb3[40].yy;
  r2.x = abs(r2.x) / cb3[25].z;
  r2.x = -r2.x * cb3[25].w + 1;
  r2.y = -cb3[23].x * r1.y + 1;
  r2.w = -r2.y * r2.x + 1;
  r2.x = cb2[2].x * cb0[142].z;
  r2.y = cb3[26].z * r2.x;
  r2.x = cb3[42].x * r2.x;
  r2.x = 6.28318548 * r2.x;
  r2.x = sin(r2.x);
  r2.x = r2.x * 0.5 + 0.5;
  r2.x = r2.x * cb3[42].y + cb3[42].z;
  r4.zw = cb3[5].xy * r2.yy;
  r5.xy = r2.zw * cb3[3].xy + r4.zw;
  r2.yz = r2.zw * cb3[4].xy + float2(0.200000003,0.200000003);
  r2.yz = r4.zw * float2(0.699999988,0.699999988) + r2.yz;
  r2.w = t2.SampleBias(s2_s, r2.yz, cb0[143].y).x;
  r6.y = r2.w * 2 + -1;
  r6.x = 0;
  r4.zw = cb3[27].zz * r6.xy;
  r5.zw = r4.zw * r1.zz + r5.xy;
  r6.xy = r4.zw * r1.zz + r2.yz;
  r6.xy = t2.SampleBias(s2_s, r6.xy, cb0[143].y).xy;
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r5.zw = t2.SampleBias(s2_s, r5.zw, cb0[143].y).xy;
  r7.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r7.xy, r7.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r7.z = sqrt(r1.z);
  r1.z = frac(cb0[142].z);
  r5.xy = r4.zw * r1.zz + r5.xy;
  r2.yz = r4.zw * r1.zz + r2.yz;
  r2.yz = t2.SampleBias(s2_s, r2.yz, cb0[143].y).xy;
  r8.xy = r2.yz * float2(2,2) + float2(-1,-1);
  r2.yz = t2.SampleBias(s2_s, r5.xy, cb0[143].y).xy;
  r5.xy = r2.yz * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r2.yzw = r7.xyz + -r5.xyz;
  r2.yzw = r1.www * r2.yzw + r5.xyz;
  r5.xyz = r2.yzw + r2.yzw;
  r7.xyz = -r2.yzw * float3(2,2,2) + float3(0,0,1);
  r5.xyz = cb3[24].www * r7.xyz + r5.xyz;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r1.z = dot(r6.xy, r6.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r6.z = sqrt(r1.z);
  r1.z = dot(r8.xy, r8.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r8.z = sqrt(r1.z);
  r6.xyz = -r8.xyz + r6.xyz;
  r6.xyz = r1.www * r6.xyz + r8.xyz;
  r7.xyz = r6.xyz + r6.xyz;
  r6.xzw = -r6.xyz * float3(2,2,2) + float3(0,0,1);
  r1.z = -r6.y + r2.y;
  r6.xyz = cb3[24].xxx * r6.xzw + r7.xyz;
  r6.w = 1 + r6.z;
  r1.w = dot(r6.xyw, r5.xyz);
  r2.y = 1 + r6.z;
  r2.yzw = r2.yyy * r5.xyz;
  r2.yzw = r6.xyw * r1.www + -r2.yzw;
  r5.xyz = float3(0,0,1) + -r2.yzw;
  r2.yzw = cb3[25].xxx * r5.xyz + r2.yzw;
  r2.yzw = r2.yzw + -r0.xyz;
  r1.w = -0.5 + r1.z;
  r1.z = r1.z * cb3[28].x + v3.x;
  r1.z = r1.z * 2 + -1;
  r1.z = 1 + -abs(r1.z);
  r1.z = r1.z * cb3[53].x + -cb3[53].x;
  r1.z = saturate(cb3[53].z + r1.z);
  r1.z = cb3[53].w * r1.z;
  r1.w = dot(r1.ww, cb3[28].zz);
  r1.w = v3.y + r1.w;
  r1.w = r1.w * cb3[29].x + -cb3[29].x;
  r1.w = saturate(cb3[29].w + r1.w);
  r3.w = cb3[30].z * r1.w;
  r1.w = -cb3[30].z * r1.w + 1;
  r1.w = cb3[31].x * r1.w + r3.w;
  r0.xyz = r1.www * r2.yzw + r0.xyz;
  r0.xyz = r0.xyz * cb0[138].www + cb0[138].xyz;
  r2.y = dot(r0.xyz, r0.xyz);
  r2.y = rsqrt(r2.y);
  r0.xyz = r2.yyy * r0.xyz;
  r2.yzw = v6.zxy * v5.yzx;
  r2.yzw = v6.yzx * v5.zxy + -r2.yzw;
  r2.yzw = v6.www * r2.yzw;
  r2.yzw = r2.yzw * r0.yyy;
  r2.yzw = r0.xxx * v5.xyz + r2.yzw;
  r0.xyz = r0.zzz * v6.xyz + r2.yzw;
  r2.y = dot(r0.xyz, r0.xyz);
  r2.y = rsqrt(r2.y);
  r0.xyz = r2.yyy * r0.xyz;
  r2.y = cb1[4].w * cb0[141].w;
  r2.z = v7.x ? 1 : -1;
  r2.y = r2.y * r2.z;
  r0.xyz = r2.yyy * r0.xyz;
  r2.y = dot(-r3.xyz, -r3.xyz);
  r2.y = rsqrt(r2.y);
  r2.yzw = -r3.xyz * r2.yyy;
  r0.x = dot(r0.xyz, r2.yzw);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.y = log2(r0.x);
  r0.x = 1 + -r0.x;
  r0.x = saturate(r0.x * 3 + -0.299999952);
  r0.z = cb3[38].w * r0.y;
  r0.y = cb3[44].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * cb3[44].w + cb3[44].z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb3[39].x * r0.z;
  r0.z = max(9.99999975e-006, r0.z);
  r2.yz = -cb0[129].xy + v0.xy;
  r2.yz = r2.yz * cb0[130].zw + float2(-0.5,-0.5);
  r3.xy = v0.ww * r2.yz;
  r3.zw = v0.zw;
  r5.xyw = float3(2,-2,1);
  r5.z = v0.w;
  r3.xyzw = r5.xyzw * r3.xyzw;
  r2.y = r3.z * cb0[65].z + -cb0[65].w;
  r2.y = 1 / r2.y;
  r2.z = r3.z * cb0[65].x + cb0[65].y;
  r2.y = r2.z + r2.y;
  r2.z = cmp(cb0[31].w < 1);
  r2.y = r2.z ? r3.w : r2.y;
  r2.zw = r3.xy / r3.ww;
  r2.zw = r2.zw * cb0[66].xy + cb0[66].wz;
  r2.z = t0.SampleLevel(s0_s, r2.zw, 0).x;
  r2.w = r2.z * cb0[65].z + -cb0[65].w;
  r2.z = r2.z * cb0[65].x + cb0[65].y;
  r2.w = 1 / r2.w;
  r2.z = r2.z + r2.w;
  r2.y = r2.z + -r2.y;
  r0.z = saturate(r2.y / r0.z);
  r0.z = 1 + -r0.z;
  r0.z = -r0.z * cb3[39].y + 1;
  r2.zw = cb0[142].zz * cb3[39].ww + r4.xy;
  r3.xy = cb0[142].zz * cb3[40].ww + r4.xy;
  r3.x = t3.SampleBias(s3_s, r3.xy, cb0[143].y).x;
  r2.z = t3.SampleBias(s3_s, r2.zw, cb0[143].y).x;
  r2.z = r2.z * r3.x;
  r2.z = cb3[41].x * r2.z;
  r2.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[41].y * r2.z;
  r2.z = exp2(r2.z);
  r2.z = r2.w ? 0 : r2.z;
  r0.z = r0.z / r2.z;
  r0.z = cb3[41].z + -r0.z;
  r0.z = 1 + r0.z;
  r0.z = 1 + -r0.z;
  r2.z = 1 + -r0.w;
  r0.w = dot(r1.xx, r0.ww);
  r2.w = 1 + -r1.x;
  r1.x = cmp(r1.x >= 0.5);
  r2.w = r2.w + r2.w;
  r2.z = -r2.w * r2.z + 1;
  r0.w = r1.x ? r2.z : r0.w;
  r1.x = r0.w + -r2.x;
  r1.x = cmp(9.99999975e-006 < abs(r1.x));
  r2.z = cmp(r0.w >= r2.x);
  r2.x = cb3[42].w + r2.x;
  r2.z = r2.z ? 1.000000 : 0;
  r1.x = r1.x ? r2.z : 1;
  r1.x = cb3[43].x * r1.x;
  r2.z = cmp(r0.w >= r2.x);
  r0.w = -r2.x + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.x = r2.z ? 0 : r1.x;
  r0.w = r0.w ? r1.x : 0;
  r0.z = r0.z / r0.w;
  r0.z = 1 + -r0.z;
  r0.w = saturate(r2.y / cb3[43].z);
  r1.x = saturate(r2.y / cb3[45].y);
  r1.x = cb3[45].z * r1.x;
  r2.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r2.x = cb3[43].w * r2.x;
  r2.x = exp2(r2.x);
  r0.w = r0.w ? 0 : r2.x;
  r0.z = saturate(r0.z * r0.w);
  r2.x = rsqrt(r0.w);
  r0.w = cmp(0 >= r0.w);
  r2.x = 1 / r2.x;
  r2.x = cb3[44].x * r2.x;
  r0.z = r2.x * r0.z;
  r0.z = r0.w ? 0 : r0.z;
  r0.w = log2(abs(r1.x));
  r1.x = cmp(0 >= abs(r1.x));
  r0.w = cb3[45].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.x ? 0 : r0.w;
  r0.y = saturate(r0.y * r0.w);
  r0.y = saturate(r0.z + r0.y);
  r0.z = v6.z * 0.5 + 0.5;
  r0.z = saturate(r0.z * cb3[37].w + cb3[38].z);
  r0.z = saturate(cb3[52].y * cb3[52].z + r0.z);
  r0.y = r0.z * r0.y;
  r0.x = r0.x * r1.z + -r0.y;
  r0.x = r1.w * r0.x + r0.y;
  r0.y = 1 + -r1.y;
  r0.z = saturate(cb3[51].y * r1.y);
  r0.y = saturate(cb3[52].x * r0.y);
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