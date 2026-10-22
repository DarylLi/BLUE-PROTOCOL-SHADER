// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[50];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb0[129].xy + v0.xy;
  r0.xy = r0.xy * cb0[130].zw + float2(-0.5,-0.5);
  r0.xy = v0.ww * r0.xy;
  r0.zw = v0.zw;
  r1.xyw = float3(2,-2,1);
  r1.z = v0.w;
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.x = r0.z * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r0.z = r0.z * cb0[65].x + cb0[65].y;
  r0.z = r0.z + r1.x;
  r1.x = cmp(cb0[31].w < 1);
  r0.z = r1.x ? r0.w : r0.z;
  r0.xy = r0.xy / r0.ww;
  r0.xy = r0.xy * cb0[66].xy + cb0[66].wz;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.y = r0.x * cb0[65].z + -cb0[65].w;
  r0.x = r0.x * cb0[65].x + cb0[65].y;
  r0.y = 1 / r0.y;
  r0.x = r0.x + r0.y;
  r0.x = r0.x + -r0.z;
  r0.x = saturate(r0.x / cb3[33].w);
  r0.x = cb3[34].x * r0.x;
  r0.y = log2(abs(r0.x));
  r0.x = cmp(0 >= abs(r0.x));
  r0.y = cb3[34].y * r0.y;
  r0.y = exp2(r0.y);
  r0.x = r0.x ? 0 : r0.y;
  r0.y = cb0[142].z / cb3[24].z;
  r0.z = 0.5 + r0.y;
  r0.yz = frac(r0.yz);
  r0.w = r0.z + r0.z;
  r1.x = max(1, r0.w);
  r0.w = min(1, r0.w);
  r0.w = r0.w + r0.w;
  r0.w = min(1, r0.w);
  r1.x = -1 + r1.x;
  r1.x = r1.x + r1.x;
  r1.x = min(1, r1.x);
  r1.x = 1 + -r1.x;
  r0.w = r1.x * r0.w;
  r1.x = cb1[18].x + cb1[18].y;
  r1.x = cb1[18].z + r1.x;
  r1.x = frac(r1.x);
  r1.x = cb0[142].z + r1.x;
  r1.x = cb2[2].x * r1.x;
  r1.y = cb3[23].z * r1.x;
  r1.x = cb3[20].x * r1.x;
  r1.z = cb3[22].z * v6.y + cb3[22].w;
  r2.y = cb3[23].x * r1.z;
  r2.xz = v6.xx;
  r2.xy = cb3[2].xy * r2.xy;
  r1.yw = r1.yy * cb3[22].xy + r2.xy;
  r1.yw = t1.SampleBias(s1_s, r1.yw, cb0[143].y).xy;
  r1.yw = r1.yw * float2(2,2) + float2(-1,-1);
  r1.yw = float2(0.200000003,0.200000003) * r1.yw;
  r3.xy = r2.xy / cb3[24].yy;
  r2.xy = r2.xy / cb3[23].yy;
  r2.xy = r1.xx * cb3[22].xy + r2.xy;
  r3.xy = r1.xx * cb3[22].xy + r3.xy;
  r3.zw = r1.yw * r0.zz + r3.xy;
  r0.yz = r1.yw * r0.yy + r3.xy;
  r0.yz = t1.SampleBias(s1_s, r0.yz, cb0[143].y).xy;
  r4.xy = r0.yz * float2(2,2) + float2(-1,-1);
  r0.yz = t1.SampleBias(s1_s, r3.zw, cb0[143].y).xy;
  r3.xy = r0.yz * float2(2,2) + float2(-1,-1);
  r0.y = dot(r3.xy, r3.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r3.z = sqrt(r0.y);
  r0.y = dot(r4.xy, r4.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r4.z = sqrt(r0.y);
  r3.xyz = -r4.xyz + r3.xyz;
  r0.yzw = r0.www * r3.xyz + r4.xyz;
  r3.xyz = r0.yzw + r0.yzw;
  r0.yzw = -r0.yzw * float3(2,2,2) + float3(0,0,1);
  r0.yzw = cb3[24].www * r0.yzw + r3.xyz;
  r0.yzw = float3(-1,-1,1) * r0.yzw;
  r1.x = cb0[142].z / cb3[23].w;
  r3.x = 0.5 + r1.x;
  r1.x = frac(r1.x);
  r3.yz = r1.yw * r1.xx + r2.xy;
  r3.yz = t1.SampleBias(s1_s, r3.yz, cb0[143].y).xy;
  r4.xy = r3.yz * float2(2,2) + float2(-1,-1);
  r1.x = frac(r3.x);
  r1.yw = r1.yw * r1.xx + r2.xy;
  r1.x = r1.x + r1.x;
  r1.yw = t1.SampleBias(s1_s, r1.yw, cb0[143].y).xy;
  r3.xy = r1.yw * float2(2,2) + float2(-1,-1);
  r1.y = dot(r3.xy, r3.xy);
  r1.y = 1 + -r1.y;
  r1.y = max(0, r1.y);
  r3.z = sqrt(r1.y);
  r1.y = dot(r4.xy, r4.xy);
  r1.y = 1 + -r1.y;
  r1.y = max(0, r1.y);
  r4.z = sqrt(r1.y);
  r3.xyz = -r4.xyz + r3.xyz;
  r1.y = max(1, r1.x);
  r1.x = min(1, r1.x);
  r1.x = r1.x + r1.x;
  r1.y = -1 + r1.y;
  r1.y = r1.y + r1.y;
  r1.xy = min(float2(1,1), r1.xy);
  r1.y = 1 + -r1.y;
  r1.x = r1.y * r1.x;
  r1.xyw = r1.xxx * r3.xyz + r4.xyz;
  r3.xyz = r1.xyw + r1.xyw;
  r1.xyw = -r1.xyw * float3(2,2,2) + float3(0,0,1);
  r3.xyz = cb3[24].xxx * r1.xyw + r3.xyz;
  r3.w = 1 + r3.z;
  r1.x = dot(r3.xyw, r0.yzw);
  r1.y = 1 + r3.z;
  r0.yzw = r1.yyy * r0.yzw;
  r0.yzw = r3.xyw * r1.xxx + -r0.yzw;
  r1.xyw = float3(0,0,1) + -r0.yzw;
  r0.yzw = cb3[25].xxx * r1.xyw + r0.yzw;
  r1.x = 0.5 + cb0[142].z;
  r1.x = frac(r1.x);
  r1.y = r1.x + r1.x;
  r1.w = max(1, r1.y);
  r1.y = min(1, r1.y);
  r1.y = r1.y + r1.y;
  r1.w = -1 + r1.w;
  r1.w = r1.w + r1.w;
  r1.yw = min(float2(1,1), r1.yw);
  r1.w = 1 + -r1.w;
  r1.y = r1.w * r1.y;
  r3.xyzw = cb0[45].xyzw * v0.yyyy;
  r3.xyzw = v0.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v0.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r1.w = -cb3[25].y + r4.z;
  r1.w = abs(r1.w) / cb3[25].z;
  r1.w = -r1.w * cb3[25].w + 1;
  r2.x = -cb3[23].x * r1.z + 1;
  r2.w = -r2.x * r1.w + 1;
  r1.w = cb2[2].x * cb0[142].z;
  r2.x = cb3[26].z * r1.w;
  r1.w = cb3[43].y * r1.w;
  r2.xy = cb3[5].xy * r2.xx;
  r5.xy = r2.zw * cb3[3].xy + r2.xy;
  r2.zw = r2.zw * cb3[4].xy + float2(0.200000003,0.200000003);
  r2.xy = r2.xy * float2(0.699999988,0.699999988) + r2.zw;
  r2.z = t2.SampleBias(s2_s, r2.xy, cb0[143].y).x;
  r6.y = r2.z * 2 + -1;
  r6.x = 0;
  r2.zw = cb3[27].zz * r6.xy;
  r5.zw = r2.zw * r1.xx + r5.xy;
  r6.xy = r2.zw * r1.xx + r2.xy;
  r6.xy = t2.SampleBias(s2_s, r6.xy, cb0[143].y).xy;
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r5.zw = t2.SampleBias(s2_s, r5.zw, cb0[143].y).xy;
  r7.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r1.x = dot(r7.xy, r7.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r7.z = sqrt(r1.x);
  r1.x = frac(cb0[142].z);
  r5.xy = r2.zw * r1.xx + r5.xy;
  r2.xy = r2.zw * r1.xx + r2.xy;
  r2.xy = t2.SampleBias(s2_s, r2.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r5.xy = t2.SampleBias(s2_s, r5.xy, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.x = dot(r5.xy, r5.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r5.z = sqrt(r1.x);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r1.yyy * r7.xyz + r5.xyz;
  r7.xyz = r5.xyz + r5.xyz;
  r5.yzw = -r5.xyz * float3(2,2,2) + float3(0,0,1);
  r5.yzw = cb3[24].www * r5.yzw + r7.xyz;
  r5.yzw = float3(-1,-1,1) * r5.yzw;
  r1.x = dot(r6.xy, r6.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r6.z = sqrt(r1.x);
  r1.x = dot(r2.xy, r2.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r2.z = sqrt(r1.x);
  r6.xyz = r6.xyz + -r2.xyz;
  r2.xyz = r1.yyy * r6.xyz + r2.xyz;
  r6.xyz = r2.xyz + r2.xyz;
  r2.xzw = -r2.xyz * float3(2,2,2) + float3(0,0,1);
  r1.x = r5.x + -r2.y;
  r2.xyz = cb3[24].xxx * r2.xzw + r6.xyz;
  r2.w = 1 + r2.z;
  r1.y = dot(r2.xyw, r5.yzw);
  r2.z = 1 + r2.z;
  r5.xyz = r2.zzz * r5.yzw;
  r2.xyz = r2.xyw * r1.yyy + -r5.xyz;
  r5.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb3[25].xxx * r5.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r0.yzw;
  r1.y = -0.5 + r1.x;
  r1.x = r1.x * cb3[28].x + v6.x;
  r1.x = r1.x * 2 + -1;
  r1.x = 1 + -abs(r1.x);
  r1.x = r1.x * cb3[48].w + -cb3[48].w;
  r1.x = saturate(cb3[49].y + r1.x);
  r1.x = cb3[49].z * r1.x;
  r1.y = dot(r1.yy, cb3[28].zz);
  r1.y = v6.y + r1.y;
  r1.y = r1.y * cb3[29].x + -cb3[29].x;
  r1.y = saturate(cb3[29].w + r1.y);
  r2.w = cb3[30].z * r1.y;
  r1.y = -cb3[30].z * r1.y + 1;
  r1.y = cb3[31].x * r1.y + r2.w;
  r0.yzw = r1.yyy * r2.xyz + r0.yzw;
  r0.yzw = r0.yzw * cb0[138].www + cb0[138].xyz;
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = rsqrt(r2.x);
  r0.yzw = r2.xxx * r0.yzw;
  r2.xyz = v4.zxy * v3.yzx;
  r2.xyz = v4.yzx * v3.zxy + -r2.xyz;
  r2.xyz = v4.www * r2.xyz;
  r2.xyz = r2.xyz * r0.zzz;
  r2.xyz = r0.yyy * v3.xyz + r2.xyz;
  r0.yzw = r0.www * v4.xyz + r2.xyz;
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = rsqrt(r2.x);
  r0.yzw = r2.xxx * r0.yzw;
  r2.x = cb1[4].w * cb0[141].w;
  r2.y = v7.x ? 1 : -1;
  r2.x = r2.x * r2.y;
  r0.yzw = r2.xxx * r0.yzw;
  r2.x = dot(-r3.xyz, -r3.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = -r3.xyz * r2.xxx;
  r0.y = dot(r0.yzw, r2.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.z = log2(r0.y);
  r0.y = 1 + -r0.y;
  r0.y = saturate(r0.y * 3 + -0.299999952);
  r0.z = cb3[32].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * cb3[33].y + cb3[33].x;
  r0.x = saturate(r0.z * r0.x);
  r0.zw = float2(1,1) + -v5.wy;
  r2.x = log2(r0.z);
  r2.y = cb3[34].z * r2.x;
  r2.x = cb3[43].x * r2.x;
  r2.x = exp2(r2.x);
  r2.y = exp2(r2.y);
  r2.xy = float2(1,1) + -r2.xy;
  r0.z = cmp(0 >= r0.z);
  r0.w = cb3[47].w * r0.w;
  r2.y = r0.z ? 1 : r2.y;
  r0.z = r0.z ? 1 : r2.x;
  r0.x = r2.y * r0.x;
  r0.x = r0.z * r0.x;
  r2.x = -cb3[46].z + r4.z;
  r2.x = r2.x / cb3[46].w;
  r2.y = cmp(r2.x >= 1);
  r2.y = r2.y ? 1 : r2.x;
  r2.x = -1 + r2.x;
  r2.x = cmp(9.99999975e-006 < abs(r2.x));
  r2.x = r2.x ? r2.y : 1;
  r2.y = cmp(r2.x >= 0);
  r2.y = r2.y ? r2.x : 1;
  r2.x = cmp(9.99999975e-006 < abs(r2.x));
  r2.x = r2.x ? r2.y : 1;
  r2.y = log2(r2.x);
  r2.x = cmp(0 >= r2.x);
  r2.y = cb3[47].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = 1 + -r2.y;
  r2.x = r2.x ? 1 : r2.y;
  r2.x = cb3[47].y * r2.x;
  r2.yzw = r4.xyz / cb3[44].zzz;
  r3.xyz = r4.xyz / cb3[45].yyy;
  r4.xy = cb3[44].ww * r2.yz;
  r5.z = -r2.w;
  r5.xy = -r4.xy;
  r6.x = cb3[43].w * r1.w;
  r6.y = cb3[44].x * r1.w;
  r6.xyzw = r6.xyxy + r5.xzyz;
  r4.z = r5.z;
  r4.xyzw = r1.wwww * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r4.xzyz;
  r2.yz = t4.SampleBias(s4_s, r3.yz, cb0[143].y).xy;
  r3.xy = t4.SampleBias(s4_s, r3.xz, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r3.xy = cb3[45].zz * -r3.xy + r3.xy;
  r2.yz = r2.yz * float2(2,2) + float2(-1,-1);
  r2.yz = cb3[45].zz * -r2.yz + r2.yz;
  r2.yz = r2.yz + -r3.xy;
  r1.w = cb3[46].x + -cb3[46].y;
  r1.w = saturate(abs(v4.x) * r1.w + cb3[46].y);
  r2.yz = r1.ww * r2.yz + r3.xy;
  r3.xyzw = r6.xyzw + r2.yzyz;
  r4.xyzw = r4.xyzw + r2.yzyz;
  r2.y = t3.SampleLevel(s3_s, r3.zw, r2.x).y;
  r2.z = t3.SampleLevel(s3_s, r3.xy, r2.x).y;
  r2.x = 0.75 * r2.x;
  r2.y = r2.y + -r2.z;
  r2.y = r1.w * r2.y + r2.z;
  r2.z = t3.SampleLevel(s3_s, r4.zw, r2.x).y;
  r2.x = t3.SampleLevel(s3_s, r4.xy, r2.x).y;
  r2.z = r2.z + -r2.x;
  r1.w = r1.w * r2.z + r2.x;
  r1.w = r2.y + r1.w;
  r2.x = log2(r1.w);
  r1.w = cmp(0 >= r1.w);
  r2.x = cb3[47].z * r2.x;
  r2.x = exp2(r2.x);
  r0.w = r2.x * r0.w;
  r0.w = r1.w ? 0 : r0.w;
  r0.w = -r0.z * r0.w + 1;
  r0.z = r0.w / r0.z;
  r0.z = cb3[48].x + -r0.z;
  r0.z = 1 + r0.z;
  r0.w = v4.z * 0.5 + 0.5;
  r0.w = saturate(r0.w * cb3[34].w + cb3[35].z);
  r0.z = saturate(r0.z * cb3[48].y + r0.w);
  r0.x = r0.z * r0.x;
  r0.y = r0.y * r1.x + -r0.x;
  r0.x = r1.y * r0.y + r0.x;
  r0.y = 1 + -r1.z;
  r0.z = saturate(cb3[42].x * r1.z);
  r0.y = saturate(cb3[42].w * r0.y);
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