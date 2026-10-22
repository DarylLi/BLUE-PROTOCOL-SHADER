// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r0.w = cb0[142].z * cb3[8].x + v2.w;
  r1.zw = (int2)v5.xy * int2(36,15);
  r4.xyzw = mad((int4)v5.xxyy, int4(36,36,15,15), int4(5,20,1,4));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r2.w = abs(r5.x) + abs(r5.y);
  r2.w = r2.w + abs(r5.z);
  r2.w = frac(r2.w);
  r0.w = r2.w * 0.5 + r0.w;
  r0.w = 6.28318548 * r0.w;
  r0.w = sin(r0.w);
  r2.w = cb3[8].z * v2.x;
  r0.w = r2.w * r0.w;
  r0.w = 6.28318548 * r0.w;
  r6.x = t0[r1.z].val[0/4];
  r6.y = t0[r1.z].val[0/4+1];
  r6.z = t0[r1.z].val[0/4+2];
  r1.z = mad((int)v5.x, 36, 1);
  r7.x = t0[r1.z].val[0/4];
  r7.y = t0[r1.z].val[0/4+1];
  r7.z = t0[r1.z].val[0/4+2];
  r1.z = mad((int)v5.x, 36, 2);
  r8.x = t0[r1.z].val[0/4];
  r8.y = t0[r1.z].val[0/4+1];
  r8.z = t0[r1.z].val[0/4+2];
  r9.x = r6.x;
  r9.y = r7.x;
  r9.z = r8.x;
  r9.y = dot(cb3[2].xyz, r9.xyz);
  r10.x = r6.y;
  r10.y = r7.y;
  r10.z = r8.y;
  r9.z = dot(cb3[2].xyz, r10.xyz);
  r8.x = r6.z;
  r8.y = r7.z;
  r9.x = dot(cb3[2].xyz, r8.xyz);
  r1.z = dot(r9.xyz, r9.xyz);
  r1.z = sqrt(r1.z);
  r6.xyz = r9.xyz / r1.zzz;
  r7.xy = cb3[8].ww * v3.xy;
  r1.z = cb3[9].x + cb0[143].y;
  r7.zw = t4.SampleBias(s1_s, r7.xy, r1.z).xy;
  r8.xy = r7.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r8.xy, r8.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r8.z = sqrt(r1.z);
  r9.xyz = float3(0,0,1) + -r8.xyz;
  r8.xyz = cb3[9].yyy * r9.xyz + r8.xyz;
  r9.xyz = r8.yyy * r0.zxy;
  r8.xyw = r8.xxx * v0.xyz + r9.xyz;
  r8.xyz = r8.zzz * v1.xyz + r8.xyw;
  r1.z = dot(r6.yzx, r8.xyz);
  r9.xyz = -r6.yzx * r1.zzz + r8.xyz;
  r10.xyz = r9.yzx * r6.xyz;
  r10.xyz = r6.zxy * r9.zxy + -r10.xyz;
  sincos(r0.w, r4.x, r11.x);
  r10.xyz = r10.xyz * r4.xxx;
  r9.xyz = r9.xyz * r11.xxx + r10.xyz;
  r6.xyz = r6.yzx * r1.zzz + r9.xyz;
  r6.xyz = r6.xyz + -r8.xyz;
  r6.xyz = float3(1,1,1) + r6.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = sqrt(r0.w);
  r6.xyz = r6.xyz / r0.www;
  r8.x = dot(v0.xyz, r6.xyz);
  r8.y = dot(r0.zxy, r6.xyz);
  r8.z = dot(v1.xyz, r6.xyz);
  r6.xyz = r8.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = r6.xyz * r0.www;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.yzx + r0.xyz;
  r0.xyz = r6.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = r0.xyz * r0.www;
  r0.x = dot(-cb2[5].xyz, -cb2[5].xyz);
  r0.x = sqrt(r0.x);
  r8.xyz = -cb2[5].xyz / r0.xxx;
  r0.x = dot(r8.yzx, r6.xyz);
  r0.x = 1 + r0.x;
  r9.xyz = cb0[67].xyz + -r3.xyz;
  r0.z = dot(r9.xyz, r9.xyz);
  r0.z = sqrt(r0.z);
  r9.xyz = r9.xyz / r0.zzz;
  r0.z = saturate(dot(-r9.xyz, r8.xyz));
  r1.z = 1 + -cb1[1].x;
  r0.z = saturate(r1.z + r0.z);
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
  r8.xyz = -cb2[8].xyz / r0.xxx;
  r0.x = dot(r8.yzx, r6.xyz);
  r0.x = 1 + r0.x;
  r0.w = saturate(dot(-r9.xyz, r8.xyz));
  r0.w = saturate(r0.w + r1.z);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * r0.y;
  r0.xyw = cb2[9].xyz * r0.xxx;
  r0.xyw = cb2[1].yyy * r0.xyw;
  r0.xyw = r2.xyz * cb2[1].xxx + r0.xyw;
  r0.xyw = cb1[2].xyz * r0.xyw;
  r2.xyz = cb3[4].xyz * r0.xyw;
  r0.xyw = -r0.xyw * cb3[4].xyz + cb3[5].xyz;
  r0.xyw = cb3[9].zzz * r0.xyw + r2.xyz;
  r2.xyzw = t5.SampleBias(s2_s, r7.xy, cb0[143].y).xyzw;
  r1.z = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.zzz + -r2.xyz;
  r2.xyz = cb3[10].yyy * r8.xyz + r2.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r8.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[10].x, r4.x, r9.x);
  r8.xyz = r8.xyz * r4.xxx;
  r2.xyz = r2.xyz * r9.xxx + r8.xyz;
  r2.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb3[7].xyz * r2.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r7.xy = t6.SampleBias(s3_s, r7.xy, cb0[143].y).yx;
  r1.z = saturate(cb3[10].z + r7.y);
  r0.z = cb3[10].w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * 0.959999979 + 0.0399999991;
  r0.z = cb3[11].x * r0.z;
  r3.w = saturate(cb3[11].z + v1.z);
  r0.z = r3.w * r0.z;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.z = min(0.5, r0.z);
  r7.y = saturate(cb3[11].w * r0.z);
  r0.z = cb3[12].x * cb1[1].w;
  r3.w = cmp(cb0[31].w < 1);
  r4.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.x + r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = cb3[12].y + r1.x;
  r7.zw = float2(0.649999976,0.487499982) * cb1[1].ww;
  r3.w = cb1[1].w * 0.617499948 + -r1.x;
  r3.w = saturate(r3.w / r7.w);
  r4.x = -cb1[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.x + r7.z;
  r1.y = r1.y / r3.w;
  r1.x = r1.x / cb3[12].y;
  r3.w = cmp(9.99999975e-006 < abs(r0.z));
  r0.z = cmp(r0.z >= 0);
  r0.z = r0.z ? r1.y : r1.x;
  r0.z = r3.w ? r0.z : r1.x;
  r1.x = cmp(9.99999975e-006 < abs(cb3[12].x));
  r1.y = 1 + cb3[12].x;
  r1.x = r1.x ? r1.y : 1.39999998;
  r8.xyz = -cb0[129].xxy + v6.xxy;
  r1.y = r8.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.x = r1.x + -r1.y;
  r7.zw = cb0[152].xx + r8.yz;
  r7.zw = (uint2)r7.zw;
  r1.y = (uint)r7.w << 1;
  r1.y = (int)r1.y + (int)r7.z;
  r1.y = (uint)r1.y % 5;
  r1.y = (uint)r1.y;
  r7.zw = float2(0.015625,0.015625) * r8.yz;
  r3.w = t7.SampleBias(s4_s, r7.zw, cb0[143].y).x;
  r1.y = r3.w + r1.y;
  r1.y = 0.166666672 * r1.y;
  r0.z = r0.z * r1.x + r1.y;
  r0.z = saturate(-0.5 + r0.z);
  r0.z = r2.w * r0.z + -0.333299994;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r7.x = saturate(r7.x);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  o1.w = t0[r4.y].val[4/4];
  r8.xyzw = t3.Sample(s0_s, v4.zw).xyzw;
  r9.x = t1[r4.z].val[0/4];
  r9.y = t1[r4.z].val[0/4+1];
  r9.z = t1[r4.z].val[0/4+2];
  r9.w = t1[r4.z].val[0/4+3];
  r10.xyzw = r9.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r8.xyzw = saturate(r8.xyzw * r9.xyzw + r10.xyzw);
  r1.x = t1[r1.w].val[0/4];
  r1.y = t1[r1.w].val[0/4+1];
  r1.z = t1[r1.w].val[0/4+2];
  r1.w = t1[r1.w].val[0/4+3];
  r8.xyzw = r8.xyzw * r8.xyzw;
  o5.xyzw = r8.xyzw * r1.xyzw;
  r0.z = 0.0799999982 * r7.y;
  r1.xyz = -r7.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r1.xyz = r7.xxx * r1.xyz + r0.zzz;
  r4.xyz = -r2.xyz * r7.xxx + r2.xyz;
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r0.z = cmp(0 != cb0[183].w);
  r8.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r0.zzz ? r8.xyz : r4.xyz;
  r1.xyz = r0.zzz ? float3(0,0,0) : r1.xyz;
  r0.z = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r0.z * 2.04040003 + -0.332399994;
  r1.w = r0.z * -4.79510021 + r1.w;
  r0.z = r0.z * 2.75519991 + r1.w;
  r0.z = 1.33200002 + r0.z;
  r0.z = max(1, r0.z);
  r7.zw = float2(1,0.5) * v4.xy;
  r8.xy = v4.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t2.Sample(s0_s, r7.zw).xyzw;
  r8.xyzw = t2.Sample(s0_s, r8.xy).xyzw;
  r1.w = r8.w * 0.00392156886 + r9.w;
  r1.w = -0.00196078443 + r1.w;
  r10.x = t1[r4.w].val[0/4];
  r10.y = t1[r4.w].val[0/4+1];
  r10.z = t1[r4.w].val[0/4+2];
  r10.w = t1[r4.w].val[0/4+3];
  r11.xyz = mad((int3)w5.xyy, int3(15,15,15), int3(6,5,7));
  r12.x = t1[r11.x].val[0/4];
  r12.y = t1[r11.x].val[0/4+1];
  r12.z = t1[r11.x].val[0/4+2];
  r12.w = t1[r11.x].val[0/4+3];
  r1.w = r1.w * r10.w + r12.w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * r10.xyz + r12.xyz;
  r1.w = exp2(r1.w);
  r1.w = -0.0185813606 + r1.w;
  r10.x = t1[r11.y].val[0/4];
  r10.y = t1[r11.y].val[0/4+1];
  r10.z = t1[r11.y].val[0/4+2];
  r10.w = t1[r11.y].val[0/4+3];
  r11.x = t1[r11.z].val[0/4];
  r11.y = t1[r11.z].val[0/4+1];
  r11.z = t1[r11.z].val[0/4+2];
  r11.w = t1[r11.z].val[0/4+3];
  r8.xyzw = r8.xyzw * r10.xyzw + r11.xyzw;
  r6.w = 1;
  r2.w = dot(r8.xyzw, r6.xyzw);
  r2.w = max(0, r2.w);
  r1.w = r2.w * r1.w;
  r8.xyz = r1.www * r9.xyz;
  r8.xyz = cb0[157].xyz * r8.xyz;
  r1.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r8.xyz * r4.xyz;
  r9.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r8.xyz = r9.xyz * r8.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r4.xyz = -r5.xyz + r3.xyz;
    r2.w = mad((int)v5.x, 36, 19);
    r5.x = t0[r2.w].val[0/4];
    r5.y = t0[r2.w].val[0/4+1];
    r5.z = t0[r2.w].val[0/4+2];
    r5.xyz = float3(1,1,1) + r5.xyz;
    r4.xyz = cmp(r5.xyz < abs(r4.xyz));
    r2.w = (int)r4.y | (int)r4.x;
    r2.w = (int)r4.z | (int)r2.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyw = r2.www ? r3.xyz : r0.xyw;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r8.xyz;
  r0.xyw = r1.xyz + r0.xyw;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r6.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.z = r1.w * r0.z;
  r0.z = r0.z * cb0[135].y + 0.00390625;
  r0.z = log2(r0.z);
  r0.z = r0.z * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.z;
  o0.xyz = cb0[135].yyy * r0.xyw;
  o0.w = 0;
  o2.w = 0.505882382;
  o2.xy = r7.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}