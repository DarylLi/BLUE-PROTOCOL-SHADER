// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[216];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb2[4].xx * v2.xy;
  r0.w = cb2[4].y + cb0[143].y;
  r4.xy = t7.SampleBias(s2_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[4].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r4.yzw = r0.xyz * r0.www;
  r5.xyz = cb2[4].www * cb2[1].xyz;
  r6.xyzw = t8.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb2[5].zzz * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb2[5].y, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb2[3].xyz * r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.zw = t9.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[5].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.z = saturate(cb2[6].x + r1.z);
  r7.x = saturate(cb2[6].y + r1.w);
  r1.w = dot(r4.yzw, r2.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb2[6].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb2[6].w * r1.w;
  r2.x = saturate(cb2[7].y + v1.z);
  r1.w = r2.x * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r7.y = saturate(cb2[7].z * r1.w);
  r1.w = cmp(cb0[31].w < 1);
  r2.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.x + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.x = r1.x / cb2[7].w;
  r2.xyz = -cb0[129].xxy + v4.xxy;
  r1.y = r2.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb2[8].y + -r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r1.w = (uint)r2.w << 1;
  r1.w = (int)r1.w + (int)r2.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r2.xy = float2(0.015625,0.015625) * r2.yz;
  r2.x = t10.SampleBias(s5_s, r2.xy, cb0[143].y).x;
  r1.w = r2.x + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r6.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r6.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  o4.w = saturate(r6.w);
  r1.z = mad((int)v3.x, 36, 20);
  r2.x = cmp(0 < cb0[215].x);
  r2.y = t2[r1.z].val[4/4];
  r2.z = t2[r1.z].val[4/4+1];
  r1.z = cmp(0 < r2.z);
  if (r1.z != 0) {
    r6.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r8.xyz = (int3)r6.xyz;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r1.z = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r8.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r8.xyz * r1.zzz + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r1.z = t1.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r2.z = mad((int)v3.x, 36, 18);
    r2.z = t2[r2.z].val[12/4];
    r2.z = cmp(0 < r2.z);
    r2.z = r2.x ? r2.z : 0;
    r1.z = r2.z ? cb1[5].x : 1;
  }
  r6.xyz = saturate(cb0[136].xyz);
  o4.xyz = sqrt(r6.xyz);
  r2.z = 0.0799999982 * r7.y;
  r6.xyz = -r7.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyw;
  r6.xyz = r7.xxx * r6.xyz + r2.zzz;
  r8.xyz = -r1.xyw * r7.xxx + r1.xyw;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r2.z = cmp(0 != cb0[183].w);
  r9.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r2.zzz ? r9.xyz : r8.xyz;
  r6.xyz = r2.zzz ? float3(0,0,0) : r6.xyz;
  r2.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r2.z * 2.04040003 + -0.332399994;
  r2.w = r2.z * -4.79510021 + r2.w;
  r2.z = r2.z * 2.75519991 + r2.w;
  r2.z = 1.33200002 + r2.z;
  r2.z = max(1, r2.z);
  r9.xyz = cb0[136].xyz + r8.xyz;
  if (r2.x != 0) {
    r10.xyz = r3.xyz * cb1[1].xyz + cb1[0].xyz;
    r10.xyz = max(cb1[2].xyz, r10.xyz);
    r10.xyz = min(cb1[3].xyz, r10.xyz);
    r11.xyzw = t4.Sample(s1_s, r10.xyz).xyzw;
    r12.xyzw = t5.Sample(s0_s, r10.xyz).xyzw;
    r10.xyzw = t6.Sample(s0_s, r10.xyz).xyzw;
    r13.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
    r14.xw = r11.xw;
    r14.y = r12.x;
    r14.z = r10.x;
    r13.x = 0.886227548;
    r14.x = dot(r14.xyzw, r13.xyzw);
    r15.x = r11.y;
    r15.yw = r12.yw;
    r15.z = r10.y;
    r14.y = dot(r15.xyzw, r13.xyzw);
    r10.x = r11.z;
    r10.y = r12.z;
    r14.z = dot(r10.xyzw, r13.xyzw);
    r10.xyz = max(float3(0,0,0), r14.xyz);
    r10.xyz = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
  } else {
    r10.xyz = float3(0,0,0);
  }
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r4.x = 1;
    r11.xyzw = r2.xxxx ? cb1[4].wxyz : r4.xyzw;
    r2.x = 1 + -r11.x;
    r2.x = -r2.x * r2.x + 1;
    r0.xyz = r0.xyz * r0.www + -r11.yzw;
    r0.xyz = r2.xxx * r0.xyz + r11.yzw;
    r2.w = saturate(dot(r11.yzw, r4.yzw));
    r3.w = 1 + -r2.w;
    r11.y = r2.x * r3.w + r2.w;
  } else {
    r0.xyz = r4.yzw;
    r11.xy = float2(1,1);
  }
  r12.x = t3[0].val[0/4];
  r12.y = t3[0].val[0/4+1];
  r12.z = t3[0].val[0/4+2];
  r12.w = t3[0].val[0/4+3];
  r0.w = 1;
  r12.x = dot(r12.xyzw, r0.xyzw);
  r13.x = t3[1].val[0/4];
  r13.y = t3[1].val[0/4+1];
  r13.z = t3[1].val[0/4+2];
  r13.w = t3[1].val[0/4+3];
  r12.y = dot(r13.xyzw, r0.xyzw);
  r13.x = t3[2].val[0/4];
  r13.y = t3[2].val[0/4+1];
  r13.z = t3[2].val[0/4+2];
  r13.w = t3[2].val[0/4+3];
  r12.z = dot(r13.xyzw, r0.xyzw);
  r13.xyzw = r0.xyzz * r0.yzzx;
  r14.x = t3[3].val[0/4];
  r14.y = t3[3].val[0/4+1];
  r14.z = t3[3].val[0/4+2];
  r14.w = t3[3].val[0/4+3];
  r14.x = dot(r14.xyzw, r13.xyzw);
  r15.x = t3[4].val[0/4];
  r15.y = t3[4].val[0/4+1];
  r15.z = t3[4].val[0/4+2];
  r15.w = t3[4].val[0/4+3];
  r14.y = dot(r15.xyzw, r13.xyzw);
  r15.x = t3[5].val[0/4];
  r15.y = t3[5].val[0/4+1];
  r15.z = t3[5].val[0/4+2];
  r15.w = t3[5].val[0/4+3];
  r14.z = dot(r15.xyzw, r13.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r12.xyz = r14.xyz + r12.xyz;
  r0.xyz = r0.yzw * r0.xxx + r12.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r11.x * r11.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r10.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r9.xyz;
  r9.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r0.xyz = r9.xyz * r0.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.x = cmp(0 < cb0[140].x);
  if (r2.x != 0) {
    r2.xw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r8.x = t2[r2.x].val[0/4];
    r8.y = t2[r2.x].val[0/4+1];
    r8.z = t2[r2.x].val[0/4+2];
    r8.xyz = -r8.xyz + r3.xyz;
    r9.x = t2[r2.w].val[0/4];
    r9.y = t2[r2.w].val[0/4+1];
    r9.z = t2[r2.w].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r8.xyz = cmp(r9.xyz < abs(r8.xyz));
    r2.x = (int)r8.y | (int)r8.x;
    r2.x = (int)r8.z | (int)r2.x;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r2.xxx ? r3.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r2.y;
  o2.w = 0.509803951;
  o2.xy = r7.xy;
  o3.xyz = r1.xyw;
  o5.x = r1.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}