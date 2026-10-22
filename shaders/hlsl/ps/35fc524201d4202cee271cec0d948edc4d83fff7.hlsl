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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[15];
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
  float4 cb0[188];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float3 v5 : TEXCOORD9,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3,
  out float4 o4 : SV_Target4,
  out float4 o5 : SV_Target5,
  out float4 o6 : SV_Target6,
  out float oDepthLE : SV_DepthLessEqual)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
  r4.xyz = -cb0[70].xyz + v5.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = r4.xy / cb3[8].zz;
  r5.xy = t5.SampleBias(s2_s, r1.zw, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r5.xy = -r5.xy;
  r5.z = v1.z * r0.w;
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = sqrt(r0.w);
  r5.xyz = r5.xyz / r0.www;
  r6.x = dot(v0.xyz, r5.xyz);
  r6.y = dot(r0.zxy, r5.xyz);
  r6.z = dot(v1.xyz, r5.xyz);
  r5.xyz = float3(0,0,1) + -r6.xyz;
  r5.xyz = cb3[8].www * r5.xyz + r6.xyz;
  r6.xy = r4.xy / cb3[9].zz;
  r6.zw = t6.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.zw, r6.zw);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.xy = -r6.zw;
  r7.z = v1.z * r0.w;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r7.xyz = r7.xyz / r0.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.zxy, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb3[9].www * r7.xyz + r8.xyz;
  r4.xyz = r4.xyz / cb3[10].zzz;
  r0.w = t7.Sample(s0_s, r4.xz).x;
  r2.w = t7.Sample(s0_s, r4.yz).x;
  r4.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r2.w = r2.w + -r0.w;
  r0.w = r4.z * r2.w + r0.w;
  r2.w = t7.Sample(s0_s, r4.xy).x;
  r2.w = r2.w + -r0.w;
  r0.w = r4.w * r2.w + r0.w;
  r2.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[10].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb3[11].x * r0.w;
  r0.w = r2.w ? 0 : r0.w;
  r0.w = saturate(-v2.z + r0.w);
  r0.w = saturate(v2.y + r0.w);
  r4.xyz = r7.xyz + -r5.xyz;
  r4.xyz = r0.www * r4.xyz + r5.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r4.xyz * r2.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = r2.www * r0.xyz;
  r3.w = dot(-cb2[5].xyz, -cb2[5].xyz);
  r3.w = sqrt(r3.w);
  r5.xyz = -cb2[5].xyz / r3.www;
  r3.w = dot(r5.yzx, r4.xyz);
  r3.w = 1 + r3.w;
  r7.xyz = cb0[67].xyz + -r3.xyz;
  r5.w = dot(r7.xyz, r7.xyz);
  r5.w = sqrt(r5.w);
  r7.xyz = r7.xyz / r5.www;
  r5.x = saturate(dot(-r7.xyz, r5.xyz));
  r5.y = 1 + -cb1[1].x;
  r5.x = saturate(r5.x + r5.y);
  r3.w = r5.x * r3.w;
  r5.x = dot(r4.zxy, r2.xyz);
  r5.x = max(0, r5.x);
  r5.x = 1 + -r5.x;
  r5.x = max(9.99999975e-005, abs(r5.x));
  r5.x = log2(r5.x);
  r5.z = cb1[1].y * r5.x;
  r5.z = exp2(r5.z);
  r5.w = 1 + -cb1[0].w;
  r5.z = r5.z * r5.w + cb1[0].w;
  r5.w = cmp(r5.z >= cb1[0].y);
  r5.w = r5.w ? 1.000000 : 0;
  r5.z = r5.w * r5.z;
  r5.w = r0.y * r2.w + 1;
  r6.z = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb1[0].x * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.z ? 0 : r5.w;
  r5.z = r5.z * r5.w;
  r5.w = -r0.y * r2.w + 1;
  r6.z = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb1[1].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = min(1, r5.w);
  r5.w = r6.z ? 0 : r5.w;
  r5.z = r5.z * r5.w;
  r5.z = cb1[0].z * r5.z;
  r3.w = r5.z * r3.w;
  r8.xyz = cb2[4].xyz * r3.www;
  r3.w = dot(-cb2[8].xyz, -cb2[8].xyz);
  r3.w = sqrt(r3.w);
  r9.xyz = -cb2[8].xyz / r3.www;
  r3.w = dot(r9.yzx, r4.xyz);
  r3.w = 1 + r3.w;
  r5.w = saturate(dot(-r7.xyz, r9.xyz));
  r5.y = saturate(r5.w + r5.y);
  r3.w = r5.y * r3.w;
  r3.w = r3.w * r5.z;
  r5.yzw = cb2[9].xyz * r3.www;
  r5.yzw = cb2[1].yyy * r5.yzw;
  r5.yzw = r8.xyz * cb2[1].xxx + r5.yzw;
  r5.yzw = cb1[2].xyz * r5.yzw;
  r7.xyz = cb3[2].xyz * r5.yzw;
  r5.yzw = -r5.yzw * cb3[2].xyz + cb3[3].xyz;
  r5.yzw = cb3[11].yyy * r5.yzw + r7.xyz;
  r6.zw = r3.xy / cb3[8].zz;
  r7.xyz = t8.Sample(s0_s, r6.zw).xyz;
  r7.xyz = cb3[5].xyz * r7.xyz;
  r6.zw = r3.xy / cb3[9].zz;
  r8.xyz = t9.Sample(s0_s, r6.zw).xyz;
  r8.xyz = r8.xyz * cb3[7].xyz + -r7.xyz;
  r7.xyz = r0.www * r8.xyz + r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r1.zw = t10.Sample(s0_s, r1.zw).xy;
  r6.xy = t11.Sample(s0_s, r6.xy).xy;
  r3.w = r6.y + -r1.w;
  r8.x = saturate(r0.w * r3.w + r1.w);
  r1.w = cb3[11].z * r5.x;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb3[11].w * r1.w;
  r3.w = saturate(cb3[12].y + v1.z);
  r1.w = r3.w * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r8.y = saturate(cb3[12].z * r1.w);
  r1.z = cb3[12].w + r1.z;
  r1.w = cb3[13].x + r6.x;
  r1.w = r1.w + -r1.z;
  r0.w = saturate(r0.w * r1.w + r1.z);
  r1.zw = -cb0[129].xy + v6.xy;
  r6.xy = cb0[152].xx + r1.zw;
  r6.xy = (uint2)r6.xy;
  r3.w = (uint)r6.y << 1;
  r3.w = (int)r3.w + (int)r6.x;
  r3.w = (uint)r3.w % 5;
  r3.w = (uint)r3.w;
  r1.zw = float2(0.015625,0.015625) * r1.zw;
  r1.z = t12.SampleBias(s4_s, r1.zw, cb0[143].y).x;
  r1.z = r3.w + r1.z;
  r1.z = cb3[13].y * r1.z;
  r1.z = 0.166666672 * r1.z;
  r1.w = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r5.x = r1.x * cb0[65].z + -cb0[65].w;
  r5.x = 1 / r5.x;
  r3.w = r5.x + r3.w;
  r1.w = r1.w ? r1.y : r3.w;
  r1.w = r1.w / cb3[13].z;
  r3.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[13].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = cb3[14].x * r1.w;
  r1.w = max(1, r1.w);
  r1.w = r3.w ? 1 : r1.w;
  r1.z = r1.z * r1.w + r1.y;
  r1.z = r1.x / r1.z;
  r1.z = min(v6.z, r1.z);
  r6.xyz = min(float3(1,1,1), r7.xyz);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r7.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,4,6,5));
  o1.w = t0[r7.x].val[4/4];
  r0.w = 0.0799999982 * r8.y;
  r9.xyz = -r8.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r6.xyz;
  r9.xyz = r8.xxx * r9.xyz + r0.www;
  r10.xyz = -r6.xyz * r8.xxx + r6.xyz;
  r10.xyz = r10.xyz * cb0[136].www + cb0[136].xyz;
  r9.xyz = r9.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r11.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r10.xyz = r0.www ? r11.xyz : r10.xyz;
  r9.xyz = r0.www ? float3(0,0,0) : r9.xyz;
  r0.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r0.w * 2.04040003 + -0.332399994;
  r1.w = r0.w * -4.79510021 + r1.w;
  r0.w = r0.w * 2.75519991 + r1.w;
  r0.w = 1.33200002 + r0.w;
  r8.zw = float2(1,0.5) * v3.xy;
  r11.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r12.xyzw = t3.Sample(s1_s, r8.zw).xyzw;
  r11.xyzw = t3.Sample(s1_s, r11.xy).xyzw;
  r1.w = r11.w * 0.00392156886 + r12.w;
  r1.w = -0.00196078443 + r1.w;
  r13.x = t1[r7.y].val[0/4];
  r13.y = t1[r7.y].val[0/4+1];
  r13.z = t1[r7.y].val[0/4+2];
  r13.w = t1[r7.y].val[0/4+3];
  r14.x = t1[r7.z].val[0/4];
  r14.y = t1[r7.z].val[0/4+1];
  r14.z = t1[r7.z].val[0/4+2];
  r14.w = t1[r7.z].val[0/4+3];
  r1.w = r1.w * r13.w + r14.w;
  r7.xyz = r12.xyz * r12.xyz;
  r7.xyz = r7.xyz * r13.xyz + r14.xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r12.x = t1[r7.w].val[0/4];
  r12.y = t1[r7.w].val[0/4+1];
  r12.z = t1[r7.w].val[0/4+2];
  r12.w = t1[r7.w].val[0/4+3];
  r3.w = mad((int)w4.x, 15, 7);
  r13.x = t1[r3.w].val[0/4];
  r13.y = t1[r3.w].val[0/4+1];
  r13.z = t1[r3.w].val[0/4+2];
  r13.w = t1[r3.w].val[0/4+3];
  r11.xyzw = r11.xyzw * r12.xyzw + r13.xyzw;
  r4.w = 1;
  r3.w = dot(r11.xyzw, r4.xyzw);
  r3.w = max(0, r3.w);
  r1.w = r3.w * r1.w;
  r7.xyz = r1.www * r7.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r11.xyzw = t4.Sample(s1_s, v3.xy).xyzw;
    r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r12.x = r11.w * r11.w;
    r1.w = dot(r11.xyz, r11.xyz);
    r1.w = rsqrt(r1.w);
    r11.xyz = r11.xyz * r1.www;
    r1.w = -r11.w * r11.w + 1;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.zxy * r2.www + -r11.xyz;
    r13.xyz = r1.www * r0.xyz + r11.xyz;
    r0.x = saturate(dot(r11.yzx, r4.xyz));
    r0.y = 1 + -r0.x;
    r12.y = r1.w * r0.y + r0.x;
  } else {
    r13.xyz = r4.zxy;
    r12.xy = float2(1,1);
  }
  r11.x = t2[0].val[0/4];
  r11.y = t2[0].val[0/4+1];
  r11.z = t2[0].val[0/4+2];
  r11.w = t2[0].val[0/4+3];
  r13.w = 1;
  r0.x = dot(r11.xyzw, r13.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r0.y = dot(r11.xyzw, r13.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r0.z = dot(r11.xyzw, r13.xyzw);
  r11.xyzw = r13.xyzz * r13.yzzx;
  r14.x = t2[3].val[0/4];
  r14.y = t2[3].val[0/4+1];
  r14.z = t2[3].val[0/4+2];
  r14.w = t2[3].val[0/4+3];
  r14.x = dot(r14.xyzw, r11.xyzw);
  r15.x = t2[4].val[0/4];
  r15.y = t2[4].val[0/4+1];
  r15.z = t2[4].val[0/4+2];
  r15.w = t2[4].val[0/4+3];
  r14.y = dot(r15.xyzw, r11.xyzw);
  r15.x = t2[5].val[0/4];
  r15.y = t2[5].val[0/4+1];
  r15.z = t2[5].val[0/4+2];
  r15.w = t2[5].val[0/4+3];
  r14.z = dot(r15.xyzw, r11.xyzw);
  r1.w = r13.y * r13.y;
  r1.w = r13.x * r13.x + -r1.w;
  r11.x = t2[6].val[0/4];
  r11.y = t2[6].val[0/4+1];
  r11.z = t2[6].val[0/4+2];
  r0.xyz = r14.xyz + r0.xyz;
  r0.xyz = r11.xyz * r1.www + r0.xyz;
  r0.xyzw = max(float4(0,0,0,1), r0.xyzw);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.w = r12.x * r12.y;
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r7.xyz * cb0[157].xyz + r0.xyz;
  r1.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r10.xyz;
  r7.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r0.xyz = r7.xyz * r0.xyz;
  r7.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r5.xyz = max(float3(0,0,0), r5.yzw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r1.x = -r1.z * r1.y + r1.x;
    r1.x = r1.x / r1.z;
    r2.xyz = r2.xyz * r1.xxx + r3.xyz;
    r1.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r3.x = t0[r1.x].val[0/4];
    r3.y = t0[r1.x].val[0/4+1];
    r3.z = t0[r1.x].val[0/4+2];
    r3.xyz = -r3.xyz + r2.xyz;
    r9.x = t0[r1.y].val[0/4];
    r9.y = t0[r1.y].val[0/4+1];
    r9.z = t0[r1.y].val[0/4+2];
    r9.xyz = float3(1,1,1) + r9.xyz;
    r3.xyz = cmp(r9.xyz < abs(r3.xyz));
    r1.x = (int)r3.y | (int)r3.x;
    r1.x = (int)r3.z | (int)r1.x;
    r1.y = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.y = 0.00200000009 * r1.y;
    r1.y = frac(r1.y);
    r1.y = cmp(0.5 < r1.y);
    r2.xyz = r1.yyy ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r1.xxx ? r2.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r7.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r1.w * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.w = 0.75686276;
  o2.xy = r8.xy;
  o3.xyz = r6.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  oDepthLE = r1.z;
  return;
}