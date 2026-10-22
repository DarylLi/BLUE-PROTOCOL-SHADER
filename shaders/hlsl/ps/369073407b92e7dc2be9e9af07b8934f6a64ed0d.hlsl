// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

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
  float4 cb0[188];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
  r3.w = t6.SampleBias(s1_s, r5.xy, cb0[143].y).x;
  r4.x = cb2[16].w + -cb2[2].x;
  r3.w = saturate(r3.w * r4.x + cb2[2].x);
  r3.w = cb2[17].x + r3.w;
  r3.w = r3.w * -cb2[17].y + cb2[17].y;
  r5.xyz = -cb0[67].xyz + r3.xyz;
  r4.x = dot(r5.xyz, r5.xyz);
  r4.x = sqrt(r4.x);
  r5.x = cb2[17].w * r4.x;
  r3.w = r3.w * r5.x + cb0[143].y;
  r5.xy = t7.SampleBias(s2_s, v2.xy, r3.w).xy;
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
  r6.xyz = cb2[18].yyy * cb2[3].xyz;
  r7.xyzw = t8.SampleBias(s3_s, v2.xy, r3.w).xyzw;
  r3.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r3.www + -r7.xyz;
  r7.xyz = cb2[19].xxx * r8.xyz + r7.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb2[18].w, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r7.xyz = r7.xyz * r10.xxx + r8.xyz;
  r7.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = cb2[5].xyz * r7.xyz;
  r3.w = saturate(dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r6.w = 1 + -r3.w;
  r6.w = r6.w + r6.w;
  r9.xyz = -r6.www * cb2[8].xyz + float3(1,1,1);
  r6.w = r3.w + r3.w;
  r10.xyz = cb2[7].xyz * r6.www;
  r3.w = cmp(r3.w >= 0.5);
  r9.xyz = r3.www ? r9.xyz : r10.xyz;
  r10.xyz = cb2[7].xyz + -r9.xyz;
  r9.xyz = cb2[19].yyy * r10.xyz + r9.xyz;
  r3.w = r4.x / cb2[19].z;
  r6.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb2[19].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r6.w ? 0 : r3.w;
  r7.xyz = -r7.xyz * cb2[5].xyz + r9.xyz;
  r7.xyz = r7.xyz * r3.www;
  r7.xyz = cb2[20].xxx * r7.xyz + r8.xyz;
  r8.xy = r3.xy / cb2[21].xx;
  r8.xy = float2(-0.5,-0.5) + r8.xy;
  r9.x = dot(r8.xy, cb2[11].xy);
  r9.y = dot(r8.xy, cb2[12].xy);
  r8.xy = cb0[142].zz * cb2[20].zw + r9.xy;
  r8.xy = float2(0.5,0.5) + r8.xy;
  r3.w = t9.SampleBias(s4_s, r8.xy, cb0[143].y).x;
  r3.w = cb2[22].z * r3.w;
  r6.w = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb2[22].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = min(1, r3.w);
  r3.w = r6.w ? 0 : r3.w;
  r8.x = cb2[23].w * cb0[142].z;
  r8.y = cb2[24].x * cb0[142].z;
  r8.zw = r3.xy / cb2[24].yy;
  r8.xy = r8.xy + r8.zw;
  r6.w = t10.SampleBias(s5_s, r8.xy, cb0[143].y).x;
  r6.w = cb2[24].z * r6.w;
  r8.x = cmp(0 >= r6.w);
  r6.w = log2(r6.w);
  r6.w = cb2[24].w * r6.w;
  r6.w = exp2(r6.w);
  r6.w = r8.x ? 0 : r6.w;
  r6.w = saturate(cb2[25].x + r6.w);
  r6.w = 1 + -r6.w;
  r6.w = cb2[25].y * r6.w;
  r8.x = cmp(0 >= abs(r6.w));
  r6.w = log2(abs(r6.w));
  r6.w = cb2[25].z * r6.w;
  r6.w = exp2(r6.w);
  r6.w = r8.x ? 0 : r6.w;
  r4.x = r4.x / cb2[25].w;
  r8.x = cmp(0 >= r4.x);
  r4.x = log2(r4.x);
  r4.x = cb2[26].x * r4.x;
  r4.x = exp2(r4.x);
  r4.x = min(1, r4.x);
  r4.x = r8.x ? -0 : -r4.x;
  r4.x = r6.w + r4.x;
  r4.x = 1 + r4.x;
  r4.x = min(1, r4.x);
  r6.w = cb2[26].y + -cb2[26].z;
  r4.x = r4.x * r6.w + cb2[26].z;
  r4.x = 1 + -r4.x;
  r3.w = r4.x * r3.w;
  r8.xyz = cb2[14].xyz * r3.www;
  r9.x = t0[r4.y].val[0/4];
  r9.y = t0[r4.y].val[0/4+1];
  r9.z = t0[r4.y].val[0/4+2];
  r3.w = r9.x + r9.y;
  r3.w = r3.w + r9.z;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = cb1[2].x * r3.w;
  r1.z = 0.100000001 * r3.w;
  r1.zw = v2.xy + r1.zw;
  r9.xyz = t11.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r7.xyz = r9.xyz * r8.xyz + r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
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
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r4.x = r1.x * cb0[65].z + -cb0[65].w;
  r4.x = 1 / r4.x;
  r3.w = r4.x + r3.w;
  r1.w = r1.w ? r1.y : r3.w;
  r1.w = r1.w / cb2[28].x;
  r8.xyz = -cb0[129].xxy + v5.xxy;
  r3.w = r8.x * cb0[130].z + -0.469999999;
  r3.w = 4.93230057 * r3.w;
  r3.w = cos(r3.w);
  r3.w = 0.899999976 + r3.w;
  r3.w = saturate(0.555555582 * r3.w);
  r3.w = cb2[28].z + -r3.w;
  r4.xy = cb0[152].xx + r8.yz;
  r4.xy = (uint2)r4.xy;
  r4.y = (uint)r4.y << 1;
  r4.x = (int)r4.y + (int)r4.x;
  r4.x = (uint)r4.x % 5;
  r4.x = (uint)r4.x;
  r8.xy = float2(0.015625,0.015625) * r8.yz;
  r4.y = t12.SampleBias(s7_s, r8.xy, cb0[143].y).x;
  r4.x = r4.x + r4.y;
  r4.x = 0.166666672 * r4.x;
  r1.w = r1.w * r3.w + r4.x;
  r1.w = saturate(-0.5 + r1.w);
  r3.w = cb2[30].y * r4.x;
  r4.x = cmp(0 >= v2.y);
  r4.y = log2(v2.y);
  r4.y = cb2[30].z * r4.y;
  r4.y = exp2(r4.y);
  r4.x = r4.x ? 0 : r4.y;
  r3.w = r3.w * r4.x + r1.y;
  r3.w = r1.x / r3.w;
  r3.w = min(v5.z, r3.w);
  r1.w = r7.w * r1.w + -0.333299994;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r7.xyz = min(float3(1,1,1), r7.xyz);
  r1.w = saturate(cb2[26].y);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o1.w = t0[r4.z].val[4/4];
  r8.xyzw = t5.Sample(s0_s, v3.zw).xyzw;
  r4.x = t1[r4.w].val[0/4];
  r4.y = t1[r4.w].val[0/4+1];
  r4.z = t1[r4.w].val[0/4+2];
  r4.w = t1[r4.w].val[0/4+3];
  r9.xyzw = r4.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r4.xyzw = saturate(r8.xyzw * r4.xyzw + r9.xyzw);
  r8.x = t1[r0.w].val[0/4];
  r8.y = t1[r0.w].val[0/4+1];
  r8.z = t1[r0.w].val[0/4+2];
  r8.w = t1[r0.w].val[0/4+3];
  r4.xyzw = r4.xyzw * r4.xyzw;
  o5.xyzw = r4.xyzw * r8.xyzw;
  r0.w = cb0[137].w * r1.z;
  r4.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r9.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r0.www ? r9.xyz : r4.xyz;
  r8.xyz = r0.www ? float3(0,0,0) : r8.xyz;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r0.w * 2.04040003 + -0.332399994;
  r1.w = r0.w * -4.79510021 + r1.w;
  r0.w = r0.w * 2.75519991 + r1.w;
  r0.w = 1.33200002 + r0.w;
  r9.xy = float2(1,0.5) * v3.xy;
  r9.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t3.Sample(s0_s, r9.xy).xyzw;
  r9.xyzw = t3.Sample(s0_s, r9.zw).xyzw;
  r1.w = r9.w * 0.00392156886 + r10.w;
  r1.w = -0.00196078443 + r1.w;
  r11.xyzw = mad((int4)w4.xyyy, int4(15,15,15,15), int4(4,6,5,7));
  r12.x = t1[r11.x].val[0/4];
  r12.y = t1[r11.x].val[0/4+1];
  r12.z = t1[r11.x].val[0/4+2];
  r12.w = t1[r11.x].val[0/4+3];
  r13.x = t1[r11.y].val[0/4];
  r13.y = t1[r11.y].val[0/4+1];
  r13.z = t1[r11.y].val[0/4+2];
  r13.w = t1[r11.y].val[0/4+3];
  r1.w = r1.w * r12.w + r13.w;
  r10.xyz = r10.xyz * r10.xyz;
  r10.xyz = r10.xyz * r12.xyz + r13.xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r12.x = t1[r11.z].val[0/4];
  r12.y = t1[r11.z].val[0/4+1];
  r12.z = t1[r11.z].val[0/4+2];
  r12.w = t1[r11.z].val[0/4+3];
  r11.x = t1[r11.w].val[0/4];
  r11.y = t1[r11.w].val[0/4+1];
  r11.z = t1[r11.w].val[0/4+2];
  r11.w = t1[r11.w].val[0/4+3];
  r9.xyzw = r9.xyzw * r12.xyzw + r11.xyzw;
  r5.w = 1;
  r4.w = dot(r9.xyzw, r5.xyzw);
  r4.w = max(0, r4.w);
  r1.w = r4.w * r1.w;
  r9.xyz = r1.www * r10.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r10.xyzw = t4.Sample(s0_s, v3.xy).xyzw;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r11.x = r10.w * r10.w;
    r1.w = dot(r10.xyz, r10.xyz);
    r1.w = rsqrt(r1.w);
    r10.xyz = r10.xyz * r1.www;
    r1.w = -r10.w * r10.w + 1;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.zxy * r2.www + -r10.xyz;
    r12.xyz = r1.www * r0.xyz + r10.xyz;
    r0.x = saturate(dot(r10.yzx, r5.xyz));
    r0.y = 1 + -r0.x;
    r11.y = r1.w * r0.y + r0.x;
  } else {
    r12.xyz = r5.zxy;
    r11.xy = float2(1,1);
  }
  r10.x = t2[0].val[0/4];
  r10.y = t2[0].val[0/4+1];
  r10.z = t2[0].val[0/4+2];
  r10.w = t2[0].val[0/4+3];
  r12.w = 1;
  r0.x = dot(r10.xyzw, r12.xyzw);
  r10.x = t2[1].val[0/4];
  r10.y = t2[1].val[0/4+1];
  r10.z = t2[1].val[0/4+2];
  r10.w = t2[1].val[0/4+3];
  r0.y = dot(r10.xyzw, r12.xyzw);
  r10.x = t2[2].val[0/4];
  r10.y = t2[2].val[0/4+1];
  r10.z = t2[2].val[0/4+2];
  r10.w = t2[2].val[0/4+3];
  r0.z = dot(r10.xyzw, r12.xyzw);
  r10.xyzw = r12.xyzz * r12.yzzx;
  r13.x = t2[3].val[0/4];
  r13.y = t2[3].val[0/4+1];
  r13.z = t2[3].val[0/4+2];
  r13.w = t2[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r10.xyzw);
  r14.x = t2[4].val[0/4];
  r14.y = t2[4].val[0/4+1];
  r14.z = t2[4].val[0/4+2];
  r14.w = t2[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r10.xyzw);
  r14.x = t2[5].val[0/4];
  r14.y = t2[5].val[0/4+1];
  r14.z = t2[5].val[0/4+2];
  r14.w = t2[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r10.xyzw);
  r1.w = r12.y * r12.y;
  r1.w = r12.x * r12.x + -r1.w;
  r10.x = t2[6].val[0/4];
  r10.y = t2[6].val[0/4+1];
  r10.z = t2[6].val[0/4+2];
  r0.xyz = r13.xyz + r0.xyz;
  r0.xyz = r10.xyz * r1.www + r0.xyz;
  r0.xyzw = max(float4(0,0,0,1), r0.xyzw);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.w = r11.x * r11.y;
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r1.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r4.xyz;
  r9.xyz = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r0.xyz = r9.xyz * r0.xyz;
  r4.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r1.x = -r3.w * r1.y + r1.x;
    r1.x = r1.x / r3.w;
    r2.xyz = r2.xyz * r1.xxx + r3.xyz;
    r1.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r3.x = t0[r1.x].val[0/4];
    r3.y = t0[r1.x].val[0/4+1];
    r3.z = t0[r1.x].val[0/4+2];
    r3.xyz = -r3.xyz + r2.xyz;
    r8.x = t0[r1.y].val[0/4];
    r8.y = t0[r1.y].val[0/4+1];
    r8.z = t0[r1.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r3.xyz = cmp(r8.xyz < abs(r3.xyz));
    r1.x = (int)r3.y | (int)r3.x;
    r1.x = (int)r3.z | (int)r1.x;
    r1.y = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r2.xyz = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r6.xyz = r1.xxx ? r2.xyz : r6.xyz;
  }
  r0.xyz = cb0[145].yyy * r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
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
  o3.xyz = r7.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r3.w;
  return;
}