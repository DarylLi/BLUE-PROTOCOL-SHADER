// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[56];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
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
  float4 v0 : TEXCOORD0,
  float3 v1 : PARTICLE_LIGHTING_OFFSET0,
  float4 v2 : TANGENTX0,
  float4 v3 : TANGENTZ0,
  float4 v4 : TEXCOORD6,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z / cb4[24].z;
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
  r0.w = cb3[2].x * r0.w;
  r1.x = cb4[23].z * r0.w;
  r0.w = cb4[20].x * r0.w;
  r1.y = cb4[22].z * v0.y + cb4[22].w;
  r2.y = cb4[23].x * r1.y;
  r2.xz = v0.xx;
  r1.zw = cb4[2].xy * r2.xy;
  r2.xy = r1.xx * cb4[22].xy + r1.zw;
  r2.xy = t1.SampleBias(s1_s, r2.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.200000003,0.200000003) * r2.xy;
  r3.xy = r1.zw / cb4[24].yy;
  r1.xz = r1.zw / cb4[23].yy;
  r1.xz = r0.ww * cb4[22].xy + r1.xz;
  r3.xy = r0.ww * cb4[22].xy + r3.xy;
  r0.yw = r2.xy * r0.yy + r3.xy;
  r3.xy = r2.xy * r0.xx + r3.xy;
  r3.xy = t1.SampleBias(s1_s, r3.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.xy = t1.SampleBias(s1_s, r0.yw, cb0[143].y).xy;
  r4.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r4.xy, r4.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r4.z = sqrt(r0.x);
  r0.x = dot(r3.xy, r3.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r3.z = sqrt(r0.x);
  r0.xyw = r4.xyz + -r3.xyz;
  r0.xyz = r0.zzz * r0.xyw + r3.xyz;
  r3.xyz = r0.xyz + r0.xyz;
  r0.xyz = -r0.xyz * float3(2,2,2) + float3(0,0,1);
  r0.xyz = cb4[24].www * r0.xyz + r3.xyz;
  r0.xyz = float3(-1,-1,1) * r0.xyz;
  r0.w = cb0[142].z / cb4[23].w;
  r1.w = 0.5 + r0.w;
  r0.w = frac(r0.w);
  r3.xy = r2.xy * r0.ww + r1.xz;
  r3.xy = t1.SampleBias(s1_s, r3.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = frac(r1.w);
  r1.xz = r2.xy * r0.ww + r1.xz;
  r0.w = r0.w + r0.w;
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
  r1.xzw = r4.xyz + -r3.xyz;
  r2.x = max(1, r0.w);
  r0.w = min(1, r0.w);
  r0.w = r0.w + r0.w;
  r0.w = min(1, r0.w);
  r2.x = -1 + r2.x;
  r2.x = r2.x + r2.x;
  r2.x = min(1, r2.x);
  r2.x = 1 + -r2.x;
  r0.w = r2.x * r0.w;
  r1.xzw = r0.www * r1.xzw + r3.xyz;
  r3.xyz = r1.xzw + r1.xzw;
  r1.xzw = -r1.xzw * float3(2,2,2) + float3(0,0,1);
  r3.xyz = cb4[24].xxx * r1.xzw + r3.xyz;
  r3.w = 1 + r3.z;
  r0.w = dot(r3.xyw, r0.xyz);
  r1.x = 1 + r3.z;
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = r3.xyw * r0.www + -r0.xyz;
  r1.xzw = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb4[25].xxx * r1.xzw + r0.xyz;
  r3.xyzw = cb0[45].xyzw * v5.yyyy;
  r3.xyzw = v5.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v5.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r1.xzw = r3.xyz / r3.www;
  r3.xyz = -cb0[70].xyz + r1.xzw;
  r0.w = -cb4[25].y + r3.z;
  r3.xyz = -cb0[67].xyz + r3.xyz;
  r2.x = dot(r3.xyz, r3.xyz);
  r2.x = sqrt(r2.x);
  r2.x = saturate(r2.x * 0.000104999992 + -0.0500000007);
  r2.x = saturate(r2.x * 3 + -1);
  r0.w = abs(r0.w) / cb4[25].z;
  r0.w = -r0.w * cb4[25].w + 1;
  r2.y = -cb4[23].x * r1.y + 1;
  r2.w = -r2.y * r0.w + 1;
  r0.w = cb3[2].x * cb0[142].z;
  r0.w = cb4[26].z * r0.w;
  r3.xy = cb4[5].xy * r0.ww;
  r3.zw = r2.zw * cb4[3].xy + r3.xy;
  r2.yz = r2.zw * cb4[4].xy + float2(0.200000003,0.200000003);
  r2.yz = r3.xy * float2(0.699999988,0.699999988) + r2.yz;
  r0.w = t2.SampleBias(s2_s, r2.yz, cb0[143].y).x;
  r3.y = r0.w * 2 + -1;
  r3.x = 0;
  r3.xy = cb4[27].zz * r3.xy;
  r0.w = 0.5 + cb0[142].z;
  r0.w = frac(r0.w);
  r4.xy = r3.xy * r0.ww + r3.zw;
  r4.xy = t2.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r2.w = frac(cb0[142].z);
  r3.zw = r3.xy * r2.ww + r3.zw;
  r5.xy = r3.xy * r2.ww + r2.yz;
  r2.yz = r3.xy * r0.ww + r2.yz;
  r0.w = r0.w + r0.w;
  r2.yz = t2.SampleBias(s2_s, r2.yz, cb0[143].y).xy;
  r6.xy = r2.yz * float2(2,2) + float2(-1,-1);
  r2.yz = t2.SampleBias(s2_s, r5.xy, cb0[143].y).xy;
  r5.xy = r2.yz * float2(2,2) + float2(-1,-1);
  r2.yz = t2.SampleBias(s2_s, r3.zw, cb0[143].y).xy;
  r3.xy = r2.yz * float2(2,2) + float2(-1,-1);
  r2.y = dot(r3.xy, r3.xy);
  r2.y = 1 + -r2.y;
  r2.y = max(0, r2.y);
  r3.z = sqrt(r2.y);
  r2.yzw = r4.xyz + -r3.xyz;
  r3.w = max(1, r0.w);
  r0.w = min(1, r0.w);
  r0.w = r0.w + r0.w;
  r0.w = min(1, r0.w);
  r3.w = -1 + r3.w;
  r3.w = r3.w + r3.w;
  r3.w = min(1, r3.w);
  r3.w = 1 + -r3.w;
  r0.w = r3.w * r0.w;
  r2.yzw = r0.www * r2.yzw + r3.xyz;
  r3.xyz = r2.yzw + r2.yzw;
  r4.xyz = -r2.yzw * float3(2,2,2) + float3(0,0,1);
  r3.xyz = cb4[24].www * r4.xyz + r3.xyz;
  r3.xyz = float3(-1,-1,1) * r3.xyz;
  r2.z = dot(r6.xy, r6.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r6.z = sqrt(r2.z);
  r2.z = dot(r5.xy, r5.xy);
  r2.z = 1 + -r2.z;
  r2.z = max(0, r2.z);
  r5.z = sqrt(r2.z);
  r4.xyz = r6.xyz + -r5.xyz;
  r4.xyz = r0.www * r4.xyz + r5.xyz;
  r5.xyz = r4.xyz + r4.xyz;
  r4.xzw = -r4.xyz * float3(2,2,2) + float3(0,0,1);
  r0.w = -r4.y + r2.y;
  r4.xyz = cb4[24].xxx * r4.xzw + r5.xyz;
  r4.w = 1 + r4.z;
  r2.y = dot(r4.xyw, r3.xyz);
  r2.z = 1 + r4.z;
  r3.xyz = r2.zzz * r3.xyz;
  r2.yzw = r4.xyw * r2.yyy + -r3.xyz;
  r3.xyz = float3(0,0,1) + -r2.yzw;
  r2.yzw = cb4[25].xxx * r3.xyz + r2.yzw;
  r2.yzw = r2.yzw + -r0.xyz;
  r3.x = -0.5 + r0.w;
  r0.w = r0.w * cb4[28].x + v0.x;
  r0.w = r0.w * 2 + -1;
  r0.w = 1 + -abs(r0.w);
  r0.w = r0.w * cb4[53].x + -cb4[53].x;
  r0.w = saturate(cb4[53].z + r0.w);
  r3.x = dot(r3.xx, cb4[28].zz);
  r3.x = v0.y + r3.x;
  r3.x = r3.x * cb4[29].x + -cb4[29].x;
  r3.x = saturate(cb4[29].w + r3.x);
  r3.y = cb4[30].z * r3.x;
  r3.x = -cb4[30].z * r3.x + 1;
  r3.x = cb4[31].x * r3.x + r3.y;
  r0.xyz = r3.xxx * r2.yzw + r0.xyz;
  r0.xyz = r0.xyz * cb0[138].www + cb0[138].xyz;
  r2.y = dot(r0.xyz, r0.xyz);
  r2.y = rsqrt(r2.y);
  r2.yzw = r2.yyy * r0.xyz;
  r3.yzw = v3.zxy * v2.yzx;
  r3.yzw = v3.yzx * v2.zxy + -r3.yzw;
  r3.yzw = v3.www * r3.yzw;
  r4.xyz = r3.yzw * r2.zzz;
  r3.yzw = r3.yzw * r0.yyy;
  r3.yzw = r0.xxx * v2.xyz + r3.yzw;
  r0.xyz = r0.zzz * v3.xyz + r3.yzw;
  r3.yzw = r2.yyy * v2.xyz + r4.xyz;
  r2.yzw = r2.www * v3.xyz + r3.yzw;
  r3.y = dot(r2.yzw, r2.yzw);
  r3.y = rsqrt(r3.y);
  r2.yzw = r3.yyy * r2.yzw;
  r3.y = cb1[4].w * cb0[141].w;
  r3.z = v6.x ? 1 : -1;
  r3.y = r3.y * r3.z;
  r2.yzw = r3.yyy * r2.yzw;
  r3.y = dot(-r1.xzw, -r1.xzw);
  r3.y = rsqrt(r3.y);
  r1.xzw = r3.yyy * -r1.xzw;
  r1.x = dot(r2.yzw, r1.xzw);
  r1.x = max(0, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-005, abs(r1.x));
  r1.x = 0.400000006 + -r1.x;
  r1.x = max(0, r1.x);
  r1.zw = -cb0[129].xy + v5.xy;
  r1.zw = r1.zw * cb0[130].zw + float2(-0.5,-0.5);
  r4.xy = v5.ww * r1.zw;
  r5.z = v5.w;
  r4.zw = v5.zw;
  r5.xyw = float3(2,-2,1);
  r6.xyzw = r5.xyzw * r4.xyzw;
  r1.z = r6.z * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r1.w = r6.z * cb0[65].x + cb0[65].y;
  r1.z = r1.w + r1.z;
  r1.w = cmp(cb0[31].w < 1);
  r1.z = r1.w ? r6.w : r1.z;
  r2.yz = r6.xy / r6.ww;
  r2.yz = r2.yz * cb0[66].xy + cb0[66].wz;
  r1.w = t0.SampleLevel(s0_s, r2.yz, 0).x;
  r2.w = r1.w * cb0[65].z + -cb0[65].w;
  r1.w = r1.w * cb0[65].x + cb0[65].y;
  r2.w = 1 / r2.w;
  r1.w = r2.w + r1.w;
  r1.z = r1.w + -r1.z;
  r1.z = saturate(r1.z / cb4[54].w);
  r1.x = r1.x * r1.z;
  r1.z = 1 + -r1.y;
  r1.y = saturate(cb4[51].y * r1.y);
  r1.z = saturate(cb4[52].x * r1.z);
  r1.y = r1.y * r1.z;
  r0.w = r1.y * r0.w;
  r1.y = 1 + -cb4[54].y;
  r1.y = r2.x * r1.y + cb4[54].y;
  r1.y = -cb4[19].x + r1.y;
  r1.y = r3.x * r1.y + cb4[19].x;
  r1.y = -1 + r1.y;
  r0.w = r1.y * r0.w;
  r0.w = r1.x * r0.w;
  r1.xyz = cb0[13].xyz * r0.yyy;
  r1.xyz = r0.xxx * cb0[12].xyz + r1.xyz;
  r0.xyz = r0.zzz * cb0[14].xyz + r1.xyz;
  r0.z = dot(r0.xyz, r0.xyz);
  r0.z = rsqrt(r0.z);
  r0.xy = r0.xy * r0.zz;
  r0.xy = r0.xy * r0.ww;
  r0.xy = cb0[130].xy * r0.xy;
  r0.xy = cb0[132].zw * r0.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = -9.99999975e-006 + r0.z;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.w = cb2[7].y * cb2[7].x;
  r0.z = cb2[7].x;
  r0.zw = cb2[7].zw * r0.zw;
  r0.xy = r0.zw * r0.xy;
  r0.zw = r0.xy * float2(0.000230000005,-0.000230000005) + r2.yz;
  r0.xy = float2(0.000230000005,-0.000230000005) * r0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.zw, 0).x;
  r0.w = r0.z * cb0[65].z + -cb0[65].w;
  r0.z = r0.z * cb0[65].x + cb0[65].y;
  r0.w = 1 / r0.w;
  r0.z = r0.z + r0.w;
  r0.z = -r4.w * r5.w + r0.z;
  r0.w = -0.5 * cb4[55].x;
  r0.w = min(50, abs(r0.w));
  r0.w = max(1, r0.w);
  r0.w = 1 / r0.w;
  r0.z = saturate(r0.z * r0.w + -cb4[55].x);
  r0.xy = r0.xy * r0.zz;
  r0.xy = float2(4,4) * r0.xy;
  o0.xy = max(float2(0,0), r0.xy);
  r0.xy = min(float2(0,0), r0.xy);
  o0.zw = -r0.xy;
  return;
}