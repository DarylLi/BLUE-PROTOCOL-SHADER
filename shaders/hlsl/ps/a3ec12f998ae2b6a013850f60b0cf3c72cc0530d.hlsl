// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[24];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[28];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[364];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  float4 v3 : COLOR0,
  float4 v4 : COLOR1,
  float4 v5 : COLOR2,
  float4 v6 : PARTICLE_VELOCITY0,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r1.xyzw = cb0[45].xyzw * v7.yyyy;
  r1.xyzw = v7.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v7.zzzz * cb0[46].xyzw + r1.xyzw;
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
  r3.xyz = t1.SampleBias(s0_s, v2.xy, cb0[143].y).xyz;
  r1.w = cb0[142].z * cb3[9].z + v2.x;
  r4.x = cb3[10].y * r1.w;
  r1.w = cb0[142].z * cb3[10].z + v2.y;
  r4.y = cb3[10].w * r1.w;
  r1.w = t2.SampleBias(s1_s, r4.xy, cb0[143].y).x;
  r1.w = -0.5 + r1.w;
  r1.w = r1.w + r1.w;
  r4.x = cb3[11].z * r1.w;
  r4.y = cb3[12].x * r1.w;
  r1.w = t3.SampleBias(s2_s, v2.xy, cb0[143].y).y;
  r1.w = r1.w * cb3[12].y + cb3[12].z;
  r4.xy = r4.xy * r1.ww + v2.xy;
  r1.w = t4.SampleBias(s3_s, r4.xy, cb0[143].y).x;
  r1.w = -1 + r1.w;
  r4.xy = cb3[13].zw + r1.ww;
  r4.xy = saturate(ceil(r4.xy));
  r4.xz = float2(1,1) + -r4.xy;
  r2.w = r4.x * r4.y;
  r5.xyz = cb3[5].xyz + -r3.xyz;
  r5.xyz = r2.www * r5.xyz + r3.xyz;
  r3.w = cb3[14].w + r1.w;
  r3.w = saturate(ceil(r3.w));
  r3.w = 1 + -r3.w;
  r1.w = cb3[15].x + r1.w;
  r1.w = saturate(ceil(r1.w));
  r3.w = r3.w * r1.w;
  r5.xyz = r3.www * -r5.xyz + r5.xyz;
  r4.x = -cb3[15].y + r0.w;
  r4.x = cmp(9.99999975e-006 < abs(r4.x));
  r4.w = cmp(r0.w >= cb3[15].y);
  r6.xyz = r4.www ? r5.xyz : 0;
  r6.xyz = r4.xxx ? r6.xyz : 0;
  r0.w = cb3[15].z * r0.w;
  r0.w = ceil(r0.w);
  r0.w = r0.w / cb3[15].z;
  r6.xyz = r6.xyz * r0.www;
  r7.xyz = v4.xyz * r6.xyz;
  r6.xyz = -v4.xyz * r6.xyz + cb3[6].xyz;
  r6.xyz = cb3[15].www * r6.xyz + r7.xyz;
  r5.xyz = saturate(v4.xyz * r5.xyz);
  r0.w = -1 + cb0[143].y;
  r4.xw = t3.SampleBias(s2_s, v2.xy, r0.w).xy;
  r0.w = -cb1[27].x + r2.z;
  r0.w = max(0, r0.w);
  r5.w = max(cb3[16].x, cb1[27].y);
  r0.w = r0.w / r5.w;
  r0.w = min(1, r0.w);
  r0.w = saturate(r0.w + r0.w);
  r0.w = r4.w * r0.w;
  r4.w = firstbithigh(asint(cb1[23].w));
  r5.w = cmp((int)r4.w == -1);
  r4.w = (int)-r4.w + 31;
  r4.w = r5.w ? -1 : r4.w;
  r4.w = cb1[23].w ? r4.w : 0;
  r5.w = saturate(dot(cb0[r4.w+358].xyz, r0.xyz));
  r7.xy = t5.SampleBias(s4_s, v2.xy, cb0[143].y).xy;
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
  r7.x = 11 * cb3[16].w;
  r7.x = exp2(r7.x);
  r7.z = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = r7.x * r6.w;
  r6.w = exp2(r6.w);
  r5.w = r6.w * r5.w;
  r5.w = r7.z ? 0 : r5.w;
  r5.w = cmp(r5.w >= cb3[17].x);
  r5.w = r5.w ? 1.000000 : 0;
  r6.w = cb3[17].y * r7.y;
  r7.y = r6.w * r5.w;
  r5.w = saturate(cb0[142].w * cb2[0].x + cb2[0].y);
  r8.xy = -cb0[129].xy + v7.xy;
  r8.zw = cb0[152].xx + r8.xy;
  r8.zw = (uint2)r8.zw;
  r6.w = (uint)r8.w << 1;
  r6.w = (int)r6.w + (int)r8.z;
  r6.w = (uint)r6.w % 5;
  r6.w = (uint)r6.w;
  r8.xy = float2(0.015625,0.015625) * r8.xy;
  r7.z = t6.SampleBias(s5_s, r8.xy, cb0[143].y).x;
  r6.w = r7.z + r6.w;
  r6.w = 0.166666672 * r6.w;
  r5.w = cb3[19].y * r5.w + r6.w;
  r5.w = -0.5 + r5.w;
  r4.y = cb3[19].z * r4.z + r4.y;
  r4.z = -cb3[20].x + v3.w;
  r4.y = r4.y * r4.z;
  r4.z = 1 + -r1.w;
  r1.w = cb3[20].y * r4.z + r1.w;
  r1.w = r4.y * r1.w;
  r1.w = saturate(ceil(r1.w));
  r4.y = round(cb3[22].w);
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
  r7.z = r4.z * 6 + 1.00000001e-010;
  r6.w = r6.w / r7.z;
  r6.w = r8.z + r6.w;
  r7.z = 1.00000001e-010 + r8.x;
  r4.z = r4.z / r7.z;
  r7.z = 360 * abs(r6.w);
  r8.yz = float2(0,1.40129846e-045);
  while (true) {
    r8.w = cmp((int)r8.z >= 21);
    if (r8.w != 0) break;
    r8.w = cmp(icb[r8.z+3].x >= r7.z);
    if (r8.w != 0) {
      r8.y = r8.z;
      break;
    }
    r8.z = (int)r8.z + 1;
    r8.y = 0;
  }
  r7.z = (int)r8.y + -1;
  r8.z = abs(r6.w) * 360 + -icb[r7.z+3].x;
  r8.w = icb[r8.y+3].x + -icb[r7.z+3].x;
  r8.z = r8.z / r8.w;
  r8.w = (int)r7.z & 0x80000000;
  r9.x = max((int)-r7.z, (int)r7.z);
  r9.y = (int)r9.x & 3;
  r9.z = -(int)r9.y;
  r8.w = r8.w ? r9.z : r9.y;
  r7.z = (int)r7.z ^ 4;
  r9.x = (uint)r9.x >> 2;
  r9.y = -(int)r9.x;
  r7.z = (int)r7.z & 0x80000000;
  r7.z = r7.z ? r9.y : r9.x;
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
  r9.y = dot(cb0[r7.z+328].xyzw, icb[r8.w+0].xyzw);
  r9.z = dot(cb0[r7.z+338].xyzw, icb[r8.w+0].xyzw);
  r7.z = dot(cb0[r7.z+348].xyzw, icb[r8.w+0].xyzw);
  x0[0].x = r9.y;
  x0[1].x = r9.z;
  x0[2].x = r7.z;
  r7.z = dot(cb0[r8.y+328].xyzw, icb[r9.x+0].xyzw);
  r8.w = dot(cb0[r8.y+338].xyzw, icb[r9.x+0].xyzw);
  r8.y = dot(cb0[r8.y+348].xyzw, icb[r9.x+0].xyzw);
  x1[0].x = r7.z;
  x1[1].x = r8.w;
  x1[2].x = r8.y;
  r7.z = x0[r4.y+0].x;
  r8.y = x1[r4.y+0].x;
  r8.y = r8.y + -r7.z;
  r7.z = r8.z * r8.y + r7.z;
  r6.w = abs(r6.w) * 360 + r7.z;
  r7.z = cmp(r6.w < 0);
  r8.y = cmp(360 < r6.w);
  r8.zw = float2(360,-360) + r6.ww;
  r6.w = r8.y ? r8.w : r6.w;
  r6.w = r7.z ? r8.z : r6.w;
  r3.x = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.y = -0.200000003 + r3.x;
  r3.y = 10 * r3.y;
  r3.y = max(0, r3.y);
  r3.y = min(6, r3.y);
  r3.z = (int)r3.y;
  r7.z = (int)r3.z + 1;
  r3.y = trunc(r3.y);
  r3.y = r3.y * 0.100000001 + 0.200000003;
  r3.x = r3.x + -r3.y;
  r3.x = saturate(10 * r3.x);
  r3.y = (int)r3.z & 3;
  r3.z = (uint)r3.z >> 2;
  r8.y = (int)r7.z & 3;
  r7.z = (uint)r7.z >> 2;
  r8.z = dot(cb0[r3.z+334].xyzw, icb[r3.y+0].xyzw);
  r8.w = dot(cb0[r3.z+344].xyzw, icb[r3.y+0].xyzw);
  r9.x = dot(cb0[r3.z+354].xyzw, icb[r3.y+0].xyzw);
  x2[0].x = r8.z;
  x2[1].x = r8.w;
  x2[2].x = r9.x;
  r8.z = dot(cb0[r7.z+334].xyzw, icb[r8.y+0].xyzw);
  r8.w = dot(cb0[r7.z+344].xyzw, icb[r8.y+0].xyzw);
  r9.x = dot(cb0[r7.z+354].xyzw, icb[r8.y+0].xyzw);
  x3[0].x = r8.z;
  x3[1].x = r8.w;
  x3[2].x = r9.x;
  r8.z = dot(cb0[r3.z+336].xyzw, icb[r3.y+0].xyzw);
  r8.w = dot(cb0[r3.z+346].xyzw, icb[r3.y+0].xyzw);
  r3.y = dot(cb0[r3.z+356].xyzw, icb[r3.y+0].xyzw);
  x4[0].x = r8.z;
  x4[1].x = r8.w;
  x4[2].x = r3.y;
  r3.y = dot(cb0[r7.z+336].xyzw, icb[r8.y+0].xyzw);
  r3.z = dot(cb0[r7.z+346].xyzw, icb[r8.y+0].xyzw);
  r7.z = dot(cb0[r7.z+356].xyzw, icb[r8.y+0].xyzw);
  x5[0].x = r3.y;
  x5[1].x = r3.z;
  x5[2].x = r7.z;
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
  r3.xyz = -r3.xxx * r8.xyz + cb3[5].xyz;
  r3.xyz = r2.www * r3.xyz + r9.xyz;
  r3.xyz = saturate(r3.www * -r3.xyz + r3.xyz);
  r2.w = v3.z * r4.x;
  r2.w = cmp(r2.w >= cb3[23].y);
  o3.w = r2.w ? 1.000000 : 0;
  r1.w = r5.w * r1.w + -0.333299994;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r1.w = saturate(cb3[17].z);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = dot(cb0[r4.w+358].xyz, cb0[r4.w+358].xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = cb0[r4.w+358].xyz * r1.www;
  r1.w = dot(r0.xyz, r4.xyz);
  r1.w = r1.w * 0.5 + 0.5;
  r2.w = r2.w ? 1 : 0.699999988;
  r3.w = max(r3.x, r3.y);
  r3.w = max(r3.w, r3.z);
  r4.w = r3.w * r2.w;
  r3.w = max(0.00100000005, r3.w);
  r3.w = r4.w / r3.w;
  r1.x = dot(-r1.xyz, r4.xyz);
  r1.x = saturate(3 * r1.x);
  r4.xyz = r3.xyz * r3.www + -r3.xyz;
  o4.xyz = r1.xxx * r4.xyz + r3.xyz;
  r1.x = cmp(r1.w >= cb0[327].x);
  o4.w = r1.x ? 1.000000 : 0;
  o5.y = 0.5 * r0.w;
  r1.x = 0.0799999982 * r7.y;
  r1.yzw = -r7.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r1.xyz = r0.www * r1.yzw + r1.xxx;
  r3.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r4.xyz = float3(0.449999988,0.449999988,0.449999988) * r1.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r3.xyz;
  r1.xyz = r0.www ? r1.xyz : r3.xyz;
  r3.x = t0[0].val[8/4];
  r3.y = t0[0].val[8/4+1];
  r3.x = dot(r3.xy, float2(1,1));
  r8.x = t0[1].val[8/4];
  r8.y = t0[1].val[8/4+1];
  r3.y = dot(r8.xy, float2(1,1));
  r8.x = t0[2].val[8/4];
  r8.y = t0[2].val[8/4+1];
  r3.z = dot(r8.xy, float2(1,1));
  r8.x = t0[3].val[8/4];
  r8.y = t0[4].val[8/4];
  r8.z = t0[5].val[8/4];
  r3.xyz = r8.xyz + r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = cb0[363].xyz * r3.xyz;
  r3.xyz = r3.xyz * r5.xyz;
  r8.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r3.xyz = r8.xyz * r3.xyz;
  r4.xyz = r0.www ? float3(0,0,0) : r4.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = max(float3(0,0,0), r6.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xyz));
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
  o1.w = cb1[20].y;
  r7.xw = float2(0,0.552941203);
  o2.xyw = r7.xyw;
  o3.xyz = r5.xyz;
  o5.zw = r7.xy;
  o5.x = r2.w;
  o6.xyw = cb3[8].xyz;
  o6.z = 1;
  return;
}