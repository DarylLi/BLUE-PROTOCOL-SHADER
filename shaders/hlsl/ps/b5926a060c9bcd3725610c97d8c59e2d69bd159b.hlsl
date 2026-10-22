// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[49];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  nointerpolation uint v7 : PRIMITIVE_ID0,
  uint v8 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[142].z / cb2[21].z;
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
  r1.xy = mad((int2)v7.xx, int2(36,36), int2(4,18));
  r1.y = t0[r1.y].val[0/4];
  r1.z = t0[r1.y].val[0/4+1];
  r1.w = t0[r1.y].val[0/4+2];
  r0.w = t0[r1.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.x = r1.y + r1.z;
  r1.x = r1.x + r1.w;
  r1.x = frac(r1.x);
  r1.x = cb0[142].z + r1.x;
  r1.x = cb1[2].x * r1.x;
  r1.y = cb2[17].x * r1.x;
  r2.x = v6.x;
  r1.z = cb2[19].z * v6.y + cb2[19].w;
  r2.y = cb2[20].x * r1.z;
  r2.xy = cb2[2].xy * r2.xy;
  r2.zw = r2.xy / cb2[21].yy;
  r2.zw = r1.yy * cb2[19].xy + r2.zw;
  r1.w = cb2[20].z * r1.x;
  r1.x = cb2[32].w * r1.x;
  r3.xy = r1.xx * cb2[19].xy + r2.xy;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r1.x = t4.SampleBias(s3_s, r3.xy, cb0[143].y).x;
  r3.xy = r1.ww * cb2[19].xy + r2.xy;
  r2.xy = r2.xy / cb2[20].yy;
  r1.yw = r1.yy * cb2[19].xy + r2.xy;
  r2.xy = t2.SampleBias(s1_s, r3.xy, cb0[143].y).xy;
  r3.x = t4.SampleBias(s3_s, r3.xy, cb0[143].y).x;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = float2(0.200000003,0.200000003) * r2.xy;
  r3.yz = r2.xy * r0.yy + r2.zw;
  r0.xy = r2.xy * r0.xx + r2.zw;
  r0.xy = t2.SampleBias(s1_s, r0.xy, cb0[143].y).xy;
  r4.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.xy = t2.SampleBias(s1_s, r3.yz, cb0[143].y).xy;
  r5.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r0.x = dot(r5.xy, r5.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r5.z = sqrt(r0.x);
  r0.x = dot(r4.xy, r4.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r4.z = sqrt(r0.x);
  r3.yzw = r5.xyz + -r4.xyz;
  r0.xyz = r0.zzz * r3.yzw + r4.xyz;
  r3.yzw = r0.xyz + r0.xyz;
  r0.xyz = -r0.xyz * float3(2,2,2) + float3(0,0,1);
  r0.xyz = cb2[21].www * r0.xyz + r3.yzw;
  r0.xyz = float3(-1,-1,1) * r0.xyz;
  r2.z = cb0[142].z / cb2[20].w;
  r2.w = 0.5 + r2.z;
  r2.z = frac(r2.z);
  r3.yz = r2.xy * r2.zz + r1.yw;
  r3.yz = t2.SampleBias(s1_s, r3.yz, cb0[143].y).xy;
  r4.xy = r3.yz * float2(2,2) + float2(-1,-1);
  r2.z = frac(r2.w);
  r1.yw = r2.xy * r2.zz + r1.yw;
  r2.x = r2.z + r2.z;
  r1.yw = t2.SampleBias(s1_s, r1.yw, cb0[143].y).xy;
  r5.xy = r1.yw * float2(2,2) + float2(-1,-1);
  r1.y = dot(r5.xy, r5.xy);
  r1.y = 1 + -r1.y;
  r1.y = max(0, r1.y);
  r5.z = sqrt(r1.y);
  r1.y = dot(r4.xy, r4.xy);
  r1.y = 1 + -r1.y;
  r1.y = max(0, r1.y);
  r4.z = sqrt(r1.y);
  r2.yzw = r5.xyz + -r4.xyz;
  r1.y = max(1, r2.x);
  r1.w = min(1, r2.x);
  r1.w = r1.w + r1.w;
  r1.y = -1 + r1.y;
  r1.y = r1.y + r1.y;
  r1.yw = min(float2(1,1), r1.yw);
  r1.y = 1 + -r1.y;
  r1.y = r1.y * r1.w;
  r2.xyz = r1.yyy * r2.yzw + r4.xyz;
  r3.yzw = r2.xyz + r2.xyz;
  r2.xyz = -r2.xyz * float3(2,2,2) + float3(0,0,1);
  r2.xyz = cb2[21].xxx * r2.xyz + r3.yzw;
  r2.w = 1 + r2.z;
  r1.y = dot(r2.xyw, r0.xyz);
  r1.w = 1 + r2.z;
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r2.xyw * r1.yyy + -r0.xyz;
  r2.xyz = float3(0,0,1) + -r0.xyz;
  r0.xyz = cb2[22].xxx * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz * cb0[138].www + cb0[138].xyz;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r2.xyz = v4.zxy * v3.yzx;
  r2.xyz = v4.yzx * v3.zxy + -r2.xyz;
  r2.xyz = v4.www * r2.xyz;
  r2.xyz = r2.xyz * r0.yyy;
  r2.xyz = r0.xxx * v3.xyz + r2.xyz;
  r0.xyz = r0.zzz * v4.xyz + r2.xyz;
  r1.y = dot(r0.xyz, r0.xyz);
  r1.y = rsqrt(r1.y);
  r0.xyz = r1.yyy * r0.xyz;
  r1.y = v8.x ? 1 : -1;
  r0.w = r1.y * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r2.xyzw = cb0[45].xyzw * v0.yyyy;
  r2.xyzw = v0.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v0.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.yzw = -r2.xyz * r0.www;
  r2.xyz = -cb0[70].xyz + r2.xyz;
  r0.x = dot(r0.xyz, r3.yzw);
  r0.x = max(0, r0.x);
  r0.x = 1 + -r0.x;
  r0.x = max(9.99999975e-005, abs(r0.x));
  r0.x = log2(r0.x);
  r0.y = cb2[29].w * r0.x;
  r0.x = cb2[35].y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * cb2[35].w + cb2[35].z;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb2[30].x * r0.y;
  r0.y = max(9.99999975e-006, r0.y);
  r0.zw = -cb0[129].xy + v0.xy;
  r0.zw = r0.zw * cb0[130].zw + float2(-0.5,-0.5);
  r4.xy = v0.ww * r0.zw;
  r4.zw = v0.zw;
  r5.xyw = float3(2,-2,1);
  r5.z = v0.w;
  r4.xyzw = r5.xyzw * r4.xyzw;
  r0.z = r4.z * cb0[65].z + -cb0[65].w;
  r0.z = 1 / r0.z;
  r0.w = r4.z * cb0[65].x + cb0[65].y;
  r0.z = r0.w + r0.z;
  r0.w = cmp(cb0[31].w < 1);
  r0.z = r0.w ? r4.w : r0.z;
  r1.yw = r4.xy / r4.ww;
  r1.yw = r1.yw * cb0[66].xy + cb0[66].wz;
  r0.w = t1.SampleLevel(s0_s, r1.yw, 0).x;
  r1.y = r0.w * cb0[65].z + -cb0[65].w;
  r0.w = r0.w * cb0[65].x + cb0[65].y;
  r1.y = 1 / r1.y;
  r0.w = r1.y + r0.w;
  r0.z = r0.w + -r0.z;
  r0.y = saturate(r0.z / r0.y);
  r0.y = 1 + -r0.y;
  r0.y = -r0.y * cb2[30].y + 1;
  r1.yw = r2.xy / cb2[31].yy;
  r3.yz = cb0[142].zz * cb2[30].ww + r1.yw;
  r1.yw = cb0[142].zz * cb2[31].ww + r1.yw;
  r0.w = t4.SampleBias(s3_s, r1.yw, cb0[143].y).x;
  r1.y = t4.SampleBias(s3_s, r3.yz, cb0[143].y).x;
  r0.w = r1.y * r0.w;
  r0.w = cb2[32].x * r0.w;
  r1.y = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.y = cb2[32].y * r1.y;
  r1.y = exp2(r1.y);
  r0.w = r0.w ? 0 : r1.y;
  r0.y = r0.y / r0.w;
  r0.y = cb2[32].z + -r0.y;
  r0.y = 1 + r0.y;
  r0.y = 1 + -r0.y;
  r0.w = 1 + -r1.x;
  r1.x = dot(r3.xx, r1.xx);
  r1.y = 1 + -r3.x;
  r1.w = cmp(r3.x >= 0.5);
  r1.y = r1.y + r1.y;
  r0.w = -r1.y * r0.w + 1;
  r0.w = r1.w ? r0.w : r1.x;
  r1.x = cb1[2].x * cb0[142].z;
  r1.y = cb2[33].x * r1.x;
  r1.x = cb2[24].x * r1.x;
  r1.y = 6.28318548 * r1.y;
  r1.y = sin(r1.y);
  r1.y = r1.y * 0.5 + 0.5;
  r1.y = r1.y * cb2[33].y + cb2[33].z;
  r1.w = -r1.y + r0.w;
  r1.w = cmp(9.99999975e-006 < abs(r1.w));
  r2.w = cmp(r0.w >= r1.y);
  r1.y = cb2[33].w + r1.y;
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = r1.w ? r2.w : 1;
  r1.w = cb2[34].x * r1.w;
  r2.w = cmp(r0.w >= r1.y);
  r0.w = -r1.y + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r1.y = r2.w ? 0 : r1.w;
  r0.w = r0.w ? r1.y : 0;
  r0.y = r0.y / r0.w;
  r0.y = 1 + -r0.y;
  r0.w = saturate(r0.z / cb2[34].z);
  r0.z = saturate(r0.z / cb2[36].y);
  r0.z = cb2[36].z * r0.z;
  r1.y = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.y = cb2[34].w * r1.y;
  r1.y = exp2(r1.y);
  r0.w = r0.w ? 0 : r1.y;
  r0.y = saturate(r0.y * r0.w);
  r1.y = rsqrt(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.y = 1 / r1.y;
  r1.y = cb2[35].x * r1.y;
  r0.y = r1.y * r0.y;
  r0.y = r0.w ? 0 : r0.y;
  r0.w = log2(abs(r0.z));
  r0.z = cmp(0 >= abs(r0.z));
  r0.w = cb2[36].w * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.z ? 0 : r0.w;
  r0.x = saturate(r0.x * r0.z);
  r0.x = saturate(r0.y + r0.x);
  r0.yz = float2(1,1) + -v5.wy;
  r0.w = log2(r0.y);
  r1.y = cb2[37].x * r0.w;
  r0.w = cb2[23].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 1 + -r0.w;
  r1.y = exp2(r1.y);
  r1.y = 1 + -r1.y;
  r0.y = cmp(0 >= r0.y);
  r1.y = r0.y ? 1 : r1.y;
  r0.y = r0.y ? 1 : r0.w;
  r0.x = r1.y * r0.x;
  r0.x = r0.y * r0.x;
  r0.w = -cb2[27].y + r2.z;
  r0.w = r0.w / cb2[27].z;
  r1.y = cmp(r0.w >= 1);
  r1.y = r1.y ? 1 : r0.w;
  r0.w = -1 + r0.w;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = r0.w ? r1.y : 1;
  r1.y = cmp(r0.w >= 0);
  r1.y = r1.y ? r0.w : 1;
  r0.w = cmp(9.99999975e-006 < abs(r0.w));
  r0.w = r0.w ? r1.y : 1;
  r1.y = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.y = cb2[27].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = 1 + -r1.y;
  r0.w = r0.w ? 1 : r1.y;
  r0.zw = cb2[28].zx * r0.zw;
  r3.xyz = r2.xyz / cb2[25].yyy;
  r2.xyz = r2.xyz / cb2[26].xxx;
  r4.xy = cb2[25].zz * r3.xy;
  r3.z = -r3.z;
  r3.xy = -r4.xy;
  r5.xyzw = r1.xxxx * cb2[24].zwzw + r3.xzyz;
  r4.z = r3.z;
  r3.xyzw = r1.xxxx * float4(0.00999999978,-0.100000001,0.00999999978,-0.100000001) + r4.xzyz;
  r1.xy = t3.SampleBias(s2_s, r2.yz, cb0[143].y).xy;
  r2.xy = t3.SampleBias(s2_s, r2.xz, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r2.xy = cb2[26].yy * -r2.xy + r2.xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r1.xy = cb2[26].yy * -r1.xy + r1.xy;
  r1.xy = r1.xy + -r2.xy;
  r1.w = -cb2[27].x + cb2[26].w;
  r1.w = saturate(abs(v4.x) * r1.w + cb2[27].x);
  r1.xy = r1.ww * r1.xy + r2.xy;
  r2.xyzw = r5.xyzw + r1.xyxy;
  r3.xyzw = r3.xyzw + r1.xyxy;
  r1.x = t4.SampleLevel(s3_s, r2.zw, r0.w).y;
  r1.y = t4.SampleLevel(s3_s, r2.xy, r0.w).y;
  r0.w = 0.75 * r0.w;
  r1.x = r1.x + -r1.y;
  r1.x = r1.w * r1.x + r1.y;
  r1.y = t4.SampleLevel(s3_s, r3.zw, r0.w).y;
  r0.w = t4.SampleLevel(s3_s, r3.xy, r0.w).y;
  r1.y = r1.y + -r0.w;
  r0.w = r1.w * r1.y + r0.w;
  r0.w = r1.x + r0.w;
  r1.x = log2(r0.w);
  r0.w = cmp(0 >= r0.w);
  r1.x = cb2[28].y * r1.x;
  r1.x = exp2(r1.x);
  r0.z = r1.x * r0.z;
  r0.z = r0.w ? 0 : r0.z;
  r0.z = -r0.y * r0.z + 1;
  r0.y = r0.z / r0.y;
  r0.y = cb2[48].y + -r0.y;
  r0.y = 1 + r0.y;
  r0.z = v4.z * 0.5 + 0.5;
  r0.z = saturate(r0.z * cb2[28].w + cb2[29].z);
  r0.y = saturate(r0.y * cb2[48].z + r0.z);
  r0.x = r0.y * r0.x;
  r0.y = 1 + -r1.z;
  r0.z = saturate(cb2[47].y * r1.z);
  r0.y = saturate(cb2[48].x * r0.y);
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