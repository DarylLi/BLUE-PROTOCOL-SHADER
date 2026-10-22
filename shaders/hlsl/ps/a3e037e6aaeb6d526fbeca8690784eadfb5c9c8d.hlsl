// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[25];
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
  float4 cb0[361];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
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
  r3.xyzw = t1.SampleBias(s0_s, v3.xy, cb0[143].y).xyzw;
  r4.xyz = cb3[2].xyz * r3.zzz;
  r5.xyz = cb3[4].xyz * r3.www;
  r5.xyz = cb3[17].yyy * r5.xyz;
  r4.xyz = r4.xyz * cb3[17].xxx + r5.xyz;
  r5.xyz = cb3[5].xyz + -r4.xyz;
  r4.xyz = cb3[17].zzz * r5.xyz + r4.xyz;
  r5.xyz = t2.SampleBias(s1_s, v3.xy, cb0[143].y).xyz;
  r0.w = -1 + cb0[143].y;
  r6.xyz = t3.SampleBias(s2_s, v3.xy, r0.w).xyz;
  r7.xyz = -cb3[9].xyz + cb3[8].xyz;
  r7.xyz = r6.zzz * r7.xyz + cb3[9].xyz;
  r8.xyz = cb3[11].xyz + -r7.xyz;
  r6.yzw = r6.yyy * r8.xyz + r7.xyz;
  r7.xyz = cb3[13].xyz + -r6.yzw;
  r6.xyz = r6.xxx * r7.xyz + r6.yzw;
  r7.xyzw = t4.SampleBias(s3_s, v3.xy, r0.w).xyzw;
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = r7.zzz * r6.xyz + float3(1,1,1);
  r8.xyz = r6.xyz * r5.xyz;
  r9.xyz = cb2[12].xyz + -cb2[11].xyz;
  r9.xyz = cb3[18].xxx * r9.xyz + cb2[11].xyz;
  r10.xyz = r9.xyz * r8.xyz;
  r11.xyz = mad((int3)v4.xxx, int3(36,36,36), int3(27,23,20));
  r12.x = t0[r11.x].val[0/4];
  r12.y = t0[r11.x].val[0/4+1];
  r12.z = t0[r11.x].val[0/4+2];
  r0.w = -r12.x + r2.z;
  r0.w = max(0, r0.w);
  r1.w = max(cb3[18].y, r12.y);
  r0.w = r0.w / r1.w;
  r0.w = min(1, r0.w);
  r3.zw = cb3[18].zw * r1.ww;
  r2.w = cb3[18].z * r1.w + r12.x;
  r2.w = r12.z + -r2.w;
  r2.w = max(0, r2.w);
  r3.z = r3.w + r3.z;
  r1.w = -r3.z + r1.w;
  r1.w = max(1, r1.w);
  r1.w = r2.w / r1.w;
  r1.w = min(1, r1.w);
  r0.w = r0.w * r1.w + -r1.w;
  r0.w = 1 + r0.w;
  r12.xyz = r5.xyz * r6.xyz + -r10.xyz;
  r10.xyz = saturate(r0.www * r12.xyz + r10.xyz);
  r1.w = saturate(r0.w + r0.w);
  r1.w = r7.y * r1.w;
  r2.w = t0[r11.y].val[12/4];
  r3.z = firstbithigh((int)r2.w);
  r3.w = cmp((int)r3.z == -1);
  r3.z = (int)-r3.z + 31;
  r3.z = r3.w ? -1 : r3.z;
  r2.w = r2.w ? r3.z : 0;
  r3.z = saturate(dot(cb0[r2.w+358].xyz, r0.xyz));
  r11.xyw = cb0[67].xyz + -r2.xyz;
  r3.w = dot(r11.xyw, r11.xyw);
  r3.w = sqrt(r3.w);
  r11.xyw = r11.xyw / r3.www;
  r11.xyw = cb0[r2.w+358].xyz + r11.xyw;
  r4.w = dot(r11.xyw, r11.xyw);
  r4.w = sqrt(r4.w);
  r11.xyw = r11.xyw / r4.www;
  r4.w = dot(r11.xyw, r0.xyz);
  r3.x = saturate(r4.w + r3.x);
  r4.w = cmp(0 >= r3.x);
  r3.x = log2(r3.x);
  r3.x = 207.936584 * r3.x;
  r3.x = exp2(r3.x);
  r3.x = r3.z * r3.x;
  r3.x = r4.w ? 0 : r3.x;
  r3.x = cmp(r3.x >= cb3[19].x);
  r3.x = r3.x ? 1.000000 : 0;
  r3.y = cb3[19].y * r3.y;
  r3.x = r3.x * r3.y;
  r3.y = 1 + -r7.w;
  r3.y = cmp(r3.y >= 0.5);
  o6.z = r3.y ? 0 : 1;
  r3.y = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r5.xw = -cb0[129].xy + v5.xy;
  r6.xw = cb0[152].xx + r5.xw;
  r6.xw = (uint2)r6.xw;
  r3.z = (uint)r6.w << 1;
  r3.z = (int)r3.z + (int)r6.x;
  r3.z = (uint)r3.z % 5;
  r3.z = (uint)r3.z;
  r5.xw = float2(0.015625,0.015625) * r5.xw;
  r4.w = t5.SampleBias(s4_s, r5.xw, cb0[143].y).x;
  r3.z = r4.w + r3.z;
  r3.z = 0.166666672 * r3.z;
  r3.y = cb3[21].y * r3.y + r3.z;
  r3.y = -0.5 + r3.y;
  r3.z = -cb3[21].w + v2.w;
  r3.z = saturate(ceil(r3.z));
  r4.w = 0.763943851 * cb0[128].x;
  r5.x = cb0[130].x / cb0[130].y;
  r5.x = 1.77777779 / r5.x;
  r5.x = max(1, r5.x);
  r4.w = r5.x * r4.w;
  r5.xw = r3.ww * r4.ww + float2(-0.5,-300);
  r5.xw = saturate(float2(0.00333889807,0.000175438603) * r5.xw);
  r3.w = r5.x * -0.600000024 + 1;
  r3.w = r5.w * -0.200000003 + r3.w;
  r3.w = v3.z * r3.w;
  o6.x = cb3[23].z * r3.w;
  r3.w = 1 + -v2.y;
  o6.w = cb3[23].w * r3.w;
  r3.w = round(cb3[17].w);
  r3.w = (uint)r3.w;
  r3.w = min(2, (uint)r3.w);
  r4.w = cmp(r8.y >= r8.z);
  r4.w = r4.w ? 1.000000 : 0;
  r12.xy = r8.zy;
  r12.zw = float2(-1,0.666666687);
  r5.xy = r5.yz * r6.yz + -r12.xy;
  r5.zw = float2(1,-1);
  r5.xyzw = r4.wwww * r5.xyzw + r12.xyzw;
  r4.w = cmp(r8.x >= r5.x);
  r4.w = r4.w ? 1.000000 : 0;
  r6.xyz = r5.xyw;
  r6.w = r8.x;
  r5.xyw = r6.wyx;
  r5.xyzw = r5.xyzw + -r6.xyzw;
  r5.xyzw = r4.wwww * r5.xyzw + r6.xyzw;
  r4.w = min(r5.w, r5.y);
  r4.w = r5.x + -r4.w;
  r5.y = r5.w + -r5.y;
  r5.w = r4.w * 6 + 1.00000001e-010;
  r5.y = r5.y / r5.w;
  r5.y = r5.z + r5.y;
  r5.z = 1.00000001e-010 + r5.x;
  r4.w = r4.w / r5.z;
  r5.z = 360 * abs(r5.y);
  r5.w = 0;
  r6.x = 1;
  while (true) {
    r6.y = cmp((int)r6.x >= 21);
    if (r6.y != 0) break;
    r6.y = cmp(icb[r6.x+3].x >= r5.z);
    if (r6.y != 0) {
      r5.w = r6.x;
      break;
    }
    r6.x = (int)r6.x + 1;
    r5.w = 0;
  }
  r5.z = (int)r5.w + -1;
  r6.x = abs(r5.y) * 360 + -icb[r5.z+3].x;
  r6.y = icb[r5.w+3].x + -icb[r5.z+3].x;
  r6.x = r6.x / r6.y;
  r6.y = (int)r5.z & 0x80000000;
  r6.z = max((int)-r5.z, (int)r5.z);
  r6.w = (int)r6.z & 3;
  r7.y = -(int)r6.w;
  r6.y = r6.y ? r7.y : r6.w;
  r5.z = (int)r5.z ^ 4;
  r6.z = (uint)r6.z >> 2;
  r6.w = -(int)r6.z;
  r5.z = (int)r5.z & 0x80000000;
  r5.z = r5.z ? r6.w : r6.z;
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
  r6.w = dot(cb0[r5.z+328].xyzw, icb[r6.y+0].xyzw);
  r7.y = dot(cb0[r5.z+338].xyzw, icb[r6.y+0].xyzw);
  r5.z = dot(cb0[r5.z+348].xyzw, icb[r6.y+0].xyzw);
  x0[0].x = r6.w;
  x0[1].x = r7.y;
  x0[2].x = r5.z;
  r5.z = dot(cb0[r5.w+328].xyzw, icb[r6.z+0].xyzw);
  r6.y = dot(cb0[r5.w+338].xyzw, icb[r6.z+0].xyzw);
  r5.w = dot(cb0[r5.w+348].xyzw, icb[r6.z+0].xyzw);
  x1[0].x = r5.z;
  x1[1].x = r6.y;
  x1[2].x = r5.w;
  r5.z = x0[r3.w+0].x;
  r5.w = x1[r3.w+0].x;
  r5.w = r5.w + -r5.z;
  r5.z = r6.x * r5.w + r5.z;
  r5.y = abs(r5.y) * 360 + r5.z;
  r5.z = cmp(r5.y < 0);
  r5.w = cmp(360 < r5.y);
  r6.xy = float2(360,-360) + r5.yy;
  r5.y = r5.w ? r6.y : r5.y;
  r5.y = r5.z ? r6.x : r5.y;
  r5.z = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = -0.200000003 + r5.z;
  r5.w = 10 * r5.w;
  r5.w = max(0, r5.w);
  r5.w = min(6, r5.w);
  r6.x = (int)r5.w;
  r6.y = (int)r6.x + 1;
  r5.w = trunc(r5.w);
  r5.w = r5.w * 0.100000001 + 0.200000003;
  r5.z = r5.z + -r5.w;
  r5.z = saturate(10 * r5.z);
  r5.w = (int)r6.x & 3;
  r6.z = (int)r6.y & 3;
  r6.xy = (uint2)r6.xy >> int2(2,2);
  r6.w = dot(cb0[r6.x+334].xyzw, icb[r5.w+0].xyzw);
  r7.y = dot(cb0[r6.x+344].xyzw, icb[r5.w+0].xyzw);
  r7.z = dot(cb0[r6.x+354].xyzw, icb[r5.w+0].xyzw);
  x2[0].x = r6.w;
  x2[1].x = r7.y;
  x2[2].x = r7.z;
  r6.w = dot(cb0[r6.y+334].xyzw, icb[r6.z+0].xyzw);
  r7.y = dot(cb0[r6.y+344].xyzw, icb[r6.z+0].xyzw);
  r7.z = dot(cb0[r6.y+354].xyzw, icb[r6.z+0].xyzw);
  x3[0].x = r6.w;
  x3[1].x = r7.y;
  x3[2].x = r7.z;
  r6.w = dot(cb0[r6.x+336].xyzw, icb[r5.w+0].xyzw);
  r7.y = dot(cb0[r6.x+346].xyzw, icb[r5.w+0].xyzw);
  r5.w = dot(cb0[r6.x+356].xyzw, icb[r5.w+0].xyzw);
  x4[0].x = r6.w;
  x4[1].x = r7.y;
  x4[2].x = r5.w;
  r5.w = dot(cb0[r6.y+336].xyzw, icb[r6.z+0].xyzw);
  r6.x = dot(cb0[r6.y+346].xyzw, icb[r6.z+0].xyzw);
  r6.y = dot(cb0[r6.y+356].xyzw, icb[r6.z+0].xyzw);
  x5[0].x = r5.w;
  x5[1].x = r6.x;
  x5[2].x = r6.y;
  r5.w = x2[r3.w+0].x;
  r6.x = x3[r3.w+0].x;
  r6.x = r6.x + -r5.w;
  r5.w = r5.z * r6.x + r5.w;
  r6.x = x4[r3.w+0].x;
  r3.w = x5[r3.w+0].x;
  r3.w = r3.w + -r6.x;
  r3.w = r5.z * r3.w + r6.x;
  r5.z = cmp(0 < r4.w);
  r5.w = saturate(r5.w + r4.w);
  r4.w = r5.z ? r5.w : r4.w;
  r3.w = saturate(r5.x + r3.w);
  r5.xyz = r5.yyy * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r5.xyz = frac(r5.xyz);
  r5.xyz = r5.xyz * float3(6,6,6) + float3(-3,-3,-3);
  r5.xyz = saturate(float3(-1,-1,-1) + abs(r5.xyz));
  r5.xyz = float3(-1,-1,-1) + r5.xyz;
  r5.xyz = r4.www * r5.xyz + float3(1,1,1);
  r6.xyz = r5.xyz * r3.www;
  r6.xyz = r6.xyz * r9.xyz;
  r5.xyz = r3.www * r5.xyz + -r6.xyz;
  r5.xyz = saturate(r0.www * r5.xyz + r6.xyz);
  r0.w = v2.z * r7.x;
  r0.w = cmp(r0.w >= cb3[24].z);
  o3.w = r0.w ? 1.000000 : 0;
  r3.y = r3.y * r3.z + -0.333299994;
  r3.y = cmp(r3.y < 0);
  if (r3.y != 0) discard;
  r3.y = saturate(cb3[19].z);
  o2.z = r3.y * cb0[139].y + cb0[139].x;
  o1.w = t0[r11.z].val[4/4];
  r3.y = dot(cb0[r2.w+358].xyz, cb0[r2.w+358].xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = cb0[r2.w+358].xyz * r3.yyy;
  r2.w = dot(r0.xyz, r3.yzw);
  r2.w = r2.w * 0.5 + 0.5;
  r4.w = 1 + -cb0[327].x;
  r4.w = v2.x * r4.w + cb0[327].x;
  r2.w = r4.w * r2.w;
  r0.w = r0.w ? 1 : 0.699999988;
  r4.w = max(r5.x, r5.y);
  r4.w = max(r4.w, r5.z);
  r5.w = r4.w * r0.w;
  r4.w = max(0.00100000005, r4.w);
  r4.w = r5.w / r4.w;
  r1.x = dot(-r1.xyz, r3.yzw);
  r1.x = saturate(3 * r1.x);
  r3.yzw = r5.xyz * r4.www + -r5.xyz;
  o4.xyz = r1.xxx * r3.yzw + r5.xyz;
  r1.x = cmp(r2.w >= cb0[327].x);
  o4.w = r1.x ? 1.000000 : 0;
  o5.y = 0.5 * r1.w;
  r1.x = 0.0799999982 * r3.x;
  r3.yzw = -r3.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r10.xyz;
  r1.xyz = r1.www * r3.yzw + r1.xxx;
  r3.yzw = r10.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r5.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.yzw;
  r1.xyz = r1.www ? r1.xyz : r3.yzw;
  r3.yzw = r1.www ? float3(0,0,0) : r5.xyz;
  r1.xyz = r3.yzw + r1.xyz;
  r3.yzw = max(float3(0,0,0), r4.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r4.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r4.x = t0[r4.x].val[0/4];
    r4.z = t0[r4.x].val[0/4+1];
    r4.w = t0[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r2.xyz;
    r5.x = t0[r4.y].val[0/4];
    r5.y = t0[r4.y].val[0/4+1];
    r5.z = t0[r4.y].val[0/4+2];
    r5.xyz = float3(1,1,1) + r5.xyz;
    r4.xyz = cmp(r5.xyz < abs(r4.xzw));
    r1.w = (int)r4.y | (int)r4.x;
    r1.w = (int)r4.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.yzw = r1.www ? r2.xyz : r3.yzw;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r3.yzw;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.xw = float2(0,0.549019635);
  o2.y = r3.x;
  o3.xyz = r10.xyz;
  o5.z = v2.x;
  o5.w = cb3[24].y;
  o5.x = r0.w;
  o6.y = v3.w;
  return;
}