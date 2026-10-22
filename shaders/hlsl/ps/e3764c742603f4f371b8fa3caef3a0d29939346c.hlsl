// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[13];
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
  r1.zw = mad((int2)v3.xx, int2(36,36), int2(4,20));
  r0.w = t2[r1.z].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r4.xy = cb3[5].xx * v2.xy;
  r1.z = cb3[5].y + cb0[143].y;
  r4.zw = t4.SampleBias(s1_s, r4.xy, r1.z).xy;
  r5.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r5.xy, r5.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r5.z = sqrt(r1.z);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[5].zzz * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyz = r5.xyz * r1.zzz;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r5.yzw = r0.xyz * r0.www;
  r6.xyz = cb3[5].www * cb3[1].xyz;
  r7.xyzw = t5.SampleBias(s2_s, r4.xy, cb0[143].y).xyzw;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.zzz + -r7.xyz;
  r7.xyz = cb3[6].zzz * r8.xyz + r7.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[6].y, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb3[3].xyz * r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r4.xy = t6.SampleBias(s3_s, r4.xy, cb0[143].y).xy;
  r1.z = cmp(0 >= r4.x);
  r2.w = log2(r4.x);
  r2.w = cb3[6].w * r2.w;
  r2.w = exp2(r2.w);
  r1.z = r1.z ? 0 : r2.w;
  r1.z = saturate(cb3[7].x + r1.z);
  r4.x = saturate(cb3[7].y + r4.y);
  r2.x = dot(r5.yzw, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.x = cb3[7].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * 0.959999979 + 0.0399999991;
  r2.x = cb3[7].w * r2.x;
  r2.y = saturate(cb3[8].y + v1.z);
  r2.x = r2.y * r2.x;
  r2.x = max(0, r2.x);
  r2.x = min(0.5, r2.x);
  r4.y = saturate(cb3[8].z * r2.x);
  r2.x = cb3[8].w * cb2[1].w;
  r2.y = cmp(cb0[31].w < 1);
  r2.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.z + r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cb3[9].x + r1.x;
  r2.yz = float2(0.649999976,0.487499982) * cb2[1].ww;
  r2.w = cb2[1].w * 0.617499948 + -r1.x;
  r2.z = saturate(r2.w / r2.z);
  r2.w = -cb2[1].w * 0.649999976 + 8000;
  r2.y = r2.z * r2.w + r2.y;
  r1.y = r1.y / r2.y;
  r1.x = r1.x / cb3[9].x;
  r2.y = cmp(9.99999975e-006 < abs(r2.x));
  r2.x = cmp(r2.x >= 0);
  r1.y = r2.x ? r1.y : r1.x;
  r1.x = r2.y ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[8].w));
  r2.x = 1 + cb3[8].w;
  r1.y = r1.y ? r2.x : 1.39999998;
  r2.xyz = -cb0[129].xxy + v4.xxy;
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
  r2.y = t7.SampleBias(s4_s, r2.yz, cb0[143].y).x;
  r2.x = r2.x + r2.y;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r7.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r7.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  o4.w = saturate(r7.w);
  r1.x = cmp(0 < cb0[215].x);
  r1.y = t2[r1.w].val[4/4];
  r1.z = t2[r1.w].val[4/4+1];
  r1.z = cmp(0 < r1.z);
  if (r1.z != 0) {
    r7.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.xyz = min(float3(0.99000001,0.99000001,0.99000001), r7.xyz);
    r7.xyz = cb0[213].xyz * r7.xyz;
    r8.xyz = (int3)r7.xyz;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r1.z = 1 + cb0[213].w;
    r7.xyz = r7.xyz / r8.www;
    r7.xyz = frac(r7.xyz);
    r7.xyz = cb0[213].www * r7.xyz;
    r7.xyz = r8.xyz * r1.zzz + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
    r7.xyz = cb0[214].xyz * r7.xyz;
    r1.z = t1.SampleLevel(s0_s, r7.xyz, 0).x;
  } else {
    r1.w = mad((int)v3.x, 36, 18);
    r1.w = t2[r1.w].val[12/4];
    r1.w = cmp(0 < r1.w);
    r1.w = r1.x ? r1.w : 0;
    r1.z = r1.w ? cb1[5].x : 1;
  }
  r7.xyz = saturate(cb0[136].xyz);
  o4.xyz = sqrt(r7.xyz);
  r1.w = 0.0799999982 * r4.y;
  r7.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r7.xyz = r4.xxx * r7.xyz + r1.www;
  r8.xyz = -r2.xyz * r4.xxx + r2.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.www ? r9.xyz : r8.xyz;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r9.xyz = cb0[136].xyz + r8.xyz;
  r10.xyz = r5.zwz * r5.zwy;
  r11.yw = r5.ww * r5.zy;
  r2.w = r5.y * r5.y + -r10.x;
  r12.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.zwy;
  r11.xz = r10.zy * float2(1,3) + float2(0,-1);
  r10.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r11.xyzw;
  r2.w = 0.429042608 * r2.w;
  r12.x = 0.886227548;
  r3.w = dot(cb1[6].xyzw, r12.xyzw);
  r4.z = dot(cb1[9].xyzw, r10.xyzw);
  r3.w = r4.z + r3.w;
  r11.x = cb1[12].x * r2.w + r3.w;
  r3.w = dot(cb1[7].xyzw, r12.xyzw);
  r4.z = dot(cb1[10].xyzw, r10.xyzw);
  r3.w = r4.z + r3.w;
  r11.y = cb1[12].y * r2.w + r3.w;
  r3.w = dot(cb1[8].xyzw, r12.xyzw);
  r4.z = dot(cb1[11].xyzw, r10.xyzw);
  r3.w = r4.z + r3.w;
  r11.z = cb1[12].z * r2.w + r3.w;
  r10.xyz = max(float3(0,0,0), r11.xyz);
  r10.xyz = r1.xxx ? r10.xyz : 0;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r5.x = 1;
    r11.xyzw = r1.xxxx ? cb1[4].wxyz : r5.xyzw;
    r1.x = 1 + -r11.x;
    r1.x = -r1.x * r1.x + 1;
    r0.xyz = r0.xyz * r0.www + -r11.yzw;
    r0.xyz = r1.xxx * r0.xyz + r11.yzw;
    r2.w = saturate(dot(r11.yzw, r5.yzw));
    r3.w = 1 + -r2.w;
    r11.y = r1.x * r3.w + r2.w;
  } else {
    r0.xyz = r5.yzw;
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
  r9.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r0.xyz = r9.xyz * r0.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r4.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r8.x = t2[r4.z].val[0/4];
    r8.y = t2[r4.z].val[0/4+1];
    r8.z = t2[r4.z].val[0/4+2];
    r8.xyz = -r8.xyz + r3.xyz;
    r9.x = t2[r4.w].val[0/4];
    r9.y = t2[r4.w].val[0/4+1];
    r9.z = t2[r4.w].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r8.xyz = cmp(r9.xyz < abs(r8.xyz));
    r1.x = (int)r8.y | (int)r8.x;
    r1.x = (int)r8.z | (int)r1.x;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r6.xyz = r1.xxx ? r3.xyz : r6.xyz;
  }
  r0.xyz = cb0[145].yyy * r7.xyz + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r1.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r1.y;
  o2.w = 0.509803951;
  o2.xy = r4.xy;
  o3.xyz = r2.xyz;
  o5.x = r1.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}