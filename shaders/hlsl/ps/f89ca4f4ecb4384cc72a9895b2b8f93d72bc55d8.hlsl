// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[54];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[144];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[12];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb1[142].z / cb5[24].z;
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
  r0.w = cb2[18].x + cb2[18].y;
  r0.w = cb2[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb1[142].z + r0.w;
  r0.w = cb4[2].x * r0.w;
  r1.x = cb5[23].z * r0.w;
  r1.y = cb5[22].z * v3.y + cb5[22].w;
  r2.y = cb5[23].x * r1.y;
  r2.xz = v3.xx;
  r1.zw = cb5[2].xy * r2.xy;
  r2.xy = r1.xx * cb5[22].xy + r1.zw;
  r3.xy = t0.SampleBias(s0_s, r2.xy, cb1[143].y).xy;
  r1.x = t3.SampleBias(s3_s, r2.xy, cb1[143].y).x;
  r2.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.200000003,0.200000003) * r2.xy;
  r3.x = cb5[20].x * r0.w;
  r0.w = cb5[41].w * r0.w;
  r3.yz = r0.ww * cb5[22].xy + r1.zw;
  r3.yz = float2(0.5,0.5) + r3.yz;
  r0.w = t3.SampleBias(s3_s, r3.yz, cb1[143].y).x;
  r3.yz = r1.zw / cb5[24].yy;
  r1.zw = r1.zw / cb5[23].yy;
  r1.zw = r3.xx * cb5[22].xy + r1.zw;
  r3.xy = r3.xx * cb5[22].xy + r3.yz;
  r3.zw = r2.xy * r0.yy + r3.xy;
  r0.xy = r2.xy * r0.xx + r3.xy;
  r0.xy = t0.SampleBias(s0_s, r0.xy, cb1[143].y).xy;
  r4.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = t0.SampleBias(s0_s, r3.zw, cb1[143].y).xy;
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
  r0.xyz = cb5[24].www * r0.xyz + r3.xyz;
  r0.xyz = float3(-1,-1,1) * r0.xyz;
  r3.x = cb1[142].z / cb5[23].w;
  r3.y = 0.5 + r3.x;
  r3.x = frac(r3.x);
  r3.xz = r2.xy * r3.xx + r1.zw;
  r3.xz = t0.SampleBias(s0_s, r3.xz, cb1[143].y).xy;
  r4.xy = r3.xz * float2(2,2) + float2(-1,-1);
  r3.x = frac(r3.y);
  r1.zw = r2.xy * r3.xx + r1.zw;
  r2.x = r3.x + r3.x;
  r1.zw = t0.SampleBias(s0_s, r1.zw, cb1[143].y).xy;
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
  r3.xyz = cb5[24].xxx * r3.xyz + r4.xyz;
  r3.w = 1 + r3.z;
  r1.z = dot(r3.xyw, r0.xyz);
  r1.w = 1 + r3.z;
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r3.xyw * r1.zzz + -r0.xyz;
  r3.xyz = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb5[25].xxx * r3.xyz + r0.xyz;
  r1.z = 0.5 + cb1[142].z;
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
  r2.x = -cb5[23].x * r1.y + 1;
  r3.xyzw = cb1[45].xyzw * v6.yyyy;
  r3.xyzw = v6.xxxx * cb1[44].xyzw + r3.xyzw;
  r3.xyzw = v6.zzzz * cb1[46].xyzw + r3.xyzw;
  r3.xyzw = cb1[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb1[70].xyz + r3.xyz;
  r2.y = -cb5[25].y + r4.z;
  r2.y = abs(r2.y) / cb5[25].z;
  r2.y = -r2.y * cb5[25].w + 1;
  r2.w = -r2.x * r2.y + 1;
  r2.x = cb4[2].x * cb1[142].z;
  r2.y = cb5[26].z * r2.x;
  r5.xy = cb5[5].xy * r2.yy;
  r5.zw = r2.zw * cb5[3].xy + r5.xy;
  r2.yz = r2.zw * cb5[4].xy + float2(0.200000003,0.200000003);
  r2.yz = r5.xy * float2(0.699999988,0.699999988) + r2.yz;
  r2.w = t1.SampleBias(s1_s, r2.yz, cb1[143].y).x;
  r6.w = r2.w * 2 + -1;
  r6.yz = float2(1,0);
  r5.xy = cb5[27].zz * r6.zw;
  r6.zw = r5.xy * r1.zz + r5.zw;
  r7.xy = r5.xy * r1.zz + r2.yz;
  r7.xy = t1.SampleBias(s1_s, r7.xy, cb1[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r6.zw = t1.SampleBias(s1_s, r6.zw, cb1[143].y).xy;
  r8.xy = r6.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r8.xy, r8.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r8.z = sqrt(r1.z);
  r1.z = frac(cb1[142].z);
  r5.zw = r5.xy * r1.zz + r5.zw;
  r2.yz = r5.xy * r1.zz + r2.yz;
  r2.yz = t1.SampleBias(s1_s, r2.yz, cb1[143].y).xy;
  r9.xy = r2.yz * float2(2,2) + float2(-1,-1);
  r2.yz = t1.SampleBias(s1_s, r5.zw, cb1[143].y).xy;
  r5.xy = r2.yz * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r2.yzw = r8.xyz + -r5.xyz;
  r2.yzw = r1.www * r2.yzw + r5.xyz;
  r5.xyz = r2.yzw + r2.yzw;
  r8.xyz = -r2.yzw * float3(2,2,2) + float3(0,0,1);
  r5.xyz = cb5[24].www * r8.xyz + r5.xyz;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r1.z = dot(r7.xy, r7.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r7.z = sqrt(r1.z);
  r1.z = dot(r9.xy, r9.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r9.z = sqrt(r1.z);
  r7.xyz = -r9.xyz + r7.xyz;
  r7.xyz = r1.www * r7.xyz + r9.xyz;
  r8.xyz = r7.xyz + r7.xyz;
  r7.xzw = -r7.xyz * float3(2,2,2) + float3(0,0,1);
  r1.z = -r7.y + r2.y;
  r7.xyz = cb5[24].xxx * r7.xzw + r8.xyz;
  r7.w = 1 + r7.z;
  r1.w = dot(r7.xyw, r5.xyz);
  r2.y = 1 + r7.z;
  r2.yzw = r2.yyy * r5.xyz;
  r2.yzw = r7.xyw * r1.www + -r2.yzw;
  r5.xyz = float3(0,0,1) + -r2.yzw;
  r2.yzw = cb5[25].xxx * r5.xyz + r2.yzw;
  r2.yzw = r2.yzw + -r0.xyz;
  r1.w = -0.5 + r1.z;
  r1.z = r1.z * cb5[28].x + v3.x;
  r1.z = r1.z * 2 + -1;
  r1.z = 1 + -abs(r1.z);
  r1.z = r1.z * cb5[53].x + -cb5[53].x;
  r1.z = saturate(cb5[53].z + r1.z);
  r1.z = cb5[53].w * r1.z;
  r1.w = dot(r1.ww, cb5[28].zz);
  r1.w = v3.y + r1.w;
  r1.w = r1.w * cb5[29].x + -cb5[29].x;
  r1.w = saturate(cb5[29].w + r1.w);
  r3.w = cb5[30].z * r1.w;
  r1.w = -cb5[30].z * r1.w + 1;
  r1.w = cb5[31].x * r1.w + r3.w;
  r0.xyz = r1.www * r2.yzw + r0.xyz;
  r0.xyz = r0.xyz * cb1[138].www + cb1[138].xyz;
  r2.y = dot(r0.xyz, r0.xyz);
  r2.y = rsqrt(r2.y);
  r0.xyz = r2.yyy * r0.xyz;
  r2.yzw = v1.zxy * v0.yzx;
  r2.yzw = v1.yzx * v0.zxy + -r2.yzw;
  r2.yzw = v1.www * r2.yzw;
  r2.yzw = r2.yzw * r0.yyy;
  r2.yzw = r0.xxx * v0.xyz + r2.yzw;
  r0.xyz = r0.zzz * v1.xyz + r2.yzw;
  r2.y = dot(r0.xyz, r0.xyz);
  r2.y = rsqrt(r2.y);
  r0.xyz = r2.yyy * r0.xyz;
  r2.y = cb2[4].w * cb1[141].w;
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
  r0.z = cb5[38].w * r0.y;
  r0.y = cb5[44].y * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * cb5[44].w + cb5[44].z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb5[39].x * r0.z;
  r0.z = max(9.99999975e-006, r0.z);
  r6.x = v6.z;
  r2.yz = v6.ww * r6.xy;
  r2.w = r2.y * cb1[65].z + -cb1[65].w;
  r2.w = 1 / r2.w;
  r2.y = r2.y * cb1[65].x + cb1[65].y;
  r2.y = r2.y + r2.w;
  r2.w = cmp(cb1[31].w < 1);
  r2.y = r2.w ? r2.z : r2.y;
  r2.y = 1000000 + -r2.y;
  r0.z = saturate(r2.y / r0.z);
  r0.z = 1 + -r0.z;
  r0.z = -r0.z * cb5[39].y + 1;
  r2.zw = r4.xy / cb5[40].yy;
  r3.xy = cb1[142].zz * cb5[39].ww + r2.zw;
  r2.zw = cb1[142].zz * cb5[40].ww + r2.zw;
  r2.z = t3.SampleBias(s3_s, r2.zw, cb1[143].y).x;
  r2.w = t3.SampleBias(s3_s, r3.xy, cb1[143].y).x;
  r2.z = r2.w * r2.z;
  r2.z = cb5[41].x * r2.z;
  r2.w = log2(r2.z);
  r2.z = cmp(0 >= r2.z);
  r2.w = cb5[41].y * r2.w;
  r2.w = exp2(r2.w);
  r2.z = r2.z ? 0 : r2.w;
  r0.z = r0.z / r2.z;
  r0.z = cb5[41].z + -r0.z;
  r0.z = 1 + r0.z;
  r0.z = 1 + -r0.z;
  r2.z = 1 + -r0.w;
  r0.w = dot(r1.xx, r0.ww);
  r2.w = 1 + -r1.x;
  r1.x = cmp(r1.x >= 0.5);
  r2.w = r2.w + r2.w;
  r2.z = -r2.w * r2.z + 1;
  r0.w = r1.x ? r2.z : r0.w;
  r1.x = cb5[42].x * r2.x;
  r2.x = cb5[33].x * r2.x;
  r1.x = 6.28318548 * r1.x;
  r1.x = sin(r1.x);
  r1.x = r1.x * 0.5 + 0.5;
  r1.x = r1.x * cb5[42].y + cb5[42].z;
  r2.z = -r1.x + r0.w;
  r2.z = cmp(9.99999975e-006 < abs(r2.z));
  r2.w = cmp(r0.w >= r1.x);
  r1.x = cb5[42].w + r1.x;
  r2.w = r2.w ? 1.000000 : 0;
  r2.z = r2.z ? r2.w : 1;
  r2.z = cb5[43].x * r2.z;
  r2.w = cmp(r0.w >= r1.x);
  r0.w = -r1.x + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.x = r2.w ? 0 : r2.z;
  r0.w = r0.w ? r1.x : 0;
  r0.z = r0.z / r0.w;
  r0.z = 1 + -r0.z;
  r0.w = saturate(r2.y / cb5[43].z);
  r1.x = saturate(r2.y / cb5[45].y);
  r1.x = cb5[45].z * r1.x;
  r2.y = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r2.y = cb5[43].w * r2.y;
  r2.y = exp2(r2.y);
  r0.w = r0.w ? 0 : r2.y;
  r0.z = saturate(r0.z * r0.w);
  r2.y = rsqrt(r0.w);
  r0.w = cmp(0 >= r0.w);
  r2.y = 1 / r2.y;
  r2.y = cb5[44].x * r2.y;
  r0.z = r2.y * r0.z;
  r0.z = r0.w ? 0 : r0.z;
  r0.w = log2(abs(r1.x));
  r1.x = cmp(0 >= abs(r1.x));
  r0.w = cb5[45].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.x ? 0 : r0.w;
  r0.y = saturate(r0.y * r0.w);
  r0.y = saturate(r0.z + r0.y);
  r0.zw = float2(1,1) + -v2.wy;
  r1.x = log2(r0.z);
  r2.y = cb5[46].x * r1.x;
  r1.x = cb5[32].w * r1.x;
  r1.x = exp2(r1.x);
  r1.x = 1 + -r1.x;
  r2.y = exp2(r2.y);
  r2.y = 1 + -r2.y;
  r0.z = cmp(0 >= r0.z);
  r0.w = cb5[37].z * r0.w;
  r2.y = r0.z ? 1 : r2.y;
  r0.z = r0.z ? 1 : r1.x;
  r0.y = r2.y * r0.y;
  r0.y = r0.z * r0.y;
  r1.x = -cb5[36].y + r4.z;
  r1.x = r1.x / cb5[36].z;
  r2.y = cmp(r1.x >= 1);
  r2.y = r2.y ? 1 : r1.x;
  r1.x = -1 + r1.x;
  r1.x = cmp(9.99999975e-006 < abs(r1.x));
  r1.x = r1.x ? r2.y : 1;
  r2.y = cmp(r1.x >= 0);
  r2.y = r2.y ? r1.x : 1;
  r1.x = cmp(9.99999975e-006 < abs(r1.x));
  r1.x = r1.x ? r2.y : 1;
  r2.y = log2(r1.x);
  r1.x = cmp(0 >= r1.x);
  r2.y = cb5[36].w * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = 1 + -r2.y;
  r1.x = r1.x ? 1 : r2.y;
  r1.x = cb5[37].x * r1.x;
  r2.yzw = r4.xyz / cb5[34].yyy;
  r3.xyz = r4.xyz / cb5[35].xxx;
  r4.xy = cb5[34].zz * r2.yz;
  r5.z = -r2.w;
  r5.xy = -r4.xy;
  r6.xyzw = r2.xxxx * cb5[33].zwzw + r5.xzyz;
  r4.z = r5.z;
  r2.xyzw = r2.xxxx * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r4.xzyz;
  r3.yw = t2.SampleBias(s2_s, r3.yz, cb1[143].y).xy;
  r3.xz = t2.SampleBias(s2_s, r3.xz, cb1[143].y).xy;
  r3.xz = r3.xz * float2(2,2) + float2(-1,-1);
  r3.xz = cb5[35].yy * -r3.xz + r3.xz;
  r3.yw = r3.yw * float2(2,2) + float2(-1,-1);
  r3.yw = cb5[35].yy * -r3.yw + r3.yw;
  r3.yw = r3.yw + -r3.xz;
  r4.x = -cb5[36].x + cb5[35].w;
  r4.x = saturate(abs(v1.x) * r4.x + cb5[36].x);
  r3.xy = r4.xx * r3.yw + r3.xz;
  r5.xyzw = r6.xyzw + r3.xyxy;
  r2.xyzw = r3.xyxy + r2.xyzw;
  r3.x = t3.SampleLevel(s3_s, r5.zw, r1.x).y;
  r3.y = t3.SampleLevel(s3_s, r5.xy, r1.x).y;
  r1.x = 0.75 * r1.x;
  r3.x = r3.x + -r3.y;
  r3.x = r4.x * r3.x + r3.y;
  r2.z = t3.SampleLevel(s3_s, r2.zw, r1.x).y;
  r1.x = t3.SampleLevel(s3_s, r2.xy, r1.x).y;
  r2.x = r2.z + -r1.x;
  r1.x = r4.x * r2.x + r1.x;
  r1.x = r3.x + r1.x;
  r2.x = log2(r1.x);
  r1.x = cmp(0 >= r1.x);
  r2.x = cb5[37].y * r2.x;
  r2.x = exp2(r2.x);
  r0.w = r2.x * r0.w;
  r0.w = r1.x ? 0 : r0.w;
  r0.w = -r0.z * r0.w + 1;
  r0.z = r0.w / r0.z;
  r0.z = cb5[52].y + -r0.z;
  r0.z = 1 + r0.z;
  r0.w = v1.z * 0.5 + 0.5;
  r0.w = saturate(r0.w * cb5[37].w + cb5[38].z);
  r0.z = saturate(r0.z * cb5[52].z + r0.w);
  r0.y = r0.z * r0.y;
  r0.x = r0.x * r1.z + -r0.y;
  r0.x = r1.w * r0.x + r0.y;
  r0.y = 1 + -r1.y;
  r0.z = saturate(cb5[51].y * r1.y);
  r0.y = saturate(cb5[52].x * r0.y);
  r0.y = r0.z * r0.y;
  r0.x = saturate(r0.y * r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = v4.x * cb3[11].y + cb0[11].x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}