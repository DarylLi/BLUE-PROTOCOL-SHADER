// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

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
  float4 cb1[4];
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
  float4 v4 : TEXCOORD1,
  nointerpolation uint v5 : PRIMITIVE_ID0,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r1.x = v6.z;
  r1.y = 1;
  r1.xy = v6.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb0[46].xyzw + r2.xyzw;
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
  r4.xyzw = t4.SampleBias(s2_s, v3.xy, cb0[143].y).xyzw;
  r5.xyz = cb2[2].xyz * r4.zzz;
  r6.xyz = cb2[4].xyz * r4.www;
  r6.xyz = cb2[14].yyy * r6.xyz;
  r5.xyz = r5.xyz * cb2[14].xxx + r6.xyz;
  r6.xyz = cb2[5].xyz + -r5.xyz;
  r5.xyz = cb2[14].zzz * r6.xyz + r5.xyz;
  r6.xyz = t5.SampleBias(s3_s, v3.xy, cb0[143].y).xyz;
  r0.w = -1 + cb0[143].y;
  r7.xyz = t6.SampleBias(s4_s, v3.xy, r0.w).xyz;
  r8.xyz = -cb2[9].xyz + cb2[8].xyz;
  r8.xyz = r7.zzz * r8.xyz + cb2[9].xyz;
  r9.xyz = cb2[11].xyz + -r8.xyz;
  r7.yzw = r7.yyy * r9.xyz + r8.xyz;
  r8.xyz = cb2[13].xyz + -r7.yzw;
  r7.xyz = r7.xxx * r8.xyz + r7.yzw;
  r8.xyzw = t7.SampleBias(s5_s, v3.xy, r0.w).xyzw;
  r7.xyz = float3(-1,-1,-1) + r7.xyz;
  r7.xyz = r8.zzz * r7.xyz + float3(1,1,1);
  r9.xyz = r7.xyz * r6.xyz;
  r0.w = r8.y * 0.75 + 0.25;
  r10.xyz = r9.xyz * r0.www;
  r11.xyz = cmp(float3(0,0,0) >= r10.xyz);
  r12.xyz = log2(r10.xyz);
  r12.xyz = float3(0.454545438,0.454545438,0.454545438) * r12.xyz;
  r12.xyz = exp2(r12.xyz);
  r11.xyz = r11.xyz ? float3(0,0,0) : r12.xyz;
  r12.xyz = float3(1,1,1) + -r11.xyz;
  r12.xyz = r12.xyz + r12.xyz;
  r13.xyz = t8.SampleBias(s6_s, v4.xy, cb0[143].y).xyz;
  r13.xyz = cb2[14].www * r13.xyz;
  r14.xyz = cmp(float3(0,0,0) >= r13.xyz);
  r13.xyz = log2(r13.xyz);
  r13.xyz = float3(0.454545438,0.454545438,0.454545438) * r13.xyz;
  r13.xyz = exp2(r13.xyz);
  r13.xyz = r14.xyz ? float3(0,0,0) : r13.xyz;
  r14.xyz = float3(1,1,1) + -r13.xyz;
  r12.xyz = -r12.xyz * r14.xyz + float3(1,1,1);
  r15.xyz = r13.xyz * r11.xyz;
  r15.xyz = r15.xyz + r15.xyz;
  r11.xyz = cmp(r11.xyz >= float3(0.5,0.5,0.5));
  r11.xyz = r11.xyz ? r12.xyz : r15.xyz;
  r12.xyz = cmp(float3(0,0,0) >= r11.xyz);
  r11.xyz = log2(r11.xyz);
  r11.xyz = float3(2.20000005,2.20000005,2.20000005) * r11.xyz;
  r11.xyz = exp2(r11.xyz);
  r11.xyz = r12.xyz ? float3(0,0,0) : r11.xyz;
  r11.xyz = -r9.xyz * r0.www + r11.xyz;
  r10.xyz = saturate(r4.xxx * r11.xyz + r10.xyz);
  r11.xyz = mad((int3)v5.xxx, int3(36,36,36), int3(27,23,20));
  r1.z = t0[r11.x].val[0/4];
  r1.w = t0[r11.x].val[0/4+1];
  r1.z = r3.z + -r1.z;
  r1.z = max(0, r1.z);
  r1.w = max(cb2[15].x, r1.w);
  r1.z = r1.z / r1.w;
  r1.z = min(1, r1.z);
  r1.z = saturate(r1.z + r1.z);
  r1.z = r8.y * r1.z;
  r1.w = t0[r11.y].val[12/4];
  r2.w = firstbithigh((int)r1.w);
  r3.w = cmp((int)r2.w == -1);
  r2.w = (int)-r2.w + 31;
  r2.w = r3.w ? -1 : r2.w;
  r1.w = r1.w ? r2.w : 0;
  r2.w = saturate(dot(cb0[r1.w+358].xyz, r0.xyz));
  r11.xyw = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r11.xyw, r11.xyw);
  r3.w = sqrt(r3.w);
  r11.xyw = r11.xyw / r3.www;
  r11.xyw = cb0[r1.w+358].xyz + r11.xyw;
  r4.z = dot(r11.xyw, r11.xyw);
  r4.z = sqrt(r4.z);
  r11.xyw = r11.xyw / r4.zzz;
  r4.z = saturate(dot(r11.xyw, r0.xyz));
  r4.w = 11 * cb2[15].w;
  r4.w = exp2(r4.w);
  r5.w = cmp(0 >= r4.z);
  r4.z = log2(r4.z);
  r4.z = r4.w * r4.z;
  r4.z = exp2(r4.z);
  r2.w = r4.z * r2.w;
  r2.w = r5.w ? 0 : r2.w;
  r4.y = cb2[16].x * r4.y;
  r2.w = r4.y * r2.w;
  r4.y = 1 + -r8.w;
  r4.y = cmp(r4.y >= 0.5);
  o6.z = r4.y ? 0 : 1;
  r4.y = cmp(cb0[31].w < 1);
  r4.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.z + r1.x;
  r1.x = r4.y ? r1.y : r1.x;
  r1.x = r1.x / cb2[16].z;
  r4.yzw = -cb0[129].xxy + v6.xxy;
  r1.y = r4.y * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb2[17].x + -r1.y;
  r1.x = r1.x * r1.y;
  r6.xw = cb0[152].xx + r4.zw;
  r6.xw = (uint2)r6.xw;
  r1.y = (uint)r6.w << 1;
  r1.y = (int)r1.y + (int)r6.x;
  r1.y = (uint)r1.y % 5;
  r1.y = (uint)r1.y;
  r4.yz = float2(0.015625,0.015625) * r4.zw;
  r4.y = t9.SampleBias(s7_s, r4.yz, cb0[143].y).x;
  r1.y = r4.y + r1.y;
  r1.y = r1.y * 0.166666672 + r1.x;
  r1.y = saturate(-0.5 + r1.y);
  r4.y = 0.763943851 * cb0[128].x;
  r4.z = cb0[130].x / cb0[130].y;
  r4.z = 1.77777779 / r4.z;
  r4.z = max(1, r4.z);
  r4.y = r4.y * r4.z;
  r4.yz = r3.ww * r4.yy + float2(-0.5,-300);
  r4.yz = saturate(float2(0.00333889807,0.000175438603) * r4.yz);
  r3.w = r4.y * -0.600000024 + 1;
  r3.w = r4.z * -0.200000003 + r3.w;
  r3.w = v3.z * r3.w;
  r1.x = floor(r1.x);
  r1.x = min(1, r1.x);
  o6.x = r1.x * r3.w;
  r1.x = 1 + -v2.y;
  o6.w = cb2[17].y * r1.x;
  r1.x = round(cb2[17].z);
  r1.x = (uint)r1.x;
  r1.x = min(2, (uint)r1.x);
  r3.w = cmp(r9.y >= r9.z);
  r3.w = r3.w ? 1.000000 : 0;
  r12.xy = r9.zy;
  r12.zw = float2(-1,0.666666687);
  r6.xy = r6.yz * r7.yz + -r12.xy;
  r6.zw = float2(1,-1);
  r6.xyzw = r3.wwww * r6.xyzw + r12.xyzw;
  r3.w = cmp(r9.x >= r6.x);
  r3.w = r3.w ? 1.000000 : 0;
  r7.xyz = r6.xyw;
  r7.w = r9.x;
  r6.xyw = r7.wyx;
  r6.xyzw = r6.xyzw + -r7.xyzw;
  r6.xyzw = r3.wwww * r6.xyzw + r7.xyzw;
  r3.w = min(r6.w, r6.y);
  r3.w = r6.x + -r3.w;
  r4.y = r6.w + -r6.y;
  r4.z = r3.w * 6 + 1.00000001e-010;
  r4.y = r4.y / r4.z;
  r4.y = r6.z + r4.y;
  r4.z = 1.00000001e-010 + r6.x;
  r3.w = r3.w / r4.z;
  r4.z = 360 * abs(r4.y);
  r4.w = 0;
  r5.w = 1;
  while (true) {
    r6.y = cmp((int)r5.w >= 21);
    if (r6.y != 0) break;
    r6.y = cmp(icb[r5.w+3].x >= r4.z);
    if (r6.y != 0) {
      r4.w = r5.w;
      break;
    }
    r5.w = (int)r5.w + 1;
    r4.w = 0;
  }
  r4.z = (int)r4.w + -1;
  r5.w = abs(r4.y) * 360 + -icb[r4.z+3].x;
  r6.y = icb[r4.w+3].x + -icb[r4.z+3].x;
  r5.w = r5.w / r6.y;
  r6.y = (int)r4.z & 0x80000000;
  r6.z = max((int)-r4.z, (int)r4.z);
  r6.w = (int)r6.z & 3;
  r7.x = -(int)r6.w;
  r6.y = r6.y ? r7.x : r6.w;
  r4.z = (int)r4.z ^ 4;
  r6.z = (uint)r6.z >> 2;
  r6.w = -(int)r6.z;
  r4.z = (int)r4.z & 0x80000000;
  r4.z = r4.z ? r6.w : r6.z;
  r6.z = (int)r4.w & 0x80000000;
  r6.w = max((int)-r4.w, (int)r4.w);
  r7.x = (int)r6.w & 3;
  r7.y = -(int)r7.x;
  r6.z = r6.z ? r7.y : r7.x;
  r4.w = (int)r4.w ^ 4;
  r6.w = (uint)r6.w >> 2;
  r7.x = -(int)r6.w;
  r4.w = (int)r4.w & 0x80000000;
  r4.w = r4.w ? r7.x : r6.w;
  r6.w = dot(cb0[r4.z+328].xyzw, icb[r6.y+0].xyzw);
  r7.x = dot(cb0[r4.z+338].xyzw, icb[r6.y+0].xyzw);
  r4.z = dot(cb0[r4.z+348].xyzw, icb[r6.y+0].xyzw);
  x0[0].x = r6.w;
  x0[1].x = r7.x;
  x0[2].x = r4.z;
  r4.z = dot(cb0[r4.w+328].xyzw, icb[r6.z+0].xyzw);
  r6.y = dot(cb0[r4.w+338].xyzw, icb[r6.z+0].xyzw);
  r4.w = dot(cb0[r4.w+348].xyzw, icb[r6.z+0].xyzw);
  x1[0].x = r4.z;
  x1[1].x = r6.y;
  x1[2].x = r4.w;
  r4.z = x0[r1.x+0].x;
  r4.w = x1[r1.x+0].x;
  r4.w = r4.w + -r4.z;
  r4.z = r5.w * r4.w + r4.z;
  r4.y = abs(r4.y) * 360 + r4.z;
  r4.z = cmp(r4.y < 0);
  r4.w = cmp(360 < r4.y);
  r6.yz = float2(360,-360) + r4.yy;
  r4.y = r4.w ? r6.z : r4.y;
  r4.y = r4.z ? r6.y : r4.y;
  r4.z = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = -0.200000003 + r4.z;
  r4.w = 10 * r4.w;
  r4.w = max(0, r4.w);
  r4.w = min(6, r4.w);
  r5.w = (int)r4.w;
  r6.y = (int)r5.w + 1;
  r4.w = trunc(r4.w);
  r4.w = r4.w * 0.100000001 + 0.200000003;
  r4.z = r4.z + -r4.w;
  r4.z = saturate(10 * r4.z);
  r4.w = (int)r5.w & 3;
  r5.w = (uint)r5.w >> 2;
  r6.z = (int)r6.y & 3;
  r6.y = (uint)r6.y >> 2;
  r6.w = dot(cb0[r5.w+334].xyzw, icb[r4.w+0].xyzw);
  r7.x = dot(cb0[r5.w+344].xyzw, icb[r4.w+0].xyzw);
  r7.y = dot(cb0[r5.w+354].xyzw, icb[r4.w+0].xyzw);
  x2[0].x = r6.w;
  x2[1].x = r7.x;
  x2[2].x = r7.y;
  r6.w = dot(cb0[r6.y+334].xyzw, icb[r6.z+0].xyzw);
  r7.x = dot(cb0[r6.y+344].xyzw, icb[r6.z+0].xyzw);
  r7.y = dot(cb0[r6.y+354].xyzw, icb[r6.z+0].xyzw);
  x3[0].x = r6.w;
  x3[1].x = r7.x;
  x3[2].x = r7.y;
  r6.w = dot(cb0[r5.w+336].xyzw, icb[r4.w+0].xyzw);
  r7.x = dot(cb0[r5.w+346].xyzw, icb[r4.w+0].xyzw);
  r4.w = dot(cb0[r5.w+356].xyzw, icb[r4.w+0].xyzw);
  x4[0].x = r6.w;
  x4[1].x = r7.x;
  x4[2].x = r4.w;
  r4.w = dot(cb0[r6.y+336].xyzw, icb[r6.z+0].xyzw);
  r5.w = dot(cb0[r6.y+346].xyzw, icb[r6.z+0].xyzw);
  r6.y = dot(cb0[r6.y+356].xyzw, icb[r6.z+0].xyzw);
  x5[0].x = r4.w;
  x5[1].x = r5.w;
  x5[2].x = r6.y;
  r4.w = x2[r1.x+0].x;
  r5.w = x3[r1.x+0].x;
  r5.w = r5.w + -r4.w;
  r4.w = r4.z * r5.w + r4.w;
  r5.w = x4[r1.x+0].x;
  r1.x = x5[r1.x+0].x;
  r1.x = r1.x + -r5.w;
  r1.x = r4.z * r1.x + r5.w;
  r4.z = cmp(0 < r3.w);
  r4.w = saturate(r4.w + r3.w);
  r3.w = r4.z ? r4.w : r3.w;
  r1.x = saturate(r6.x + r1.x);
  r4.yzw = r4.yyy * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r4.yzw = frac(r4.yzw);
  r4.yzw = r4.yzw * float3(6,6,6) + float3(-3,-3,-3);
  r4.yzw = saturate(float3(-1,-1,-1) + abs(r4.yzw));
  r4.yzw = float3(-1,-1,-1) + r4.yzw;
  r4.yzw = r3.www * r4.yzw + float3(1,1,1);
  r4.yzw = r4.yzw * r1.xxx;
  r6.xyz = r4.yzw * r0.www;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r8.yzw = log2(r6.xyz);
  r8.yzw = float3(0.454545438,0.454545438,0.454545438) * r8.yzw;
  r8.yzw = exp2(r8.yzw);
  r7.xyz = r7.xyz ? float3(0,0,0) : r8.yzw;
  r8.yzw = float3(1,1,1) + -r7.xyz;
  r8.yzw = r8.yzw * r14.xyz;
  r8.yzw = -r8.yzw * float3(2,2,2) + float3(1,1,1);
  r9.xyz = r7.xyz * r13.xyz;
  r9.xyz = r9.xyz + r9.xyz;
  r7.xyz = cmp(r7.xyz >= float3(0.5,0.5,0.5));
  r7.xyz = r7.xyz ? r8.yzw : r9.xyz;
  r8.yzw = cmp(float3(0,0,0) >= r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = float3(2.20000005,2.20000005,2.20000005) * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r8.yzw ? float3(0,0,0) : r7.xyz;
  r4.yzw = -r4.yzw * r0.www + r7.xyz;
  r4.xyz = saturate(r4.xxx * r4.yzw + r6.xyz);
  r0.w = v2.z * r8.x;
  r0.w = cmp(r0.w >= cb2[18].y);
  o3.w = r0.w ? 1.000000 : 0;
  r1.x = -0.333299994 + r1.y;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.x = saturate(cb2[16].y);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  o1.w = t0[r11.z].val[4/4];
  r1.x = dot(cb0[r1.w+358].xyz, cb0[r1.w+358].xyz);
  r1.x = rsqrt(r1.x);
  r1.xyw = cb0[r1.w+358].xyz * r1.xxx;
  r3.w = dot(r0.xyz, r1.xyw);
  r3.w = r3.w * 0.5 + 0.5;
  r4.w = 1 + -cb0[327].x;
  r4.w = v2.x * r4.w + cb0[327].x;
  r3.w = r4.w * r3.w;
  r0.w = r0.w ? 1 : 0.699999988;
  r4.w = max(r4.x, r4.y);
  r4.w = max(r4.w, r4.z);
  r5.w = r4.w * r0.w;
  r4.w = max(0.00100000005, r4.w);
  r4.w = r5.w / r4.w;
  r1.x = dot(-r2.xyz, r1.xyw);
  r1.x = saturate(3 * r1.x);
  r2.xyz = r4.xyz * r4.www + -r4.xyz;
  o4.xyz = r1.xxx * r2.xyz + r4.xyz;
  r1.x = cmp(r3.w >= cb0[327].x);
  o4.w = r1.x ? 1.000000 : 0;
  o5.y = 0.5 * r1.z;
  r1.x = 0.0799999982 * r2.w;
  r2.xyz = -r2.www * float3(0.0799999982,0.0799999982,0.0799999982) + r10.xyz;
  r1.xyz = r1.zzz * r2.xyz + r1.xxx;
  r2.xyz = r10.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r4.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r2.xyz;
  r1.xyz = r1.www ? r1.xyz : r2.xyz;
  r2.x = cmp(0 < cb0[215].x);
  if (r2.x != 0) {
    r2.xyz = r3.xyz * cb1[1].xyz + cb1[0].xyz;
    r2.xyz = max(cb1[2].xyz, r2.xyz);
    r2.xyz = min(cb1[3].xyz, r2.xyz);
    r6.xyz = t2.Sample(s1_s, r2.xyz).xyz;
    r2.xyz = t3.Sample(s0_s, r2.xyz).xzy;
    r7.xz = r6.xy;
    r7.yw = r2.xz;
    r8.x = dot(r7.xy, float2(0.886227548,-1.02332771));
    r8.y = dot(r7.zw, float2(0.886227548,-1.02332771));
    r2.x = r6.z;
    r8.z = dot(r2.xy, float2(0.886227548,-1.02332771));
    r2.xyz = max(float3(0,0,0), r8.xyz);
    r2.xyz = float3(0.318309873,0.318309873,0.318309873) * r2.xyz;
  } else {
    r2.xyz = float3(0,0,0);
  }
  r6.xyw = cb0[157].yzx * r2.yzx;
  r2.x = cmp(r6.x >= r6.y);
  r2.x = r2.x ? 1.000000 : 0;
  r7.xy = r6.yx;
  r7.zw = float2(-1,0.666666687);
  r8.xy = r2.yz * cb0[157].yz + -r7.xy;
  r8.zw = float2(1,-1);
  r7.xyzw = r2.xxxx * r8.xyzw + r7.xyzw;
  r2.x = cmp(r6.w >= r7.x);
  r2.x = r2.x ? 1.000000 : 0;
  r6.xyz = r7.xyw;
  r7.xyw = r6.wyx;
  r7.xyzw = r7.xyzw + -r6.xyzw;
  r6.xyzw = r2.xxxx * r7.xyzw + r6.xyzw;
  r2.x = min(r6.w, r6.y);
  r2.x = r6.x + -r2.x;
  r2.y = r6.w + -r6.y;
  r2.z = r2.x * 6 + 1.00000001e-010;
  r2.y = r2.y / r2.z;
  r2.y = r6.z + r2.y;
  r2.z = 1.00000001e-010 + r6.x;
  r2.x = r2.x / r2.z;
  r2.x = cb0[361].z * r2.x;
  r6.yzw = float3(1,0.666666687,0.333333343) + abs(r2.yyy);
  r6.yzw = frac(r6.yzw);
  r6.yzw = r6.yzw * float3(6,6,6) + float3(-3,-3,-3);
  r6.yzw = saturate(float3(-1,-1,-1) + abs(r6.yzw));
  r6.yzw = float3(-1,-1,-1) + r6.yzw;
  r2.xyz = r2.xxx * r6.yzw + float3(1,1,1);
  r2.xyz = r6.xxx * r2.xyz;
  r2.xyz = cb0[361].xxx * r2.xyz;
  r3.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = min(cb0[361].y, r3.w);
  r3.w = max(1.00000001e-010, r3.w);
  r3.w = r4.w / r3.w;
  r6.x = t1[0].val[8/4];
  r6.y = t1[0].val[8/4+1];
  r6.x = dot(r6.xy, float2(1,1));
  r7.x = t1[1].val[8/4];
  r7.y = t1[1].val[8/4+1];
  r6.y = dot(r7.xy, float2(1,1));
  r7.x = t1[2].val[8/4];
  r7.y = t1[2].val[8/4+1];
  r6.z = dot(r7.xy, float2(1,1));
  r7.x = t1[3].val[8/4];
  r7.y = t1[4].val[8/4];
  r7.z = t1[5].val[8/4];
  r6.xyz = r7.xyz + r6.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = cb0[362].xyz * r6.xyz;
  r2.xyz = r2.xyz * r3.www + r6.xyz;
  r2.xyz = r2.xyz * r10.xyz;
  r6.xyz = r10.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r10.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r10.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r2.xyz = r6.xyz * r2.xyz;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = max(float3(0,0,0), r5.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r5.x = t0[r5.x].val[0/4];
    r5.z = t0[r5.x].val[0/4+1];
    r5.w = t0[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r3.xyz;
    r6.x = t0[r5.y].val[0/4];
    r6.y = t0[r5.y].val[0/4+1];
    r6.z = t0[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r1.www ? r3.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r2.xyz;
  r1.xyz = r1.xyz + r4.xyz;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.xw = float2(0,0.549019635);
  o2.y = r2.w;
  o3.xyz = r10.xyz;
  o5.z = v2.x;
  o5.w = cb2[18].x;
  o5.x = r0.w;
  o6.y = v3.w;
  return;
}