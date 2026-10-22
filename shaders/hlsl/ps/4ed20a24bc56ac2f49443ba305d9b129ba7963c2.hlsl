// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

struct t9_t {
  float val[4];
};
StructuredBuffer<t9_t> t9 : register(t9);

struct t8_t {
  float val[4];
};
StructuredBuffer<t8_t> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[19];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[363];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000},
                              { 17.000000, 0, 0, 0},
                              { 27.000000, 0, 0, 0},
                              { 37.000000, 0, 0, 0},
                              { 48.500000, 0, 0, 0},
                              { 60.000000, 0, 0, 0},
                              { 86.500000, 0, 0, 0},
                              { 113.000000, 0, 0, 0},
                              { 139.000000, 0, 0, 0},
                              { 165.000000, 0, 0, 0},
                              { 173.000000, 0, 0, 0},
                              { 181.000000, 0, 0, 0},
                              { 191.500000, 0, 0, 0},
                              { 202.000000, 0, 0, 0},
                              { 230.500000, 0, 0, 0},
                              { 259.000000, 0, 0, 0},
                              { 284.500000, 0, 0, 0},
                              { 310.000000, 0, 0, 0},
                              { 325.500000, 0, 0, 0},
                              { 341.000000, 0, 0, 0},
                              { 360.000000, 0, 0, 0} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[3];
  float4 x1[3];
  float4 x2[3];
  float4 x3[3];
  float4 x4[3];
  float4 x5[3];
  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v5.yyyy;
  r2.xyzw = v5.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v5.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r4.xyzw = t10.SampleBias(s1_s, v3.xy, cb0[143].y).xyzw;
  r5.xyz = cb2[2].xyz * r4.zzz;
  r6.xyz = cb2[4].xyz * r4.www;
  r6.xyz = cb2[14].yyy * r6.xyz;
  r5.xyz = r5.xyz * cb2[14].xxx + r6.xyz;
  r6.xyz = cb2[5].xyz + -r5.xyz;
  r5.xyz = cb2[14].zzz * r6.xyz + r5.xyz;
  r6.xyz = t11.SampleBias(s2_s, v3.xy, cb0[143].y).xyz;
  r0.w = -1 + cb0[143].y;
  r7.xyz = t12.SampleBias(s3_s, v3.xy, r0.w).xyz;
  r8.xyz = -cb2[9].xyz + cb2[8].xyz;
  r8.xyz = r7.zzz * r8.xyz + cb2[9].xyz;
  r9.xyz = cb2[11].xyz + -r8.xyz;
  r7.yzw = r7.yyy * r9.xyz + r8.xyz;
  r8.xyz = cb2[13].xyz + -r7.yzw;
  r7.xyz = r7.xxx * r8.xyz + r7.yzw;
  r8.xyzw = t13.SampleBias(s4_s, v3.xy, r0.w).xyzw;
  r7.xyz = float3(-1,-1,-1) + r7.xyz;
  r7.xyz = r8.zzz * r7.xyz + float3(1,1,1);
  r9.xyz = r7.xyz * r6.xyz;
  r10.xyz = mad((int3)v4.xxx, int3(36,36,36), int3(27,23,20));
  r1.z = t8[r10.x].val[0/4];
  r1.w = t8[r10.x].val[0/4+1];
  r0.w = r3.z + -r1.z;
  r0.w = max(0, r0.w);
  r1.z = max(cb2[14].w, r1.w);
  r0.w = r0.w / r1.z;
  r0.w = min(1, r0.w);
  r0.w = saturate(r0.w + r0.w);
  r0.w = r8.y * r0.w;
  r1.z = t8[r10.y].val[12/4];
  r1.w = firstbithigh((int)r1.z);
  r2.w = cmp((int)r1.w == -1);
  r1.w = (int)-r1.w + 31;
  r1.w = r2.w ? -1 : r1.w;
  r1.z = r1.z ? r1.w : 0;
  r1.w = saturate(dot(cb0[r1.z+358].xyz, r0.xyz));
  r10.xyw = cb0[67].xyz + -r3.xyz;
  r2.w = dot(r10.xyw, r10.xyw);
  r2.w = sqrt(r2.w);
  r10.xyw = r10.xyw / r2.www;
  r10.xyw = cb0[r1.z+358].xyz + r10.xyw;
  r3.w = dot(r10.xyw, r10.xyw);
  r3.w = sqrt(r3.w);
  r10.xyw = r10.xyw / r3.www;
  r3.w = dot(r10.xyw, r0.xyz);
  r3.w = saturate(r4.x + r3.w);
  r4.x = 11 * cb2[15].z;
  r4.x = exp2(r4.x);
  r4.z = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = r4.x * r3.w;
  r3.w = exp2(r3.w);
  r1.w = r3.w * r1.w;
  r1.w = r4.z ? 0 : r1.w;
  r1.w = cmp(r1.w >= cb2[15].w);
  r1.w = r1.w ? 1.000000 : 0;
  r3.w = cb2[16].x * r4.y;
  r1.w = r3.w * r1.w;
  r3.w = 1 + -r8.w;
  r3.w = cmp(r3.w >= 0.5);
  o6.z = r3.w ? 0 : 1;
  r3.w = cb2[16].z * cb1[1].w;
  r4.x = cmp(cb0[31].w < 1);
  r4.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.y + r1.x;
  r1.x = r4.x ? r1.y : r1.x;
  r1.y = cb2[16].w + r1.x;
  r4.xy = float2(0.649999976,0.487499982) * cb1[1].ww;
  r4.z = cb1[1].w * 0.617499948 + -r1.x;
  r4.y = saturate(r4.z / r4.y);
  r4.z = -cb1[1].w * 0.649999976 + 8000;
  r4.x = r4.y * r4.z + r4.x;
  r1.y = r1.y / r4.x;
  r1.x = r1.x / cb2[16].w;
  r4.x = cmp(9.99999975e-006 < abs(r3.w));
  r3.w = cmp(r3.w >= 0);
  r1.y = r3.w ? r1.y : r1.x;
  r1.x = r4.x ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb2[16].z));
  r3.w = 1 + cb2[16].z;
  r1.y = r1.y ? r3.w : 1.39999998;
  r4.xyz = -cb0[129].xxy + v5.xxy;
  r3.w = r4.x * cb0[130].z + -0.469999999;
  r3.w = 4.93230057 * r3.w;
  r3.w = cos(r3.w);
  r3.w = 0.899999976 + r3.w;
  r3.w = saturate(0.555555582 * r3.w);
  r1.y = -r3.w + r1.y;
  r1.x = r1.x * r1.y;
  r4.xw = cb0[152].xx + r4.yz;
  r4.xw = (uint2)r4.xw;
  r1.y = (uint)r4.w << 1;
  r1.y = (int)r1.y + (int)r4.x;
  r1.y = (uint)r1.y % 5;
  r1.y = (uint)r1.y;
  r4.xy = float2(0.015625,0.015625) * r4.yz;
  r3.w = t14.SampleBias(s5_s, r4.xy, cb0[143].y).x;
  r1.y = r3.w + r1.y;
  r1.y = r1.y * 0.166666672 + r1.x;
  r1.y = saturate(-0.5 + r1.y);
  r3.w = 0.763943851 * cb0[128].x;
  r4.x = cb0[130].x / cb0[130].y;
  r4.x = 1.77777779 / r4.x;
  r4.x = max(1, r4.x);
  r3.w = r4.x * r3.w;
  r4.xy = r2.ww * r3.ww + float2(-0.5,-300);
  r4.xy = saturate(float2(0.00333889807,0.000175438603) * r4.xy);
  r2.w = r4.x * -0.600000024 + 1;
  r2.w = r4.y * -0.200000003 + r2.w;
  r2.w = v3.z * r2.w;
  r1.x = floor(r1.x);
  r1.x = min(1, r1.x);
  o6.x = r1.x * r2.w;
  r1.x = 1 + -v2.y;
  o6.w = cb2[17].x * r1.x;
  r1.x = round(cb2[17].y);
  r1.x = (uint)r1.x;
  r1.x = min(2, (uint)r1.x);
  r2.w = cmp(r9.y >= r9.z);
  r2.w = r2.w ? 1.000000 : 0;
  r4.xy = r9.zy;
  r4.zw = float2(-1,0.666666687);
  r6.xy = r6.yz * r7.yz + -r4.xy;
  r6.zw = float2(1,-1);
  r4.xyzw = r2.wwww * r6.xyzw + r4.xyzw;
  r2.w = cmp(r9.x >= r4.x);
  r2.w = r2.w ? 1.000000 : 0;
  r6.xyz = r4.xyw;
  r6.w = r9.x;
  r4.xyw = r6.wyx;
  r4.xyzw = r4.xyzw + -r6.xyzw;
  r4.xyzw = r2.wwww * r4.xyzw + r6.xyzw;
  r2.w = min(r4.w, r4.y);
  r2.w = r4.x + -r2.w;
  r3.w = r4.w + -r4.y;
  r4.y = r2.w * 6 + 1.00000001e-010;
  r3.w = r3.w / r4.y;
  r3.w = r4.z + r3.w;
  r4.y = 1.00000001e-010 + r4.x;
  r2.w = r2.w / r4.y;
  r4.y = 360 * abs(r3.w);
  r4.zw = float2(0,1.40129846e-045);
  while (true) {
    r5.w = cmp((int)r4.w >= 21);
    if (r5.w != 0) break;
    r5.w = cmp(icb[r4.w+3].x >= r4.y);
    if (r5.w != 0) {
      r4.z = r4.w;
      break;
    }
    r4.w = (int)r4.w + 1;
    r4.z = 0;
  }
  r4.y = (int)r4.z + -1;
  r4.w = abs(r3.w) * 360 + -icb[r4.y+3].x;
  r5.w = icb[r4.z+3].x + -icb[r4.y+3].x;
  r4.w = r4.w / r5.w;
  r5.w = (int)r4.y & 0x80000000;
  r6.x = max((int)-r4.y, (int)r4.y);
  r6.y = (int)r6.x & 3;
  r6.z = -(int)r6.y;
  r5.w = r5.w ? r6.z : r6.y;
  r4.y = (int)r4.y ^ 4;
  r6.x = (uint)r6.x >> 2;
  r6.y = -(int)r6.x;
  r4.y = (int)r4.y & 0x80000000;
  r4.y = r4.y ? r6.y : r6.x;
  r6.x = (int)r4.z & 0x80000000;
  r6.y = max((int)-r4.z, (int)r4.z);
  r6.z = (int)r6.y & 3;
  r6.w = -(int)r6.z;
  r6.x = r6.x ? r6.w : r6.z;
  r4.z = (int)r4.z ^ 4;
  r6.y = (uint)r6.y >> 2;
  r6.z = -(int)r6.y;
  r4.z = (int)r4.z & 0x80000000;
  r4.z = r4.z ? r6.z : r6.y;
  r6.y = dot(cb0[r4.y+328].xyzw, icb[r5.w+0].xyzw);
  r6.z = dot(cb0[r4.y+338].xyzw, icb[r5.w+0].xyzw);
  r4.y = dot(cb0[r4.y+348].xyzw, icb[r5.w+0].xyzw);
  x0[0].x = r6.y;
  x0[1].x = r6.z;
  x0[2].x = r4.y;
  r4.y = dot(cb0[r4.z+328].xyzw, icb[r6.x+0].xyzw);
  r5.w = dot(cb0[r4.z+338].xyzw, icb[r6.x+0].xyzw);
  r4.z = dot(cb0[r4.z+348].xyzw, icb[r6.x+0].xyzw);
  x1[0].x = r4.y;
  x1[1].x = r5.w;
  x1[2].x = r4.z;
  r4.y = x0[r1.x+0].x;
  r4.z = x1[r1.x+0].x;
  r4.z = r4.z + -r4.y;
  r4.y = r4.w * r4.z + r4.y;
  r3.w = abs(r3.w) * 360 + r4.y;
  r4.y = cmp(r3.w < 0);
  r4.z = cmp(360 < r3.w);
  r6.xy = float2(360,-360) + r3.ww;
  r3.w = r4.z ? r6.y : r3.w;
  r3.w = r4.y ? r6.x : r3.w;
  r4.y = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.z = -0.200000003 + r4.y;
  r4.z = 10 * r4.z;
  r4.z = max(0, r4.z);
  r4.z = min(6, r4.z);
  r4.w = (int)r4.z;
  r5.w = (int)r4.w + 1;
  r4.z = trunc(r4.z);
  r4.z = r4.z * 0.100000001 + 0.200000003;
  r4.y = r4.y + -r4.z;
  r4.y = saturate(10 * r4.y);
  r4.z = (int)r4.w & 3;
  r4.w = (uint)r4.w >> 2;
  r6.x = (int)r5.w & 3;
  r5.w = (uint)r5.w >> 2;
  r6.y = dot(cb0[r4.w+334].xyzw, icb[r4.z+0].xyzw);
  r6.z = dot(cb0[r4.w+344].xyzw, icb[r4.z+0].xyzw);
  r6.w = dot(cb0[r4.w+354].xyzw, icb[r4.z+0].xyzw);
  x2[0].x = r6.y;
  x2[1].x = r6.z;
  x2[2].x = r6.w;
  r6.y = dot(cb0[r5.w+334].xyzw, icb[r6.x+0].xyzw);
  r6.z = dot(cb0[r5.w+344].xyzw, icb[r6.x+0].xyzw);
  r6.w = dot(cb0[r5.w+354].xyzw, icb[r6.x+0].xyzw);
  x3[0].x = r6.y;
  x3[1].x = r6.z;
  x3[2].x = r6.w;
  r6.y = dot(cb0[r4.w+336].xyzw, icb[r4.z+0].xyzw);
  r6.z = dot(cb0[r4.w+346].xyzw, icb[r4.z+0].xyzw);
  r4.z = dot(cb0[r4.w+356].xyzw, icb[r4.z+0].xyzw);
  x4[0].x = r6.y;
  x4[1].x = r6.z;
  x4[2].x = r4.z;
  r4.z = dot(cb0[r5.w+336].xyzw, icb[r6.x+0].xyzw);
  r4.w = dot(cb0[r5.w+346].xyzw, icb[r6.x+0].xyzw);
  r5.w = dot(cb0[r5.w+356].xyzw, icb[r6.x+0].xyzw);
  x5[0].x = r4.z;
  x5[1].x = r4.w;
  x5[2].x = r5.w;
  r4.z = x2[r1.x+0].x;
  r4.w = x3[r1.x+0].x;
  r4.w = r4.w + -r4.z;
  r4.z = r4.y * r4.w + r4.z;
  r4.w = x4[r1.x+0].x;
  r1.x = x5[r1.x+0].x;
  r1.x = r1.x + -r4.w;
  r1.x = r4.y * r1.x + r4.w;
  r4.y = cmp(0 < r2.w);
  r4.z = saturate(r4.z + r2.w);
  r2.w = r4.y ? r4.z : r2.w;
  r1.x = saturate(r4.x + r1.x);
  r4.xyz = r3.www * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(6,6,6) + float3(-3,-3,-3);
  r4.xyz = saturate(float3(-1,-1,-1) + abs(r4.xyz));
  r4.xyz = float3(-1,-1,-1) + r4.xyz;
  r4.xyz = r2.www * r4.xyz + float3(1,1,1);
  r4.xyz = saturate(r4.xyz * r1.xxx);
  r1.x = v2.z * r8.x;
  r1.x = cmp(r1.x >= cb2[18].x);
  o3.w = r1.x ? 1.000000 : 0;
  r1.y = -0.333299994 + r1.y;
  r1.y = cmp(r1.y < 0);
  if (r1.y != 0) discard;
  r9.xyz = saturate(r9.xyz);
  r1.y = saturate(cb2[16].y);
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r6.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
  r6.xyz = cb0[213].xyz * r6.xyz;
  r7.xyz = (int3)r6.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r1.y = 1 + cb0[213].w;
  r6.xyz = r6.xyz / r7.www;
  r6.xyz = frac(r6.xyz);
  r6.xyz = cb0[213].www * r6.xyz;
  r6.xyz = r7.xyz * r1.yyy + r6.xyz;
  r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
  r6.xyz = cb0[214].xyz * r6.xyz;
  o1.w = t8[r10.z].val[4/4];
  r1.y = dot(cb0[r1.z+358].xyz, cb0[r1.z+358].xyz);
  r1.y = rsqrt(r1.y);
  r7.xyz = cb0[r1.z+358].xyz * r1.yyy;
  r1.y = dot(r0.xyz, r7.xyz);
  r1.y = r1.y * 0.5 + 0.5;
  r1.z = 1 + -cb0[327].x;
  r1.z = v2.x * r1.z + cb0[327].x;
  r1.y = r1.y * r1.z;
  r1.x = r1.x ? 1 : 0.699999988;
  r1.z = max(r4.x, r4.y);
  r1.z = max(r1.z, r4.z);
  r2.w = r1.z * r1.x;
  r1.z = max(0.00100000005, r1.z);
  r1.z = r2.w / r1.z;
  r2.x = dot(-r2.xyz, r7.xyz);
  r2.x = saturate(3 * r2.x);
  r2.yzw = r4.xyz * r1.zzz + -r4.xyz;
  o4.xyz = r2.xxx * r2.yzw + r4.xyz;
  r1.y = cmp(r1.y >= cb0[327].x);
  o4.w = r1.y ? 1.000000 : 0;
  o5.y = 0.5 * r0.w;
  r1.y = 0.0799999982 * r1.w;
  r2.xyz = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r9.xyz;
  r2.xyz = r0.www * r2.xyz + r1.yyy;
  r4.xyz = r9.xyz * cb0[136].www + cb0[136].xyz;
  r2.xyz = r2.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r2.xyz;
  r2.xyz = r2.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r2.xyz = r0.www ? r2.xyz : r4.xyz;
  r4.xyz = t1.SampleLevel(s0_s, r6.xyz, 0).xyz;
  r1.y = t2.SampleLevel(s0_s, r6.xyz, 0).y;
  r1.y = r1.y * 2 + -1;
  r1.z = t4.SampleLevel(s0_s, r6.xyz, 0).y;
  r1.z = r1.z * 2 + -1;
  r2.w = t6.SampleLevel(s0_s, r6.xyz, 0).y;
  r2.w = r2.w * 2 + -1;
  r1.y = r1.y * r4.x;
  r8.y = 1.73205125 * r1.y;
  r1.y = r1.z * r4.y;
  r8.w = 1.73205125 * r1.y;
  r1.y = r2.w * r4.z;
  r10.y = 1.73205125 * r1.y;
  r1.y = t3.SampleLevel(s0_s, r6.xyz, 0).y;
  r1.y = r1.y * 2 + -1;
  r1.z = t5.SampleLevel(s0_s, r6.xyz, 0).y;
  r1.z = r1.z * 2 + -1;
  r2.w = t7.SampleLevel(s0_s, r6.xyz, 0).y;
  r2.w = r2.w * 2 + -1;
  r1.yz = r1.yz * r4.xy;
  r2.w = r2.w * r4.z;
  r8.xz = r4.xy;
  r3.w = dot(r8.xy, float2(0.886227548,-1.02332771));
  r6.x = r1.y * 2.21557164 + r3.w;
  r1.y = dot(r8.zw, float2(0.886227548,-1.02332771));
  r6.y = r1.z * 2.21557164 + r1.y;
  r10.x = r4.z;
  r1.y = dot(r10.xy, float2(0.886227548,-1.02332771));
  r6.z = r2.w * 2.21557164 + r1.y;
  r4.xyz = max(float3(0,0,0), r6.xyz);
  r4.xyz = cb0[157].xyz * r4.xyz;
  r6.xyw = float3(0.318309873,0.318309873,0.318309873) * r4.yzx;
  r1.y = cmp(r6.x >= r6.y);
  r1.y = r1.y ? 1.000000 : 0;
  r8.xy = r6.yx;
  r8.zw = float2(-1,0.666666687);
  r4.xy = r4.yz * float2(0.318309873,0.318309873) + -r8.xy;
  r4.zw = float2(1,-1);
  r4.xyzw = r1.yyyy * r4.xyzw + r8.xyzw;
  r1.y = cmp(r6.w >= r4.x);
  r1.y = r1.y ? 1.000000 : 0;
  r6.xyz = r4.xyw;
  r4.xyw = r6.wyx;
  r4.xyzw = r4.xyzw + -r6.xyzw;
  r4.xyzw = r1.yyyy * r4.xyzw + r6.xyzw;
  r1.y = min(r4.w, r4.y);
  r1.y = r4.x + -r1.y;
  r1.z = r4.w + -r4.y;
  r2.w = r1.y * 6 + 1.00000001e-010;
  r1.z = r1.z / r2.w;
  r1.z = r4.z + r1.z;
  r2.w = 1.00000001e-010 + r4.x;
  r1.y = r1.y / r2.w;
  r1.y = cb0[361].z * r1.y;
  r4.yzw = float3(1,0.666666687,0.333333343) + abs(r1.zzz);
  r4.yzw = frac(r4.yzw);
  r4.yzw = r4.yzw * float3(6,6,6) + float3(-3,-3,-3);
  r4.yzw = saturate(float3(-1,-1,-1) + abs(r4.yzw));
  r4.yzw = float3(-1,-1,-1) + r4.yzw;
  r4.yzw = r1.yyy * r4.yzw + float3(1,1,1);
  r4.xyz = r4.xxx * r4.yzw;
  r4.xyz = cb0[361].xxx * r4.xyz;
  r1.y = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.z = min(cb0[361].y, r1.y);
  r1.y = max(1.00000001e-010, r1.y);
  r1.y = r1.z / r1.y;
  r6.x = t9[0].val[8/4];
  r6.y = t9[0].val[8/4+1];
  r6.x = dot(r6.xy, float2(1,1));
  r8.x = t9[1].val[8/4];
  r8.y = t9[1].val[8/4+1];
  r6.y = dot(r8.xy, float2(1,1));
  r8.x = t9[2].val[8/4];
  r8.y = t9[2].val[8/4+1];
  r6.z = dot(r8.xy, float2(1,1));
  r8.x = t9[3].val[8/4];
  r8.y = t9[4].val[8/4];
  r8.z = t9[5].val[8/4];
  r6.xyz = r8.xyz + r6.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = cb0[362].xyz * r6.xyz;
  r4.xyz = r4.xyz * r1.yyy + r6.xyz;
  r4.xyz = r4.xyz * r9.xyz;
  r6.xyz = r9.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r9.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r9.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r4.xyz = r6.xyz * r4.xyz;
  r6.xyz = r0.www ? float3(0,0,0) : r7.xyz;
  r2.xyz = r6.xyz + r2.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r1.yz = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t8[r1.y].val[0/4];
    r6.y = t8[r1.y].val[0/4+1];
    r6.z = t8[r1.y].val[0/4+2];
    r6.xyz = -r6.xyz + r3.xyz;
    r7.x = t8[r1.z].val[0/4];
    r7.y = t8[r1.z].val[0/4+1];
    r7.z = t8[r1.z].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r0.w = (int)r6.y | (int)r6.x;
    r0.w = (int)r6.z | (int)r0.w;
    r1.y = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r3.xyz = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r0.www ? r3.xyz : r5.xyz;
  }
  r2.xyz = cb0[145].yyy * r2.xyz + r4.xyz;
  r2.xyz = r2.xyz + r5.xyz;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o2.xw = float2(0,0.549019635);
  o2.y = r1.w;
  o3.xyz = r9.xyz;
  o5.z = v2.x;
  o5.w = cb2[17].w;
  o5.x = r1.x;
  o6.y = v3.w;
  return;
}