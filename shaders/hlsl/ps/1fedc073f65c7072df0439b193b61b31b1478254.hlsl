// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb5[34];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[2];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v6.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = r3.xy / cb5[16].yy;
  r1.z = t4.SampleBias(s1_s, r1.zw, cb0[143].y).x;
  r1.w = cb5[16].z + -cb5[16].w;
  r1.z = saturate(r1.z * r1.w + cb5[16].w);
  r1.z = cb5[17].x + r1.z;
  r1.z = r1.z * -cb5[17].y + cb5[17].y;
  r4.xyz = -cb0[67].xyz + r3.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = sqrt(r1.w);
  r2.w = cb5[17].w * r1.w;
  r1.z = r1.z * r2.w + cb0[143].y;
  r4.xy = t5.SampleBias(s2_s, v3.xy, r1.z).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[18].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r4.xyz = r0.xyz * r0.www;
  r5.xyz = cb5[18].yyy * cb5[1].xyz;
  r6.xyzw = t6.SampleBias(s3_s, v3.xy, r1.z).xyzw;
  r1.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.zzz + -r6.xyz;
  r6.xyz = cb5[19].xxx * r7.xyz + r6.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[18].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = cb5[3].xyz * r6.xyz;
  r1.z = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r2.w = 1 + -r1.z;
  r2.w = r2.w + r2.w;
  r8.xyz = -r2.www * cb5[6].xyz + float3(1,1,1);
  r2.w = r1.z + r1.z;
  r9.xyz = cb5[5].xyz * r2.www;
  r1.z = cmp(r1.z >= 0.5);
  r8.xyz = r1.zzz ? r8.xyz : r9.xyz;
  r9.xyz = cb5[5].xyz + -r8.xyz;
  r8.xyz = cb5[19].yyy * r9.xyz + r8.xyz;
  r1.z = r1.w / cb5[19].z;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb5[19].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r6.xyz = -r6.xyz * cb5[3].xyz + r8.xyz;
  r6.xyz = r6.xyz * r1.zzz;
  r6.xyz = cb5[20].xxx * r6.xyz + r7.xyz;
  r7.xy = r3.xy / cb5[21].xx;
  r7.xy = float2(-0.5,-0.5) + r7.xy;
  r8.x = dot(r7.xy, cb5[9].xy);
  r8.y = dot(r7.xy, cb5[10].xy);
  r7.xy = cb0[142].zz * cb5[20].zw + r8.xy;
  r7.xy = float2(0.5,0.5) + r7.xy;
  r1.z = t7.SampleBias(s4_s, r7.xy, cb0[143].y).x;
  r1.z = cb5[22].z * r1.z;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb5[22].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r2.w = cb5[23].y * cb0[142].z;
  r7.xy = r3.xy / cb5[23].ww;
  r7.xy = r2.ww * float2(0.353553385,-0.353553385) + r7.xy;
  r7.xy = float2(0.5,0.5) + r7.xy;
  r7.xy = frac(r7.xy);
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r7.zw = -abs(r7.xy) * float2(2,2) + float2(3,3);
  r7.xy = abs(r7.xy) * abs(r7.xy);
  r7.xy = r7.xy * r7.zw;
  r3.w = dot(float2(-0.707106769,0.707106769), r7.xy);
  r7.xyz = r3.xyz / cb5[24].zzz;
  r7.xyz = r2.www * float3(-0.5,-0.5,-0.5) + r7.xyz;
  r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
  r7.xyz = frac(r7.xyz);
  r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r8.xyz = -abs(r7.xyz) * float3(2,2,2) + float3(3,3,3);
  r7.xyz = abs(r7.xyz) * abs(r7.xyz);
  r7.xyz = r7.xyz * r8.xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r3.w + r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = cb5[24].w * r2.w;
  r2.w = -7.07106781 * r2.w;
  r3.w = 0.5 + cb0[142].z;
  r3.w = cb5[25].x * r3.w;
  r3.w = 6.28318548 * r3.w;
  r3.w = sin(r3.w);
  r3.w = r3.w * 0.5 + 0.75;
  r7.xy = cb5[25].xw * cb0[142].zz;
  r5.w = 6.28318548 * r7.x;
  r5.w = sin(r5.w);
  r5.w = r5.w * 0.5 + 0.75;
  r7.z = cb5[26].x * cb0[142].z;
  r7.xw = r3.xy / cb5[26].yy;
  r7.xy = r7.yz + r7.xw;
  r7.x = t8.SampleBias(s5_s, r7.xy, cb0[143].y).x;
  r7.x = cb5[26].z * r7.x;
  r7.y = cmp(0 >= r7.x);
  r7.x = log2(r7.x);
  r7.x = cb5[26].w * r7.x;
  r7.x = exp2(r7.x);
  r7.x = r7.y ? 0 : r7.x;
  r7.x = saturate(cb5[27].x + r7.x);
  r5.w = r5.w + -r3.w;
  r3.w = r7.x * r5.w + r3.w;
  r3.w = cb5[27].y * r3.w;
  r3.w = cb5[27].z * r3.w;
  r2.w = r2.w * r3.w + 1;
  r3.w = 1 + -v3.y;
  r2.w = -r2.w * r3.w + 1;
  r2.w = cb5[27].w * r2.w;
  r3.w = cmp(0 >= abs(r2.w));
  r2.w = log2(abs(r2.w));
  r2.w = cb5[28].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r3.w = r1.w / cb5[28].y;
  r5.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb5[28].z * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r5.w ? -0 : -r3.w;
  r2.w = r3.w + r2.w;
  r2.w = 1 + r2.w;
  r2.w = min(1, r2.w);
  r3.w = -cb5[29].x + cb5[28].w;
  r2.w = r2.w * r3.w + cb5[29].x;
  r2.w = 1 + -r2.w;
  r1.z = r2.w * r1.z;
  r7.xyz = cb5[12].xyz * r1.zzz;
  r1.z = cb1[18].x + cb1[18].y;
  r1.z = cb1[18].z + r1.z;
  r1.z = frac(r1.z);
  r1.z = cb0[142].z + r1.z;
  r1.z = v2.x + r1.z;
  r1.z = cb3[2].x * r1.z;
  r1.z = cb5[29].y * r1.z;
  r8.xy = r1.zz * cb5[30].xy + v3.xy;
  r8.xyz = t9.SampleBias(s6_s, r8.xy, cb0[143].y).xyz;
  r6.xyz = r8.xyz * r7.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.z = dot(r4.zxy, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb5[30].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb5[30].w * r1.z;
  r2.x = saturate(cb5[31].y + v1.z);
  r1.z = r2.x * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r1.z = saturate(cb5[31].z * r1.z);
  r2.xy = r3.xy / cb5[31].ww;
  r2.x = t4.SampleBias(s1_s, r2.xy, cb0[143].y).x;
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb5[32].x * r2.x;
  r2.x = exp2(r2.x);
  r2.x = cb5[32].y * r2.x;
  r2.x = r2.y ? -0 : -r2.x;
  r2.x = cb5[32].w + r2.x;
  r2.x = 1 + r2.x;
  r1.w = r1.w / cb5[33].x;
  r2.y = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[33].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.y ? 0 : r1.w;
  r1.w = saturate(r2.x * r1.w);
  r1.w = 1 + -r1.w;
  r1.w = r6.w * r1.w;
  r2.x = cb5[33].z * cb4[1].w;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cb5[33].w + r1.x;
  r2.yz = float2(0.649999976,0.487499982) * cb4[1].ww;
  r2.w = cb4[1].w * 0.617499948 + -r1.x;
  r2.z = saturate(r2.w / r2.z);
  r2.w = -cb4[1].w * 0.649999976 + 8000;
  r2.y = r2.z * r2.w + r2.y;
  r1.y = r1.y / r2.y;
  r1.x = r1.x / cb5[33].w;
  r2.y = cmp(9.99999975e-006 < abs(r2.x));
  r2.x = cmp(r2.x >= 0);
  r1.y = r2.x ? r1.y : r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb5[33].z));
  r2.x = 1 + cb5[33].z;
  r1.y = r1.y ? r2.x : 1.39999998;
  r2.xyz = -cb0[129].xxy + v5.xxy;
  r2.x = r2.x * cb0[130].z + -0.469999999;
  r2.x = 4.93230057 * r2.x;
  r2.x = cos(r2.x);
  r2.x = 0.899999976 + r2.x;
  r2.x = saturate(0.555555582 * r2.x);
  r1.y = -r2.x + r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r2.w = (uint)r2.w << 1;
  r2.x = (int)r2.w + (int)r2.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r2.yz = float2(0.015625,0.015625) * r2.yz;
  r2.y = t10.SampleBias(s7_s, r2.yz, cb0[143].y).x;
  r2.x = r2.x + r2.y;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r1.w * r1.x;
  r1.y = cmp(0.00100000005 < abs(v2.w));
  r2.xy = floor(v5.xy);
  r1.w = dot(r2.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r2.x = cmp(v2.w < 0);
  r2.y = 1 + v2.w;
  r2.y = cmp(r1.w < r2.y);
  r1.w = cmp(v2.w < r1.w);
  r1.w = r2.x ? r2.y : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r1.y = r1.y ? r1.w : 0;
  if (r1.y != 0) discard;
  r1.x = r1.x * v2.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r6.xyz);
  r2.x = saturate(cb5[28].w);
  o2.z = r2.x * cb0[139].y + cb0[139].x;
  r2.xyzw = t3.Sample(s0_s, v4.zw).xyzw;
  r6.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r2.xyzw = saturate(r2.xyzw * cb2[1].xyzw + r6.xyzw);
  r2.xyzw = r2.xyzw * r2.xyzw;
  o5.xyzw = cb2[0].xyzw * r2.xyzw;
  r2.x = cb0[137].w * r1.z;
  r2.yzw = r1.xyw * cb0[136].www + cb0[136].xyz;
  r6.xyz = r2.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r2.x = cmp(0 != cb0[183].w);
  r7.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r2.yzw;
  r2.yzw = r2.xxx ? r7.xyz : r2.yzw;
  r6.xyz = r2.xxx ? float3(0,0,0) : r6.xyz;
  r2.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.x * 2.04040003 + -0.332399994;
  r3.w = r2.x * -4.79510021 + r3.w;
  r2.x = r2.x * 2.75519991 + r3.w;
  r2.x = 1.33200002 + r2.x;
  r2.x = max(1, r2.x);
  r7.xy = float2(1,0.5) * v4.xy;
  r7.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t1.Sample(s0_s, r7.xy).xyzw;
  r7.xyzw = t1.Sample(s0_s, r7.zw).xyzw;
  r3.w = r7.w * 0.00392156886 + r8.w;
  r3.w = -0.00196078443 + r3.w;
  r3.w = r3.w * cb2[4].w + cb2[6].w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * cb2[4].xyz + cb2[6].xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r4.w = dot(r7.xyzw, r4.xyzw);
  r4.w = max(0, r4.w);
  r3.w = r4.w * r3.w;
  r7.xyz = r3.www * r8.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r8.xyzw = t2.Sample(s0_s, v4.xy).xyzw;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.x = r8.w * r8.w;
    r3.w = dot(r8.xyz, r8.xyz);
    r3.w = rsqrt(r3.w);
    r8.xyz = r8.xyz * r3.www;
    r3.w = -r8.w * r8.w + 1;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.zxy * r0.www + -r8.xyz;
    r0.xyz = r3.www * r0.xyz + r8.xyz;
    r4.w = saturate(dot(r8.yzx, r4.xyz));
    r5.w = 1 + -r4.w;
    r9.y = r3.w * r5.w + r4.w;
  } else {
    r0.xyz = r4.zxy;
    r9.xy = float2(1,1);
  }
  r8.x = t0[0].val[0/4];
  r8.y = t0[0].val[0/4+1];
  r8.z = t0[0].val[0/4+2];
  r8.w = t0[0].val[0/4+3];
  r0.w = 1;
  r8.x = dot(r8.xyzw, r0.xyzw);
  r10.x = t0[1].val[0/4];
  r10.y = t0[1].val[0/4+1];
  r10.z = t0[1].val[0/4+2];
  r10.w = t0[1].val[0/4+3];
  r8.y = dot(r10.xyzw, r0.xyzw);
  r10.x = t0[2].val[0/4];
  r10.y = t0[2].val[0/4+1];
  r10.z = t0[2].val[0/4+2];
  r10.w = t0[2].val[0/4+3];
  r8.z = dot(r10.xyzw, r0.xyzw);
  r10.xyzw = r0.xyzz * r0.yzzx;
  r11.x = t0[3].val[0/4];
  r11.y = t0[3].val[0/4+1];
  r11.z = t0[3].val[0/4+2];
  r11.w = t0[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t0[4].val[0/4];
  r12.y = t0[4].val[0/4+1];
  r12.z = t0[4].val[0/4+2];
  r12.w = t0[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t0[5].val[0/4];
  r12.y = t0[5].val[0/4+1];
  r12.z = t0[5].val[0/4+2];
  r12.w = t0[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t0[6].val[0/4];
  r0.z = t0[6].val[0/4+1];
  r0.w = t0[6].val[0/4+2];
  r8.xyz = r11.xyz + r8.xyz;
  r0.xyz = r0.yzw * r0.xxx + r8.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r7.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyzw = r0.xyzw * r2.yzwx;
  r7.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r0.xyz = r7.xyz * r0.xyz;
  r2.yzw = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r2.yzw;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r3.www ? r3.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r2.yzw + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r2.y = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r2.y = frac(r2.y);
  r2.y = -0.5 + r2.y;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.z;
  o3.xyz = r1.xyw;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}