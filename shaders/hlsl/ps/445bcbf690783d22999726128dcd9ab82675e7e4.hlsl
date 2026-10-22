// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[20];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[184];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
  nointerpolation uint v5 : PRIMITIVE_ID0,
  nointerpolation uint w5 : LIGHTMAP_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
  r1.zw = cb3[10].xx * v3.xy;
  r0.w = cb3[10].y + cb0[143].y;
  r4.xy = t3.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r4.z = sqrt(r2.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[10].zzz * r5.xyz + r4.xyz;
  r5.xy = cb3[10].ww * r1.zw;
  r5.zw = t4.SampleBias(s2_s, r5.xy, r0.w).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[11].xxx * r7.xyz + r6.xyz;
  r6.xyz = cb3[11].yyy * r4.xyz + r6.xyz;
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
  r0.x = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb2[5].xyz / r0.xxx;
  r0.x = dot(r6.yzx, r4.xyz);
  r0.x = 1 + r0.x;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = sqrt(r0.z);
  r7.xyz = r7.xyz / r0.zzz;
  r0.z = saturate(dot(-r7.xyz, r6.xyz));
  r2.w = 1 + -cb1[1].x;
  r0.z = saturate(r2.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r4.zxy, r2.xyz);
  r0.z = max(0, r0.z);
  r0.z = 1 + -r0.z;
  r0.z = max(9.99999975e-005, abs(r0.z));
  r0.z = log2(r0.z);
  r2.x = cb1[1].y * r0.z;
  r2.x = exp2(r2.x);
  r2.y = 1 + -cb1[0].w;
  r2.x = r2.x * r2.y + cb1[0].w;
  r2.y = cmp(r2.x >= cb1[0].y);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = r2.y * r2.x;
  r2.y = r0.y * r0.w + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb1[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.y = -r0.y * r0.w + 1;
  r0.w = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb1[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r0.w ? 0 : r0.y;
  r0.y = r2.x * r0.y;
  r0.y = cb1[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r2.xyz = cb2[4].xyz * r0.xxx;
  r0.x = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.x = sqrt(r0.x);
  r6.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r6.yzx, r4.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r7.xyz, r6.xyz));
  r0.w = saturate(r0.w + r2.w);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.y;
  r0.xyw = cb2[9].xyz * r0.xxx;
  r0.xyw = cb2[1].yyy * r0.xyw;
  r0.xyw = r2.xyz * cb2[1].xxx + r0.xyw;
  r2.x = cmp(cb0[31].w < 1);
  r2.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.y + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.y = r1.x / cb3[11].z;
  r2.x = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[11].w * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.y = cb3[12].x * r1.y;
  r1.y = max(1, r1.y);
  r1.y = r2.x ? 1 : r1.y;
  r2.xy = r1.zw / cb3[12].ww;
  r2.xy = cb3[13].xy + r2.xy;
  r2.xyz = t5.SampleBias(s3_s, r2.xy, cb0[143].y).xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r6.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[12].z, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r2.xyz = r2.xyz * r8.xxx + r6.xyz;
  r2.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[2].xyz * r2.xyz;
  r5.zw = cb3[13].ww * v3.xy;
  r2.w = t6.SampleBias(s4_s, r5.zw, cb0[143].y).x;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[14].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = cb3[14].y * r2.w;
  r2.w = r3.w ? 0 : r2.w;
  r2.w = cb0[142].z * cb3[13].z + r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * cb3[14].w + cb3[14].z;
  r2.w = max(cb3[15].y, r2.w);
  r2.w = min(cb3[15].x, r2.w);
  r2.w = cb3[15].z * r2.w;
  r2.w = cb2[3].y * r2.w;
  r2.xyz = r2.xyz * r2.www;
  r2.xyz = r2.xyz * r1.yyy;
  r1.y = 1 + -v2.y;
  r2.xyz = r2.xyz * r1.yyy;
  r0.xyw = cb1[2].xyz * r0.xyw + r2.xyz;
  r2.xyz = cb3[4].xyz * r0.xyw;
  r0.xyw = -r0.xyw * cb3[4].xyz + cb3[5].xyz;
  r0.xyw = cb3[15].www * r0.xyw + r2.xyz;
  r2.xyzw = t7.SampleBias(s5_s, r1.zw, cb0[143].y).xyzw;
  r1.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.yyy + -r2.xyz;
  r2.xyz = cb3[16].zzz * r6.xyz + r2.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r6.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[16].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r2.xyz = r2.xyz * r8.xxx + r6.xyz;
  r2.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[7].xyz * r2.xyz;
  r6.xyz = t8.SampleBias(s6_s, r5.xy, cb0[143].y).xyz;
  r1.y = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.yyy + -r6.xyz;
  r6.xyz = cb3[17].yyy * r7.xyz + r6.xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[17].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = r6.xyz * cb3[9].xyz + -r2.xyz;
  r2.xyz = v2.yyy * r6.xyz + r2.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.yz = t9.SampleBias(s7_s, r1.zw, cb0[143].y).yx;
  r1.z = saturate(cb3[17].z + r1.z);
  r5.xy = t10.SampleBias(s8_s, r5.xy, cb0[143].y).yx;
  r5.y = saturate(cb3[17].w + r5.y);
  r5.xy = r5.xy + -r1.yz;
  r1.yz = saturate(v2.yy * r5.xy + r1.yz);
  r0.z = cb3[18].x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb3[18].y * r0.z;
  r1.w = saturate(cb3[18].w + v1.z);
  r0.z = r1.w * r0.z;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.z = min(0.5, r0.z);
  r0.z = saturate(cb3[19].x * r0.z);
  r1.x = r1.x / cb3[19].y;
  r5.xyz = -cb0[129].xxy + v6.xxy;
  r1.w = r5.x * cb0[130].z + -0.469999999;
  r1.w = 4.93230057 * r1.w;
  r1.w = cos(r1.w);
  r1.w = 0.899999976 + r1.w;
  r1.w = saturate(0.555555582 * r1.w);
  r1.w = cb3[19].w + -r1.w;
  r5.xw = cb0[152].xx + r5.yz;
  r5.xw = (uint2)r5.xw;
  r3.w = (uint)r5.w << 1;
  r3.w = (int)r3.w + (int)r5.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r5.xy = float2(0.015625,0.015625) * r5.yz;
  r5.x = t11.SampleBias(s9_s, r5.xy, cb0[143].y).x;
  r3.w = r5.x + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.x = r1.x * r1.w + r3.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r2.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r5.xyzw = mad((int4)v5.xyyy, int4(36,15,15,15), int4(20,4,6,5));
  o1.w = t0[r5.x].val[4/4];
  r1.x = 0.0799999982 * r0.z;
  r6.xyz = -r0.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r1.xzw = r1.yyy * r6.xyz + r1.xxx;
  r6.xyz = -r2.xyz * r1.yyy + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r1.xzw = r1.xzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r1.xzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r1.xzw = r2.www ? float3(0,0,0) : r1.xzw;
  r2.w = dot(r1.xzw, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r7.xy = float2(1,0.5) * v4.xy;
  r7.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t2.Sample(s0_s, r7.xy).xyzw;
  r7.xyzw = t2.Sample(s0_s, r7.zw).xyzw;
  r3.w = r7.w * 0.00392156886 + r8.w;
  r3.w = -0.00196078443 + r3.w;
  r9.x = t1[r5.y].val[0/4];
  r9.y = t1[r5.y].val[0/4+1];
  r9.z = t1[r5.y].val[0/4+2];
  r9.w = t1[r5.y].val[0/4+3];
  r10.x = t1[r5.z].val[0/4];
  r10.y = t1[r5.z].val[0/4+1];
  r10.z = t1[r5.z].val[0/4+2];
  r10.w = t1[r5.z].val[0/4+3];
  r3.w = r3.w * r9.w + r10.w;
  r5.xyz = r8.xyz * r8.xyz;
  r5.xyz = r5.xyz * r9.xyz + r10.xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r8.x = t1[r5.w].val[0/4];
  r8.y = t1[r5.w].val[0/4+1];
  r8.z = t1[r5.w].val[0/4+2];
  r8.w = t1[r5.w].val[0/4+3];
  r5.w = mad((int)w5.x, 15, 7);
  r9.x = t1[r5.w].val[0/4];
  r9.y = t1[r5.w].val[0/4+1];
  r9.z = t1[r5.w].val[0/4+2];
  r9.w = t1[r5.w].val[0/4+3];
  r7.xyzw = r7.xyzw * r8.xyzw + r9.xyzw;
  r4.w = 1;
  r4.w = dot(r7.xyzw, r4.xyzw);
  r4.w = max(0, r4.w);
  r3.w = r4.w * r3.w;
  r5.xyz = r3.www * r5.xyz;
  r5.xyz = cb0[157].xyz * r5.xyz;
  r3.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz * r6.xyz;
  r7.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r5.xyz = r7.xyz * r5.xyz;
  r1.xzw = r1.xzw * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.w = cmp(0 < cb0[140].x);
  if (r4.w != 0) {
    r6.xy = mad((int2)v5.xx, int2(36,36), int2(5,19));
    r6.x = t0[r6.x].val[0/4];
    r6.z = t0[r6.x].val[0/4+1];
    r6.w = t0[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r3.xyz;
    r7.x = t0[r6.y].val[0/4];
    r7.y = t0[r6.y].val[0/4+1];
    r7.z = t0[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r4.w = (int)r6.y | (int)r6.x;
    r4.w = (int)r6.z | (int)r4.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyw = r4.www ? r3.xyz : r0.xyw;
  }
  r1.xzw = cb0[145].yyy * r1.xzw + r5.xyz;
  r0.xyw = r1.xzw + r0.xyw;
  r1.xzw = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r1.xzw = frac(r1.xzw);
  r1.xzw = r1.xzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xzw = r1.xzw * r1.xzz;
  r1.x = dot(r1.xzw, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.z = r3.w * r2.w;
  r1.z = r1.z * cb0[135].y + 0.00390625;
  r1.z = log2(r1.z);
  r1.z = r1.z * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.z;
  o0.xyz = cb0[135].yyy * r0.xyw;
  o0.w = 0;
  o2.x = r1.y;
  o2.w = 0.75686276;
  o2.y = r0.z;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}