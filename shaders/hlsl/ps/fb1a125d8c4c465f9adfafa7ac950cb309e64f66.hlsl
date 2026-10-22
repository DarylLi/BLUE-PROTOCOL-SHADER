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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[16];
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
  float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD4,
  nointerpolation uint v6 : PRIMITIVE_ID0,
  nointerpolation uint w6 : LIGHTMAP_ID0,
  float4 v7 : SV_Position0,
  uint v8 : SV_IsFrontFace0,
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
  r1.x = v7.z;
  r1.y = 1;
  r1.xy = v7.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v7.yyyy;
  r2.xyzw = v7.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v7.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r2.xyz * r0.www;
  r4.xyzw = mad((int4)v6.xxxy, int4(36,36,36,15), int4(4,18,20,4));
  r0.w = t0[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v8.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = cb2[7].xx * v3.xy;
  r2.w = cb2[7].y + cb0[143].y;
  r5.xy = t3.SampleBias(s1_s, r1.zw, r2.w).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r5.xy, r5.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r5.z = sqrt(r2.w);
  r6.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb2[7].zzz * r6.xyz + r5.xyz;
  r2.w = 1 + r5.z;
  r6.x = t0[r4.y].val[0/4];
  r6.y = t0[r4.y].val[0/4+1];
  r6.z = t0[r4.y].val[0/4+2];
  r3.w = r6.x + r6.y;
  r3.w = r3.w + r6.z;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = cb1[2].x * r3.w;
  r3.w = cb2[7].w * r3.w;
  r4.xy = v4.xy + -v3.xy;
  r4.xy = cb2[9].xx * r4.xy + v3.xy;
  r4.xy = cb2[9].yy * r4.xy;
  r4.xy = r3.ww * cb2[8].zw + r4.xy;
  r4.xy = t4.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
  r6.xy = r4.xy + r4.xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r3.w = dot(r4.xy, r4.xy);
  r3.w = 1 + -r3.w;
  r3.w = max(0, r3.w);
  r6.z = sqrt(r3.w);
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = v2.xxx * r6.xyz + float3(0,0,1);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb2[9].zzz * r7.xyz + r6.xyz;
  r5.w = 1 + r5.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r3.w = dot(r5.xyw, r6.xyz);
  r6.xyz = r6.xyz * r2.www;
  r5.xyz = r5.xyw * r3.www + -r6.xyz;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = rsqrt(r2.w);
  r5.xyz = r5.xyz * r2.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.yzx + r0.xyz;
  r0.xyz = r5.zzz * v1.yzx + r0.xyz;
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = rsqrt(r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r5.xyz = cb2[9].www * cb2[2].xyz;
  r6.xyzw = t5.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb2[10].zzz * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb2[10].y, r4.x, r8.x);
  r7.xyz = r7.xyz * r4.xxx;
  r6.xyz = r6.xyz * r8.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb2[4].xyz * r6.xyz;
  r7.xyz = cb2[10].www * r6.xyz;
  r2.w = saturate(v2.x + v2.x);
  r8.xyz = cb2[6].xyz * r7.xyz + -r7.xyz;
  r7.xyz = r2.www * r8.xyz + r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r1.zw = t6.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r1.z = -cb2[11].x * v2.x + r1.z;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[11].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.z = saturate(cb2[11].z + r1.z);
  r4.x = saturate(cb2[11].w + r1.w);
  r1.w = dot(r0.zxy, r3.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb2[12].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb2[12].y * r1.w;
  r2.w = saturate(cb2[12].w + v1.z);
  r1.w = r2.w * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r4.y = saturate(cb2[13].x * r1.w);
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.x = r1.x / cb2[13].z;
  r3.xyz = -cb0[129].xxy + v7.xxy;
  r1.y = r3.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb2[14].x + -r1.y;
  r3.xw = cb0[152].xx + r3.yz;
  r3.xw = (uint2)r3.xw;
  r1.w = (uint)r3.w << 1;
  r1.w = (int)r1.w + (int)r3.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r3.xy = float2(0.015625,0.015625) * r3.yz;
  r2.w = t7.SampleBias(s5_s, r3.xy, cb0[143].y).x;
  r1.w = r2.w + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r3.xyz = saturate(cb2[15].zzz * r6.xyz);
  r1.x = r6.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r7.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb2[13].y);
  r3.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  o1.w = t0[r4.z].val[4/4];
  r6.xyz = saturate(r3.xyz);
  o4.xyz = sqrt(r6.xyz);
  r1.z = 0.0799999982 * r4.y;
  r6.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyw;
  r6.xyz = r4.xxx * r6.xyz + r1.zzz;
  r7.xyz = -r1.xyw * r4.xxx + r1.xyw;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.z = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.zzz ? r8.xyz : r7.xyz;
  r6.xyz = r1.zzz ? float3(0,0,0) : r6.xyz;
  r1.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.z * 2.04040003 + -0.332399994;
  r2.w = r1.z * -4.79510021 + r2.w;
  r1.z = r1.z * 2.75519991 + r2.w;
  r1.z = 1.33200002 + r1.z;
  r1.z = max(1, r1.z);
  r3.xyz = r7.xyz + r3.xyz;
  r8.xy = float2(1,0.5) * v5.xy;
  r8.zw = v5.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t2.Sample(s0_s, r8.xy).xyzw;
  r8.xyzw = t2.Sample(s0_s, r8.zw).xyzw;
  r2.w = r8.w * 0.00392156886 + r9.w;
  r2.w = -0.00196078443 + r2.w;
  r10.x = t1[r4.w].val[0/4];
  r10.y = t1[r4.w].val[0/4+1];
  r10.z = t1[r4.w].val[0/4+2];
  r10.w = t1[r4.w].val[0/4+3];
  r11.xyz = mad((int3)w6.xyy, int3(15,15,15), int3(6,5,7));
  r12.x = t1[r11.x].val[0/4];
  r12.y = t1[r11.x].val[0/4+1];
  r12.z = t1[r11.x].val[0/4+2];
  r12.w = t1[r11.x].val[0/4+3];
  r2.w = r2.w * r10.w + r12.w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * r10.xyz + r12.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r10.x = t1[r11.y].val[0/4];
  r10.y = t1[r11.y].val[0/4+1];
  r10.z = t1[r11.y].val[0/4+2];
  r10.w = t1[r11.y].val[0/4+3];
  r11.x = t1[r11.z].val[0/4];
  r11.y = t1[r11.z].val[0/4+1];
  r11.z = t1[r11.z].val[0/4+2];
  r11.w = t1[r11.z].val[0/4+3];
  r8.xyzw = r8.xyzw * r10.xyzw + r11.xyzw;
  r0.w = 1;
  r0.w = dot(r8.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.w * r0.w;
  r8.xyz = r0.www * r9.xyz;
  r8.xyz = cb0[157].xyz * r8.xyz;
  r0.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r8.xyz * r3.xyz;
  r8.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r3.xyz = r8.xyz * r3.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r2.xyz = -cb0[70].xyz + r2.xyz;
    r4.zw = mad((int2)v6.xx, int2(36,36), int2(5,19));
    r7.x = t0[r4.z].val[0/4];
    r7.y = t0[r4.z].val[0/4+1];
    r7.z = t0[r4.z].val[0/4+2];
    r7.xyz = -r7.xyz + r2.xyz;
    r8.x = t0[r4.w].val[0/4];
    r8.y = t0[r4.w].val[0/4+1];
    r8.z = t0[r4.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r2.www ? r2.xyz : r5.xyz;
  }
  r2.xyz = cb0[145].yyy * r6.xyz + r3.xyz;
  r2.xyz = r2.xyz + r5.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.w = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.z;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o2.w = 0.760784328;
  o2.xy = r4.xy;
  o3.xyz = r1.xyw;
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}