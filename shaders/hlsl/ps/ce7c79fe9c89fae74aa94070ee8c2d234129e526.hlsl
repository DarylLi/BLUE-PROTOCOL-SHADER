// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

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

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[20];
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
  float4 v2 : COLOR0,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
  float4 v5 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r1.zw = cb5[10].xx * v4.xy;
  r0.w = cb5[10].y + cb0[143].y;
  r4.xy = t4.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[10].zzz * r5.xyz + r4.xyz;
  r5.xy = cb5[10].ww * r1.zw;
  r5.zw = t5.SampleBias(s2_s, r5.xy, r0.w).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb5[11].xxx * r7.xyz + r6.xyz;
  r6.xyz = cb5[11].yyy * r4.xyz + r6.xyz;
  r6.xyz = r6.xyz + -r4.xyz;
  r4.xyz = v2.yyy * r6.xyz + r4.xyz;
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
  r6.xyz = -cb4[5].xyz / r2.www;
  r2.w = dot(r6.yzx, r4.xyz);
  r2.w = 1 + r2.w;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r7.xyz, r7.xyz);
  r3.w = sqrt(r3.w);
  r7.xyz = r7.xyz / r3.www;
  r3.w = saturate(dot(-r7.xyz, r6.xyz));
  r5.z = 1 + -cb3[1].x;
  r3.w = saturate(r5.z + r3.w);
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
  r6.xyz = cb4[4].xyz * r2.zzz;
  r2.z = dot(-cb4[8].xyz, -cb4[8].xyz);
  r2.z = sqrt(r2.z);
  r8.xyz = -cb4[8].xyz / r2.zzz;
  r2.z = dot(r8.yzx, r4.xyz);
  r2.z = 1 + r2.z;
  r2.w = saturate(dot(-r7.xyz, r8.xyz));
  r2.w = saturate(r2.w + r5.z);
  r2.z = r2.z * r2.w;
  r2.y = r2.z * r2.y;
  r2.yzw = cb4[9].xyz * r2.yyy;
  r2.yzw = cb4[1].yyy * r2.yzw;
  r2.yzw = r6.xyz * cb4[1].xxx + r2.yzw;
  r3.w = cmp(cb0[31].w < 1);
  r5.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r5.z + r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = r1.x / cb5[11].z;
  r3.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb5[11].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb5[12].x * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r3.w ? 1 : r1.y;
  r5.zw = r1.zw / cb5[12].ww;
  r5.zw = cb5[13].xy + r5.zw;
  r6.xyz = t6.SampleBias(s3_s, r5.zw, cb0[143].y).xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[12].z, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb5[2].xyz * r6.xyz;
  r5.zw = cb5[13].ww * v4.xy;
  r3.w = t7.SampleBias(s4_s, r5.zw, cb0[143].y).x;
  r5.z = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[14].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = cb5[14].y * r3.w;
  r3.w = r5.z ? 0 : r3.w;
  r3.w = cb0[142].z * cb5[13].z + r3.w;
  r3.w = 6.28318548 * r3.w;
  r3.w = sin(r3.w);
  r3.w = r3.w * 0.5 + 0.5;
  r3.w = r3.w * cb5[14].w + cb5[14].z;
  r3.w = max(cb5[15].y, r3.w);
  r3.w = min(cb5[15].x, r3.w);
  r3.w = cb5[15].z * r3.w;
  r3.w = cb4[3].y * r3.w;
  r6.xyz = r6.xyz * r3.www;
  r6.xyz = r6.xyz * r1.yyy;
  r1.y = 1 + -v2.y;
  r6.xyz = r6.xyz * r1.yyy;
  r2.yzw = cb3[2].xyz * r2.yzw + r6.xyz;
  r6.xyz = cb5[4].xyz * r2.yzw;
  r2.yzw = -r2.yzw * cb5[4].xyz + cb5[5].xyz;
  r2.yzw = cb5[15].www * r2.yzw + r6.xyz;
  r6.xyzw = t8.SampleBias(s5_s, r1.zw, cb0[143].y).xyzw;
  r1.y = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.yyy + -r6.xyz;
  r6.xyz = cb5[16].zzz * r7.xyz + r6.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[16].y, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb5[7].xyz * r6.xyz;
  r7.xyz = t9.SampleBias(s6_s, r5.xy, cb0[143].y).xyz;
  r1.y = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.yyy + -r7.xyz;
  r7.xyz = cb5[17].yyy * r8.xyz + r7.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb5[17].x, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = r7.xyz * cb5[9].xyz + -r6.xyz;
  r6.xyz = v2.yyy * r7.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.yz = t10.SampleBias(s7_s, r1.zw, cb0[143].y).yx;
  r1.z = saturate(cb5[17].z + r1.z);
  r5.xy = t11.SampleBias(s8_s, r5.xy, cb0[143].y).yx;
  r5.y = saturate(cb5[17].w + r5.y);
  r5.xy = r5.xy + -r1.yz;
  r1.yz = saturate(v2.yy * r5.xy + r1.yz);
  r1.w = cb5[18].x * r2.x;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb5[18].y * r1.w;
  r2.x = saturate(cb5[18].w + v1.z);
  r1.w = r2.x * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r1.w = saturate(cb5[19].x * r1.w);
  r1.x = r1.x / cb5[19].y;
  r5.xyz = -cb0[129].xxy + v6.xxy;
  r2.x = r5.x * cb0[130].z + -0.469999999;
  r2.x = 4.93230057 * r2.x;
  r2.x = cos(r2.x);
  r2.x = 0.899999976 + r2.x;
  r2.x = saturate(0.555555582 * r2.x);
  r2.x = cb5[19].w + -r2.x;
  r5.xw = cb0[152].xx + r5.yz;
  r5.xw = (uint2)r5.xw;
  r3.w = (uint)r5.w << 1;
  r3.w = (int)r3.w + (int)r5.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r5.xy = float2(0.015625,0.015625) * r5.yz;
  r5.x = t12.SampleBias(s9_s, r5.xy, cb0[143].y).x;
  r3.w = r5.x + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.x = r1.x * r2.x + r3.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r6.w * r1.x;
  r2.x = cmp(0.00100000005 < abs(v3.w));
  r5.xy = floor(v6.xy);
  r3.w = dot(r5.xy, float2(347.834503,3343.28369));
  r3.w = cos(r3.w);
  r3.w = 1000 * r3.w;
  r3.w = frac(r3.w);
  r5.x = cmp(v3.w < 0);
  r5.y = 1 + v3.w;
  r5.y = cmp(r3.w < r5.y);
  r3.w = cmp(v3.w < r3.w);
  r3.w = r5.x ? r5.y : r3.w;
  r3.w = cmp((int)r3.w == 0);
  r2.x = r2.x ? r3.w : 0;
  if (r2.x != 0) discard;
  r1.x = r1.x * v3.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r5.xyz = min(float3(1,1,1), r6.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r6.xyzw = t3.Sample(s0_s, v5.zw).xyzw;
  r7.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r6.xyzw = saturate(r6.xyzw * cb2[1].xyzw + r7.xyzw);
  r6.xyzw = r6.xyzw * r6.xyzw;
  o5.xyzw = cb2[0].xyzw * r6.xyzw;
  r1.x = 0.0799999982 * r1.w;
  r6.xyz = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r6.xyz = r1.yyy * r6.xyz + r1.xxx;
  r7.xyz = -r5.xyz * r1.yyy + r5.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.xxx ? r8.xyz : r7.xyz;
  r6.xyz = r1.xxx ? float3(0,0,0) : r6.xyz;
  r1.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.z = r1.x * 2.04040003 + -0.332399994;
  r1.z = r1.x * -4.79510021 + r1.z;
  r1.x = r1.x * 2.75519991 + r1.z;
  r1.x = 1.33200002 + r1.x;
  r1.x = max(1, r1.x);
  r8.xy = float2(1,0.5) * v5.xy;
  r8.zw = v5.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t1.Sample(s0_s, r8.xy).xyzw;
  r8.xyzw = t1.Sample(s0_s, r8.zw).xyzw;
  r1.z = r8.w * 0.00392156886 + r9.w;
  r1.z = -0.00196078443 + r1.z;
  r1.z = r1.z * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r1.z = exp2(r1.z);
  r1.z = -0.0185813606 + r1.z;
  r8.xyzw = r8.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r2.x = dot(r8.xyzw, r4.xyzw);
  r2.x = max(0, r2.x);
  r1.z = r2.x * r1.z;
  r8.xyz = r1.zzz * r9.xyz;
  r1.z = cmp(cb0[186].y != 0.000000);
  if (r1.z != 0) {
    r9.xyzw = t2.Sample(s0_s, v5.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r1.z = dot(r9.xyz, r9.xyz);
    r1.z = rsqrt(r1.z);
    r9.xyz = r9.xyz * r1.zzz;
    r1.z = -r9.w * r9.w + 1;
    r1.z = -r1.z * r1.z + 1;
    r0.xyz = r0.zxy * r0.www + -r9.xyz;
    r0.xyz = r1.zzz * r0.xyz + r9.xyz;
    r2.x = saturate(dot(r9.yzx, r4.xyz));
    r3.w = 1 + -r2.x;
    r10.y = r1.z * r3.w + r2.x;
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
  r8.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r2.xyz = max(float3(0,0,0), r2.yzw);
  r1.z = cmp(0 < cb0[140].x);
  if (r1.z != 0) {
    r7.xyz = -cb1[5].xyz + r3.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r1.z = (int)r7.y | (int)r7.x;
    r1.z = (int)r7.z | (int)r1.z;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.zzz ? r3.xyz : r2.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.z = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.z = frac(r1.z);
  r1.z = -0.5 + r1.z;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.x;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.z * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r1.yw;
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}