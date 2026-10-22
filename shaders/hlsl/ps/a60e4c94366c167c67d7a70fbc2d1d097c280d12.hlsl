// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[20];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
  r1.zw = cb4[14].xx * v2.xy;
  r0.w = cb4[14].y + cb0[143].y;
  r4.xy = t4.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[14].zzz * r5.xyz + r4.xyz;
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
  r2.w = dot(-cb3[5].xyz, -cb3[5].xyz);
  r2.w = sqrt(r2.w);
  r5.xyz = -cb3[5].xyz / r2.www;
  r2.w = dot(r5.xyz, r4.yzw);
  r2.w = 1 + r2.w;
  r6.xyz = cb0[67].xyz + -r3.xyz;
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = sqrt(r3.w);
  r6.xyz = r6.xyz / r3.www;
  r3.w = saturate(dot(-r6.xyz, r5.xyz));
  r5.x = 1 + -cb2[1].x;
  r3.w = saturate(r5.x + r3.w);
  r2.w = r3.w * r2.w;
  r2.x = dot(r4.yzw, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb2[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb2[0].w;
  r2.y = r2.y * r2.z + cb2[0].w;
  r2.z = cmp(r2.y >= cb2[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.z * r0.w + 1;
  r3.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb2[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r3.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.z * r0.w + 1;
  r3.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb2[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r3.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb2[0].z * r2.y;
  r2.z = r2.w * r2.y;
  r5.yzw = cb3[4].xyz * r2.zzz;
  r2.z = dot(-cb3[8].xyz, -cb3[8].xyz);
  r2.z = sqrt(r2.z);
  r7.xyz = -cb3[8].xyz / r2.zzz;
  r2.z = dot(r7.xyz, r4.yzw);
  r2.z = 1 + r2.z;
  r2.w = saturate(dot(-r6.xyz, r7.xyz));
  r2.w = saturate(r2.w + r5.x);
  r2.z = r2.z * r2.w;
  r2.y = r2.z * r2.y;
  r2.yzw = cb3[9].xyz * r2.yyy;
  r2.yzw = cb3[1].yyy * r2.yzw;
  r2.yzw = r5.yzw * cb3[1].xxx + r2.yzw;
  r2.yzw = cb2[2].xyz * r2.yzw;
  r5.xyz = cb4[2].xyz * r2.yzw;
  r3.w = t5.SampleBias(s2_s, v2.xy, cb0[143].y).x;
  r3.w = -1 + r3.w;
  r6.xy = cb4[15].zw + r3.ww;
  r6.xy = saturate(ceil(r6.xy));
  r6.xz = float2(1,1) + -r6.xy;
  r3.w = r6.x * r6.y;
  r2.yzw = -r2.yzw * cb4[2].xyz + cb4[4].xyz;
  r2.yzw = r3.www * r2.yzw + r5.xyz;
  r5.xyz = cb4[5].xyz + -r2.yzw;
  r2.yzw = cb4[16].xxx * r5.xyz + r2.yzw;
  r5.xyzw = t6.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r6.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r6.xxx + -r5.xyz;
  r5.xyz = cb4[16].www * r7.xyz + r5.xyz;
  r6.x = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r6.xxx * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r7.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb4[16].z, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r5.xyz = r5.xyz * r9.xxx + r7.xyz;
  r5.xyz = r6.xxx * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb4[7].xyz * r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r7.xyz = cb4[4].xyz + -r5.xyz;
  r5.xyz = saturate(r3.www * r7.xyz + r5.xyz);
  r1.zw = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r3.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[17].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r3.w ? 0 : r1.z;
  r1.z = saturate(cb4[17].y + r1.z);
  r7.x = saturate(cb4[17].z + r1.w);
  r1.w = cb4[17].w * r2.x;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb4[18].x * r1.w;
  r2.x = saturate(cb4[18].z + v1.z);
  r1.w = r2.x * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r7.y = saturate(cb4[18].w * r1.w);
  r1.w = cb4[19].x * r6.z + r6.y;
  r2.x = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.w + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.x = r1.x / cb4[19].y;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r1.y = r6.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb4[19].w + -r1.y;
  r6.xw = cb0[152].xx + r6.yz;
  r6.xw = (uint2)r6.xw;
  r2.x = (uint)r6.w << 1;
  r2.x = (int)r2.x + (int)r6.x;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r6.xy = float2(0.015625,0.015625) * r6.yz;
  r3.w = t8.SampleBias(s5_s, r6.xy, cb0[143].y).x;
  r2.x = r3.w + r2.x;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r5.w * r1.x;
  r1.x = r1.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r1.x = mad((int)v3.x, 36, 20);
  r1.y = cmp(0 < cb0[215].x);
  r1.x = t2[r1.x].val[4/4];
  r1.z = t2[r1.x].val[4/4+1];
  r1.z = cmp(0 < r1.z);
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
    r1.w = mad((int)v3.x, 36, 18);
    r1.w = t2[r1.w].val[12/4];
    r1.w = cmp(0 < r1.w);
    r1.w = r1.y ? r1.w : 0;
    r1.z = r1.w ? cb1[5].x : 1;
  }
  r1.w = 0.0799999982 * r7.y;
  r6.xyz = -r7.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r6.xyz = r7.xxx * r6.xyz + r1.www;
  r8.xyz = -r5.xyz * r7.xxx + r5.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.www ? r9.xyz : r8.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.x = r1.w * 2.04040003 + -0.332399994;
  r2.x = r1.w * -4.79510021 + r2.x;
  r1.w = r1.w * 2.75519991 + r2.x;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r9.xyz = r4.zwz * r4.zwy;
  r10.yw = r4.ww * r4.zy;
  r2.x = r4.y * r4.y + -r9.x;
  r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
  r10.xz = r9.zy * float2(1,3) + float2(0,-1);
  r9.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r10.xyzw;
  r2.x = 0.429042608 * r2.x;
  r11.x = 0.886227548;
  r3.w = dot(cb1[6].xyzw, r11.xyzw);
  r5.w = dot(cb1[9].xyzw, r9.xyzw);
  r3.w = r5.w + r3.w;
  r10.x = cb1[12].x * r2.x + r3.w;
  r3.w = dot(cb1[7].xyzw, r11.xyzw);
  r5.w = dot(cb1[10].xyzw, r9.xyzw);
  r3.w = r5.w + r3.w;
  r10.y = cb1[12].y * r2.x + r3.w;
  r3.w = dot(cb1[8].xyzw, r11.xyzw);
  r5.w = dot(cb1[11].xyzw, r9.xyzw);
  r3.w = r5.w + r3.w;
  r10.z = cb1[12].z * r2.x + r3.w;
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = r1.yyy ? r9.xyz : 0;
  r2.x = cmp(cb0[186].y != 0.000000);
  if (r2.x != 0) {
    r4.x = 1;
    r10.xyzw = r1.yyyy ? cb1[4].wxyz : r4.xyzw;
    r1.y = 1 + -r10.x;
    r1.y = -r1.y * r1.y + 1;
    r0.xyz = r0.xyz * r0.www + -r10.yzw;
    r0.xyz = r1.yyy * r0.xyz + r10.yzw;
    r2.x = saturate(dot(r10.yzw, r4.yzw));
    r3.w = 1 + -r2.x;
    r10.y = r1.y * r3.w + r2.x;
  } else {
    r0.xyz = r4.yzw;
    r10.xy = float2(1,1);
  }
  r11.x = t3[0].val[0/4];
  r11.y = t3[0].val[0/4+1];
  r11.z = t3[0].val[0/4+2];
  r11.w = t3[0].val[0/4+3];
  r0.w = 1;
  r11.x = dot(r11.xyzw, r0.xyzw);
  r12.x = t3[1].val[0/4];
  r12.y = t3[1].val[0/4+1];
  r12.z = t3[1].val[0/4+2];
  r12.w = t3[1].val[0/4+3];
  r11.y = dot(r12.xyzw, r0.xyzw);
  r12.x = t3[2].val[0/4];
  r12.y = t3[2].val[0/4+1];
  r12.z = t3[2].val[0/4+2];
  r12.w = t3[2].val[0/4+3];
  r11.z = dot(r12.xyzw, r0.xyzw);
  r12.xyzw = r0.xyzz * r0.yzzx;
  r13.x = t3[3].val[0/4];
  r13.y = t3[3].val[0/4+1];
  r13.z = t3[3].val[0/4+2];
  r13.w = t3[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r14.x = t3[4].val[0/4];
  r14.y = t3[4].val[0/4+1];
  r14.z = t3[4].val[0/4+2];
  r14.w = t3[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r12.xyzw);
  r14.x = t3[5].val[0/4];
  r14.y = t3[5].val[0/4+1];
  r14.z = t3[5].val[0/4+2];
  r14.w = t3[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r12.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r11.xyz = r13.xyz + r11.xyz;
  r0.xyz = r0.yzw * r0.xxx + r11.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r8.xyz;
  r9.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r0.xyz = r9.xyz * r0.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r2.xyz = max(float3(0,0,0), r2.yzw);
  r1.y = cmp(0 < cb0[140].x);
  if (r1.y != 0) {
    r7.zw = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r8.x = t2[r7.z].val[0/4];
    r8.y = t2[r7.z].val[0/4+1];
    r8.z = t2[r7.z].val[0/4+2];
    r8.xyz = -r8.xyz + r3.xyz;
    r9.x = t2[r7.w].val[0/4];
    r9.y = t2[r7.w].val[0/4+1];
    r9.z = t2[r7.w].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r8.xyz = cmp(r9.xyz < abs(r8.xyz));
    r1.y = (int)r8.y | (int)r8.x;
    r1.y = (int)r8.z | (int)r1.y;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.yyy ? r3.xyz : r2.xyz;
  }
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.y = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r1.x;
  o2.w = 0.505882382;
  o2.xy = r7.xy;
  o3.xyz = r5.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}