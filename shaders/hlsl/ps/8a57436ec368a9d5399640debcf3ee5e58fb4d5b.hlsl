// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[17];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[2];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[9];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  r0.w = cb1[4].w * cb0[141].w;
  r1.z = v6.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = t4.SampleBias(s1_s, v3.xy, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r4.xy, r4.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r4.z = sqrt(r1.z);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[9].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r4.xyz = r0.xyz * r0.www;
  r5.xyz = cb5[9].yyy * cb5[1].xyz;
  r6.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * cb1[5].xyz;
  r6.xyz = v2.xxx * float3(100,10,1) + r6.xyz;
  r6.xyz = frac(r6.xyz);
  r1.z = dot(r6.xy, r6.yz);
  r1.z = -0.5 + r1.z;
  r1.z = dot(r1.zz, cb5[10].xx);
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = sqrt(r1.w);
  r6.xyz = r6.xyz / r1.www;
  r7.xyz = -cb0[67].xyz + r3.xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = sqrt(r1.w);
  r1.w = r1.w / cb5[10].y;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[10].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r3.w = 1 + cb5[10].w;
  r1.w = r3.w * r1.w;
  r1.w = r2.w ? 0 : r1.w;
  r1.w = cb0[143].y + r1.w;
  r1.w = -1 + r1.w;
  r7.xyzw = t5.SampleBias(s2_s, v3.xy, r1.w).xyzw;
  r6.xyz = r1.zzz * r6.xyz + r7.xyz;
  r1.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.zzz + -r6.xyz;
  r6.xyz = cb5[11].xxx * r7.xyz + r6.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[9].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb5[3].xyz * r6.xyz;
  r7.xyz = cb5[11].yyy * r6.xyz;
  r8.xyz = r6.xyz * cb5[11].yyy + cb5[5].xyz;
  r1.z = dot(cb3[8].xyz, cb3[8].xyz);
  r1.z = sqrt(r1.z);
  r9.xyz = cb3[8].xyz / r1.zzz;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = sqrt(r1.z);
  r10.xyz = r4.zxy / r1.zzz;
  r1.z = saturate(dot(r9.xyz, r10.xyz));
  r1.w = dot(cb3[5].xyz, cb3[5].xyz);
  r1.w = sqrt(r1.w);
  r9.xyz = cb3[5].xyz / r1.www;
  r1.w = saturate(dot(r9.xyz, r10.xyz));
  r1.w = r1.w + -r1.z;
  r1.z = cb3[0].y * r1.w + r1.z;
  r1.w = cb5[11].z * r1.z;
  r1.w = floor(r1.w);
  r1.w = r1.w / cb5[11].w;
  r1.w = r1.w + -r1.z;
  r1.z = saturate(cb5[12].x * r1.w + r1.z);
  r1.z = -1 + r1.z;
  r1.z = r1.z * cb5[12].y + 1;
  r1.z = saturate(1 + -r1.z);
  r1.w = r1.z + r1.z;
  r1.w = min(1, r1.w);
  r9.xyz = r1.www * cb5[5].xyz + r7.xyz;
  r1.w = dot(r4.zxy, r2.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb5[12].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * cb5[13].x + cb5[12].w;
  r2.xyz = cb5[7].xyz * r1.www;
  r1.w = t5.Sample(s2_s, v3.xy).w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb5[13].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r2.xyz = r2.xyz * r1.www + r7.xyz;
  r1.w = -0.5 + r1.z;
  r1.w = r1.w + r1.w;
  r1.w = max(0, r1.w);
  r2.xyz = r2.xyz + -r8.xyz;
  r2.xyz = r1.www * r2.xyz + r8.xyz;
  r2.xyz = r2.xyz + -r9.xyz;
  r2.xyz = r1.zzz * r2.xyz + r9.xyz;
  r2.xyz = -r6.xyz * cb5[11].yyy + r2.xyz;
  r2.xyz = cb5[13].zzz * r2.xyz + r7.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.z = cb5[14].z * cb4[1].w;
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cb5[14].w + r1.x;
  r7.xy = float2(0.649999976,0.487499982) * cb4[1].ww;
  r1.w = cb4[1].w * 0.617499948 + -r1.x;
  r1.w = saturate(r1.w / r7.y);
  r2.w = -cb4[1].w * 0.649999976 + 8000;
  r1.w = r1.w * r2.w + r7.x;
  r1.y = r1.y / r1.w;
  r1.x = r1.x / cb5[14].w;
  r1.w = cmp(9.99999975e-006 < abs(r1.z));
  r1.z = cmp(r1.z >= 0);
  r1.y = r1.z ? r1.y : r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb5[14].z));
  r1.z = 1 + cb5[14].z;
  r1.y = r1.y ? r1.z : 1.39999998;
  r7.xyz = -cb0[129].xxy + v5.xxy;
  r1.z = r7.x * cb0[130].z + -0.469999999;
  r1.z = 4.93230057 * r1.z;
  r1.z = cos(r1.z);
  r1.z = 0.899999976 + r1.z;
  r1.z = saturate(0.555555582 * r1.z);
  r1.y = r1.y + -r1.z;
  r1.zw = cb0[152].xx + r7.yz;
  r1.zw = (uint2)r1.zw;
  r1.w = (uint)r1.w << 1;
  r1.z = (int)r1.w + (int)r1.z;
  r1.z = (uint)r1.z % 5;
  r1.z = (uint)r1.z;
  r7.xy = float2(0.015625,0.015625) * r7.yz;
  r1.w = t6.SampleBias(s3_s, r7.xy, cb0[143].y).x;
  r1.z = r1.z + r1.w;
  r1.z = 0.166666672 * r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r7.w * r1.x;
  r1.yzw = saturate(cb5[16].www * r6.xyz);
  r2.w = cmp(0.00100000005 < abs(v2.w));
  r6.xy = floor(v5.xy);
  r3.w = dot(r6.xy, float2(347.834503,3343.28369));
  r3.w = cos(r3.w);
  r3.w = 1000 * r3.w;
  r3.w = frac(r3.w);
  r5.w = cmp(v2.w < 0);
  r6.x = 1 + v2.w;
  r6.x = cmp(r3.w < r6.x);
  r3.w = cmp(v2.w < r3.w);
  r3.w = r5.w ? r6.x : r3.w;
  r3.w = cmp((int)r3.w == 0);
  r2.w = r2.w ? r3.w : 0;
  if (r2.w != 0) discard;
  r1.x = r1.x * v2.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r1.x = saturate(cb5[13].w);
  r2.w = saturate(cb5[14].x);
  o2.z = r2.w * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb5[14].y);
  r1.yzw = r1.yzw * cb0[136].www + cb0[136].xyz;
  r6.xyzw = t3.Sample(s0_s, v4.zw).xyzw;
  r7.xyzw = cb2[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r6.xyzw = saturate(r6.xyzw * cb2[1].xyzw + r7.xyzw);
  r6.xyzw = r6.xyzw * r6.xyzw;
  o5.xyzw = cb2[0].xyzw * r6.xyzw;
  r6.xyz = saturate(r1.yzw);
  o4.xyz = sqrt(r6.xyz);
  r2.w = cb0[137].w * r1.x;
  r6.xyz = r2.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r2.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r8.xyz : r6.xyz;
  r7.xyz = r2.www ? float3(0,0,0) : r7.xyz;
  r2.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r1.yzw = r6.xyz + r1.yzw;
  r8.xy = float2(1,0.5) * v4.xy;
  r8.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t1.Sample(s0_s, r8.xy).xyzw;
  r8.xyzw = t1.Sample(s0_s, r8.zw).xyzw;
  r3.w = r8.w * 0.00392156886 + r9.w;
  r3.w = -0.00196078443 + r3.w;
  r3.w = r3.w * cb2[4].w + cb2[6].w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * cb2[4].xyz + cb2[6].xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r8.xyzw = r8.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r4.w = 1;
  r4.w = dot(r8.xyzw, r4.xyzw);
  r4.w = max(0, r4.w);
  r3.w = r4.w * r3.w;
  r8.xyz = r3.www * r9.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r9.xyzw = t2.Sample(s0_s, v4.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r3.w = dot(r9.xyz, r9.xyz);
    r3.w = rsqrt(r3.w);
    r9.xyz = r9.xyz * r3.www;
    r3.w = -r9.w * r9.w + 1;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.zxy * r0.www + -r9.xyz;
    r0.xyz = r3.www * r0.xyz + r9.xyz;
    r4.w = saturate(dot(r9.yzx, r4.xyz));
    r5.w = 1 + -r4.w;
    r10.y = r3.w * r5.w + r4.w;
  } else {
    r0.xyz = r4.zxy;
    r10.xy = float2(1,1);
  }
  r9.x = t0[0].val[0/4];
  r9.y = t0[0].val[0/4+1];
  r9.z = t0[0].val[0/4+2];
  r9.w = t0[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r11.x = t0[1].val[0/4];
  r11.y = t0[1].val[0/4+1];
  r11.z = t0[1].val[0/4+2];
  r11.w = t0[1].val[0/4+3];
  r9.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t0[2].val[0/4];
  r11.y = t0[2].val[0/4+1];
  r11.z = t0[2].val[0/4+2];
  r11.w = t0[2].val[0/4+3];
  r9.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
  r12.x = t0[3].val[0/4];
  r12.y = t0[3].val[0/4+1];
  r12.z = t0[3].val[0/4+2];
  r12.w = t0[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t0[4].val[0/4];
  r13.y = t0[4].val[0/4+1];
  r13.z = t0[4].val[0/4+2];
  r13.w = t0[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t0[5].val[0/4];
  r13.y = t0[5].val[0/4+1];
  r13.z = t0[5].val[0/4+2];
  r13.w = t0[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t0[6].val[0/4];
  r0.z = t0[6].val[0/4+1];
  r0.w = t0[6].val[0/4+2];
  r9.xyz = r12.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r1.yzw;
  r1.yzw = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r1.yzw = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r1.yzw;
  r1.yzw = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r1.yzw;
  r1.yzw = float3(1.33200002,1.33200002,1.33200002) + r1.yzw;
  r1.yzw = max(float3(1,1,1), r1.yzw);
  r0.xyz = r1.yzw * r0.xyz;
  r1.yzw = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r3.www ? r3.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r1.yzw + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r1.yzw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.yzw = frac(r1.yzw);
  r1.yzw = r1.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.yzw = r1.yzw * r1.yzz;
  r1.y = dot(r1.yzw, float3(20.390625,60.703125,2.42812085));
  r1.y = frac(r1.y);
  r1.y = -0.5 + r1.y;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.y * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xw = float2(0,0.509803951);
  o2.y = r1.x;
  o3.xyz = r2.xyz;
  o6.xyzw = float4(0,0,0,0);
  return;
}