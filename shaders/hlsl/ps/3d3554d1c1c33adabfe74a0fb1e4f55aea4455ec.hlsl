// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[33];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[362];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.xyz + r0.xyz;
  r0.xyz = r3.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r3.xyzw = t9.SampleBias(s2_s, v3.xy, cb0[143].y).xyzw;
  r4.xyz = cb3[2].xyz * r3.zzz;
  r5.xyz = cb3[4].xyz * r3.www;
  r5.xyz = cb3[22].yyy * r5.xyz;
  r4.xyz = r4.xyz * cb3[22].xxx + r5.xyz;
  r5.xyz = cb3[5].xyz + -r4.xyz;
  r4.xyz = cb3[22].zzz * r5.xyz + r4.xyz;
  r5.xyz = t10.SampleBias(s3_s, v3.xy, cb0[143].y).xyz;
  r0.w = -1 + cb0[143].y;
  r6.xyz = t11.SampleBias(s4_s, v3.xy, r0.w).xyz;
  r7.xyz = -cb3[9].xyz + cb3[8].xyz;
  r7.xyz = r6.zzz * r7.xyz + cb3[9].xyz;
  r8.xyz = cb3[11].xyz + -r7.xyz;
  r6.yzw = r6.yyy * r8.xyz + r7.xyz;
  r7.xyz = cb3[13].xyz + -r6.yzw;
  r6.xyz = r6.xxx * r7.xyz + r6.yzw;
  r7.xyzw = t12.SampleBias(s5_s, v3.xy, r0.w).xyzw;
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = r7.zzz * r6.xyz + float3(1,1,1);
  r8.xyz = r6.xyz * r5.xyz;
  r0.w = cb3[22].w * v2.w;
  r9.xyz = r8.xyz * cb3[15].xyz + -r8.xyz;
  r9.xyz = r0.www * r9.xyz + r8.xyz;
  r1.w = min(abs(v4.x), abs(v4.y));
  r2.w = max(abs(v4.x), abs(v4.y));
  r2.w = 1 / r2.w;
  r1.w = r2.w * r1.w;
  r2.w = r1.w * r1.w;
  r3.z = r2.w * 0.0208350997 + -0.0851330012;
  r3.z = r2.w * r3.z + 0.180141002;
  r3.z = r2.w * r3.z + -0.330299497;
  r2.w = r2.w * r3.z + 0.999866009;
  r3.z = r2.w * r1.w;
  r3.w = cmp(abs(v4.y) < abs(v4.x));
  r3.z = r3.z * -2 + 1.57079637;
  r3.z = r3.w ? r3.z : 0;
  r1.w = r1.w * r2.w + r3.z;
  r2.w = cmp(v4.y < -v4.y);
  r2.w = r2.w ? -3.141593 : 0;
  r1.w = r2.w + r1.w;
  r2.w = min(v4.x, v4.y);
  r3.z = max(v4.x, v4.y);
  r2.w = cmp(r2.w < -r2.w);
  r3.z = cmp(r3.z >= -r3.z);
  r2.w = r2.w ? r3.z : 0;
  r1.w = r2.w ? -r1.w : r1.w;
  r10.x = 0.318309844 * r1.w;
  r11.x = cb3[23].y * r10.x;
  r11.y = cb3[23].z + v4.z;
  r3.zw = r11.xy * cb3[23].ww + float2(0.5,0.5);
  r1.w = t13.Sample(s0_s, r3.zw).z;
  r1.w = cb3[24].x * r1.w;
  r11.xyz = cb3[17].xyz + -r9.xyz;
  r9.xyz = r1.www * r11.xyz + r9.xyz;
  r11.xyz = cb2[12].xyz + -cb2[11].xyz;
  r11.xyz = cb3[24].zzz * r11.xyz + cb2[11].xyz;
  r12.xyz = r11.xyz * r9.xyz;
  r13.xyz = mad((int3)v5.xxx, int3(36,36,36), int3(27,23,20));
  r14.x = t8[r13.x].val[0/4];
  r14.y = t8[r13.x].val[0/4+1];
  r14.z = t8[r13.x].val[0/4+2];
  r2.w = -r14.x + r2.z;
  r2.w = max(0, r2.w);
  r3.z = max(cb3[24].w, r14.y);
  r2.w = r2.w / r3.z;
  r2.w = min(1, r2.w);
  r5.xw = cb3[25].xy * r3.zz;
  r3.w = cb3[25].x * r3.z + r14.x;
  r3.w = r14.z + -r3.w;
  r4.w = r5.w + r5.x;
  r3.z = -r4.w + r3.z;
  r3.zw = max(float2(1,0), r3.zw);
  r3.z = r3.w / r3.z;
  r3.z = min(1, r3.z);
  r2.w = r2.w * r3.z + -r3.z;
  r2.w = 1 + r2.w;
  r9.xyz = -r9.xyz * r11.xyz + r9.xyz;
  r9.xyz = saturate(r2.www * r9.xyz + r12.xyz);
  r3.z = saturate(r2.w + r2.w);
  r3.z = r7.y * r3.z;
  r3.w = t8[r13.y].val[12/4];
  r4.w = firstbithigh((int)r3.w);
  r5.x = cmp((int)r4.w == -1);
  r4.w = (int)-r4.w + 31;
  r4.w = r5.x ? -1 : r4.w;
  r3.w = r3.w ? r4.w : 0;
  r4.w = saturate(dot(cb0[r3.w+358].xyz, r0.xyz));
  r12.xyz = cb0[67].xyz + -r2.xyz;
  r5.x = dot(r12.xyz, r12.xyz);
  r5.x = sqrt(r5.x);
  r12.xyz = r12.xyz / r5.xxx;
  r12.xyz = cb0[r3.w+358].xyz + r12.xyz;
  r5.w = dot(r12.xyz, r12.xyz);
  r5.w = sqrt(r5.w);
  r12.xyz = r12.xyz / r5.www;
  r5.w = dot(r12.xyz, r0.xyz);
  r3.x = saturate(r5.w + r3.x);
  r5.w = cmp(0 >= r3.x);
  r3.x = log2(r3.x);
  r3.x = 207.936584 * r3.x;
  r3.x = exp2(r3.x);
  r3.x = r4.w * r3.x;
  r3.x = r5.w ? 0 : r3.x;
  r3.x = cmp(r3.x >= cb3[25].z);
  r3.x = r3.x ? 1.000000 : 0;
  r3.y = cb3[25].w * r3.y;
  r3.x = r3.x * r3.y;
  r3.y = 1 + -r7.w;
  r3.y = cmp(r3.y >= 0.5);
  o6.z = r3.y ? 0 : 1;
  r3.y = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r6.xw = -cb0[129].xy + v6.xy;
  r7.yz = cb0[152].xx + r6.xw;
  r7.yz = (uint2)r7.yz;
  r4.w = (uint)r7.z << 1;
  r4.w = (int)r4.w + (int)r7.y;
  r4.w = (uint)r4.w % 5;
  r4.w = (uint)r4.w;
  r6.xw = float2(0.015625,0.015625) * r6.xw;
  r5.w = t14.SampleBias(s6_s, r6.xw, cb0[143].y).x;
  r4.w = r5.w + r4.w;
  r4.w = 0.166666672 * r4.w;
  r3.y = cb3[27].w * r3.y + r4.w;
  r4.w = 0.763943851 * cb0[128].x;
  r5.w = cb0[130].x / cb0[130].y;
  r5.w = 1.77777779 / r5.w;
  r5.w = max(1, r5.w);
  r4.w = r5.w * r4.w;
  r5.xw = r5.xx * r4.ww + float2(-0.5,-300);
  r5.xw = saturate(float2(0.00333889807,0.000175438603) * r5.xw);
  r4.w = r5.x * -0.600000024 + 1;
  r4.w = r5.w * -0.200000003 + r4.w;
  r4.w = v3.z * r4.w;
  o6.x = cb3[29].z * r4.w;
  r4.w = 1 + -v2.y;
  o6.w = cb3[29].w * r4.w;
  r4.w = round(cb3[24].y);
  r4.w = (uint)r4.w;
  r4.w = min(2, (uint)r4.w);
  r5.x = cmp(r8.y >= r8.z);
  r5.x = r5.x ? 1.000000 : 0;
  r12.xy = r8.zy;
  r12.zw = float2(-1,0.666666687);
  r6.xy = r5.yz * r6.yz + -r12.xy;
  r6.zw = float2(1,-1);
  r5.xyzw = r5.xxxx * r6.xyzw + r12.xyzw;
  r6.x = cmp(r8.x >= r5.x);
  r6.x = r6.x ? 1.000000 : 0;
  r12.xyz = r5.xyw;
  r12.w = r8.x;
  r5.xyw = r12.wyx;
  r5.xyzw = r5.xyzw + -r12.xyzw;
  r5.xyzw = r6.xxxx * r5.xyzw + r12.xyzw;
  r6.x = min(r5.w, r5.y);
  r6.x = -r6.x + r5.x;
  r5.y = r5.w + -r5.y;
  r5.w = r6.x * 6 + 1.00000001e-010;
  r5.y = r5.y / r5.w;
  r5.y = r5.z + r5.y;
  r5.z = 1.00000001e-010 + r5.x;
  r5.z = r6.x / r5.z;
  r5.w = 360 * abs(r5.y);
  r6.xy = float2(0,1.40129846e-045);
  while (true) {
    r6.z = cmp((int)r6.y >= 21);
    if (r6.z != 0) break;
    r6.z = cmp(icb[r6.y+3].x >= r5.w);
    if (r6.z != 0) {
      r6.x = r6.y;
      break;
    }
    r6.y = (int)r6.y + 1;
    r6.x = 0;
  }
  r5.w = (int)r6.x + -1;
  r6.y = abs(r5.y) * 360 + -icb[r5.w+3].x;
  r6.z = icb[r6.x+3].x + -icb[r5.w+3].x;
  r6.y = r6.y / r6.z;
  r6.z = (int)r5.w & 0x80000000;
  r6.w = max((int)-r5.w, (int)r5.w);
  r7.y = (int)r6.w & 3;
  r7.z = -(int)r7.y;
  r6.z = r6.z ? r7.z : r7.y;
  r5.w = (int)r5.w ^ 4;
  r6.w = (uint)r6.w >> 2;
  r7.y = -(int)r6.w;
  r5.w = (int)r5.w & 0x80000000;
  r5.w = r5.w ? r7.y : r6.w;
  r6.w = (int)r6.x & 0x80000000;
  r7.y = max((int)-r6.x, (int)r6.x);
  r7.z = (int)r7.y & 3;
  r7.w = -(int)r7.z;
  r6.w = r6.w ? r7.w : r7.z;
  r6.x = (int)r6.x ^ 4;
  r7.y = (uint)r7.y >> 2;
  r7.z = -(int)r7.y;
  r6.x = (int)r6.x & 0x80000000;
  r6.x = r6.x ? r7.z : r7.y;
  r7.y = dot(cb0[r5.w+328].xyzw, icb[r6.z+0].xyzw);
  r7.z = dot(cb0[r5.w+338].xyzw, icb[r6.z+0].xyzw);
  r5.w = dot(cb0[r5.w+348].xyzw, icb[r6.z+0].xyzw);
  x0[0].x = r7.y;
  x0[1].x = r7.z;
  x0[2].x = r5.w;
  r5.w = dot(cb0[r6.x+328].xyzw, icb[r6.w+0].xyzw);
  r6.z = dot(cb0[r6.x+338].xyzw, icb[r6.w+0].xyzw);
  r6.x = dot(cb0[r6.x+348].xyzw, icb[r6.w+0].xyzw);
  x1[0].x = r5.w;
  x1[1].x = r6.z;
  x1[2].x = r6.x;
  r5.w = x0[r4.w+0].x;
  r6.x = x1[r4.w+0].x;
  r6.x = r6.x + -r5.w;
  r5.w = r6.y * r6.x + r5.w;
  r5.y = abs(r5.y) * 360 + r5.w;
  r5.w = cmp(r5.y < 0);
  r6.x = cmp(360 < r5.y);
  r6.yz = float2(360,-360) + r5.yy;
  r5.y = r6.x ? r6.z : r5.y;
  r5.y = r5.w ? r6.y : r5.y;
  r5.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.x = -0.200000003 + r5.w;
  r6.x = 10 * r6.x;
  r6.x = max(0, r6.x);
  r6.x = min(6, r6.x);
  r6.y = (int)r6.x;
  r6.z = (int)r6.y + 1;
  r6.x = trunc(r6.x);
  r6.x = r6.x * 0.100000001 + 0.200000003;
  r5.w = -r6.x + r5.w;
  r5.w = saturate(10 * r5.w);
  r6.xw = (int2)r6.yz & int2(3,3);
  r6.yz = (uint2)r6.yz >> int2(2,2);
  r7.y = dot(cb0[r6.y+334].xyzw, icb[r6.x+0].xyzw);
  r7.z = dot(cb0[r6.y+344].xyzw, icb[r6.x+0].xyzw);
  r7.w = dot(cb0[r6.y+354].xyzw, icb[r6.x+0].xyzw);
  x2[0].x = r7.y;
  x2[1].x = r7.z;
  x2[2].x = r7.w;
  r7.y = dot(cb0[r6.z+334].xyzw, icb[r6.w+0].xyzw);
  r7.z = dot(cb0[r6.z+344].xyzw, icb[r6.w+0].xyzw);
  r7.w = dot(cb0[r6.z+354].xyzw, icb[r6.w+0].xyzw);
  x3[0].x = r7.y;
  x3[1].x = r7.z;
  x3[2].x = r7.w;
  r7.y = dot(cb0[r6.y+336].xyzw, icb[r6.x+0].xyzw);
  r7.z = dot(cb0[r6.y+346].xyzw, icb[r6.x+0].xyzw);
  r6.x = dot(cb0[r6.y+356].xyzw, icb[r6.x+0].xyzw);
  x4[0].x = r7.y;
  x4[1].x = r7.z;
  x4[2].x = r6.x;
  r6.x = dot(cb0[r6.z+336].xyzw, icb[r6.w+0].xyzw);
  r6.y = dot(cb0[r6.z+346].xyzw, icb[r6.w+0].xyzw);
  r6.z = dot(cb0[r6.z+356].xyzw, icb[r6.w+0].xyzw);
  x5[0].x = r6.x;
  x5[1].x = r6.y;
  x5[2].x = r6.z;
  r6.x = x2[r4.w+0].x;
  r6.y = x3[r4.w+0].x;
  r6.y = r6.y + -r6.x;
  r6.x = r5.w * r6.y + r6.x;
  r6.y = x4[r4.w+0].x;
  r4.w = x5[r4.w+0].x;
  r4.w = r4.w + -r6.y;
  r4.w = r5.w * r4.w + r6.y;
  r5.w = cmp(0 < r5.z);
  r6.x = saturate(r6.x + r5.z);
  r5.z = r5.w ? r6.x : r5.z;
  r4.w = saturate(r5.x + r4.w);
  r5.xyw = r5.yyy * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r5.xyw = frac(r5.xyw);
  r5.xyw = r5.xyw * float3(6,6,6) + float3(-3,-3,-3);
  r5.xyw = saturate(float3(-1,-1,-1) + abs(r5.xyw));
  r5.xyw = float3(-1,-1,-1) + r5.xyw;
  r5.xyz = r5.zzz * r5.xyw + float3(1,1,1);
  r5.xyz = r5.xyz * r4.www;
  r6.xyz = r5.xyz * cb3[15].xyz + -r5.xyz;
  r5.xyz = r0.www * r6.xyz + r5.xyz;
  r0.w = cmp(cb3[17].y >= cb3[17].z);
  r0.w = r0.w ? 1.000000 : 0;
  r6.xy = cb3[17].zy;
  r6.zw = float2(-1,0.666666687);
  r8.xy = cb3[17].yz;
  r8.zw = float2(0,-0.333333343);
  r8.xyzw = r8.xyzw + -r6.xyzw;
  r6.xyzw = r0.wwww * r8.xyzw + r6.xyzw;
  r0.w = cmp(cb3[17].x >= r6.x);
  r0.w = r0.w ? 1.000000 : 0;
  r8.xyz = r6.xyw;
  r8.w = cb3[17].x;
  r6.xyw = r8.wyx;
  r6.xyzw = r6.xyzw + -r8.xyzw;
  r6.xyzw = r0.wwww * r6.xyzw + r8.xyzw;
  r0.w = min(r6.w, r6.y);
  r0.w = r6.x + -r0.w;
  r4.w = r6.w + -r6.y;
  r5.w = r0.w * 6 + 1.00000001e-010;
  r4.w = r4.w / r5.w;
  r4.w = r6.z + r4.w;
  r5.w = 1.00000001e-010 + r6.x;
  r0.w = r0.w / r5.w;
  r5.w = 360 * abs(r4.w);
  r6.yz = float2(0,1.40129846e-045);
  while (true) {
    r6.w = cmp((int)r6.z >= 21);
    if (r6.w != 0) break;
    r6.w = cmp(icb[r6.z+3].x >= r5.w);
    if (r6.w != 0) {
      r6.y = r6.z;
      break;
    }
    r6.z = (int)r6.z + 1;
    r6.y = 0;
  }
  r5.w = (int)r6.y + -1;
  r6.z = abs(r4.w) * 360 + -icb[r5.w+3].x;
  r6.w = icb[r6.y+3].x + -icb[r5.w+3].x;
  r6.z = r6.z / r6.w;
  r6.w = (int)r5.w & 0x80000000;
  r7.y = max((int)-r5.w, (int)r5.w);
  r7.z = (int)r7.y & 3;
  r7.w = -(int)r7.z;
  r6.w = r6.w ? r7.w : r7.z;
  r5.w = (int)r5.w ^ 4;
  r7.y = (uint)r7.y >> 2;
  r7.z = -(int)r7.y;
  r5.w = (int)r5.w & 0x80000000;
  r5.w = r5.w ? r7.z : r7.y;
  r7.y = (int)r6.y & 0x80000000;
  r7.z = max((int)-r6.y, (int)r6.y);
  r7.w = (int)r7.z & 3;
  r8.x = -(int)r7.w;
  r7.y = r7.y ? r8.x : r7.w;
  r6.y = (int)r6.y ^ 4;
  r7.z = (uint)r7.z >> 2;
  r7.w = -(int)r7.z;
  r6.y = (int)r6.y & 0x80000000;
  r6.y = r6.y ? r7.w : r7.z;
  r5.w = dot(cb0[r5.w+338].xyzw, icb[r6.w+0].xyzw);
  r6.y = dot(cb0[r6.y+338].xyzw, icb[r7.y+0].xyzw);
  r6.y = r6.y + -r5.w;
  r5.w = r6.z * r6.y + r5.w;
  r4.w = abs(r4.w) * 360 + r5.w;
  r5.w = cmp(r4.w < 0);
  r6.y = cmp(360 < r4.w);
  r6.zw = float2(360,-360) + r4.ww;
  r4.w = r6.y ? r6.w : r4.w;
  r4.w = r5.w ? r6.z : r4.w;
  r5.w = dot(cb3[17].xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.y = -0.200000003 + r5.w;
  r6.y = 10 * r6.y;
  r6.y = max(0, r6.y);
  r6.y = min(6, r6.y);
  r6.z = (int)r6.y;
  r6.w = (int)r6.z + 1;
  r6.y = trunc(r6.y);
  r6.y = r6.y * 0.100000001 + 0.200000003;
  r5.w = -r6.y + r5.w;
  r5.w = saturate(10 * r5.w);
  r6.y = (int)r6.z & 3;
  r7.y = (int)r6.w & 3;
  r6.zw = (uint2)r6.zw >> int2(2,2);
  r7.z = dot(cb0[r6.z+344].xyzw, icb[r6.y+0].xyzw);
  r7.w = dot(cb0[r6.w+344].xyzw, icb[r7.y+0].xyzw);
  r6.y = dot(cb0[r6.z+346].xyzw, icb[r6.y+0].xyzw);
  r6.z = dot(cb0[r6.w+346].xyzw, icb[r7.y+0].xyzw);
  r6.w = r7.w + -r7.z;
  r6.w = r5.w * r6.w + r7.z;
  r6.z = r6.z + -r6.y;
  r5.w = r5.w * r6.z + r6.y;
  r6.y = cmp(0 < r0.w);
  r6.z = saturate(r6.w + r0.w);
  r0.w = r6.y ? r6.z : r0.w;
  r5.w = saturate(r6.x + r5.w);
  r6.xyz = r4.www * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r6.xyz = frac(r6.xyz);
  r6.xyz = r6.xyz * float3(6,6,6) + float3(-3,-3,-3);
  r6.xyz = saturate(float3(-1,-1,-1) + abs(r6.xyz));
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = r0.www * r6.xyz + float3(1,1,1);
  r6.xyz = r5.www * r6.xyz + -r5.xyz;
  r5.xyz = r1.www * r6.xyz + r5.xyz;
  r10.y = cb3[30].x + v4.z;
  r6.xy = r10.xy * cb3[18].xy + float2(0.5,0.5);
  r0.w = t13.SampleLevel(s0_s, r6.xy, 0).x;
  r1.w = 1 + -r0.w;
  r6.xyz = r5.xyz * r1.www + -r5.xyz;
  r5.xyz = cb3[31].zzz * r6.xyz + r5.xyz;
  r6.xyz = r5.xyz * r11.xyz;
  r5.xyz = -r5.xyz * r11.xyz + r5.xyz;
  r5.xyz = saturate(r2.www * r5.xyz + r6.xyz);
  r1.w = v2.z * r7.x;
  r1.w = cmp(r1.w >= cb3[32].y);
  r2.w = r1.w ? 1.000000 : 0;
  r0.w = cmp(0 >= r0.w);
  r4.w = 1 + -cb3[32].z;
  r0.w = r0.w ? 1 : r4.w;
  o3.w = saturate(r2.w * r0.w);
  r0.w = -0.833299994 + r3.y;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.w = saturate(cb3[26].x);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r6.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
  r6.xyz = cb0[213].xyz * r6.xyz;
  r7.xyz = (int3)r6.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r0.w = 1 + cb0[213].w;
  r6.xyz = r6.xyz / r7.www;
  r6.xyz = frac(r6.xyz);
  r6.xyz = cb0[213].www * r6.xyz;
  r6.xyz = r7.xyz * r0.www + r6.xyz;
  r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
  r6.xyz = cb0[214].xyz * r6.xyz;
  o1.w = t8[r13.z].val[4/4];
  r7.z = cb0[r3.w+358].z * cb0[327].y;
  r7.xy = cb0[r3.w+358].xy;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = rsqrt(r0.w);
  r7.xyz = r7.xyz * r0.www;
  r0.w = dot(r0.xyz, r7.xyz);
  r0.w = r0.w * 0.5 + 0.5;
  r2.w = 1 + -cb0[327].x;
  r2.w = v2.x * r2.w + cb0[327].x;
  r0.w = r2.w * r0.w;
  r1.w = r1.w ? 1 : 0.699999988;
  r2.w = max(r5.x, r5.y);
  r2.w = max(r2.w, r5.z);
  r3.y = r2.w * r1.w;
  r2.w = max(0.00100000005, r2.w);
  r2.w = r3.y / r2.w;
  r1.x = dot(-r1.xyz, r7.xyz);
  r1.x = saturate(3 * r1.x);
  r7.xyz = r5.xyz * r2.www + -r5.xyz;
  o4.xyz = r1.xxx * r7.xyz + r5.xyz;
  r0.w = cmp(r0.w >= cb0[327].x);
  o4.w = r0.w ? 1.000000 : 0;
  o5.y = 0.5 * r3.z;
  r0.w = 0.0799999982 * r3.x;
  r1.xyz = -r3.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r9.xyz;
  r1.xyz = r3.zzz * r1.xyz + r0.www;
  r3.yzw = r9.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r5.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.yzw;
  r1.xyz = r0.www ? r1.xyz : r3.yzw;
  r3.yzw = t1.SampleLevel(s1_s, r6.xyz, 0).xyz;
  r2.w = t2.SampleLevel(s1_s, r6.xyz, 0).y;
  r2.w = r2.w * 2 + -1;
  r4.w = t4.SampleLevel(s1_s, r6.xyz, 0).y;
  r4.w = r4.w * 2 + -1;
  r5.w = t6.SampleLevel(s1_s, r6.xyz, 0).y;
  r5.w = r5.w * 2 + -1;
  r2.w = r2.w * r3.y;
  r7.y = 1.73205125 * r2.w;
  r2.w = r4.w * r3.z;
  r7.w = 1.73205125 * r2.w;
  r2.w = r5.w * r3.w;
  r8.y = 1.73205125 * r2.w;
  r2.w = t3.SampleLevel(s1_s, r6.xyz, 0).y;
  r2.w = r2.w * 2 + -1;
  r4.w = t5.SampleLevel(s1_s, r6.xyz, 0).y;
  r4.w = r4.w * 2 + -1;
  r5.w = t7.SampleLevel(s1_s, r6.xyz, 0).y;
  r5.w = r5.w * 2 + -1;
  r2.w = r2.w * r3.y;
  r4.w = r4.w * r3.z;
  r5.w = r5.w * r3.w;
  r7.xz = r3.yz;
  r3.y = dot(r7.xy, float2(0.886227548,-1.02332771));
  r6.x = r2.w * 2.21557164 + r3.y;
  r2.w = dot(r7.zw, float2(0.886227548,-1.02332771));
  r6.y = r4.w * 2.21557164 + r2.w;
  r8.x = r3.w;
  r2.w = dot(r8.xy, float2(0.886227548,-1.02332771));
  r6.z = r5.w * 2.21557164 + r2.w;
  r3.yzw = max(float3(0,0,0), r6.xyz);
  r3.yzw = cb0[157].xyz * r3.yzw;
  r6.xyw = float3(0.318309873,0.318309873,0.318309873) * r3.zwy;
  r2.w = cmp(r6.x >= r6.y);
  r2.w = r2.w ? 1.000000 : 0;
  r7.xy = r6.yx;
  r7.zw = float2(-1,0.666666687);
  r8.xy = r3.zw * float2(0.318309873,0.318309873) + -r7.xy;
  r8.zw = float2(1,-1);
  r7.xyzw = r2.wwww * r8.xyzw + r7.xyzw;
  r2.w = cmp(r6.w >= r7.x);
  r2.w = r2.w ? 1.000000 : 0;
  r6.xyz = r7.xyw;
  r7.xyw = r6.wyx;
  r7.xyzw = r7.xyzw + -r6.xyzw;
  r6.xyzw = r2.wwww * r7.xyzw + r6.xyzw;
  r2.w = min(r6.w, r6.y);
  r2.w = r6.x + -r2.w;
  r3.y = r6.w + -r6.y;
  r3.z = r2.w * 6 + 1.00000001e-010;
  r3.y = r3.y / r3.z;
  r3.y = r6.z + r3.y;
  r3.z = 1.00000001e-010 + r6.x;
  r2.w = r2.w / r3.z;
  r2.w = cb0[361].z * r2.w;
  r3.yzw = float3(1,0.666666687,0.333333343) + abs(r3.yyy);
  r3.yzw = frac(r3.yzw);
  r3.yzw = r3.yzw * float3(6,6,6) + float3(-3,-3,-3);
  r3.yzw = saturate(float3(-1,-1,-1) + abs(r3.yzw));
  r3.yzw = float3(-1,-1,-1) + r3.yzw;
  r3.yzw = r2.www * r3.yzw + float3(1,1,1);
  r3.yzw = r6.xxx * r3.yzw;
  r3.yzw = cb0[361].xxx * r3.yzw;
  r2.w = dot(r3.yzw, float3(0.300000012,0.589999974,0.109999999));
  r4.w = min(cb0[361].y, r2.w);
  r2.w = max(1.00000001e-010, r2.w);
  r2.w = r4.w / r2.w;
  r3.yzw = r3.yzw * r2.www;
  r3.yzw = r3.yzw * r9.xyz;
  r6.xyz = r9.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r9.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r9.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r3.yzw = r6.xyz * r3.yzw;
  r5.xyz = r0.www ? float3(0,0,0) : r5.xyz;
  r1.xyz = r5.xyz + r1.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r5.x = t8[r5.x].val[0/4];
    r5.z = t8[r5.x].val[0/4+1];
    r5.w = t8[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r6.x = t8[r5.y].val[0/4];
    r6.y = t8[r5.y].val[0/4+1];
    r6.z = t8[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r0.w = (int)r5.y | (int)r5.x;
    r0.w = (int)r5.z | (int)r0.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r0.www ? r2.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r3.yzw;
  r1.xyz = r1.xyz + r4.xyz;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.xw = float2(0,0.549019635);
  o2.y = r3.x;
  o3.xyz = r9.xyz;
  o5.z = v2.x;
  o5.w = cb3[32].x;
  o5.x = r1.w;
  o6.y = v3.w;
  return;
}