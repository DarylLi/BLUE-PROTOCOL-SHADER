// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[33];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[144];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v5.yyyy;
  r0.xyzw = v5.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v5.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r0.w = dot(-r0.xyz, -r0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r0.xyz * r0.www;
  r0.w = saturate(v4.y + v4.y);
  r2.xyz = -cb2[4].xyz + cb2[3].xyz;
  r2.xyz = r0.www * r2.xyz + cb2[4].xyz;
  r3.xyz = float3(-0.5,1,1) + v4.yxy;
  r0.w = saturate(r3.x + r3.x);
  r4.xyz = cb2[6].xyz + -cb2[3].xyz;
  r4.xyz = r0.www * r4.xyz + cb2[3].xyz;
  r4.xyz = r4.xyz + -r2.xyz;
  r2.xyz = v4.yyy * r4.xyz + r2.xyz;
  r4.x = cb2[15].w * cb0[142].z;
  r4.yz = cb2[16].xw * cb0[142].zz;
  r3.xw = cb2[16].yy * v4.zw;
  r0.w = cb1[18].x + cb1[18].y;
  r0.w = cb1[18].z + r0.w;
  r0.w = frac(r0.w);
  r3.xw = v4.zw * r3.xw + r0.ww;
  r3.xw = r4.xy + r3.xw;
  r1.w = t0.SampleBias(s1_s, r3.xw, cb0[143].y).x;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[16].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r4.xw = cb2[17].wx * cb0[142].zz;
  r3.xw = cb2[16].yy * v4.zw + r0.ww;
  r3.xw = r4.zw + r3.xw;
  r2.w = t0.SampleBias(s1_s, r3.xw, cb0[143].y).x;
  r3.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb2[16].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.x ? 0 : r2.w;
  r1.w = r2.w + r1.w;
  r4.yz = cb2[18].xz * cb0[142].zz;
  r2.w = frac(r4.z);
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + cb2[18].w;
  r3.xw = v4.zw * r2.ww + r0.ww;
  r3.xw = r4.xy + r3.xw;
  r2.w = t0.SampleBias(s1_s, r3.xw, cb0[143].y).x;
  r3.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb2[19].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.x ? 0 : r2.w;
  r3.xw = cmp(float2(0,0) >= v4.yx);
  r4.x = v4.y * v4.y;
  r4.y = r4.x * r4.x;
  r4.y = v4.y * r4.y;
  r4.y = r3.x ? 0 : r4.y;
  r2.w = r4.y * r2.w;
  r2.w = cb2[19].y * r2.w;
  r5.x = cb2[19].w * cb0[142].z;
  r5.y = cb2[20].x * cb0[142].z;
  r4.z = 0.75 + cb0[142].z;
  r4.z = cb2[18].z * r4.z;
  r4.z = frac(r4.z);
  r4.z = 6.28318548 * r4.z;
  r4.z = sin(r4.z);
  r4.z = r4.z * 0.5 + cb2[18].w;
  r4.zw = v4.zw * r4.zz + r0.ww;
  r4.zw = r5.xy + r4.zw;
  r4.z = t0.SampleBias(s1_s, r4.zw, cb0[143].y).x;
  r4.w = cmp(0 >= r4.z);
  r4.z = log2(r4.z);
  r4.z = cb2[19].x * r4.z;
  r4.z = exp2(r4.z);
  r4.z = r4.w ? 0 : r4.z;
  r4.y = r4.z * r4.y;
  r4.y = cb2[19].y * r4.y;
  r2.w = max(r4.y, r2.w);
  r1.w = r1.w * cb2[17].y + r2.w;
  r4.yz = cb2[22].zz * v4.xy;
  r4.yz = cb0[142].zz * cb2[22].yy + r4.yz;
  r2.w = t1.SampleBias(s2_s, r4.yz, cb0[143].y).x;
  r2.w = r2.w * 2 + -1;
  r4.y = cb2[22].w * r2.w;
  r5.x = r2.w * cb2[22].w + v4.x;
  r2.w = v4.y * 0.0399999991 + r4.y;
  r6.y = cb2[23].z * v4.y;
  r6.xz = v4.xx;
  r7.x = cb2[23].z;
  r7.y = 0.200000003;
  r4.yz = r7.xy * r6.xy;
  r4.yz = cb0[142].zz * cb2[23].yy + r4.yz;
  r4.y = t1.SampleBias(s2_s, r4.yz, cb0[143].y).x;
  r4.y = r4.y * 2 + -1;
  r5.y = r4.y * cb2[23].w + r2.w;
  r4.yz = r5.xy + r0.ww;
  r5.xy = cb0[142].zz * cb2[21].zw + r4.yz;
  r2.w = t2.SampleBias(s3_s, r5.xy, cb0[143].y).x;
  r4.yz = cb0[142].zz * cb2[24].zw + r4.yz;
  r4.y = t3.SampleBias(s4_s, r4.yz, cb0[143].y).x;
  r2.w = r4.y + r2.w;
  r2.w = cb2[25].x * r2.w;
  r4.y = v4.y * r4.x;
  r4.y = r3.x ? 0 : r4.y;
  r2.w = r4.y * r2.w;
  r4.y = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb2[25].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r4.y ? 0 : r2.w;
  r2.w = r2.w + r1.w;
  r3.z = cb2[26].z * r3.z;
  r5.y = r3.y * cb2[26].y + r0.w;
  r5.z = r3.z * 0.200000003 + r0.w;
  r4.yz = cb0[142].zz * cb2[26].xx + r5.yz;
  r3.z = t4.SampleBias(s5_s, r4.yz, cb0[143].y).x;
  r3.z = r3.z * 2 + -1;
  r3.z = cb2[26].w * r3.z;
  r4.yz = cb0[142].zz * cb2[27].yy + r5.yz;
  r4.y = t4.SampleBias(s5_s, r4.yz, cb0[143].y).x;
  r4.y = r4.y * 2 + -1;
  r4.y = cb2[26].w * r4.y;
  r3.z = r3.z * r4.y + v4.y;
  r5.x = r3.y * cb2[28].z + r0.w;
  r4.yz = cb0[142].zz * cb2[28].yy + r5.xz;
  r0.w = t4.SampleBias(s5_s, r4.yz, cb0[143].y).x;
  r0.w = r0.w * 2 + -1;
  r6.w = r0.w * cb2[28].w + r3.z;
  r0.w = saturate(1.89999998 + -r6.w);
  r3.y = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = 20 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r3.y ? 0 : r0.w;
  r3.y = t5.Sample(s0_s, r6.zw).x;
  r3.z = cmp(0 >= r3.y);
  r3.y = log2(r3.y);
  r3.y = cb2[29].x * r3.y;
  r3.y = exp2(r3.y);
  r3.y = cb2[29].y * r3.y;
  r3.y = r3.z ? 0 : r3.y;
  r1.w = r3.y * r1.w;
  r0.w = r2.w * r0.w + r1.w;
  r1.w = r3.x ? 0 : r4.x;
  r3.xy = float2(1,1) + -v4.yx;
  r4.xy = cmp(float2(0,0) >= r3.xy);
  r2.w = r3.x * r3.x;
  r2.w = r4.x ? 0 : r2.w;
  r1.w = r2.w * r1.w;
  r0.w = r1.w * r0.w;
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = cb2[29].zzz * r2.xyz;
  r2.xyz = v2.www * r2.xyz;
  r0.w = dot(r1.xyz, v1.xyz);
  r0.w = min(1, abs(r0.w));
  r1.x = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[29].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.x ? 0 : r0.w;
  r0.w = max(cb2[30].y, r0.w);
  r1.xyz = r2.xyz * r0.www;
  r0.w = log2(v4.x);
  r0.w = cb2[30].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r3.w ? 0 : r0.w;
  r0.w = max(cb2[31].x, r0.w);
  r1.w = log2(r3.y);
  r1.w = cb2[31].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r4.y ? 0 : r1.w;
  r1.w = max(cb2[31].w, r1.w);
  r0.w = r1.w * r0.w;
  r2.xyz = r1.xyz * r0.www;
  r1.xyz = -r1.xyz * r0.www + cb2[14].xyz;
  r1.xyz = cb2[32].xxx * r1.xyz + r2.xyz;
  r0.w = cmp(0.00100000005 < abs(v3.w));
  r2.xy = floor(v5.xy);
  r1.w = dot(r2.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r2.x = cmp(v3.w < 0);
  r2.y = 1 + v3.w;
  r2.y = cmp(r1.w < r2.y);
  r1.w = cmp(v3.w < r1.w);
  r1.w = r2.x ? r2.y : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r0.w = r0.w ? r1.w : 0;
  if (r0.w != 0) discard;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r0.xyz = -cb0[70].xyz + r0.xyz;
    r2.xyz = -cb1[5].xyz + r0.xyz;
    r3.xyz = float3(1,1,1) + cb1[19].xyz;
    r2.xyz = cmp(r3.xyz < abs(r2.xyz));
    r0.w = (int)r2.y | (int)r2.x;
    r0.w = (int)r2.z | (int)r0.w;
    r0.x = dot(r0.xyz, float3(0.577000022,0.577000022,0.577000022));
    r0.x = 0.00200000009 * r0.x;
    r0.x = frac(r0.x);
    r0.x = cmp(0.5 < r0.x);
    r0.xyz = r0.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r0.www ? r0.xyz : r1.xyz;
  }
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  return;
}