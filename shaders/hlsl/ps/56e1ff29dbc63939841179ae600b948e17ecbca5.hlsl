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

cbuffer cb3 : register(b3)
{
  float4 cb3[16];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD1,
  nointerpolation uint v5 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
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
  r4.xyz = mad((int3)v5.xxx, int3(36,36,36), int3(4,18,20));
  r0.w = t2[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v7.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb3[7].xx * v3.xy;
  r2.w = cb3[7].y + cb0[143].y;
  r4.xw = t4.SampleBias(s1_s, r1.zw, r2.w).xy;
  r5.xy = r4.xw * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r5.z = sqrt(r2.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[7].zzz * r6.xyz + r5.xyz;
  r2.w = 1 + r5.z;
  r6.x = t2[r4.y].val[0/4];
  r6.y = t2[r4.y].val[0/4+1];
  r6.z = t2[r4.y].val[0/4+2];
  r3.w = r6.x + r6.y;
  r3.w = r3.w + r6.z;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = cb2[2].x * r3.w;
  r3.w = cb3[7].w * r3.w;
  r4.xw = v4.xy + -v3.xy;
  r4.xw = cb3[9].xx * r4.xw + v3.xy;
  r4.xw = cb3[9].yy * r4.xw;
  r4.xw = r3.ww * cb3[8].zw + r4.xw;
  r4.xw = t5.SampleBias(s2_s, r4.xw, cb0[143].y).xy;
  r6.xy = r4.xw + r4.xw;
  r4.xw = r4.xw * float2(2,2) + float2(-1,-1);
  r3.w = dot(r4.xw, r4.xw);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r6.z = sqrt(r3.w);
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = v2.xxx * r6.xyz + float3(0,0,1);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[9].zzz * r7.xyz + r6.xyz;
  r5.w = 1 + r5.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r3.w = dot(r5.xyw, r6.xyz);
  r6.xyz = r6.xyz * r2.www;
  r5.xyz = r5.xyw * r3.www + -r6.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r5.xyz * r2.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r5.yzw = r0.xyz * r0.www;
  r6.xyz = cb3[9].www * cb3[2].xyz;
  r7.xyzw = t6.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r2.www + -r7.xyz;
  r7.xyz = cb3[10].zzz * r8.xyz + r7.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[10].y, r4.x, r9.x);
  r8.xyz = r8.xyz * r4.xxx;
  r7.xyz = r7.xyz * r9.xxx + r8.xyz;
  r7.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb3[4].xyz * r7.xyz;
  r8.xyz = cb3[10].www * r7.xyz;
  r2.w = saturate(v2.x + v2.x);
  r9.xyz = cb3[6].xyz * r8.xyz + -r8.xyz;
  r8.xyz = r2.www * r9.xyz + r8.xyz;
  r8.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r8.xyz);
  r1.zw = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r1.z = -cb3[11].x * v2.x + r1.z;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[11].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.z = saturate(cb3[11].z + r1.z);
  r9.x = saturate(cb3[11].w + r1.w);
  r1.w = dot(r5.yzw, r2.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb3[12].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb3[12].y * r1.w;
  r2.x = saturate(cb3[12].w + v1.z);
  r1.w = r2.x * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r9.y = saturate(cb3[13].x * r1.w);
  r1.w = cmp(cb0[31].w < 1);
  r2.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.x + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.x = r1.x / cb3[13].z;
  r2.xyz = -cb0[129].xxy + v6.xxy;
  r1.y = r2.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb3[14].x + -r1.y;
  r2.xw = cb0[152].xx + r2.yz;
  r2.xw = (uint2)r2.xw;
  r1.w = (uint)r2.w << 1;
  r1.w = (int)r1.w + (int)r2.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r2.xy = float2(0.015625,0.015625) * r2.yz;
  r2.x = t8.SampleBias(s5_s, r2.xy, cb0[143].y).x;
  r1.w = r2.x + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r2.xyz = saturate(cb3[15].zzz * r7.xyz);
  r1.x = r7.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r8.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb3[13].y);
  r2.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r1.z = cmp(0 < cb0[215].x);
  r4.x = t2[r4.z].val[4/4];
  r4.z = t2[r4.z].val[4/4+1];
  r2.w = cmp(0 < r4.z);
  if (r2.w != 0) {
    r7.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.xyz = min(float3(0.99000001,0.99000001,0.99000001), r7.xyz);
    r7.xyz = cb0[213].xyz * r7.xyz;
    r8.xyz = (int3)r7.xyz;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r2.w = 1 + cb0[213].w;
    r7.xyz = r7.xyz / r8.www;
    r7.xyz = frac(r7.xyz);
    r7.xyz = cb0[213].www * r7.xyz;
    r7.xyz = r8.xyz * r2.www + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
    r7.xyz = cb0[214].xyz * r7.xyz;
    r2.w = t1.SampleLevel(s0_s, r7.xyz, 0).x;
  } else {
    r3.w = t2[r4.y].val[12/4];
    r3.w = cmp(0 < r3.w);
    r3.w = r1.z ? r3.w : 0;
    r2.w = r3.w ? cb1[5].x : 1;
  }
  r4.yzw = saturate(r2.xyz);
  o4.xyz = sqrt(r4.yzw);
  r3.w = 0.0799999982 * r9.y;
  r4.yzw = -r9.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyw;
  r4.yzw = r9.xxx * r4.yzw + r3.www;
  r7.xyz = -r1.xyw * r9.xxx + r1.xyw;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r4.yzw = r4.yzw * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r8.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r3.www ? r8.xyz : r7.xyz;
  r4.yzw = r3.www ? float3(0,0,0) : r4.yzw;
  r3.w = dot(r4.yzw, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r3.w * 2.04040003 + -0.332399994;
  r6.w = r3.w * -4.79510021 + r6.w;
  r3.w = r3.w * 2.75519991 + r6.w;
  r3.w = 1.33200002 + r3.w;
  r3.w = max(1, r3.w);
  r2.xyz = r7.xyz + r2.xyz;
  r8.xyz = r5.zwz * r5.zwy;
  r10.yw = r5.ww * r5.zy;
  r6.w = r5.y * r5.y + -r8.x;
  r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.zwy;
  r10.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r10.xyzw;
  r6.w = 0.429042608 * r6.w;
  r11.x = 0.886227548;
  r7.w = dot(cb1[6].xyzw, r11.xyzw);
  r9.z = dot(cb1[9].xyzw, r8.xyzw);
  r7.w = r9.z + r7.w;
  r10.x = cb1[12].x * r6.w + r7.w;
  r7.w = dot(cb1[7].xyzw, r11.xyzw);
  r9.z = dot(cb1[10].xyzw, r8.xyzw);
  r7.w = r9.z + r7.w;
  r10.y = cb1[12].y * r6.w + r7.w;
  r7.w = dot(cb1[8].xyzw, r11.xyzw);
  r8.x = dot(cb1[11].xyzw, r8.xyzw);
  r7.w = r8.x + r7.w;
  r10.z = cb1[12].z * r6.w + r7.w;
  r8.xyz = max(float3(0,0,0), r10.xyz);
  r8.xyz = r1.zzz ? r8.xyz : 0;
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r5.x = 1;
    r10.xyzw = r1.zzzz ? cb1[4].wxyz : r5.xyzw;
    r1.z = 1 + -r10.x;
    r1.z = -r1.z * r1.z + 1;
    r0.xyz = r0.xyz * r0.www + -r10.yzw;
    r0.xyz = r1.zzz * r0.xyz + r10.yzw;
    r5.x = saturate(dot(r10.yzw, r5.yzw));
    r6.w = 1 + -r5.x;
    r10.y = r1.z * r6.w + r5.x;
  } else {
    r0.xyz = r5.yzw;
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
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r2.xyz;
  r2.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r2.xyz = max(float3(1,1,1), r2.xyz);
  r0.xyz = r2.xyz * r0.xyz;
  r2.xyz = r4.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r4.yzw = max(float3(0,0,0), r6.xyz);
  r1.z = cmp(0 < cb0[140].x);
  if (r1.z != 0) {
    r6.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r3.xyz;
    r7.x = t2[r6.y].val[0/4];
    r7.y = t2[r6.y].val[0/4+1];
    r7.z = t2[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r1.z = (int)r6.y | (int)r6.x;
    r1.z = (int)r6.z | (int)r1.z;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.yzw = r1.zzz ? r3.xyz : r4.yzw;
  }
  r0.xyz = cb0[145].yyy * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz + r4.yzw;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.z = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.z = frac(r1.z);
  r1.z = -0.5 + r1.z;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.z * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r4.x;
  o2.w = 0.509803951;
  o2.xy = r9.xy;
  o3.xyz = r1.xyw;
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}