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

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

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

cbuffer cb2 : register(b2)
{
  float4 cb2[31];
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
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v5.z;
  r1.yw = float2(1,0);
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
  r4.xyzw = mad((int4)v4.xxxy, int4(36,36,36,15), int4(4,18,20,1));
  r2.w = t0[r4.x].val[12/4];
  r2.w = cb0[141].w * r2.w;
  r3.w = v6.x ? 1 : -1;
  r2.w = r3.w * r2.w;
  r5.xy = r3.xy / cb2[16].zz;
  r3.w = t4.SampleBias(s1_s, r5.xy, cb0[143].y).x;
  r4.x = cb2[16].w + -cb2[2].x;
  r3.w = saturate(r3.w * r4.x + cb2[2].x);
  r3.w = cb2[17].x + r3.w;
  r3.w = r3.w * -cb2[17].y + cb2[17].y;
  r5.xyz = -cb0[67].xyz + r3.xyz;
  r4.x = dot(r5.xyz, r5.xyz);
  r4.x = sqrt(r4.x);
  r5.x = cb2[17].w * r4.x;
  r3.w = r3.w * r5.x + cb0[143].y;
  r5.xy = t5.SampleBias(s2_s, v2.xy, r3.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r5.w = dot(r5.xy, r5.xy);
  r5.w = 1 + -r5.w;
  r5.w = max(0, r5.w);
  r5.z = sqrt(r5.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb2[18].xxx * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * r2.www;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = rsqrt(r5.w);
  r5.xyz = r5.xyz * r5.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r5.x = dot(r0.xyz, r0.xyz);
  r5.x = rsqrt(r5.x);
  r0.xyz = r5.xxx * r0.xyz;
  r5.xyz = r0.xyz * r2.www;
  r0.xyz = cb2[18].yyy * cb2[3].xyz;
  r6.xyzw = t6.SampleBias(s3_s, v2.xy, r3.w).xyzw;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb2[19].xxx * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb2[18].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = cb2[5].xyz * r6.xyz;
  r2.w = saturate(dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r3.w = 1 + -r2.w;
  r3.w = r3.w + r3.w;
  r8.xyz = -r3.www * cb2[8].xyz + float3(1,1,1);
  r3.w = r2.w + r2.w;
  r9.xyz = cb2[7].xyz * r3.www;
  r2.w = cmp(r2.w >= 0.5);
  r8.xyz = r2.www ? r8.xyz : r9.xyz;
  r9.xyz = cb2[7].xyz + -r8.xyz;
  r8.xyz = cb2[19].yyy * r9.xyz + r8.xyz;
  r2.w = r4.x / cb2[19].z;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb2[19].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r6.xyz = -r6.xyz * cb2[5].xyz + r8.xyz;
  r6.xyz = r6.xyz * r2.www;
  r6.xyz = cb2[20].xxx * r6.xyz + r7.xyz;
  r7.xy = r3.xy / cb2[21].xx;
  r7.xy = float2(-0.5,-0.5) + r7.xy;
  r8.x = dot(r7.xy, cb2[11].xy);
  r8.y = dot(r7.xy, cb2[12].xy);
  r7.xy = cb0[142].zz * cb2[20].zw + r8.xy;
  r7.xy = float2(0.5,0.5) + r7.xy;
  r2.w = t7.SampleBias(s4_s, r7.xy, cb0[143].y).x;
  r2.w = cb2[22].z * r2.w;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb2[22].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r7.x = cb2[23].w * cb0[142].z;
  r7.y = cb2[24].x * cb0[142].z;
  r7.zw = r3.xy / cb2[24].yy;
  r7.xy = r7.xy + r7.zw;
  r3.w = t8.SampleBias(s5_s, r7.xy, cb0[143].y).x;
  r3.w = cb2[24].z * r3.w;
  r7.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb2[24].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r7.x ? 0 : r3.w;
  r3.w = saturate(cb2[25].x + r3.w);
  r3.w = 1 + -r3.w;
  r3.w = cb2[25].y * r3.w;
  r7.x = cmp(0 >= abs(r3.w));
  r3.w = log2(abs(r3.w));
  r3.w = cb2[25].z * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r7.x ? 0 : r3.w;
  r4.x = r4.x / cb2[25].w;
  r7.x = cmp(0 >= r4.x);
  r4.x = log2(r4.x);
  r4.x = cb2[26].x * r4.x;
  r4.x = exp2(r4.x);
  r4.x = min(1, r4.x);
  r4.x = r7.x ? -0 : -r4.x;
  r3.w = r4.x + r3.w;
  r3.w = 1 + r3.w;
  r3.w = min(1, r3.w);
  r4.x = cb2[26].y + -cb2[26].z;
  r3.w = r3.w * r4.x + cb2[26].z;
  r3.w = 1 + -r3.w;
  r2.w = r3.w * r2.w;
  r7.xyz = cb2[14].xyz * r2.www;
  r8.x = t0[r4.y].val[0/4];
  r8.y = t0[r4.y].val[0/4+1];
  r8.z = t0[r4.y].val[0/4+2];
  r2.w = r8.x + r8.y;
  r2.w = r2.w + r8.z;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb1[2].x * r2.w;
  r1.z = 0.100000001 * r2.w;
  r1.zw = v2.xy + r1.zw;
  r8.xyz = t9.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r6.xyz = r8.xyz * r7.xyz + r6.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r1.z = dot(r5.zxy, r2.xyz);
  r1.z = max(0, r1.z);
  r1.z = 1 + -r1.z;
  r1.z = max(9.99999975e-005, abs(r1.z));
  r1.z = log2(r1.z);
  r1.z = cb2[26].w * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * 0.959999979 + 0.0399999991;
  r1.z = cb2[27].x * r1.z;
  r1.w = saturate(cb2[27].z + v1.z);
  r1.z = r1.w * r1.z;
  r1.z = max(0, r1.z);
  r1.z = min(0.5, r1.z);
  r1.z = saturate(cb2[27].w * r1.z);
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r3.w = r1.x * cb0[65].z + -cb0[65].w;
  r3.w = 1 / r3.w;
  r2.w = r3.w + r2.w;
  r1.w = r1.w ? r1.y : r2.w;
  r1.w = r1.w / cb2[28].x;
  r7.xyz = -cb0[129].xxy + v5.xxy;
  r2.w = r7.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r2.w = cb2[28].z + -r2.w;
  r4.xy = cb0[152].xx + r7.yz;
  r4.xy = (uint2)r4.xy;
  r3.w = (uint)r4.y << 1;
  r3.w = (int)r3.w + (int)r4.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r4.xy = float2(0.015625,0.015625) * r7.yz;
  r4.x = t10.SampleBias(s7_s, r4.xy, cb0[143].y).x;
  r3.w = r4.x + r3.w;
  r3.w = 0.166666672 * r3.w;
  r1.w = r1.w * r2.w + r3.w;
  r1.w = saturate(-0.5 + r1.w);
  r2.w = cb2[30].y * r3.w;
  r3.w = cmp(0 >= v2.y);
  r4.x = log2(v2.y);
  r4.x = cb2[30].z * r4.x;
  r4.x = exp2(r4.x);
  r3.w = r3.w ? 0 : r4.x;
  r2.w = r2.w * r3.w + r1.y;
  r2.w = r1.x / r2.w;
  r2.w = min(v5.z, r2.w);
  r1.w = r6.w * r1.w + -0.333299994;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r6.xyz = min(float3(1,1,1), r6.xyz);
  r1.w = saturate(cb2[26].y);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o1.w = t0[r4.z].val[4/4];
  r7.xyzw = t3.Sample(s0_s, v3.zw).xyzw;
  r4.x = t1[r4.w].val[0/4];
  r4.y = t1[r4.w].val[0/4+1];
  r4.z = t1[r4.w].val[0/4+2];
  r4.w = t1[r4.w].val[0/4+3];
  r8.xyzw = r4.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r4.xyzw = saturate(r7.xyzw * r4.xyzw + r8.xyzw);
  r7.x = t1[r0.w].val[0/4];
  r7.y = t1[r0.w].val[0/4+1];
  r7.z = t1[r0.w].val[0/4+2];
  r7.w = t1[r0.w].val[0/4+3];
  r4.xyzw = r4.xyzw * r4.xyzw;
  o5.xyzw = r4.xyzw * r7.xyzw;
  r0.w = cb0[137].w * r1.z;
  r4.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r0.www ? r8.xyz : r4.xyz;
  r7.xyz = r0.www ? float3(0,0,0) : r7.xyz;
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r0.w * 2.04040003 + -0.332399994;
  r1.w = r0.w * -4.79510021 + r1.w;
  r0.w = r0.w * 2.75519991 + r1.w;
  r0.w = 1.33200002 + r0.w;
  r0.w = max(1, r0.w);
  r8.xy = float2(1,0.5) * v3.xy;
  r8.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t2.Sample(s0_s, r8.xy).xyzw;
  r8.xyzw = t2.Sample(s0_s, r8.zw).xyzw;
  r1.w = r8.w * 0.00392156886 + r9.w;
  r1.w = -0.00196078443 + r1.w;
  r10.xyzw = mad((int4)w4.xyyy, int4(15,15,15,15), int4(4,6,5,7));
  r11.x = t1[r10.x].val[0/4];
  r11.y = t1[r10.x].val[0/4+1];
  r11.z = t1[r10.x].val[0/4+2];
  r11.w = t1[r10.x].val[0/4+3];
  r12.x = t1[r10.y].val[0/4];
  r12.y = t1[r10.y].val[0/4+1];
  r12.z = t1[r10.y].val[0/4+2];
  r12.w = t1[r10.y].val[0/4+3];
  r1.w = r1.w * r11.w + r12.w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * r11.xyz + r12.xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r11.x = t1[r10.z].val[0/4];
  r11.y = t1[r10.z].val[0/4+1];
  r11.z = t1[r10.z].val[0/4+2];
  r11.w = t1[r10.z].val[0/4+3];
  r10.x = t1[r10.w].val[0/4];
  r10.y = t1[r10.w].val[0/4+1];
  r10.z = t1[r10.w].val[0/4+2];
  r10.w = t1[r10.w].val[0/4+3];
  r8.xyzw = r8.xyzw * r11.xyzw + r10.xyzw;
  r5.w = 1;
  r3.w = dot(r8.xyzw, r5.xyzw);
  r3.w = max(0, r3.w);
  r1.w = r3.w * r1.w;
  r8.xyz = r1.www * r9.xyz;
  r8.xyz = cb0[157].xyz * r8.xyz;
  r1.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r8.xyz * r4.xyz;
  r9.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r8.xyz = r9.xyz * r8.xyz;
  r4.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r1.x = -r2.w * r1.y + r1.x;
    r1.x = r1.x / r2.w;
    r2.xyz = r2.xyz * r1.xxx + r3.xyz;
    r1.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r3.x = t0[r1.x].val[0/4];
    r3.y = t0[r1.x].val[0/4+1];
    r3.z = t0[r1.x].val[0/4+2];
    r3.xyz = -r3.xyz + r2.xyz;
    r7.x = t0[r1.y].val[0/4];
    r7.y = t0[r1.y].val[0/4+1];
    r7.z = t0[r1.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r3.xyz = cmp(r7.xyz < abs(r3.xyz));
    r1.x = (int)r3.y | (int)r3.x;
    r1.x = (int)r3.z | (int)r1.x;
    r1.y = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r2.xyz = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r1.xxx ? r2.xyz : r0.xyz;
  }
  r2.xyz = cb0[145].yyy * r4.xyz + r8.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r1.w * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.xw = float2(0,0.505882382);
  o2.y = r1.z;
  o3.xyz = r6.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r2.w;
  return;
}