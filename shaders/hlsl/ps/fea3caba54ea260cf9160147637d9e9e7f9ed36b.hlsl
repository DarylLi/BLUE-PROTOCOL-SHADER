// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[17];
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
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
  r0.w = (int)w4.x * 15;
  r4.xyzw = mad((int4)v4.xxyy, int4(36,36,15,15), int4(4,20,1,4));
  r1.z = t0[r4.x].val[12/4];
  r1.z = cb0[141].w * r1.z;
  r1.w = v6.x ? 1 : -1;
  r1.z = r1.z * r1.w;
  r5.xy = cb3[8].xx * v2.xy;
  r1.w = cb3[8].y + cb0[143].y;
  r5.zw = t4.SampleBias(s1_s, r5.xy, r1.w).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r6.xy, r6.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r6.z = sqrt(r1.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[8].zzz * r7.xyz + r6.xyz;
  r6.xyz = r6.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = rsqrt(r1.w);
  r6.xyz = r6.xyz * r1.www;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.yzx + r0.xyz;
  r0.xyz = r6.zzz * v1.yzx + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r6.xyz = r0.xyz * r1.zzz;
  r0.x = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb2[5].xyz / r0.xxx;
  r0.x = dot(r7.yzx, r6.xyz);
  r0.x = 1 + r0.x;
  r8.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r8.xyz, r8.xyz);
  r0.z = sqrt(r0.z);
  r8.xyz = r8.xyz / r0.zzz;
  r0.z = saturate(dot(-r8.xyz, r7.xyz));
  r1.w = 1 + -cb1[1].x;
  r0.z = saturate(r1.w + r0.z);
  r0.x = r0.x * r0.z;
  r0.z = dot(r6.zxy, r2.xyz);
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
  r2.y = r0.y * r1.z + 1;
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb1[0].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = min(1, r2.y);
  r2.y = r2.z ? 0 : r2.y;
  r2.x = r2.x * r2.y;
  r0.y = -r0.y * r1.z + 1;
  r1.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb1[1].z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = r1.z ? 0 : r0.y;
  r0.y = r2.x * r0.y;
  r0.y = cb1[0].z * r0.y;
  r0.x = r0.x * r0.y;
  r2.xyz = cb2[4].xyz * r0.xxx;
  r0.x = dot(-cb2[8].xyz, -cb2[8].xyz);
  r0.x = sqrt(r0.x);
  r7.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r7.yzx, r6.xyz);
  r0.x = 1 + r0.x;
  r1.z = saturate(dot(-r8.xyz, r7.xyz));
  r1.z = saturate(r1.z + r1.w);
  r0.x = r1.z * r0.x;
  r0.x = r0.x * r0.y;
  r7.xyz = cb2[9].xyz * r0.xxx;
  r7.xyz = cb2[1].yyy * r7.xyz;
  r2.xyz = r2.xyz * cb2[1].xxx + r7.xyz;
  r0.x = cmp(cb0[31].w < 1);
  r0.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r0.y = r1.x + r0.y;
  r0.x = r0.x ? r1.y : r0.y;
  r0.y = r0.x / cb3[8].w;
  r1.x = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[9].x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb3[9].y * r0.y;
  r0.y = max(1, r0.y);
  r0.y = r1.x ? 1 : r0.y;
  r1.xy = r5.xy / cb3[10].xx;
  r1.xy = cb3[10].yz + r1.xy;
  r1.xyz = t5.SampleBias(s2_s, r1.xy, cb0[143].y).xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.xyz);
  r1.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r1.zxy;
  r7.xyz = r1.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[9].w, r4.x, r8.x);
  r7.xyz = r7.xyz * r4.xxx;
  r1.xyz = r1.xyz * r8.xxx + r7.xyz;
  r1.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r1.xyz = cb3[2].xyz * r1.xyz;
  r5.zw = cb3[11].xx * v2.xy;
  r1.w = t6.SampleBias(s3_s, r5.zw, cb0[143].y).x;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[11].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = cb3[11].z * r1.w;
  r1.w = r2.w ? 0 : r1.w;
  r1.w = cb0[142].z * cb3[10].w + r1.w;
  r1.w = 6.28318548 * r1.w;
  r1.w = sin(r1.w);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * cb3[12].x + cb3[11].w;
  r1.w = max(cb3[12].z, r1.w);
  r1.w = min(cb3[12].y, r1.w);
  r1.w = cb3[12].w * r1.w;
  r1.w = cb2[3].y * r1.w;
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = r1.xyz * r0.yyy;
  r1.xyz = cb1[2].xyz * r2.xyz + r1.xyz;
  r2.xyz = cb3[4].xyz * r1.xyz;
  r1.xyz = -r1.xyz * cb3[4].xyz + cb3[5].xyz;
  r1.xyz = cb3[13].xxx * r1.xyz + r2.xyz;
  r2.xyzw = t7.SampleBias(s4_s, r5.xy, cb0[143].y).xyzw;
  r0.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.yyy + -r2.xyz;
  r2.xyz = cb3[13].www * r7.xyz + r2.xyz;
  r0.y = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r7.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb3[13].z, r4.x, r8.x);
  r7.xyz = r7.xyz * r4.xxx;
  r2.xyz = r2.xyz * r8.xxx + r7.xyz;
  r2.xyz = r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[7].xyz * r2.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r5.xy = t8.SampleBias(s5_s, r5.xy, cb0[143].y).xy;
  r5.xy = saturate(cb3[14].xy + r5.xy);
  r0.y = cb3[14].z * r0.z;
  r0.y = exp2(r0.y);
  r0.y = r0.y * 0.959999979 + 0.0399999991;
  r0.y = cb3[14].w * r0.y;
  r0.z = saturate(cb3[15].y + v1.z);
  r0.y = r0.z * r0.y;
  r0.y = max(0, r0.y);
  r0.y = min(0.5, r0.y);
  r0.y = saturate(cb3[15].z * r0.y);
  r0.z = cb3[15].w * cb1[1].w;
  r1.w = cb3[16].x + r0.x;
  r5.zw = float2(0.649999976,0.487499982) * cb1[1].ww;
  r3.w = cb1[1].w * 0.617499948 + -r0.x;
  r3.w = saturate(r3.w / r5.w);
  r4.x = -cb1[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.x + r5.z;
  r1.w = r1.w / r3.w;
  r0.x = r0.x / cb3[16].x;
  r3.w = cmp(9.99999975e-006 < abs(r0.z));
  r0.z = cmp(r0.z >= 0);
  r0.z = r0.z ? r1.w : r0.x;
  r0.x = r3.w ? r0.z : r0.x;
  r0.z = cmp(9.99999975e-006 < abs(cb3[15].w));
  r1.w = 1 + cb3[15].w;
  r0.z = r0.z ? r1.w : 1.39999998;
  r7.xyz = -cb0[129].xxy + v5.xxy;
  r1.w = r7.x * cb0[130].z + -0.469999999;
  r1.w = 4.93230057 * r1.w;
  r1.w = cos(r1.w);
  r1.w = 0.899999976 + r1.w;
  r1.w = saturate(0.555555582 * r1.w);
  r0.z = -r1.w + r0.z;
  r5.zw = cb0[152].xx + r7.yz;
  r5.zw = (uint2)r5.zw;
  r1.w = (uint)r5.w << 1;
  r1.w = (int)r1.w + (int)r5.z;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r5.zw = float2(0.015625,0.015625) * r7.yz;
  r3.w = t9.SampleBias(s6_s, r5.zw, cb0[143].y).x;
  r1.w = r3.w + r1.w;
  r1.w = 0.166666672 * r1.w;
  r0.x = r0.x * r0.z + r1.w;
  r0.x = saturate(-0.5 + r0.x);
  r0.x = r2.w * r0.x + -0.333299994;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  o2.z = r5.x * cb0[139].y + cb0[139].x;
  o1.w = t0[r4.y].val[4/4];
  r7.xyzw = t3.Sample(s0_s, v3.zw).xyzw;
  r8.x = t1[r4.z].val[0/4];
  r8.y = t1[r4.z].val[0/4+1];
  r8.z = t1[r4.z].val[0/4+2];
  r8.w = t1[r4.z].val[0/4+3];
  r9.xyzw = r8.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r7.xyzw = saturate(r7.xyzw * r8.xyzw + r9.xyzw);
  r8.x = t1[r0.w].val[0/4];
  r8.y = t1[r0.w].val[0/4+1];
  r8.z = t1[r0.w].val[0/4+2];
  r8.w = t1[r0.w].val[0/4+3];
  r7.xyzw = r7.xyzw * r7.xyzw;
  o5.xyzw = r7.xyzw * r8.xyzw;
  r0.x = 0.0799999982 * r0.y;
  r4.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r0.xzw = r5.yyy * r4.xyz + r0.xxx;
  r4.xyz = -r2.xyz * r5.yyy + r2.xyz;
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r0.xzw = r0.xzw * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r5.xzw = r0.xzw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r1.www ? r5.xzw : r4.xyz;
  r0.xzw = r1.www ? float3(0,0,0) : r0.xzw;
  r1.w = dot(r0.xzw, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r5.xz = float2(1,0.5) * v3.xy;
  r7.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t2.Sample(s0_s, r5.xz).xyzw;
  r7.xyzw = t2.Sample(s0_s, r7.xy).xyzw;
  r2.w = r7.w * 0.00392156886 + r8.w;
  r2.w = -0.00196078443 + r2.w;
  r9.x = t1[r4.w].val[0/4];
  r9.y = t1[r4.w].val[0/4+1];
  r9.z = t1[r4.w].val[0/4+2];
  r9.w = t1[r4.w].val[0/4+3];
  r5.xzw = mad((int3)w4.xyy, int3(15,15,15), int3(6,5,7));
  r10.x = t1[r5.x].val[0/4];
  r10.y = t1[r5.x].val[0/4+1];
  r10.z = t1[r5.x].val[0/4+2];
  r10.w = t1[r5.x].val[0/4+3];
  r2.w = r2.w * r9.w + r10.w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * r9.xyz + r10.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r9.x = t1[r5.z].val[0/4];
  r9.y = t1[r5.z].val[0/4+1];
  r9.z = t1[r5.z].val[0/4+2];
  r9.w = t1[r5.z].val[0/4+3];
  r10.x = t1[r5.w].val[0/4];
  r10.y = t1[r5.w].val[0/4+1];
  r10.z = t1[r5.w].val[0/4+2];
  r10.w = t1[r5.w].val[0/4+3];
  r7.xyzw = r7.xyzw * r9.xyzw + r10.xyzw;
  r6.w = 1;
  r3.w = dot(r7.xyzw, r6.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r5.xzw = r2.www * r8.xyz;
  r5.xzw = cb0[157].xyz * r5.xzw;
  r2.w = dot(r5.xzw, float3(0.300000012,0.589999974,0.109999999));
  r5.xzw = r5.xzw * r4.xyz;
  r7.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r5.xzw = r7.xyz * r5.xzw;
  r0.xzw = r0.xzw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r4.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r4.x = t0[r4.x].val[0/4];
    r4.z = t0[r4.x].val[0/4+1];
    r4.w = t0[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r3.xyz;
    r7.x = t0[r4.y].val[0/4];
    r7.y = t0[r4.y].val[0/4+1];
    r7.z = t0[r4.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r4.xyz = cmp(r7.xyz < abs(r4.xzw));
    r3.w = (int)r4.y | (int)r4.x;
    r3.w = (int)r4.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r3.www ? r3.xyz : r1.xyz;
  }
  r0.xzw = cb0[145].yyy * r0.xzw + r5.xzw;
  r0.xzw = r0.xzw + r1.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r6.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r2.w * r1.w;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xzw;
  o0.w = 0;
  o2.x = r5.y;
  o2.w = 0.505882382;
  o2.y = r0.y;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}