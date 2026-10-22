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
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[215];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r4.x = t2[r4.y].val[0/4];
  r4.y = t2[r4.y].val[0/4+1];
  r4.w = t2[r4.y].val[0/4+2];
  r3.w = r4.x + r4.y;
  r3.w = r3.w + r4.w;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = cb1[2].x * r3.w;
  r3.w = cb3[7].w * r3.w;
  r4.xy = v4.xy + -v3.xy;
  r4.xy = cb3[9].xx * r4.xy + v3.xy;
  r4.xy = cb3[9].yy * r4.xy;
  r4.xy = r3.ww * cb3[8].zw + r4.xy;
  r4.xy = t5.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
  r6.xy = r4.xy + r4.xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r3.w = dot(r4.xy, r4.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r6.z = sqrt(r3.w);
  r4.xyw = float3(-1,-1,-1) + r6.xyz;
  r4.xyw = v2.xxx * r4.xyw + float3(0,0,1);
  r6.xyz = float3(0,0,1) + -r4.xyw;
  r4.xyw = cb3[9].zzz * r6.xyz + r4.xyw;
  r5.w = 1 + r5.z;
  r4.xyw = float3(-1,-1,1) * r4.xyw;
  r3.w = dot(r5.xyw, r4.xyw);
  r4.xyw = r4.xyw * r2.www;
  r4.xyw = r5.xyw * r3.www + -r4.xyw;
  r4.xyw = r4.xyw * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyw, r4.xyw);
  r2.w = rsqrt(r2.w);
  r4.xyw = r4.xyw * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.www * v1.xyz + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyw = cb3[9].www * cb3[2].xyz;
  r5.xyzw = t6.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r2.www + -r5.xyz;
  r5.xyz = cb3[10].zzz * r6.xyz + r5.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[10].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb3[4].xyz * r5.xyz;
  r6.xyz = cb3[10].www * r5.xyz;
  r2.w = saturate(v2.x + v2.x);
  r7.xyz = cb3[6].xyz * r6.xyz + -r6.xyz;
  r6.xyz = r2.www * r7.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.zw = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r1.z = -cb3[11].x * v2.x + r1.z;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb3[11].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.z = saturate(cb3[11].z + r1.z);
  r7.x = saturate(cb3[11].w + r1.w);
  r1.w = dot(r0.xyz, r2.xyz);
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
  r7.y = saturate(cb3[13].x * r1.w);
  r1.w = cb3[13].z * cb2[1].w;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.y = cb3[13].w + r1.x;
  r2.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r2.z = cb2[1].w * 0.617499948 + -r1.x;
  r2.y = saturate(r2.z / r2.y);
  r2.z = -cb2[1].w * 0.649999976 + 8000;
  r2.x = r2.y * r2.z + r2.x;
  r1.y = r1.y / r2.x;
  r1.x = r1.x / cb3[13].w;
  r2.x = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.y = r1.w ? r1.y : r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[13].z));
  r1.w = 1 + cb3[13].z;
  r1.y = r1.y ? r1.w : 1.39999998;
  r2.xyz = -cb0[129].xxy + v6.xxy;
  r1.w = r2.x * cb0[130].z + -0.469999999;
  r1.w = 4.93230057 * r1.w;
  r1.w = cos(r1.w);
  r1.w = 0.899999976 + r1.w;
  r1.w = saturate(0.555555582 * r1.w);
  r1.y = r1.y + -r1.w;
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
  r2.xyz = saturate(cb3[15].yyy * r5.xyz);
  r1.x = r5.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r6.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb3[13].y);
  r2.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r5.x = t2[r4.z].val[4/4];
  r5.y = t2[r4.z].val[4/4+1];
  r1.z = cmp(0 < r5.y);
  if (r1.z != 0) {
    r5.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.yzw = max(float3(0,0,0), r5.yzw);
    r5.yzw = min(float3(0.99000001,0.99000001,0.99000001), r5.yzw);
    r5.yzw = cb0[213].xyz * r5.yzw;
    r6.xyz = (int3)r5.yzw;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r1.z = 1 + cb0[213].w;
    r5.yzw = r5.yzw / r6.www;
    r5.yzw = frac(r5.yzw);
    r5.yzw = cb0[213].www * r5.yzw;
    r5.yzw = r6.xyz * r1.zzz + r5.yzw;
    r5.yzw = float3(0.5,0.5,0.5) + r5.yzw;
    r5.yzw = cb0[214].xyz * r5.yzw;
    r1.z = t1.SampleLevel(s0_s, r5.yzw, 0).x;
  } else {
    r1.z = 1;
  }
  r5.yzw = saturate(r2.xyz);
  o4.xyz = sqrt(r5.yzw);
  r2.w = 0.0799999982 * r7.y;
  r5.yzw = -r7.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyw;
  r5.yzw = r7.xxx * r5.yzw + r2.www;
  r6.xyz = -r1.xyw * r7.xxx + r1.xyw;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.yzw = r5.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r8.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.yzw;
  r5.yzw = r5.yzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.yzw = r2.www ? r5.yzw : r6.xyz;
  r2.xyz = r5.yzw + r2.xyz;
  r6.x = t3[0].val[0/4];
  r6.y = t3[0].val[0/4+1];
  r6.z = t3[0].val[0/4+2];
  r6.w = t3[0].val[0/4+3];
  r0.w = 1;
  r6.x = dot(r6.xyzw, r0.xyzw);
  r9.x = t3[1].val[0/4];
  r9.y = t3[1].val[0/4+1];
  r9.z = t3[1].val[0/4+2];
  r9.w = t3[1].val[0/4+3];
  r6.y = dot(r9.xyzw, r0.xyzw);
  r9.x = t3[2].val[0/4];
  r9.y = t3[2].val[0/4+1];
  r9.z = t3[2].val[0/4+2];
  r9.w = t3[2].val[0/4+3];
  r6.z = dot(r9.xyzw, r0.xyzw);
  r9.xyzw = r0.xyzz * r0.yzzx;
  r10.x = t3[3].val[0/4];
  r10.y = t3[3].val[0/4+1];
  r10.z = t3[3].val[0/4+2];
  r10.w = t3[3].val[0/4+3];
  r10.x = dot(r10.xyzw, r9.xyzw);
  r11.x = t3[4].val[0/4];
  r11.y = t3[4].val[0/4+1];
  r11.z = t3[4].val[0/4+2];
  r11.w = t3[4].val[0/4+3];
  r10.y = dot(r11.xyzw, r9.xyzw);
  r11.x = t3[5].val[0/4];
  r11.y = t3[5].val[0/4+1];
  r11.z = t3[5].val[0/4+2];
  r11.w = t3[5].val[0/4+3];
  r10.z = dot(r11.xyzw, r9.xyzw);
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r9.x = t3[6].val[0/4];
  r9.y = t3[6].val[0/4+1];
  r9.z = t3[6].val[0/4+2];
  r6.xyz = r10.xyz + r6.xyz;
  r6.xyz = r9.xyz * r0.www + r6.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = cb0[187].xyz * r6.xyz;
  r2.xyz = r6.xyz * r2.xyz;
  r6.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r2.xyz = r6.xyz * r2.xyz;
  r6.xyz = r2.www ? float3(0,0,0) : r8.xyz;
  r5.yzw = r6.xyz + r5.yzw;
  r4.xyz = max(float3(0,0,0), r4.xyw);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r6.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r3.xyz;
    r8.x = t2[r6.y].val[0/4];
    r8.y = t2[r6.y].val[0/4+1];
    r8.z = t2[r6.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xzw));
    r0.w = (int)r6.y | (int)r6.x;
    r0.w = (int)r6.z | (int)r0.w;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r0.www ? r3.xyz : r4.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.yzw + r2.xyz;
  r2.xyz = r2.xyz + r4.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r0.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o1.w = r5.x;
  o2.w = 0.509803951;
  o2.xy = r7.xy;
  o3.xyz = r1.xyw;
  o5.x = r1.z;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}