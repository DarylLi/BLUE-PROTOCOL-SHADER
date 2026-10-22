// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb3[11];
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
  r0.w = (int)w4.x * 15;
  r4.xyzw = mad((int4)v4.xxyy, int4(36,36,15,15), int4(4,20,1,4));
  r1.z = t0[r4.x].val[12/4];
  r1.z = cb0[141].w * r1.z;
  r1.w = v6.x ? 1 : -1;
  r1.z = r1.z * r1.w;
  r5.xy = cb3[6].xx * v2.xy;
  r1.w = cb3[6].y + cb0[143].y;
  r5.zw = t6.SampleBias(s1_s, r5.xy, r1.w).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r6.xy, r6.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r6.z = sqrt(r1.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb3[6].zzz * r7.xyz + r6.xyz;
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
  r1.w = dot(-cb2[5].xyz, -cb2[5].xyz);
  r1.w = sqrt(r1.w);
  r7.xyz = -cb2[5].xyz / r1.www;
  r1.w = dot(r7.yzx, r6.xyz);
  r1.w = 1 + r1.w;
  r8.xyz = cb0[67].xyz + -r3.xyz;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = sqrt(r2.w);
  r8.xyz = r8.xyz / r2.www;
  r2.w = saturate(dot(-r8.xyz, r7.xyz));
  r3.w = 1 + -cb1[1].x;
  r2.w = saturate(r3.w + r2.w);
  r1.w = r2.w * r1.w;
  r2.x = dot(r6.zxy, r2.xyz);
  r2.x = max(0, r2.x);
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-005, abs(r2.x));
  r2.x = log2(r2.x);
  r2.y = cb1[1].y * r2.x;
  r2.y = exp2(r2.y);
  r2.z = 1 + -cb1[0].w;
  r2.y = r2.y * r2.z + cb1[0].w;
  r2.z = cmp(r2.y >= cb1[0].y);
  r2.z = r2.z ? 1.000000 : 0;
  r2.y = r2.z * r2.y;
  r2.z = r0.y * r1.z + 1;
  r2.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb1[0].x * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r2.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.z = -r0.y * r1.z + 1;
  r2.w = cmp(0 >= r2.z);
  r2.z = log2(r2.z);
  r2.z = cb1[1].z * r2.z;
  r2.z = exp2(r2.z);
  r2.z = min(1, r2.z);
  r2.z = r2.w ? 0 : r2.z;
  r2.y = r2.y * r2.z;
  r2.y = cb1[0].z * r2.y;
  r1.w = r2.y * r1.w;
  r7.xyz = cb2[4].xyz * r1.www;
  r1.w = dot(-cb2[8].xyz, -cb2[8].xyz);
  r1.w = sqrt(r1.w);
  r9.xyz = -cb2[8].xyz / r1.www;
  r1.w = dot(r9.yzx, r6.xyz);
  r1.w = 1 + r1.w;
  r2.z = saturate(dot(-r8.xyz, r9.xyz));
  r2.z = saturate(r2.z + r3.w);
  r1.w = r2.z * r1.w;
  r1.w = r1.w * r2.y;
  r2.yzw = cb2[9].xyz * r1.www;
  r2.yzw = cb2[1].yyy * r2.yzw;
  r2.yzw = r7.xyz * cb2[1].xxx + r2.yzw;
  r2.yzw = cb1[2].xyz * r2.yzw;
  r7.xyz = cb3[2].xyz * r2.yzw;
  r2.yzw = -r2.yzw * cb3[2].xyz + cb3[3].xyz;
  r2.yzw = cb3[6].www * r2.yzw + r7.xyz;
  r7.xyzw = t7.SampleBias(s2_s, r5.xy, cb0[143].y).xyzw;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.www + -r7.xyz;
  r7.xyz = cb3[7].zzz * r8.xyz + r7.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[7].y, r4.x, r9.x);
  r8.xyz = r8.xyz * r4.xxx;
  r7.xyz = r7.xyz * r9.xxx + r8.xyz;
  r7.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb3[5].xyz * r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r5.xy = t8.SampleBias(s3_s, r5.xy, cb0[143].y).xy;
  r1.w = cmp(0 >= r5.x);
  r3.w = log2(r5.x);
  r3.w = cb3[7].w * r3.w;
  r3.w = exp2(r3.w);
  r1.w = r1.w ? 0 : r3.w;
  r1.w = saturate(cb3[8].x + r1.w);
  r5.x = saturate(cb3[8].y + r5.y);
  r2.x = cb3[8].z * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * 0.959999979 + 0.0399999991;
  r2.x = cb3[8].w * r2.x;
  r3.w = saturate(cb3[9].y + v1.z);
  r2.x = r3.w * r2.x;
  r2.x = max(0, r2.x);
  r2.x = min(0.5, r2.x);
  r5.y = saturate(cb3[9].z * r2.x);
  r2.x = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.w + r1.x;
  r1.x = r2.x ? r1.y : r1.x;
  r1.x = r1.x / cb3[9].w;
  r8.xyz = -cb0[129].xxy + v5.xxy;
  r1.y = r8.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb3[10].y + -r1.y;
  r5.zw = cb0[152].xx + r8.yz;
  r5.zw = (uint2)r5.zw;
  r2.x = (uint)r5.w << 1;
  r2.x = (int)r2.x + (int)r5.z;
  r2.x = (uint)r2.x % 5;
  r2.x = (uint)r2.x;
  r5.zw = float2(0.015625,0.015625) * r8.yz;
  r3.w = t9.SampleBias(s4_s, r5.zw, cb0[143].y).x;
  r2.x = r3.w + r2.x;
  r2.x = 0.166666672 * r2.x;
  r1.x = r1.x * r1.y + r2.x;
  r1.x = saturate(-0.5 + r1.x);
  r1.x = r7.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r7.xyz = min(float3(1,1,1), r7.xyz);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o1.w = t0[r4.y].val[4/4];
  r8.xyzw = t5.Sample(s0_s, v3.zw).xyzw;
  r9.x = t1[r4.z].val[0/4];
  r9.y = t1[r4.z].val[0/4+1];
  r9.z = t1[r4.z].val[0/4+2];
  r9.w = t1[r4.z].val[0/4+3];
  r10.xyzw = r9.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r8.xyzw = saturate(r8.xyzw * r9.xyzw + r10.xyzw);
  r9.x = t1[r0.w].val[0/4];
  r9.y = t1[r0.w].val[0/4+1];
  r9.z = t1[r0.w].val[0/4+2];
  r9.w = t1[r0.w].val[0/4+3];
  r8.xyzw = r8.xyzw * r8.xyzw;
  o5.xyzw = r8.xyzw * r9.xyzw;
  r0.w = 0.0799999982 * r5.y;
  r1.xyw = -r5.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
  r1.xyw = r5.xxx * r1.xyw + r0.www;
  r4.xyz = -r7.xyz * r5.xxx + r7.xyz;
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyw = r1.xyw * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r8.xyz = r1.xyw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r0.www ? r8.xyz : r4.xyz;
  r1.xyw = r0.www ? float3(0,0,0) : r1.xyw;
  r0.w = dot(r1.xyw, float3(0.300000012,0.589999974,0.109999999));
  r2.x = r0.w * 2.04040003 + -0.332399994;
  r2.x = r0.w * -4.79510021 + r2.x;
  r0.w = r0.w * 2.75519991 + r2.x;
  r0.w = 1.33200002 + r0.w;
  r5.zw = float2(1,0.5) * v3.xy;
  r8.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t3.Sample(s0_s, r5.zw).xyzw;
  r8.xyzw = t3.Sample(s0_s, r8.xy).xyzw;
  r2.x = r8.w * 0.00392156886 + r9.w;
  r2.x = -0.00196078443 + r2.x;
  r10.x = t1[r4.w].val[0/4];
  r10.y = t1[r4.w].val[0/4+1];
  r10.z = t1[r4.w].val[0/4+2];
  r10.w = t1[r4.w].val[0/4+3];
  r11.xyz = mad((int3)w4.xyy, int3(15,15,15), int3(6,5,7));
  r12.x = t1[r11.x].val[0/4];
  r12.y = t1[r11.x].val[0/4+1];
  r12.z = t1[r11.x].val[0/4+2];
  r12.w = t1[r11.x].val[0/4+3];
  r2.x = r2.x * r10.w + r12.w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * r10.xyz + r12.xyz;
  r2.x = exp2(r2.x);
  r2.x = -0.0185813606 + r2.x;
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
  r3.w = dot(r8.xyzw, r6.xyzw);
  r3.w = max(0, r3.w);
  r2.x = r3.w * r2.x;
  r8.xyz = r2.xxx * r9.xyz;
  r2.x = cmp(cb0[186].y != 0.000000);
  if (r2.x != 0) {
    r9.xyzw = t4.Sample(s0_s, v3.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r2.x = dot(r9.xyz, r9.xyz);
    r2.x = rsqrt(r2.x);
    r9.xyz = r9.xyz * r2.xxx;
    r2.x = -r9.w * r9.w + 1;
    r2.x = -r2.x * r2.x + 1;
    r0.xyz = r0.zxy * r1.zzz + -r9.xyz;
    r11.xyz = r2.xxx * r0.xyz + r9.xyz;
    r0.x = saturate(dot(r9.yzx, r6.xyz));
    r0.y = 1 + -r0.x;
    r10.y = r2.x * r0.y + r0.x;
  } else {
    r11.xyz = r6.zxy;
    r10.xy = float2(1,1);
  }
  r9.x = t2[0].val[0/4];
  r9.y = t2[0].val[0/4+1];
  r9.z = t2[0].val[0/4+2];
  r9.w = t2[0].val[0/4+3];
  r11.w = 1;
  r0.x = dot(r9.xyzw, r11.xyzw);
  r9.x = t2[1].val[0/4];
  r9.y = t2[1].val[0/4+1];
  r9.z = t2[1].val[0/4+2];
  r9.w = t2[1].val[0/4+3];
  r0.y = dot(r9.xyzw, r11.xyzw);
  r9.x = t2[2].val[0/4];
  r9.y = t2[2].val[0/4+1];
  r9.z = t2[2].val[0/4+2];
  r9.w = t2[2].val[0/4+3];
  r0.z = dot(r9.xyzw, r11.xyzw);
  r9.xyzw = r11.xyzz * r11.yzzx;
  r12.x = t2[3].val[0/4];
  r12.y = t2[3].val[0/4+1];
  r12.z = t2[3].val[0/4+2];
  r12.w = t2[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r9.xyzw);
  r13.x = t2[4].val[0/4];
  r13.y = t2[4].val[0/4+1];
  r13.z = t2[4].val[0/4+2];
  r13.w = t2[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r9.xyzw);
  r13.x = t2[5].val[0/4];
  r13.y = t2[5].val[0/4+1];
  r13.z = t2[5].val[0/4+2];
  r13.w = t2[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r9.xyzw);
  r1.z = r11.y * r11.y;
  r1.z = r11.x * r11.x + -r1.z;
  r9.x = t2[6].val[0/4];
  r9.y = t2[6].val[0/4+1];
  r9.z = t2[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r9.xyz * r1.zzz + r0.xyz;
  r0.xyzw = max(float4(0,0,0,1), r0.xyzw);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.z = r10.x * r10.y;
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r1.z = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r4.xyz;
  r8.xyz = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r1.xyw = r1.xyw * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r2.xyz = max(float3(0,0,0), r2.yzw);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r4.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r4.x = t0[r4.x].val[0/4];
    r4.z = t0[r4.x].val[0/4+1];
    r4.w = t0[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r3.xyz;
    r8.x = t0[r4.y].val[0/4];
    r8.y = t0[r4.y].val[0/4+1];
    r8.z = t0[r4.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r4.xyz = cmp(r8.xyz < abs(r4.xzw));
    r2.w = (int)r4.y | (int)r4.x;
    r2.w = (int)r4.z | (int)r2.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r2.www ? r3.xyz : r2.xyz;
  }
  r0.xyz = cb0[145].yyy * r1.xyw + r0.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r1.xyw = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyw = frac(r1.xyw);
  r1.xyw = r1.xyw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyw = r1.xyw * r1.xyy;
  r1.x = dot(r1.xyw, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r6.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r1.z * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.w = 0.505882382;
  o2.xy = r5.xy;
  o3.xyz = r7.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}