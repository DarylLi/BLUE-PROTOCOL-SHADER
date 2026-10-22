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

cbuffer cb2 : register(b2)
{
  float4 cb2[24];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r0.w = dot(cb0[161].xyz, v1.xyz);
  r3.xyz = t9.SampleBias(s1_s, v3.xy, cb0[143].y).xyz;
  r1.w = cb0[142].z * cb2[9].z + v3.x;
  r4.x = cb2[10].y * r1.w;
  r1.w = cb0[142].z * cb2[10].z + v3.y;
  r4.y = cb2[10].w * r1.w;
  r1.w = t10.SampleBias(s2_s, r4.xy, cb0[143].y).x;
  r1.w = -0.5 + r1.w;
  r1.w = r1.w + r1.w;
  r4.x = cb2[11].z * r1.w;
  r4.y = cb2[12].x * r1.w;
  r1.w = t11.SampleBias(s3_s, v3.xy, cb0[143].y).y;
  r1.w = r1.w * cb2[12].y + cb2[12].z;
  r4.xy = r4.xy * r1.ww + v3.xy;
  r1.w = t12.SampleBias(s4_s, r4.xy, cb0[143].y).x;
  r1.w = -1 + r1.w;
  r4.xy = cb2[13].zw + r1.ww;
  r4.xy = saturate(ceil(r4.xy));
  r4.xz = float2(1,1) + -r4.xy;
  r2.w = r4.x * r4.y;
  r5.xyz = cb2[5].xyz + -r3.xyz;
  r5.xyz = r2.www * r5.xyz + r3.xyz;
  r3.w = cb2[14].w + r1.w;
  r3.w = saturate(ceil(r3.w));
  r3.w = 1 + -r3.w;
  r1.w = cb2[15].x + r1.w;
  r1.w = saturate(ceil(r1.w));
  r3.w = r3.w * r1.w;
  r5.xyz = r3.www * -r5.xyz + r5.xyz;
  r4.x = -cb2[15].y + r0.w;
  r4.x = cmp(9.99999975e-006 < abs(r4.x));
  r4.w = cmp(r0.w >= cb2[15].y);
  r6.xyz = r4.www ? r5.xyz : 0;
  r6.xyz = r4.xxx ? r6.xyz : 0;
  r0.w = cb2[15].z * r0.w;
  r0.w = ceil(r0.w);
  r0.w = r0.w / cb2[15].z;
  r7.xyz = r6.xyz * r0.www;
  r6.xyz = -r6.xyz * r0.www + cb2[6].xyz;
  r6.xyz = cb2[15].www * r6.xyz + r7.xyz;
  r0.w = -1 + cb0[143].y;
  r4.xw = t11.SampleBias(s3_s, v3.xy, r0.w).xy;
  r7.xyz = mad((int3)v4.xxx, int3(36,36,36), int3(27,23,20));
  r7.x = t8[r7.x].val[0/4];
  r7.w = t8[r7.x].val[0/4+1];
  r0.w = -r7.x + r2.z;
  r0.w = max(0, r0.w);
  r5.w = max(cb2[16].x, r7.w);
  r0.w = r0.w / r5.w;
  r0.w = min(1, r0.w);
  r0.w = saturate(r0.w + r0.w);
  r0.w = r4.w * r0.w;
  r4.w = t8[r7.y].val[12/4];
  r5.w = firstbithigh((int)r4.w);
  r6.w = cmp((int)r5.w == -1);
  r5.w = (int)-r5.w + 31;
  r5.w = r6.w ? -1 : r5.w;
  r4.w = r4.w ? r5.w : 0;
  r5.w = saturate(dot(cb0[r4.w+358].xyz, r0.xyz));
  r7.xy = t13.SampleBias(s5_s, v3.xy, cb0[143].y).xy;
  r8.xyz = cb0[67].xyz + -r2.xyz;
  r6.w = dot(r8.xyz, r8.xyz);
  r6.w = sqrt(r6.w);
  r8.xyz = r8.xyz / r6.www;
  r8.xyz = cb0[r4.w+358].xyz + r8.xyz;
  r6.w = dot(r8.xyz, r8.xyz);
  r6.w = sqrt(r6.w);
  r8.xyz = r8.xyz / r6.www;
  r6.w = dot(r8.xyz, r0.xyz);
  r6.w = saturate(r7.x + r6.w);
  r7.x = 11 * cb2[16].w;
  r7.x = exp2(r7.x);
  r7.w = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = r7.x * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r6.w * r5.w;
  r5.w = r7.w ? 0 : r5.w;
  r5.w = cmp(r5.w >= cb2[17].x);
  r5.w = r5.w ? 1.000000 : 0;
  r6.w = cb2[17].y * r7.y;
  r7.y = r6.w * r5.w;
  r5.w = saturate(cb0[142].w * cb1[0].x + cb1[0].y);
  r8.xy = -cb0[129].xy + v5.xy;
  r8.zw = cb0[152].xx + r8.xy;
  r8.zw = (uint2)r8.zw;
  r6.w = (uint)r8.w << 1;
  r6.w = (int)r6.w + (int)r8.z;
  r6.w = (uint)r6.w % 5;
  r6.w = (uint)r6.w;
  r8.xy = float2(0.015625,0.015625) * r8.xy;
  r8.x = t14.SampleBias(s6_s, r8.xy, cb0[143].y).x;
  r6.w = r8.x + r6.w;
  r6.w = 0.166666672 * r6.w;
  r5.w = cb2[19].y * r5.w + r6.w;
  r5.w = -0.5 + r5.w;
  r4.y = cb2[19].z * r4.z + r4.y;
  r4.z = -cb2[20].x + v2.w;
  r4.y = r4.y * r4.z;
  r4.z = 1 + -r1.w;
  r1.w = cb2[20].y * r4.z + r1.w;
  r1.w = r4.y * r1.w;
  r1.w = saturate(ceil(r1.w));
  r4.y = round(cb2[22].w);
  r4.y = (uint)r4.y;
  r4.y = min(2, (uint)r4.y);
  r4.z = cmp(r3.y >= r3.z);
  r4.z = r4.z ? 1.000000 : 0;
  r8.xy = r3.zy;
  r8.zw = float2(-1,0.666666687);
  r9.xy = -r8.xy + r3.yz;
  r9.zw = float2(1,-1);
  r8.xyzw = r4.zzzz * r9.xyzw + r8.xyzw;
  r4.z = cmp(r3.x >= r8.x);
  r4.z = r4.z ? 1.000000 : 0;
  r9.xyz = r8.xyw;
  r9.w = r3.x;
  r8.xyw = r9.wyx;
  r8.xyzw = r8.xyzw + -r9.xyzw;
  r8.xyzw = r4.zzzz * r8.xyzw + r9.xyzw;
  r4.z = min(r8.w, r8.y);
  r4.z = r8.x + -r4.z;
  r6.w = r8.w + -r8.y;
  r8.y = r4.z * 6 + 1.00000001e-010;
  r6.w = r6.w / r8.y;
  r6.w = r8.z + r6.w;
  r8.y = 1.00000001e-010 + r8.x;
  r4.z = r4.z / r8.y;
  r8.y = 360 * abs(r6.w);
  r8.zw = float2(0,1.40129846e-045);
  while (true) {
    r9.x = cmp((int)r8.w >= 21);
    if (r9.x != 0) break;
    r9.x = cmp(icb[r8.w+3].x >= r8.y);
    if (r9.x != 0) {
      r8.z = r8.w;
      break;
    }
    r8.w = (int)r8.w + 1;
    r8.z = 0;
  }
  r8.y = (int)r8.z + -1;
  r8.w = abs(r6.w) * 360 + -icb[r8.y+3].x;
  r9.x = icb[r8.z+3].x + -icb[r8.y+3].x;
  r8.w = r8.w / r9.x;
  r9.x = (int)r8.y & 0x80000000;
  r9.y = max((int)-r8.y, (int)r8.y);
  r9.z = (int)r9.y & 3;
  r9.w = -(int)r9.z;
  r9.x = r9.x ? r9.w : r9.z;
  r8.y = (int)r8.y ^ 4;
  r9.y = (uint)r9.y >> 2;
  r9.z = -(int)r9.y;
  r8.y = (int)r8.y & 0x80000000;
  r8.y = r8.y ? r9.z : r9.y;
  r9.y = (int)r8.z & 0x80000000;
  r9.z = max((int)-r8.z, (int)r8.z);
  r9.w = (int)r9.z & 3;
  r10.x = -(int)r9.w;
  r9.y = r9.y ? r10.x : r9.w;
  r8.z = (int)r8.z ^ 4;
  r9.z = (uint)r9.z >> 2;
  r9.w = -(int)r9.z;
  r8.z = (int)r8.z & 0x80000000;
  r8.z = r8.z ? r9.w : r9.z;
  r9.z = dot(cb0[r8.y+328].xyzw, icb[r9.x+0].xyzw);
  r9.w = dot(cb0[r8.y+338].xyzw, icb[r9.x+0].xyzw);
  r8.y = dot(cb0[r8.y+348].xyzw, icb[r9.x+0].xyzw);
  x0[0].x = r9.z;
  x0[1].x = r9.w;
  x0[2].x = r8.y;
  r8.y = dot(cb0[r8.z+328].xyzw, icb[r9.y+0].xyzw);
  r9.x = dot(cb0[r8.z+338].xyzw, icb[r9.y+0].xyzw);
  r8.z = dot(cb0[r8.z+348].xyzw, icb[r9.y+0].xyzw);
  x1[0].x = r8.y;
  x1[1].x = r9.x;
  x1[2].x = r8.z;
  r8.y = x0[r4.y+0].x;
  r8.z = x1[r4.y+0].x;
  r8.z = r8.z + -r8.y;
  r8.y = r8.w * r8.z + r8.y;
  r6.w = abs(r6.w) * 360 + r8.y;
  r8.y = cmp(r6.w < 0);
  r8.z = cmp(360 < r6.w);
  r9.xy = float2(360,-360) + r6.ww;
  r6.w = r8.z ? r9.y : r6.w;
  r6.w = r8.y ? r9.x : r6.w;
  r3.x = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.y = -0.200000003 + r3.x;
  r3.y = 10 * r3.y;
  r3.y = max(0, r3.y);
  r3.y = min(6, r3.y);
  r3.z = (int)r3.y;
  r8.y = (int)r3.z + 1;
  r3.y = trunc(r3.y);
  r3.y = r3.y * 0.100000001 + 0.200000003;
  r3.x = r3.x + -r3.y;
  r3.x = saturate(10 * r3.x);
  r3.y = (int)r3.z & 3;
  r3.z = (uint)r3.z >> 2;
  r8.z = (int)r8.y & 3;
  r8.y = (uint)r8.y >> 2;
  r8.w = dot(cb0[r3.z+334].xyzw, icb[r3.y+0].xyzw);
  r9.x = dot(cb0[r3.z+344].xyzw, icb[r3.y+0].xyzw);
  r9.y = dot(cb0[r3.z+354].xyzw, icb[r3.y+0].xyzw);
  x2[0].x = r8.w;
  x2[1].x = r9.x;
  x2[2].x = r9.y;
  r8.w = dot(cb0[r8.y+334].xyzw, icb[r8.z+0].xyzw);
  r9.x = dot(cb0[r8.y+344].xyzw, icb[r8.z+0].xyzw);
  r9.y = dot(cb0[r8.y+354].xyzw, icb[r8.z+0].xyzw);
  x3[0].x = r8.w;
  x3[1].x = r9.x;
  x3[2].x = r9.y;
  r8.w = dot(cb0[r3.z+336].xyzw, icb[r3.y+0].xyzw);
  r9.x = dot(cb0[r3.z+346].xyzw, icb[r3.y+0].xyzw);
  r3.y = dot(cb0[r3.z+356].xyzw, icb[r3.y+0].xyzw);
  x4[0].x = r8.w;
  x4[1].x = r9.x;
  x4[2].x = r3.y;
  r3.y = dot(cb0[r8.y+336].xyzw, icb[r8.z+0].xyzw);
  r3.z = dot(cb0[r8.y+346].xyzw, icb[r8.z+0].xyzw);
  r8.y = dot(cb0[r8.y+356].xyzw, icb[r8.z+0].xyzw);
  x5[0].x = r3.y;
  x5[1].x = r3.z;
  x5[2].x = r8.y;
  r3.y = x2[r4.y+0].x;
  r3.z = x3[r4.y+0].x;
  r3.z = r3.z + -r3.y;
  r3.y = r3.x * r3.z + r3.y;
  r3.z = x4[r4.y+0].x;
  r4.y = x5[r4.y+0].x;
  r4.y = r4.y + -r3.z;
  r3.x = r3.x * r4.y + r3.z;
  r3.z = cmp(0 < r4.z);
  r3.y = saturate(r4.z + r3.y);
  r3.y = r3.z ? r3.y : r4.z;
  r3.x = saturate(r8.x + r3.x);
  r8.xyz = r6.www * float3(0.00277777785,0.00277777785,0.00277777785) + float3(1,0.666666687,0.333333343);
  r8.xyz = frac(r8.xyz);
  r8.xyz = r8.xyz * float3(6,6,6) + float3(-3,-3,-3);
  r8.xyz = saturate(float3(-1,-1,-1) + abs(r8.xyz));
  r8.xyz = float3(-1,-1,-1) + r8.xyz;
  r8.xyz = r3.yyy * r8.xyz + float3(1,1,1);
  r9.xyz = r8.xyz * r3.xxx;
  r3.xyz = -r3.xxx * r8.xyz + cb2[5].xyz;
  r3.xyz = r2.www * r3.xyz + r9.xyz;
  r3.xyz = saturate(r3.www * -r3.xyz + r3.xyz);
  r2.w = v2.z * r4.x;
  r2.w = cmp(r2.w >= cb2[23].y);
  o3.w = r2.w ? 1.000000 : 0;
  r1.w = r5.w * r1.w + -0.333299994;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r5.xyz = saturate(r5.xyz);
  r1.w = saturate(cb2[17].z);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r4.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = min(float3(0.99000001,0.99000001,0.99000001), r4.xyz);
  r4.xyz = cb0[213].xyz * r4.xyz;
  r8.xyz = (int3)r4.xyz;
  r8.w = 0;
  r8.xyzw = t0.Load(r8.xyzw).xyzw;
  r8.xyzw = (uint4)r8.xyzw;
  r1.w = 1 + cb0[213].w;
  r4.xyz = r4.xyz / r8.www;
  r4.xyz = frac(r4.xyz);
  r4.xyz = cb0[213].www * r4.xyz;
  r4.xyz = r8.xyz * r1.www + r4.xyz;
  r4.xyz = float3(0.5,0.5,0.5) + r4.xyz;
  r4.xyz = cb0[214].xyz * r4.xyz;
  o1.w = t8[r7.z].val[4/4];
  r1.w = dot(cb0[r4.w+358].xyz, cb0[r4.w+358].xyz);
  r1.w = rsqrt(r1.w);
  r8.xyz = cb0[r4.w+358].xyz * r1.www;
  r1.w = dot(r0.xyz, r8.xyz);
  r1.w = r1.w * 0.5 + 0.5;
  r2.w = r2.w ? 1 : 0.699999988;
  r3.w = max(r3.x, r3.y);
  r3.w = max(r3.w, r3.z);
  r4.w = r3.w * r2.w;
  r3.w = max(0.00100000005, r3.w);
  r3.w = r4.w / r3.w;
  r1.x = dot(-r1.xyz, r8.xyz);
  r1.x = saturate(3 * r1.x);
  r8.xyz = r3.xyz * r3.www + -r3.xyz;
  o4.xyz = r1.xxx * r8.xyz + r3.xyz;
  r1.x = cmp(r1.w >= cb0[327].x);
  o4.w = r1.x ? 1.000000 : 0;
  o5.y = 0.5 * r0.w;
  r1.x = 0.0799999982 * r7.y;
  r1.yzw = -r7.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r1.xyz = r0.www * r1.yzw + r1.xxx;
  r3.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r8.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r1.xyz = r0.www ? r1.xyz : r3.xyz;
  r3.xyz = t1.SampleLevel(s0_s, r4.xyz, 0).xyz;
  r1.w = t2.SampleLevel(s0_s, r4.xyz, 0).y;
  r1.w = r1.w * 2 + -1;
  r3.w = t4.SampleLevel(s0_s, r4.xyz, 0).y;
  r3.w = r3.w * 2 + -1;
  r4.w = t6.SampleLevel(s0_s, r4.xyz, 0).y;
  r4.w = r4.w * 2 + -1;
  r1.w = r1.w * r3.x;
  r9.y = 1.73205125 * r1.w;
  r1.w = r3.w * r3.y;
  r9.w = 1.73205125 * r1.w;
  r1.w = r4.w * r3.z;
  r10.y = 1.73205125 * r1.w;
  r1.w = t3.SampleLevel(s0_s, r4.xyz, 0).y;
  r1.w = r1.w * 2 + -1;
  r3.w = t5.SampleLevel(s0_s, r4.xyz, 0).y;
  r3.w = r3.w * 2 + -1;
  r4.x = t7.SampleLevel(s0_s, r4.xyz, 0).y;
  r4.x = r4.x * 2 + -1;
  r1.w = r1.w * r3.x;
  r3.w = r3.w * r3.y;
  r4.x = r4.x * r3.z;
  r9.xz = r3.xy;
  r3.x = dot(r9.xy, float2(0.886227548,-1.02332771));
  r11.x = r1.w * 2.21557164 + r3.x;
  r1.w = dot(r9.zw, float2(0.886227548,-1.02332771));
  r11.y = r3.w * 2.21557164 + r1.w;
  r10.x = r3.z;
  r1.w = dot(r10.xy, float2(0.886227548,-1.02332771));
  r11.z = r4.x * 2.21557164 + r1.w;
  r3.xyz = max(float3(0,0,0), r11.xyz);
  r3.xyz = cb0[157].xyz * r3.xyz;
  r4.xyw = float3(0.318309873,0.318309873,0.318309873) * r3.yzx;
  r1.w = cmp(r4.x >= r4.y);
  r1.w = r1.w ? 1.000000 : 0;
  r9.xy = r4.yx;
  r9.zw = float2(-1,0.666666687);
  r3.xy = r3.yz * float2(0.318309873,0.318309873) + -r9.xy;
  r3.zw = float2(1,-1);
  r3.xyzw = r1.wwww * r3.xyzw + r9.xyzw;
  r1.w = cmp(r4.w >= r3.x);
  r1.w = r1.w ? 1.000000 : 0;
  r4.xyz = r3.xyw;
  r3.xyw = r4.wyx;
  r3.xyzw = r3.xyzw + -r4.xyzw;
  r3.xyzw = r1.wwww * r3.xyzw + r4.xyzw;
  r1.w = min(r3.w, r3.y);
  r1.w = r3.x + -r1.w;
  r3.y = r3.w + -r3.y;
  r3.w = r1.w * 6 + 1.00000001e-010;
  r3.y = r3.y / r3.w;
  r3.y = r3.z + r3.y;
  r3.z = 1.00000001e-010 + r3.x;
  r1.w = r1.w / r3.z;
  r1.w = cb0[361].z * r1.w;
  r3.yzw = float3(1,0.666666687,0.333333343) + abs(r3.yyy);
  r3.yzw = frac(r3.yzw);
  r3.yzw = r3.yzw * float3(6,6,6) + float3(-3,-3,-3);
  r3.yzw = saturate(float3(-1,-1,-1) + abs(r3.yzw));
  r3.yzw = float3(-1,-1,-1) + r3.yzw;
  r3.yzw = r1.www * r3.yzw + float3(1,1,1);
  r3.xyz = r3.xxx * r3.yzw;
  r3.xyz = cb0[361].xxx * r3.xyz;
  r1.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = min(cb0[361].y, r1.w);
  r1.w = max(1.00000001e-010, r1.w);
  r1.w = r3.w / r1.w;
  r3.xyz = r3.xyz * r1.www;
  r3.xyz = r3.xyz * r5.xyz;
  r4.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r3.xyz = r4.xyz * r3.xyz;
  r4.xyz = r0.www ? float3(0,0,0) : r8.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = max(float3(0,0,0), r6.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t8[r6.x].val[0/4];
    r6.z = t8[r6.x].val[0/4+1];
    r6.w = t8[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r8.x = t8[r6.y].val[0/4];
    r8.y = t8[r6.y].val[0/4+1];
    r8.z = t8[r6.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xzw));
    r0.w = (int)r6.y | (int)r6.x;
    r0.w = (int)r6.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.xyz = r1.www ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r0.www ? r2.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r3.xyz;
  r1.xyz = r1.xyz + r4.xyz;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  r7.xw = float2(0,0.552941203);
  o2.xyw = r7.xyw;
  o3.xyz = r5.xyz;
  o5.zw = r7.xy;
  o5.x = r2.w;
  o6.xyw = cb2[8].xyz;
  o6.z = 1;
  return;
}