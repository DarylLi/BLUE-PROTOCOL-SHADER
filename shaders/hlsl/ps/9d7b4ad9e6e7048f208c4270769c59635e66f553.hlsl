// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[18];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[9];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[1];
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
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
  r4.xyzw = mad((int4)v4.xxxy, int4(36,36,36,15), int4(4,5,20,1));
  r1.z = t0[r4.x].val[12/4];
  r1.z = cb0[141].w * r1.z;
  r1.w = v6.x ? 1 : -1;
  r1.z = r1.z * r1.w;
  r5.xy = t6.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[9].xxx * r6.xyz + r5.xyz;
  r5.xyz = r5.xyz * r1.zzz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r5.xyz * r1.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r5.xyz = r0.xyz * r1.zzz;
  r6.xyz = cb3[9].yyy * cb3[1].xyz;
  r7.x = t0[r4.y].val[0/4];
  r7.y = t0[r4.y].val[0/4+1];
  r7.z = t0[r4.y].val[0/4+2];
  r8.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r7.xyz;
  r8.xyz = frac(r8.xyz);
  r1.w = dot(r8.xy, r8.yz);
  r1.w = -0.5 + r1.w;
  r1.w = dot(r1.ww, cb3[10].xx);
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = sqrt(r2.w);
  r8.xyz = r8.xyz / r2.www;
  r9.xyz = -cb0[67].xyz + r3.xyz;
  r2.w = dot(r9.xyz, r9.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb3[10].y;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[10].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r4.x = 1 + cb3[10].w;
  r2.w = r4.x * r2.w;
  r2.w = r3.w ? 0 : r2.w;
  r2.w = cb0[143].y + r2.w;
  r2.w = -1 + r2.w;
  r9.xyzw = t7.SampleBias(s2_s, v2.xy, r2.w).xyzw;
  r8.xyz = r1.www * r8.xyz + r9.xyz;
  r1.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r1.www + -r8.xyz;
  r8.xyz = cb3[11].xxx * r9.xyz + r8.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb3[9].w, r4.x, r10.x);
  r9.xyz = r9.xyz * r4.xxx;
  r8.xyz = r8.xyz * r10.xxx + r9.xyz;
  r8.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = cb3[3].xyz * r8.xyz;
  r9.xyz = cb3[11].yyy * r8.xyz;
  r10.xyz = r8.xyz * cb3[11].yyy + cb3[5].xyz;
  r1.w = dot(cb2[8].xyz, cb2[8].xyz);
  r1.w = sqrt(r1.w);
  r11.xyz = cb2[8].xyz / r1.www;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r12.xyz = r5.zxy / r1.www;
  r1.w = saturate(dot(r11.xyz, r12.xyz));
  r2.w = dot(cb2[5].xyz, cb2[5].xyz);
  r2.w = sqrt(r2.w);
  r11.xyz = cb2[5].xyz / r2.www;
  r2.w = saturate(dot(r11.xyz, r12.xyz));
  r2.w = r2.w + -r1.w;
  r1.w = cb2[0].y * r2.w + r1.w;
  r2.w = cb3[11].z * r1.w;
  r2.w = floor(r2.w);
  r2.w = r2.w / cb3[11].w;
  r2.w = r2.w + -r1.w;
  r1.w = saturate(cb3[12].x * r2.w + r1.w);
  r1.w = -1 + r1.w;
  r1.w = r1.w * cb3[12].y + 1;
  r1.w = saturate(1 + -r1.w);
  r2.w = r1.w + r1.w;
  r2.w = min(1, r2.w);
  r11.xyz = r2.www * cb3[5].xyz + r9.xyz;
  r2.x = dot(r5.zxy, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.x = cb3[12].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * cb3[13].x + cb3[12].w;
  r2.xyz = cb3[7].xyz * r2.xxx;
  r2.w = t7.Sample(s2_s, v2.xy).w;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[13].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r2.xyz = r2.xyz * r2.www + r9.xyz;
  r2.w = -0.5 + r1.w;
  r2.w = r2.w + r2.w;
  r2.w = max(0, r2.w);
  r2.xyz = r2.xyz + -r10.xyz;
  r2.xyz = r2.www * r2.xyz + r10.xyz;
  r2.xyz = r2.xyz + -r11.xyz;
  r2.xyz = r1.www * r2.xyz + r11.xyz;
  r2.xyz = -r8.xyz * cb3[11].yyy + r2.xyz;
  r2.xyz = cb3[13].zzz * r2.xyz + r9.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.x = r1.x / cb3[14].z;
  r9.xyz = -cb0[129].xxy + v5.xxy;
  r1.y = r9.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb3[15].x + -r1.y;
  r4.xy = cb0[152].xx + r9.yz;
  r4.xy = (uint2)r4.xy;
  r1.w = (uint)r4.y << 1;
  r1.w = (int)r1.w + (int)r4.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r4.xy = float2(0.015625,0.015625) * r9.yz;
  r2.w = t8.SampleBias(s3_s, r4.xy, cb0[143].y).x;
  r1.w = r2.w + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r8.xyz = saturate(cb3[17].xxx * r8.xyz);
  r1.y = cmp(cb1[0].x != 0.000000);
  r1.w = cmp(0.00100000005 < abs(cb1[0].x));
  r1.y = r1.w ? r1.y : 0;
  r4.xy = floor(v5.xy);
  r1.w = dot(r4.xy, float2(347.834503,3343.28369));
  r1.w = cos(r1.w);
  r1.w = 1000 * r1.w;
  r1.w = frac(r1.w);
  r2.w = cmp(cb1[0].x < 0);
  r3.w = 1 + cb1[0].x;
  r3.w = cmp(r1.w < r3.w);
  r1.w = cmp(cb1[0].x < r1.w);
  r1.w = r2.w ? r3.w : r1.w;
  r1.w = cmp((int)r1.w == 0);
  r1.y = r1.y ? r1.w : 0;
  if (r1.y != 0) discard;
  r1.x = r9.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r2.xyz);
  r2.x = saturate(cb3[13].w);
  r2.y = saturate(cb3[14].x);
  o2.z = r2.y * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb3[14].y);
  r2.yzw = r8.xyz * cb0[136].www + cb0[136].xyz;
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
  r4.xyz = saturate(r2.yzw);
  o4.xyz = sqrt(r4.xyz);
  r0.w = cb0[137].w * r2.x;
  r4.xyz = r1.xyw * cb0[136].www + cb0[136].xyz;
  r8.xyz = r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r9.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r0.www ? r9.xyz : r4.xyz;
  r8.xyz = r0.www ? float3(0,0,0) : r8.xyz;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r0.w * 2.04040003 + -0.332399994;
  r3.w = r0.w * -4.79510021 + r3.w;
  r0.w = r0.w * 2.75519991 + r3.w;
  r0.w = 1.33200002 + r0.w;
  r2.yzw = r4.xyz + r2.yzw;
  r9.xy = float2(1,0.5) * v3.xy;
  r9.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t3.Sample(s0_s, r9.xy).xyzw;
  r9.xyzw = t3.Sample(s0_s, r9.zw).xyzw;
  r3.w = r9.w * 0.00392156886 + r10.w;
  r3.w = -0.00196078443 + r3.w;
  r11.xyzw = mad((int4)w4.xyyy, int4(15,15,15,15), int4(4,6,5,7));
  r12.x = t1[r11.x].val[0/4];
  r12.y = t1[r11.x].val[0/4+1];
  r12.z = t1[r11.x].val[0/4+2];
  r12.w = t1[r11.x].val[0/4+3];
  r13.x = t1[r11.y].val[0/4];
  r13.y = t1[r11.y].val[0/4+1];
  r13.z = t1[r11.y].val[0/4+2];
  r13.w = t1[r11.y].val[0/4+3];
  r3.w = r3.w * r12.w + r13.w;
  r10.xyz = r10.xyz * r10.xyz;
  r10.xyz = r10.xyz * r12.xyz + r13.xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
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
  r3.w = r4.w * r3.w;
  r9.xyz = r3.www * r10.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r10.xyzw = t4.Sample(s0_s, v3.xy).xyzw;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r11.x = r10.w * r10.w;
    r3.w = dot(r10.xyz, r10.xyz);
    r3.w = rsqrt(r3.w);
    r10.xyz = r10.xyz * r3.www;
    r3.w = -r10.w * r10.w + 1;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.zxy * r1.zzz + -r10.xyz;
    r12.xyz = r3.www * r0.xyz + r10.xyz;
    r0.x = saturate(dot(r10.yzx, r5.xyz));
    r0.y = 1 + -r0.x;
    r11.y = r3.w * r0.y + r0.x;
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
  r1.z = r12.y * r12.y;
  r1.z = r12.x * r12.x + -r1.z;
  r10.x = t2[6].val[0/4];
  r10.y = t2[6].val[0/4+1];
  r10.z = t2[6].val[0/4+2];
  r0.xyz = r13.xyz + r0.xyz;
  r0.xyz = r10.xyz * r1.zzz + r0.xyz;
  r0.xyzw = max(float4(0,0,0,1), r0.xyzw);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.z = r11.x * r11.y;
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = r9.xyz * cb0[157].xyz + r0.xyz;
  r1.z = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r2.yzw;
  r2.yzw = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.yzw = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r2.yzw;
  r2.yzw = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r2.yzw;
  r2.yzw = float3(1.33200002,1.33200002,1.33200002) + r2.yzw;
  r2.yzw = max(float3(1,1,1), r2.yzw);
  r0.xyz = r2.yzw * r0.xyz;
  r2.yzw = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = max(float3(0,0,0), r6.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xyz = -r7.xyz + r3.xyz;
    r3.w = mad((int)v4.x, 36, 19);
    r7.x = t0[r3.w].val[0/4];
    r7.y = t0[r3.w].val[0/4+1];
    r7.z = t0[r3.w].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r3.www ? r3.xyz : r4.xyz;
  }
  r0.xyz = cb0[145].yyy * r2.yzw + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r2.y = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r2.y = frac(r2.y);
  r2.y = -0.5 + r2.y;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r1.z * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.xw = float2(0,0.509803951);
  o2.y = r2.x;
  o3.xyz = r1.xyw;
  o6.xyzw = float4(0,0,0,0);
  return;
}