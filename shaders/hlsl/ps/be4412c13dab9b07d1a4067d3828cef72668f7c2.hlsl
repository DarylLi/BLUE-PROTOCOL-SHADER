// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[188];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.y = 1;
  r1.xy = v5.ww * r1.xy;
  r2.xyzw = float4(0.5,0.5,10,10) * v3.xyxy;
  r1.zw = t3.SampleBias(s1_s, r2.zw, cb0[143].y).xy;
  r3.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.x = cb0[138].w;
  r4.z = 1;
  r3.xyz = r4.xxz * r3.xyz;
  r4.x = 0.300000012;
  r4.z = cb0[138].w;
  r3.xyz = r3.xyz * r4.xxz + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.yzx + r0.xyz;
  r0.xyz = r3.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r0.xyz * r0.www;
  r4.xyz = cb3[2].xxx * cb3[1].xyz;
  r5.xyzw = float4(20,20,5,5) * v3.xyxy;
  r1.z = t4.SampleBias(s2_s, r5.xy, cb0[143].y).x;
  r1.z = r1.z * 0.600000024 + 0.400000006;
  r1.w = t4.SampleBias(s2_s, r5.zw, cb0[143].y).y;
  r2.z = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r2.z ? r1.y : r1.x;
  r1.x = -24 + r1.x;
  r1.x = saturate(0.00066666666 * r1.x);
  r1.y = 1 + -r1.w;
  r1.y = r1.x * r1.y + r1.w;
  r2.z = r1.z * -2 + 1;
  r1.y = r1.y * r2.z + r1.z;
  r1.z = t4.SampleBias(s2_s, r2.xy, cb0[143].y).y;
  r2.x = r1.x * -r1.w + r1.w;
  r2.x = r2.x + r1.z;
  r2.y = 0.5 + -r2.x;
  r2.x = r2.y * 0.5 + r2.x;
  r2.x = r2.x * 0.365000039 + 0.294999987;
  r1.y = r2.x * r1.y;
  r1.w = r1.w * 0.300000012 + 0.699999988;
  r2.x = 1 + -r1.w;
  r1.x = r1.x * r2.x + r1.w;
  r1.x = saturate(r1.z * 0.5 + r1.x);
  r1.z = cmp(0.00100000005 < abs(v2.w));
  r2.xy = floor(v5.xy);
  r1.w = dot(r2.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.yw = float2(0.5,1000) * r1.yw;
  r1.w = frac(r1.w);
  r2.x = cmp(v2.w < 0);
  r2.y = 1 + v2.w;
  r2.y = cmp(r1.w < r2.y);
  r1.w = cmp(v2.w < r1.w);
  r1.w = r2.x ? r2.y : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r1.z = r1.z ? r1.w : 0;
  if (r1.z != 0) discard;
  r1.yzw = saturate(r1.yyy);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r2.xyz = r1.www * cb0[136].www + cb0[136].xyz;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r6.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r2.xyz;
  r2.xyz = r1.xxx ? r6.xyz : r2.xyz;
  r5.xyz = r1.xxx ? float3(0,0,0) : r5.xyz;
  r1.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.x * 2.04040003 + -0.332399994;
  r2.w = r1.x * -4.79510021 + r2.w;
  r1.x = r1.x * 2.75519991 + r2.w;
  r1.x = 1.33200002 + r1.x;
  r1.x = max(1, r1.x);
  r6.xy = float2(1,0.5) * v4.xy;
  r6.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t1.Sample(s0_s, r6.xy).xyzw;
  r6.xyzw = t1.Sample(s0_s, r6.zw).xyzw;
  r2.w = r6.w * 0.00392156886 + r7.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb2[4].w + cb2[6].w;
  r7.xyz = r7.xyz * r7.xyz;
  r7.xyz = r7.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r6.xyzw = r6.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r3.w = 1;
  r3.w = dot(r6.xyzw, r3.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r6.xyz = r2.www * r7.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r7.xyzw = t2.Sample(s0_s, v4.xy).xyzw;
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.x = r7.w * r7.w;
    r2.w = dot(r7.xyz, r7.xyz);
    r2.w = rsqrt(r2.w);
    r7.xyz = r7.xyz * r2.www;
    r2.w = -r7.w * r7.w + 1;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.zxy * r0.www + -r7.xyz;
    r0.xyz = r2.www * r0.xyz + r7.xyz;
    r3.w = saturate(dot(r7.yzx, r3.xyz));
    r4.w = 1 + -r3.w;
    r8.y = r2.w * r4.w + r3.w;
  } else {
    r0.xyz = r3.zxy;
    r8.xy = float2(1,1);
  }
  r7.x = t0[0].val[0/4];
  r7.y = t0[0].val[0/4+1];
  r7.z = t0[0].val[0/4+2];
  r7.w = t0[0].val[0/4+3];
  r0.w = 1;
  r7.x = dot(r7.xyzw, r0.xyzw);
  r9.x = t0[1].val[0/4];
  r9.y = t0[1].val[0/4+1];
  r9.z = t0[1].val[0/4+2];
  r9.w = t0[1].val[0/4+3];
  r7.y = dot(r9.xyzw, r0.xyzw);
  r9.x = t0[2].val[0/4];
  r9.y = t0[2].val[0/4+1];
  r9.z = t0[2].val[0/4+2];
  r9.w = t0[2].val[0/4+3];
  r7.z = dot(r9.xyzw, r0.xyzw);
  r9.xyzw = r0.xyzz * r0.yzzx;
  r10.x = t0[3].val[0/4];
  r10.y = t0[3].val[0/4+1];
  r10.z = t0[3].val[0/4+2];
  r10.w = t0[3].val[0/4+3];
  r10.x = dot(r10.xyzw, r9.xyzw);
  r11.x = t0[4].val[0/4];
  r11.y = t0[4].val[0/4+1];
  r11.z = t0[4].val[0/4+2];
  r11.w = t0[4].val[0/4+3];
  r10.y = dot(r11.xyzw, r9.xyzw);
  r11.x = t0[5].val[0/4];
  r11.y = t0[5].val[0/4+1];
  r11.z = t0[5].val[0/4+2];
  r11.w = t0[5].val[0/4+3];
  r10.z = dot(r11.xyzw, r9.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t0[6].val[0/4];
  r0.z = t0[6].val[0/4+1];
  r0.w = t0[6].val[0/4+2];
  r7.xyz = r10.xyz + r7.xyz;
  r0.xyz = r0.yzw * r0.xxx + r7.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r8.x * r8.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r6.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r2.xyz;
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r2.w = r1.w * 2.75519991 + r2.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r0.xyz = r2.www * r0.xyz;
  r2.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r2.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r5.xyzw = cb0[45].xyzw * v5.yyyy;
    r5.xyzw = v5.xxxx * cb0[44].xyzw + r5.xyzw;
    r5.xyzw = v5.zzzz * cb0[46].xyzw + r5.xyzw;
    r5.xyzw = cb0[47].xyzw + r5.xyzw;
    r5.xyz = r5.xyz / r5.www;
    r5.xyz = -cb0[70].xyz + r5.xyz;
    r6.xyz = -cb1[5].xyz + r5.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r2.w = (int)r6.y | (int)r6.x;
    r2.w = (int)r6.z | (int)r2.w;
    r3.w = dot(r5.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.w = 0.00200000009 * r3.w;
    r3.w = frac(r3.w);
    r3.w = cmp(0.5 < r3.w);
    r5.xyz = r3.www ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r2.www ? r5.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r3.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.x;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.5,0.75686276);
  o3.xyz = r1.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}