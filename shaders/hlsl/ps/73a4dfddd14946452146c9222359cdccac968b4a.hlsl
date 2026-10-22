// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

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
  float4 cb3[2];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r2.xyz * r0.www;
  r1.zw = cb4[12].xx * v2.xy;
  r0.w = cb4[12].y + cb0[143].y;
  r4.xy = t4.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb4[12].zzz * r5.xyz + r4.xyz;
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
  r2.w = t5.SampleBias(s2_s, v2.xy, cb0[143].y).x;
  r2.w = -1 + r2.w;
  r5.xy = cb4[13].zw + r2.ww;
  r5.xy = saturate(ceil(r5.xy));
  r5.xz = float2(1,1) + -r5.xy;
  r2.w = r5.x * r5.y;
  r6.xyz = cb4[2].xyz * r2.www;
  r7.xyz = -r2.www * cb4[2].xyz + cb4[3].xyz;
  r6.xyz = cb4[14].xxx * r7.xyz + r6.xyz;
  r7.xyzw = t6.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r3.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r3.www + -r7.xyz;
  r7.xyz = cb4[14].www * r8.xyz + r7.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb4[14].z, r5.x, r9.x);
  r8.xyz = r8.xyz * r5.xxx;
  r7.xyz = r7.xyz * r9.xxx + r8.xyz;
  r7.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb4[5].xyz * r7.xyz;
  r8.xyz = cb4[15].xxx * r7.xyz;
  r8.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r8.xyz);
  r9.xyz = cb4[2].xyz + -r8.xyz;
  r8.xyz = saturate(r2.www * r9.xyz + r8.xyz);
  r1.zw = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb4[15].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.z = saturate(cb4[15].z + r1.z);
  r9.x = saturate(cb4[15].w + r1.w);
  r1.w = dot(r4.zxy, r3.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb4[16].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb4[16].y * r1.w;
  r2.w = saturate(cb4[16].w + v1.z);
  r1.w = r2.w * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r9.y = saturate(cb4[17].x * r1.w);
  r1.w = cb4[17].z * r5.z + r5.y;
  r2.w = cb4[17].w * cb3[1].w;
  r3.x = cmp(cb0[31].w < 1);
  r3.y = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.y + r1.x;
  r1.x = r3.x ? r1.y : r1.x;
  r1.y = cb4[18].x + r1.x;
  r3.xy = float2(0.649999976,0.487499982) * cb3[1].ww;
  r3.z = cb3[1].w * 0.617499948 + -r1.x;
  r3.y = saturate(r3.z / r3.y);
  r3.z = -cb3[1].w * 0.649999976 + 8000;
  r3.x = r3.y * r3.z + r3.x;
  r1.y = r1.y / r3.x;
  r1.x = r1.x / cb4[18].x;
  r3.x = cmp(9.99999975e-006 < abs(r2.w));
  r2.w = cmp(r2.w >= 0);
  r1.y = r2.w ? r1.y : r1.x;
  r1.x = r3.x ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb4[17].w));
  r2.w = 1 + cb4[17].w;
  r1.y = r1.y ? r2.w : 1.39999998;
  r3.xyz = -cb0[129].xxy + v4.xxy;
  r2.w = r3.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r1.y = -r2.w + r1.y;
  r3.xw = cb0[152].xx + r3.yz;
  r3.xw = (uint2)r3.xw;
  r2.w = (uint)r3.w << 1;
  r2.w = (int)r2.w + (int)r3.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r3.xy = float2(0.015625,0.015625) * r3.yz;
  r3.x = t8.SampleBias(s5_s, r3.xy, cb0[143].y).x;
  r2.w = r3.x + r2.w;
  r2.w = 0.166666672 * r2.w;
  r1.x = r1.x * r1.y + r2.w;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r7.w * r1.x;
  r3.xyz = saturate(cb4[19].www * r7.xyz);
  r1.x = r1.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb4[17].y);
  r1.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyzw = t3.Sample(s0_s, v3.zw).xyzw;
  r5.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r3.xyzw = saturate(r3.xyzw * cb2[1].xyzw + r5.xyzw);
  r3.xyzw = r3.xyzw * r3.xyzw;
  o5.xyzw = cb2[0].xyzw * r3.xyzw;
  r3.xyz = saturate(r1.xyz);
  o4.xyz = sqrt(r3.xyz);
  r1.w = 0.0799999982 * r9.y;
  r3.xyz = -r9.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r8.xyz;
  r3.xyz = r9.xxx * r3.xyz + r1.www;
  r5.xyz = -r8.xyz * r9.xxx + r8.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyz = r3.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r1.www ? r7.xyz : r5.xyz;
  r3.xyz = r1.www ? float3(0,0,0) : r3.xyz;
  r1.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.xyz = r5.xyz + r1.xyz;
  r7.xy = float2(1,0.5) * v3.xy;
  r7.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t1.Sample(s0_s, r7.xy).xyzw;
  r7.xyzw = t1.Sample(s0_s, r7.zw).xyzw;
  r2.w = r7.w * 0.00392156886 + r10.w;
  r2.w = -0.00196078443 + r2.w;
  r2.w = r2.w * cb2[4].w + cb2[6].w;
  r10.xyz = r10.xyz * r10.xyz;
  r10.xyz = r10.xyz * cb2[4].xyz + cb2[6].xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r3.w = dot(r7.xyzw, r4.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r7.xyz = r2.www * r10.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r10.xyzw = t2.Sample(s0_s, v3.xy).xyzw;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r11.x = r10.w * r10.w;
    r2.w = dot(r10.xyz, r10.xyz);
    r2.w = rsqrt(r2.w);
    r10.xyz = r10.xyz * r2.www;
    r2.w = -r10.w * r10.w + 1;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.zxy * r0.www + -r10.xyz;
    r0.xyz = r2.www * r0.xyz + r10.xyz;
    r3.w = saturate(dot(r10.yzx, r4.xyz));
    r4.w = 1 + -r3.w;
    r11.y = r2.w * r4.w + r3.w;
  } else {
    r0.xyz = r4.zxy;
    r11.xy = float2(1,1);
  }
  r10.x = t0[0].val[0/4];
  r10.y = t0[0].val[0/4+1];
  r10.z = t0[0].val[0/4+2];
  r10.w = t0[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r12.x = t0[1].val[0/4];
  r12.y = t0[1].val[0/4+1];
  r12.z = t0[1].val[0/4+2];
  r12.w = t0[1].val[0/4+3];
  r10.y = dot(r12.xyzw, r0.xyzw);
  r12.x = t0[2].val[0/4];
  r12.y = t0[2].val[0/4+1];
  r12.z = t0[2].val[0/4+2];
  r12.w = t0[2].val[0/4+3];
  r10.z = dot(r12.xyzw, r0.xyzw);
  r12.xyzw = r0.xyzz * r0.yzzx;
  r13.x = t0[3].val[0/4];
  r13.y = t0[3].val[0/4+1];
  r13.z = t0[3].val[0/4+2];
  r13.w = t0[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r14.x = t0[4].val[0/4];
  r14.y = t0[4].val[0/4+1];
  r14.z = t0[4].val[0/4+2];
  r14.w = t0[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r12.xyzw);
  r14.x = t0[5].val[0/4];
  r14.y = t0[5].val[0/4+1];
  r14.z = t0[5].val[0/4+2];
  r14.w = t0[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r12.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t0[6].val[0/4];
  r0.z = t0[6].val[0/4+1];
  r0.w = t0[6].val[0/4+2];
  r10.xyz = r13.xyz + r10.xyz;
  r0.xyz = r0.yzw * r0.xxx + r10.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r11.x * r11.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r7.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r1.xyz;
  r1.xyz = r8.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.xyz = r8.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.xyz;
  r1.xyz = r8.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.xyz;
  r1.xyz = float3(1.33200002,1.33200002,1.33200002) + r1.xyz;
  r1.xyzw = max(float4(1,1,1,1), r1.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r3.xyz = max(float3(0,0,0), r6.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r2.xyz = -cb0[70].xyz + r2.xyz;
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r2.w = (int)r5.y | (int)r5.x;
    r2.w = (int)r5.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r2.www ? r2.xyz : r3.xyz;
  }
  r0.xyz = cb0[145].yyy * r1.xyz + r0.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.509803951;
  o2.xy = r9.xy;
  o3.xyz = r8.xyz;
  o6.xyzw = float4(0,0,0,0);
  return;
}