// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[39];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
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
  float4 v2 : TEXCOORD15,
  float4 v3 : COLOR0,
  float4 v4 : TEXCOORD6,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb2[18].x + cb2[18].y;
  r0.x = cb2[18].z + r0.x;
  r0.x = frac(r0.x);
  r0.x = cb1[142].z + r0.x;
  r0.x = cb3[2].x * r0.x;
  r1.x = v6.z;
  r1.yz = float2(1,0);
  r0.yz = v6.ww * r1.xy;
  r0.w = r0.y * cb1[65].z + -cb1[65].w;
  r0.w = 1 / r0.w;
  r0.y = r0.y * cb1[65].x + cb1[65].y;
  r0.y = r0.y + r0.w;
  r0.w = cmp(cb1[31].w < 1);
  r0.y = r0.w ? r0.z : r0.y;
  r0.y = 1000000 + -r0.y;
  r0.z = saturate(r0.y / cb4[13].x);
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb4[13].y * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.z ? 0 : r0.w;
  r0.w = cb4[18].w * r0.z;
  r0.z = cb4[13].z * r0.z;
  r0.z = r0.x * r0.z;
  r0.x = r0.x * r0.w;
  r2.xyzw = cb1[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb1[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb1[46].xyzw + r2.xyzw;
  r2.xyzw = cb1[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb1[70].xyz + r2.xyz;
  r1.xy = r3.xy / cb4[19].yy;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r4.x = dot(r1.xy, cb4[2].xy);
  r4.y = dot(r1.xy, cb4[3].xy);
  r1.xy = float2(0.5,0.5) + r4.xy;
  r4.xy = r0.xx * cb4[14].zw + r1.xy;
  r0.xw = r0.xx * cb4[18].xy + r1.xy;
  r0.xw = t0.SampleBias(s0_s, r0.xw, cb1[143].y).xy;
  r5.xy = r0.xw * float2(2,2) + float2(-1,-1);
  r0.xw = t0.SampleBias(s0_s, r4.xy, cb1[143].y).xy;
  r4.xy = r0.xw * float2(2,2) + float2(-1,-1);
  r0.x = dot(r4.xy, r4.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r4.z = sqrt(r0.x);
  r0.x = dot(r5.xy, r5.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r5.z = sqrt(r0.x);
  r4.xyz = r5.xyz + r4.xyz;
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[19].zzz * r5.xyz + r4.xyz;
  r4.xyz = float3(-1,-1,1) * r4.xyz;
  r0.xw = r3.xy / cb4[15].yy;
  r0.xw = float2(-0.5,-0.5) + r0.xw;
  r1.x = dot(r0.xw, cb4[2].xy);
  r1.y = dot(r0.xw, cb4[3].xy);
  r0.xw = float2(0.5,0.5) + r1.xy;
  r1.xy = r0.zz * cb4[14].zw + r0.xw;
  r0.xz = r0.zz * cb4[18].xy + r0.xw;
  r0.w = cb4[16].w + cb1[143].y;
  r1.xy = t0.SampleBias(s0_s, r1.xy, r0.w).xy;
  r0.xz = t0.SampleBias(s0_s, r0.xz, r0.w).xy;
  r5.xy = r0.xz * float2(2,2) + float2(-1,-1);
  r6.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r6.xy, r6.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r6.z = sqrt(r0.x);
  r0.x = dot(r5.xy, r5.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r5.z = sqrt(r0.x);
  r0.xzw = r6.xyz + r5.xyz;
  r5.xyz = float3(0,0,1) + -r0.xzw;
  r5.xyz = cb4[18].zzz * r5.xyz + r0.xzw;
  r5.w = 1 + r5.z;
  r0.x = dot(r5.xyw, r4.xyz);
  r0.z = 1 + r5.z;
  r4.xyz = r0.zzz * r4.xyz;
  r0.xzw = r5.xyw * r0.xxx + -r4.xyz;
  r4.xyz = float3(0,0,1) + -r0.xzw;
  r0.xzw = cb4[19].www * r4.xyz + r0.xzw;
  r1.x = cb4[11].x * cb1[142].z;
  r1.w = -0.100000001 * r1.x;
  r4.xyz = r3.xyz / cb4[11].zzz;
  r5.xy = cb4[11].ww * r4.yx;
  r5.z = -r4.z;
  r1.xyzw = r5.xzyz + r1.zwzw;
  r1.xy = t0.SampleBias(s0_s, r1.xy, cb1[143].y).xy;
  r1.zw = t0.SampleBias(s0_s, r1.zw, cb1[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r1.xy, r1.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.z = sqrt(r1.w);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = float3(0,0,1) + -r1.xyz;
  r1.w = 1 + -cb4[12].z;
  r5.xyz = -cb1[67].xyz + r3.xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb4[12].x;
  r3.w = log2(r2.w);
  r2.w = cmp(0 >= r2.w);
  r3.w = cb4[12].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r1.w = r3.w * r1.w;
  r1.w = r2.w ? 0 : r1.w;
  r1.w = cb4[12].z + r1.w;
  r1.xyz = r1.www * r4.xyz + r1.xyz;
  r0.xzw = -r1.xyz + r0.xzw;
  r1.w = v1.z * 0.5 + 0.5;
  r1.w = saturate(r1.w * cb4[20].x + cb4[20].w);
  r0.xzw = r1.www * r0.xzw + r1.xyz;
  r0.xzw = r0.xzw * cb1[138].www + cb1[138].xyz;
  r1.x = dot(r0.xzw, r0.xzw);
  r1.x = rsqrt(r1.x);
  r0.xzw = r1.xxx * r0.xzw;
  r1.xyz = v1.zxy * v0.yzx;
  r1.xyz = v1.yzx * v0.zxy + -r1.xyz;
  r1.xyz = v1.www * r1.xyz;
  r1.xyz = r1.xyz * r0.zzz;
  r1.xyz = r0.xxx * v0.xyz + r1.xyz;
  r0.xzw = r0.www * v1.xyz + r1.xyz;
  r1.x = dot(r0.xzw, r0.xzw);
  r1.x = rsqrt(r1.x);
  r0.xzw = r1.xxx * r0.xzw;
  r1.x = dot(-r2.xyz, -r2.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = -r2.xyz * r1.xxx;
  r0.x = dot(r0.xzw, r1.xyz);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.x = log2(r0.x);
  r0.z = cb4[21].x * r0.x;
  r0.x = cb4[26].w * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * cb4[27].y + cb4[27].x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb4[21].y * r0.z;
  r0.z = max(9.99999975e-006, r0.z);
  r0.z = saturate(r0.y / r0.z);
  r0.z = 1 + -r0.z;
  r0.z = -r0.z * cb4[21].z + 1;
  r1.xy = r3.xy / cb4[22].zz;
  r2.xy = cb1[142].zz * cb4[22].xx + r1.xy;
  r1.xy = cb1[142].zz * cb4[23].xx + r1.xy;
  r0.w = t1.SampleBias(s1_s, r1.xy, cb1[143].y).y;
  r1.x = t1.SampleBias(s1_s, r2.xy, cb1[143].y).x;
  r0.w = r1.x * r0.w;
  r0.w = cb4[23].y * r0.w;
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb4[23].z * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r0.w ? 0 : r1.x;
  r0.z = r0.z / r0.w;
  r0.z = cb4[23].w + -r0.z;
  r0.z = 1 + r0.z;
  r0.z = 1 + -r0.z;
  r1.xy = r3.xy / cb4[24].yy;
  r2.z = 0;
  r0.w = cb4[24].z * cb1[142].z;
  r2.xy = float2(0.100000001,6.28318548) * r0.ww;
  r2.xz = r2.xz + r1.xy;
  r0.w = t1.SampleBias(s1_s, r1.xy, cb1[143].y).x;
  r1.x = sin(r2.y);
  r1.x = r1.x * 0.5 + 0.5;
  r1.x = r1.x * cb4[24].w + cb4[25].x;
  r1.y = t1.SampleBias(s1_s, r2.xz, cb1[143].y).x;
  r1.z = 1 + -r1.y;
  r1.y = dot(r0.ww, r1.yy);
  r2.x = 1 + -r0.w;
  r0.w = cmp(r0.w >= 0.5);
  r2.x = r2.x + r2.x;
  r1.z = -r2.x * r1.z + 1;
  r0.w = r0.w ? r1.z : r1.y;
  r1.y = r0.w + -r1.x;
  r1.y = cmp(9.99999975e-006 < abs(r1.y));
  r1.z = cmp(r0.w >= r1.x);
  r1.x = cb4[25].y + r1.x;
  r1.z = r1.z ? 1.000000 : 0;
  r1.y = r1.y ? r1.z : 1;
  r1.y = cb4[25].z * r1.y;
  r1.z = cmp(r0.w >= r1.x);
  r0.w = -r1.x + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.x = r1.z ? 0 : r1.y;
  r0.w = r0.w ? r1.x : 0;
  r0.z = r0.z / r0.w;
  r0.z = 1 + -r0.z;
  r0.w = saturate(r0.y / cb4[26].x);
  r0.y = saturate(r0.y / cb4[27].w);
  r0.y = cb4[28].x * r0.y;
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb4[26].y * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r0.w ? 0 : r1.x;
  r0.z = saturate(r0.z * r0.w);
  r1.x = rsqrt(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = 1 / r1.x;
  r1.x = cb4[26].z * r1.x;
  r0.z = r1.x * r0.z;
  r1.xy = float2(1,1) + -v3.yw;
  r0.z = r1.x * r0.z;
  r0.z = r0.w ? 0 : r0.z;
  r0.w = log2(abs(r0.y));
  r0.y = cmp(0 >= abs(r0.y));
  r0.w = cb4[28].y * r0.w;
  r0.w = exp2(r0.w);
  r0.y = r0.y ? 0 : r0.w;
  r0.x = saturate(r0.x * r0.y);
  r0.x = saturate(r0.z + r0.x);
  r0.y = log2(r1.y);
  r0.z = cb4[38].y * r0.y;
  r0.y = cb4[32].w * r0.y;
  r0.y = exp2(r0.y);
  r0.z = exp2(r0.z);
  r0.yz = float2(1,1) + -r0.yz;
  r0.w = cmp(0 >= r1.y);
  r1.x = cb4[37].z * r1.x;
  r0.yz = r0.ww ? float2(1,1) : r0.yz;
  r0.x = r0.z * r0.x;
  r0.x = r0.y * r0.x;
  r0.z = -cb4[36].y + r3.z;
  r0.z = r0.z / cb4[36].z;
  r0.w = cmp(r0.z >= 1);
  r0.w = r0.w ? 1 : r0.z;
  r0.z = -1 + r0.z;
  r0.z = cmp(9.99999975e-006 < abs(r0.z));
  r0.z = r0.z ? r0.w : 1;
  r0.w = cmp(r0.z >= 0);
  r0.w = r0.w ? r0.z : 1;
  r0.z = cmp(9.99999975e-006 < abs(r0.z));
  r0.z = r0.z ? r0.w : 1;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb4[36].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.z = r0.z ? 1 : r0.w;
  r0.z = cb4[37].x * r0.z;
  r2.xyz = r3.xyz / cb4[35].xxx;
  r3.xyz = r3.xyz / cb4[34].yyy;
  r1.yz = t0.SampleBias(s0_s, r2.yz, cb1[143].y).xy;
  r2.xy = t0.SampleBias(s0_s, r2.xz, cb1[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = cb4[35].yy * -r2.xy + r2.xy;
  r1.yz = r1.yz * float2(2,2) + float2(-1,-1);
  r1.yz = cb4[35].yy * -r1.yz + r1.yz;
  r1.yz = r1.yz + -r2.xy;
  r0.w = -cb4[36].x + cb4[35].w;
  r0.w = saturate(abs(v1.x) * r0.w + cb4[36].x);
  r1.yz = r0.ww * r1.yz + r2.xy;
  r2.xy = cb4[34].zz * r3.xy;
  r3.z = -r3.z;
  r3.xy = -r2.xy;
  r2.w = cb4[33].x * cb1[142].z;
  r4.xyzw = r2.wwww * cb4[33].zwzw + r3.xzyz;
  r2.z = r3.z;
  r2.xyzw = r2.wwww * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r2.xzyz;
  r2.xyzw = r2.xyzw + r1.yzyz;
  r3.xyzw = r4.xyzw + r1.yzyz;
  r1.y = t1.SampleLevel(s1_s, r3.zw, r0.z).y;
  r1.z = t1.SampleLevel(s1_s, r3.xy, r0.z).y;
  r0.z = 0.75 * r0.z;
  r1.y = r1.y + -r1.z;
  r1.y = r0.w * r1.y + r1.z;
  r1.z = t1.SampleLevel(s1_s, r2.zw, r0.z).y;
  r0.z = t1.SampleLevel(s1_s, r2.xy, r0.z).y;
  r1.z = r1.z + -r0.z;
  r0.z = r0.w * r1.z + r0.z;
  r0.z = r1.y + r0.z;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb4[37].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * r1.x;
  r0.z = r0.z ? 0 : r0.w;
  r0.z = -r0.y * r0.z + 1;
  r0.y = r0.z / r0.y;
  r0.y = cb4[37].w + -r0.y;
  r0.y = 1 + r0.y;
  r0.y = saturate(r0.y * cb4[38].x + r1.w);
  r0.x = saturate(r0.y * r0.x);
  r0.y = -0.00392156886 + r0.x;
  r0.x = -r0.x * 0.5 + 1;
  r0.x = log2(r0.x);
  r0.x = -1.38629436 * r0.x;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  o0.x = r0.x;
  r0.y = cb0[11].x + v4.x;
  r0.yzw = float3(6.28318548,12.566371,18.849556) * r0.yyy;
  sincos(r0.yzw, r1.xyz, r2.xyz);
  o0.yzw = r2.xyz * r0.xxx;
  o1.yzw = r1.xyz * r0.xxx;
  o1.x = 0;
  return;
}