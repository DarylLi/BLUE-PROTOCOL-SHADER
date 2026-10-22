// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb5[15];
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
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xyzw = cb5[8].xxww * v3.xyxy;
  r0.w = cb5[8].y + cb0[143].y;
  r4.xy = t3.SampleBias(s1_s, r3.xy, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[8].zzz * r5.xyz + r4.xyz;
  r1.w = 1 + r4.z;
  r2.w = dot(-cb1[0].xyz, -cb1[0].xyz);
  r2.w = sqrt(r2.w);
  r5.x = dot(-cb1[1].xyz, -cb1[1].xyz);
  r5.x = sqrt(r5.x);
  r2.w = r5.x + r2.w;
  r5.x = dot(-cb1[2].xyz, -cb1[2].xyz);
  r5.x = sqrt(r5.x);
  r2.w = r5.x + r2.w;
  r2.w = 0.333333343 * r2.w;
  r3.zw = r3.zw * r2.ww;
  r3.zw = t4.SampleBias(s2_s, r3.zw, r0.w).xy;
  r5.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r5.z = sqrt(r2.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[9].xxx * r6.xyz + r5.xyz;
  r4.w = 1 + r4.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r2.w = dot(r4.xyw, r5.xyz);
  r5.xyz = r5.xyz * r1.www;
  r5.xyz = r4.xyw * r2.www + -r5.xyz;
  r6.xyz = -cb0[67].xyz + r2.xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r1.w = saturate(r1.w / cb5[9].y);
  r1.w = 1 + -r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[9].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r1.w = max(cb5[9].w, r1.w);
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = r1.www * r5.xyz + r4.xyz;
  r3.zw = cb5[10].xx * r3.xy;
  r5.xy = t5.SampleBias(s3_s, r3.zw, r0.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb5[10].yyy * r6.xyz + r5.xyz;
  r5.xyz = cb5[10].zzz * r4.xyz + r5.xyz;
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = v2.yyy * r5.xyz + r4.xyz;
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
  r1.w = dot(-cb4[5].xyz, -cb4[5].xyz);
  r1.w = sqrt(r1.w);
  r5.xyz = -cb4[5].xyz / r1.www;
  r1.w = dot(r5.yzx, r4.xyz);
  r1.w = 1 + r1.w;
  r6.xyz = cb0[67].xyz + -r2.xyz;
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = sqrt(r2.w);
  r6.xyz = r6.xyz / r2.www;
  r2.w = saturate(dot(-r6.xyz, r5.xyz));
  r5.x = 1 + -cb3[1].x;
  r2.w = saturate(r5.x + r2.w);
  r1.w = r2.w * r1.w;
  r1.x = dot(r4.zxy, r1.xyz);
  r1.x = max(0, r1.x);
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-005, abs(r1.x));
  r1.x = log2(r1.x);
  r1.y = cb3[1].y * r1.x;
  r1.y = exp2(r1.y);
  r1.z = 1 + -cb3[0].w;
  r1.y = r1.y * r1.z + cb3[0].w;
  r1.z = cmp(r1.y >= cb3[0].y);
  r1.z = r1.z ? 1.000000 : 0;
  r1.y = r1.z * r1.y;
  r1.z = r0.y * r0.w + 1;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[0].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.z = -r0.y * r0.w + 1;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[1].z * r1.z;
  r1.z = exp2(r1.z);
  r1.z = min(1, r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.y = r1.y * r1.z;
  r1.y = cb3[0].z * r1.y;
  r1.z = r1.w * r1.y;
  r5.yzw = cb4[4].xyz * r1.zzz;
  r1.z = dot(-cb4[8].xyz, -cb4[8].xyz);
  r1.z = sqrt(r1.z);
  r7.xyz = -cb4[8].xyz / r1.zzz;
  r1.z = dot(r7.yzx, r4.xyz);
  r1.z = 1 + r1.z;
  r1.w = saturate(dot(-r6.xyz, r7.xyz));
  r1.w = saturate(r1.w + r5.x);
  r1.z = r1.z * r1.w;
  r1.y = r1.z * r1.y;
  r1.yzw = cb4[9].xyz * r1.yyy;
  r1.yzw = cb4[1].yyy * r1.yzw;
  r1.yzw = r5.yzw * cb4[1].xxx + r1.yzw;
  r1.yzw = cb3[2].xyz * r1.yzw;
  r5.xyz = cb5[2].xyz * r1.yzw;
  r1.yzw = -r1.yzw * cb5[2].xyz + cb5[3].xyz;
  r1.yzw = cb5[10].www * r1.yzw + r5.xyz;
  r5.xyz = t6.SampleBias(s4_s, r3.xy, cb0[143].y).xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r2.www + -r5.xyz;
  r5.xyz = cb5[11].zzz * r6.xyz + r5.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb5[11].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb5[5].xyz * r5.xyz;
  r6.xyz = t7.SampleBias(s5_s, r3.zw, cb0[143].y).xyz;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb5[12].yyy * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[12].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = r6.xyz * cb5[7].xyz + -r5.xyz;
  r5.xyz = v2.yyy * r6.xyz + r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r3.xy = t8.SampleBias(s6_s, r3.xy, cb0[143].y).yx;
  r3.y = saturate(cb5[12].z + r3.y);
  r3.zw = t9.SampleBias(s7_s, r3.zw, cb0[143].y).yx;
  r3.w = saturate(cb5[12].w + r3.w);
  r3.zw = r3.zw + -r3.xy;
  r3.xy = saturate(v2.yy * r3.zw + r3.xy);
  r1.x = cb5[13].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.x * 0.959999979 + 0.0399999991;
  r1.x = cb5[13].y * r1.x;
  r2.w = saturate(cb5[13].w + v1.z);
  r1.x = r2.w * r1.x;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.x = min(0.5, r1.x);
  r1.x = saturate(cb5[14].x * r1.x);
  r5.xyz = min(float3(1,1,1), r5.xyz);
  o2.z = r3.y * cb0[139].y + cb0[139].x;
  r2.w = 0.0799999982 * r1.x;
  r3.yzw = -r1.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r3.yzw = r3.xxx * r3.yzw + r2.www;
  r6.xyz = -r5.xyz * r3.xxx + r5.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r3.yzw = r3.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r3.yzw = r2.www ? float3(0,0,0) : r3.yzw;
  r2.w = dot(r3.yzw, float3(0.300000012,0.589999974,0.109999999));
  r5.w = r2.w * 2.04040003 + -0.332399994;
  r5.w = r2.w * -4.79510021 + r5.w;
  r2.w = r2.w * 2.75519991 + r5.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r7.xy = float2(1,0.5) * v4.xy;
  r7.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t1.Sample(s0_s, r7.xy).xyzw;
  r7.xyzw = t1.Sample(s0_s, r7.zw).xyzw;
  r5.w = r7.w * 0.00392156886 + r8.w;
  r5.w = -0.00196078443 + r5.w;
  r5.w = r5.w * cb2[4].w + cb2[6].w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * cb2[4].xyz + cb2[6].xyz;
  r5.w = exp2(r5.w);
  r5.w = -0.0185813606 + r5.w;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r4.w = dot(r7.xyzw, r4.xyzw);
  r4.w = max(0, r4.w);
  r4.w = r5.w * r4.w;
  r7.xyz = r4.www * r8.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r8.xyzw = t2.Sample(s0_s, v4.xy).xyzw;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.x = r8.w * r8.w;
    r4.w = dot(r8.xyz, r8.xyz);
    r4.w = rsqrt(r4.w);
    r8.xyz = r8.xyz * r4.www;
    r4.w = -r8.w * r8.w + 1;
    r4.w = -r4.w * r4.w + 1;
    r0.xyz = r0.zxy * r0.www + -r8.xyz;
    r0.xyz = r4.www * r0.xyz + r8.xyz;
    r5.w = saturate(dot(r8.yzx, r4.xyz));
    r6.w = 1 + -r5.w;
    r9.y = r4.w * r6.w + r5.w;
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
  r0.xyz = r0.xyz * r6.xyz;
  r7.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r0.xyz = r7.xyz * r0.xyz;
  r3.yzw = r3.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r4.w = (int)r6.y | (int)r6.x;
    r4.w = (int)r6.z | (int)r4.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.yzw = r4.www ? r2.xyz : r1.yzw;
  }
  r0.xyz = cb0[145].yyy * r3.yzw + r0.xyz;
  r0.xyz = r0.xyz + r1.yzw;
  r1.yzw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.yzw = frac(r1.yzw);
  r1.yzw = r1.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.yzw = r1.yzw * r1.yzz;
  r1.y = dot(r1.yzw, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r3.x;
  o2.w = 0.75686276;
  o2.y = r1.x;
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}