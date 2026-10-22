// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[16];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[10];
}

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r1.zw = cb5[8].xx * v3.xy;
  r0.w = cb5[8].y + cb0[143].y;
  r4.xy = t3.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[8].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r0.xyz * r0.www;
  r2.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r2.w = sqrt(r2.w);
  r5.xyz = -cb4[5].xyz / r2.www;
  r2.w = dot(r5.yzx, r4.xyz);
  r2.w = 1 + r2.w;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r3.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = saturate(dot(-r6.xyz, r5.xyz));
  r5.x = 1 + -cb3[1].x;
  r3.w = saturate(r5.x + r3.w);
  r2.w = r3.w * r2.w;
  r2.x = dot(r4.zxy, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb3[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb3[0].w;
  r2.y = r2.y * r2.z + cb3[0].w;
  r2.z = cmp(r2.y >= cb3[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.y * r0.w + 1;
  r3.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r3.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.y * r0.w + 1;
  r3.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb3[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r3.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb3[0].z * r2.y;
  r2.z = r2.w * r2.y;
  r5.yzw = cb4[4].xyz * r2.zzz;
  r2.z = dot(-cb4[8].xyz, -cb4[8].xyz);
  r2.z = sqrt(r2.z);
  r7.xyz = -cb4[8].xyz / r2.zzz;
  r2.z = dot(r7.yzx, r4.xyz);
  r2.z = 1 + r2.z;
  r2.w = saturate(dot(-r6.xyz, r7.xyz));
  r2.w = saturate(r2.w + r5.x);
  r2.z = r2.z * r2.w;
  r2.y = r2.z * r2.y;
  r2.yzw = cb4[9].xyz * r2.yyy;
  r2.yzw = cb4[1].yyy * r2.yzw;
  r2.yzw = r5.yzw * cb4[1].xxx + r2.yzw;
  r3.w = cmp(cb0[31].w < 1);
  r5.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r5.x + r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = r1.x / cb5[8].w;
  r3.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb5[9].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb5[9].y * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r3.w ? 1 : r1.y;
  r3.w = t4.SampleBias(s2_s, r1.zw, cb0[143].y).w;
  r5.xy = cb5[9].ww * v3.xy;
  r5.x = t5.SampleBias(s3_s, r5.xy, cb0[143].y).x;
  r5.y = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = cb5[10].x * r5.x;
  r5.x = exp2(r5.x);
  r5.x = cb5[10].y * r5.x;
  r5.x = r5.y ? 0 : r5.x;
  r5.x = cb0[142].z * cb5[9].z + r5.x;
  r5.x = 6.28318548 * r5.x;
  r5.x = sin(r5.x);
  r5.x = r5.x * 0.5 + 0.5;
  r5.x = r5.x * cb5[10].w + cb5[10].z;
  r5.x = max(cb5[11].y, r5.x);
  r5.x = min(cb5[11].x, r5.x);
  r5.x = cb5[11].z * r5.x;
  r5.x = cb4[3].y * r5.x;
  r3.w = r5.x * r3.w;
  r5.xyz = cb5[2].xyz * r3.www;
  r5.xyz = r5.xyz * r1.yyy;
  r2.yzw = cb3[2].xyz * r2.yzw + r5.xyz;
  r5.xyz = cb5[4].xyz * r2.yzw;
  r2.yzw = -r2.yzw * cb5[4].xyz + cb5[5].xyz;
  r2.yzw = cb5[11].www * r2.yzw + r5.xyz;
  r5.xyzw = t6.SampleBias(s4_s, r1.zw, cb0[143].y).xyzw;
  r1.y = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.yyy + -r5.xyz;
  r5.xyz = cb5[12].zzz * r6.xyz + r5.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb5[12].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb5[7].xyz * r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r1.yz = t7.SampleBias(s5_s, r1.zw, cb0[143].y).xy;
  r1.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb5[12].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r1.w ? 0 : r1.y;
  r1.y = saturate(cb5[13].x + r1.y);
  r6.x = saturate(cb5[13].y + r1.z);
  r1.z = cb5[13].z * r2.x;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb5[13].w * r1.z;
  r1.w = saturate(cb5[14].y + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r6.y = saturate(cb5[14].z * r1.z);
  r1.x = r1.x / cb5[14].w;
  r7.xyz = -cb0[129].xxy + v5.xxy;
  r1.z = r7.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.z = cb5[15].y + -r1.z;
  r6.zw = cb0[152].xx + r7.yz;
  r6.zw = (uint2)r6.zw;
  r1.w = (uint)r6.w << 1;
  r1.w = (int)r1.w + (int)r6.z;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r6.zw = float2(0.015625,0.015625) * r7.yz;
  r2.x = t8.SampleBias(s6_s, r6.zw, cb0[143].y).x;
  r1.w = r2.x + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.z + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r5.w * r1.x;
  r1.z = cmp(0.00100000005 < abs(v2.w));
  r6.zw = floor(v5.xy);
  r1.w = dot(r6.zw, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r2.x = cmp(v2.w < 0);
  r3.w = 1 + v2.w;
  r3.w = cmp(r1.w < r3.w);
  r1.w = cmp(v2.w < r1.w);
  r1.w = r2.x ? r3.w : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r1.z = r1.z ? r1.w : 0;
  if (r1.z != 0) discard;
  r1.x = r1.x * v2.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xzw = min(float3(1,1,1), r5.xyz);
  o2.z = r1.y * cb0[139].y + cb0[139].x;
  r1.y = 0.0799999982 * r6.y;
  r5.xyz = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xzw;
  r5.xyz = r6.xxx * r5.xyz + r1.yyy;
  r7.xyz = -r1.xzw * r6.xxx + r1.xzw;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.y = cmp(0 != cb0[183].w);
  r8.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.yyy ? r8.xyz : r7.xyz;
  r5.xyz = r1.yyy ? float3(0,0,0) : r5.xyz;
  r1.y = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.x = r1.y * 2.04040003 + -0.332399994;
  r2.x = r1.y * -4.79510021 + r2.x;
  r1.y = r1.y * 2.75519991 + r2.x;
  r1.y = 1.33200002 + r1.y;
  r1.y = max(1, r1.y);
  r6.zw = float2(1,0.5) * v4.xy;
  r8.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t1.Sample(s0_s, r6.zw).xyzw;
  r8.xyzw = t1.Sample(s0_s, r8.xy).xyzw;
  r2.x = r8.w * 0.00392156886 + r9.w;
  r2.x = -0.00196078443 + r2.x;
  r2.x = r2.x * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.x = exp2(r2.x);
  r2.x = -0.0185813606 + r2.x;
  r8.xyzw = r8.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r3.w = dot(r8.xyzw, r4.xyzw);
  r3.w = max(0, r3.w);
  r2.x = r3.w * r2.x;
  r8.xyz = r2.xxx * r9.xyz;
  r2.x = cmp(cb0[186].y != 0.000000);
  if (r2.x != 0) {
    r9.xyzw = t2.Sample(s0_s, v4.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r2.x = dot(r9.xyz, r9.xyz);
    r2.x = rsqrt(r2.x);
    r9.xyz = r9.xyz * r2.xxx;
    r2.x = -r9.w * r9.w + 1;
    r2.x = -r2.x * r2.x + 1;
    r0.xyz = r0.zxy * r0.www + -r9.xyz;
    r0.xyz = r2.xxx * r0.xyz + r9.xyz;
    r3.w = saturate(dot(r9.yzx, r4.xyz));
    r4.w = 1 + -r3.w;
    r10.y = r2.x * r4.w + r3.w;
  } else {
    r0.xyz = r4.zxy;
    r10.xy = float2(1,1);
  }
  r9.x = t0[0].val[0/4];
  r9.y = t0[0].val[0/4+1];
  r9.z = t0[0].val[0/4+2];
  r9.w = t0[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r11.x = t0[1].val[0/4];
  r11.y = t0[1].val[0/4+1];
  r11.z = t0[1].val[0/4+2];
  r11.w = t0[1].val[0/4+3];
  r9.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t0[2].val[0/4];
  r11.y = t0[2].val[0/4+1];
  r11.z = t0[2].val[0/4+2];
  r11.w = t0[2].val[0/4+3];
  r9.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t0[3].val[0/4];
  r12.y = t0[3].val[0/4+1];
  r12.z = t0[3].val[0/4+2];
  r12.w = t0[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t0[4].val[0/4];
  r13.y = t0[4].val[0/4+1];
  r13.z = t0[4].val[0/4+2];
  r13.w = t0[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t0[5].val[0/4];
  r13.y = t0[5].val[0/4+1];
  r13.z = t0[5].val[0/4+2];
  r13.w = t0[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t0[6].val[0/4];
  r0.z = t0[6].val[0/4+1];
  r0.w = t0[6].val[0/4+2];
  r9.xyz = r12.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r8.xyz = r1.xzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xzw * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xzw * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r2.xyz = max(float3(0,0,0), r2.yzw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r2.www ? r3.xyz : r2.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.y;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.75686276;
  o2.xy = r6.xy;
  o3.xyz = r1.xzw;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}