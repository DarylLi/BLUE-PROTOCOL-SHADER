// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[39];
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
  float4 v5 : TEXCOORD15,
  float4 v6 : COLOR0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
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
  r0.y = saturate(r0.x / cb3[13].x);
  r0.z = log2(r0.y);
  r0.y = cmp(0 >= r0.y);
  r0.z = cb3[13].y * r0.z;
  r0.z = exp2(r0.z);
  r0.y = r0.y ? 0 : r0.z;
  r0.z = cb3[18].w * r0.y;
  r0.y = cb3[13].z * r0.y;
  r0.w = cb1[18].x + cb1[18].y;
  r0.w = cb1[18].z + r0.w;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r0.yz = r0.ww * r0.yz;
  r1.xyzw = cb0[45].xyzw * v0.yyyy;
  r1.xyzw = v0.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v0.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xy = r2.xy / cb3[19].yy;
  r3.xy = float2(-0.5,-0.5) + r3.xy;
  r4.x = dot(r3.xy, cb3[2].xy);
  r4.y = dot(r3.xy, cb3[3].xy);
  r3.xy = float2(0.5,0.5) + r4.xy;
  r3.zw = r0.zz * cb3[14].zw + r3.xy;
  r0.zw = r0.zz * cb3[18].xy + r3.xy;
  r0.zw = t1.SampleBias(s1_s, r0.zw, cb0[143].y).xy;
  r4.xy = r0.zw * float2(2,2) + float2(-1,-1);
  r0.zw = t1.SampleBias(s1_s, r3.zw, cb0[143].y).xy;
  r3.xy = r0.zw * float2(2,2) + float2(-1,-1);
  r0.z = dot(r3.xy, r3.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r3.z = sqrt(r0.z);
  r0.z = dot(r4.xy, r4.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r4.z = sqrt(r0.z);
  r3.xyz = r4.xyz + r3.xyz;
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb3[19].zzz * r4.xyz + r3.xyz;
  r3.xyz = float3(-1,-1,1) * r3.xyz;
  r0.zw = r2.xy / cb3[15].yy;
  r0.zw = float2(-0.5,-0.5) + r0.zw;
  r4.x = dot(r0.zw, cb3[2].xy);
  r4.y = dot(r0.zw, cb3[3].xy);
  r0.zw = float2(0.5,0.5) + r4.xy;
  r4.xy = r0.yy * cb3[14].zw + r0.zw;
  r0.yz = r0.yy * cb3[18].xy + r0.zw;
  r0.w = cb3[16].w + cb0[143].y;
  r4.xy = t1.SampleBias(s1_s, r4.xy, r0.w).xy;
  r0.yz = t1.SampleBias(s1_s, r0.yz, r0.w).xy;
  r5.xy = r0.yz * float2(2,2) + float2(-1,-1);
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.y = dot(r4.xy, r4.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r4.z = sqrt(r0.y);
  r0.y = dot(r5.xy, r5.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r5.z = sqrt(r0.y);
  r0.yzw = r5.xyz + r4.xyz;
  r4.xyz = float3(0,0,1) + -r0.yzw;
  r4.xyz = cb3[18].zzz * r4.xyz + r0.yzw;
  r4.w = 1 + r4.z;
  r0.y = dot(r4.xyw, r3.xyz);
  r0.z = 1 + r4.z;
  r3.xyz = r0.zzz * r3.xyz;
  r0.yzw = r4.xyw * r0.yyy + -r3.xyz;
  r3.xyz = float3(0,0,1) + -r0.yzw;
  r0.yzw = cb3[19].www * r3.xyz + r0.yzw;
  r1.w = cb3[11].x * cb0[142].z;
  r3.y = -0.100000001 * r1.w;
  r3.x = 0;
  r4.xyz = r2.xyz / cb3[11].zzz;
  r5.xy = cb3[11].ww * r4.yx;
  r5.z = -r4.z;
  r3.xyzw = r5.xzyz + r3.xyxy;
  r3.xy = t1.SampleBias(s1_s, r3.xy, cb0[143].y).xy;
  r3.zw = t1.SampleBias(s1_s, r3.zw, cb0[143].y).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r3.xy, r3.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r3.z = sqrt(r1.w);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r3.xyz = r4.xyz + r3.xyz;
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r1.w = 1 + -cb3[12].z;
  r5.xyz = -cb0[67].xyz + r2.xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb3[12].x;
  r3.w = log2(r2.w);
  r2.w = cmp(0 >= r2.w);
  r3.w = cb3[12].y * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r1.w = r3.w * r1.w;
  r1.w = r2.w ? 0 : r1.w;
  r1.w = cb3[12].z + r1.w;
  r3.xyz = r1.www * r4.xyz + r3.xyz;
  r0.yzw = -r3.xyz + r0.yzw;
  r1.w = v4.z * 0.5 + 0.5;
  r1.w = saturate(r1.w * cb3[20].x + cb3[20].w);
  r0.yzw = r1.www * r0.yzw + r3.xyz;
  r0.yzw = r0.yzw * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r0.yzw, r0.yzw);
  r2.w = rsqrt(r2.w);
  r0.yzw = r2.www * r0.yzw;
  r3.xyz = v4.zxy * v3.yzx;
  r3.xyz = v4.yzx * v3.zxy + -r3.xyz;
  r3.xyz = v4.www * r3.xyz;
  r3.xyz = r3.xyz * r0.zzz;
  r3.xyz = r0.yyy * v3.xyz + r3.xyz;
  r0.yzw = r0.www * v4.xyz + r3.xyz;
  r2.w = dot(r0.yzw, r0.yzw);
  r2.w = rsqrt(r2.w);
  r0.yzw = r2.www * r0.yzw;
  r2.w = dot(-r1.xyz, -r1.xyz);
  r2.w = rsqrt(r2.w);
  r1.xyz = r2.www * -r1.xyz;
  r0.y = dot(r0.yzw, r1.xyz);
  r0.y = max(0, r0.y);
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-005, abs(r0.y));
  r0.y = log2(r0.y);
  r0.z = cb3[21].x * r0.y;
  r0.y = cb3[26].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * cb3[27].y + cb3[27].x;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb3[21].y * r0.z;
  r0.z = max(9.99999975e-006, r0.z);
  r0.z = saturate(r0.x / r0.z);
  r0.z = 1 + -r0.z;
  r0.z = -r0.z * cb3[21].z + 1;
  r1.xy = r2.xy / cb3[22].zz;
  r3.xy = cb0[142].zz * cb3[22].xx + r1.xy;
  r1.xy = cb0[142].zz * cb3[23].xx + r1.xy;
  r0.w = t2.SampleBias(s2_s, r1.xy, cb0[143].y).y;
  r1.x = t2.SampleBias(s2_s, r3.xy, cb0[143].y).x;
  r0.w = r1.x * r0.w;
  r0.w = cb3[23].y * r0.w;
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb3[23].z * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r0.w ? 0 : r1.x;
  r0.z = r0.z / r0.w;
  r0.z = cb3[23].w + -r0.z;
  r0.z = 1 + r0.z;
  r0.z = 1 + -r0.z;
  r1.xy = r2.xy / cb3[24].yy;
  r3.z = 0;
  r0.w = cb3[24].z * cb0[142].z;
  r3.xy = float2(0.100000001,6.28318548) * r0.ww;
  r3.xz = r3.xz + r1.xy;
  r0.w = t2.SampleBias(s2_s, r1.xy, cb0[143].y).x;
  r1.x = sin(r3.y);
  r1.x = r1.x * 0.5 + 0.5;
  r1.x = r1.x * cb3[24].w + cb3[25].x;
  r1.y = t2.SampleBias(s2_s, r3.xz, cb0[143].y).x;
  r1.z = 1 + -r1.y;
  r1.y = dot(r0.ww, r1.yy);
  r2.w = 1 + -r0.w;
  r0.w = cmp(r0.w >= 0.5);
  r2.w = r2.w + r2.w;
  r1.z = -r2.w * r1.z + 1;
  r0.w = r0.w ? r1.z : r1.y;
  r1.y = r0.w + -r1.x;
  r1.y = cmp(9.99999975e-006 < abs(r1.y));
  r1.z = cmp(r0.w >= r1.x);
  r1.x = cb3[25].y + r1.x;
  r1.z = r1.z ? 1.000000 : 0;
  r1.y = r1.y ? r1.z : 1;
  r1.y = cb3[25].z * r1.y;
  r1.z = cmp(r0.w >= r1.x);
  r0.w = -r1.x + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.x = r1.z ? 0 : r1.y;
  r0.w = r0.w ? r1.x : 0;
  r0.z = r0.z / r0.w;
  r0.z = 1 + -r0.z;
  r0.w = saturate(r0.x / cb3[26].x);
  r0.x = saturate(r0.x / cb3[27].w);
  r0.x = cb3[28].x * r0.x;
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb3[26].y * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r0.w ? 0 : r1.x;
  r0.z = saturate(r0.z * r0.w);
  r1.x = rsqrt(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = 1 / r1.x;
  r1.x = cb3[26].z * r1.x;
  r0.z = r1.x * r0.z;
  r1.xy = float2(1,1) + -v6.yw;
  r0.z = r1.x * r0.z;
  r0.z = r0.w ? 0 : r0.z;
  r0.w = log2(abs(r0.x));
  r0.x = cmp(0 >= abs(r0.x));
  r0.w = cb3[28].y * r0.w;
  r0.w = exp2(r0.w);
  r0.x = r0.x ? 0 : r0.w;
  r0.x = saturate(r0.y * r0.x);
  r0.x = saturate(r0.z + r0.x);
  r0.y = log2(r1.y);
  r0.z = cb3[38].y * r0.y;
  r0.y = cb3[32].w * r0.y;
  r0.y = exp2(r0.y);
  r0.z = exp2(r0.z);
  r0.yz = float2(1,1) + -r0.yz;
  r0.w = cmp(0 >= r1.y);
  r1.x = cb3[37].z * r1.x;
  r0.yz = r0.ww ? float2(1,1) : r0.yz;
  r0.x = r0.z * r0.x;
  r0.x = r0.y * r0.x;
  r0.z = -cb3[36].y + r2.z;
  r0.z = r0.z / cb3[36].z;
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
  r0.w = cb3[36].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r0.z = r0.z ? 1 : r0.w;
  r0.z = cb3[37].x * r0.z;
  r3.xyz = r2.xyz / cb3[35].xxx;
  r2.xyz = r2.xyz / cb3[34].yyy;
  r1.yz = t1.SampleBias(s1_s, r3.yz, cb0[143].y).xy;
  r3.xy = t1.SampleBias(s1_s, r3.xz, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r3.xy = cb3[35].yy * -r3.xy + r3.xy;
  r1.yz = r1.yz * float2(2,2) + float2(-1,-1);
  r1.yz = cb3[35].yy * -r1.yz + r1.yz;
  r1.yz = r1.yz + -r3.xy;
  r0.w = -cb3[36].x + cb3[35].w;
  r0.w = saturate(abs(v4.x) * r0.w + cb3[36].x);
  r1.yz = r0.ww * r1.yz + r3.xy;
  r3.xy = cb3[34].zz * r2.xy;
  r2.z = -r2.z;
  r2.xy = -r3.xy;
  r2.w = cb3[33].x * cb0[142].z;
  r4.xyzw = r2.wwww * cb3[33].zwzw + r2.xzyz;
  r3.z = r2.z;
  r2.xyzw = r2.wwww * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r3.xzyz;
  r2.xyzw = r2.xyzw + r1.yzyz;
  r3.xyzw = r4.xyzw + r1.yzyz;
  r1.y = t2.SampleLevel(s2_s, r3.zw, r0.z).y;
  r1.z = t2.SampleLevel(s2_s, r3.xy, r0.z).y;
  r0.z = 0.75 * r0.z;
  r1.y = r1.y + -r1.z;
  r1.y = r0.w * r1.y + r1.z;
  r1.z = t2.SampleLevel(s2_s, r2.zw, r0.z).y;
  r0.z = t2.SampleLevel(s2_s, r2.xy, r0.z).y;
  r1.z = r1.z + -r0.z;
  r0.z = r0.w * r1.z + r0.z;
  r0.z = r1.y + r0.z;
  r0.w = log2(r0.z);
  r0.z = cmp(0 >= r0.z);
  r0.w = cb3[37].y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * r1.x;
  r0.z = r0.z ? 0 : r0.w;
  r0.z = -r0.y * r0.z + 1;
  r0.y = r0.z / r0.y;
  r0.y = cb3[37].w + -r0.y;
  r0.y = 1 + r0.y;
  r0.y = saturate(r0.y * cb3[38].x + r1.w);
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