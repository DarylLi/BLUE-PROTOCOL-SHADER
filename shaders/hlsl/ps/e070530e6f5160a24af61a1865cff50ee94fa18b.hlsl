// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[14];
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
  r0.w = (int)w6.x * 15;
  r4.xyzw = mad((int4)v6.xxxy, int4(36,36,36,15), int4(4,18,20,1));
  r1.z = t0[r4.x].val[12/4];
  r1.z = cb0[141].w * r1.z;
  r1.w = v8.x ? 1 : -1;
  r1.z = r1.z * r1.w;
  r5.xy = cb2[5].xx * v3.xy;
  r1.w = cb2[5].y + cb0[143].y;
  r5.zw = t4.SampleBias(s1_s, r5.xy, r1.w).xy;
  r6.xy = r5.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r6.xy, r6.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r6.z = sqrt(r1.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb2[5].zzz * r7.xyz + r6.xyz;
  r1.w = 1 + r6.z;
  r7.x = t0[r4.y].val[0/4];
  r7.y = t0[r4.y].val[0/4+1];
  r7.z = t0[r4.y].val[0/4+2];
  r2.w = r7.x + r7.y;
  r2.w = r2.w + r7.z;
  r2.w = frac(r2.w);
  r2.w = cb0[142].z + r2.w;
  r2.w = cb1[2].x * r2.w;
  r2.w = cb2[5].w * r2.w;
  r4.xy = v4.xy + -v3.xy;
  r4.xy = cb2[7].xx * r4.xy + v3.xy;
  r4.xy = cb2[7].yy * r4.xy;
  r4.xy = r2.ww * cb2[6].zw + r4.xy;
  r4.xy = t5.SampleBias(s2_s, r4.xy, cb0[143].y).xy;
  r7.xy = r4.xy + r4.xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r4.xy, r4.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r7.z = sqrt(r2.w);
  r7.xyz = float3(-1,-1,-1) + r7.xyz;
  r7.xyz = v2.xxx * r7.xyz + float3(0,0,1);
  r8.xyz = float3(0,0,1) + -r7.xyz;
  r7.xyz = cb2[7].zzz * r8.xyz + r7.xyz;
  r6.w = 1 + r6.z;
  r7.xyz = float3(-1,-1,1) * r7.xyz;
  r2.w = dot(r6.xyw, r7.xyz);
  r7.xyz = r7.xyz * r1.www;
  r6.xyz = r6.xyw * r2.www + -r7.xyz;
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
  r0.xyz = cb2[7].www * cb2[2].xyz;
  r7.xyzw = t6.SampleBias(s3_s, r5.xy, cb0[143].y).xyzw;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.zzz + -r7.xyz;
  r7.xyz = cb2[8].zzz * r8.xyz + r7.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb2[8].y, r4.x, r9.x);
  r8.xyz = r8.xyz * r4.xxx;
  r7.xyz = r7.xyz * r9.xxx + r8.xyz;
  r7.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb2[4].xyz * r7.xyz;
  r8.xyz = cb2[8].www * r7.xyz;
  r8.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r8.xyz);
  r1.zw = t7.SampleBias(s4_s, r5.xy, cb0[143].y).xy;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb2[9].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.z = saturate(cb2[9].y + r1.z);
  r4.x = saturate(cb2[9].z + r1.w);
  r1.w = dot(r6.zxy, r3.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb2[9].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb2[10].x * r1.w;
  r2.w = saturate(cb2[10].z + v1.z);
  r1.w = r2.w * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r4.y = saturate(cb2[10].w * r1.w);
  r1.w = cmp(cb0[31].w < 1);
  r2.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r2.w + r1.x;
  r1.x = r1.w ? r1.y : r1.x;
  r1.x = r1.x / cb2[11].y;
  r3.xyz = -cb0[129].xxy + v7.xxy;
  r1.y = r3.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb2[11].w + -r1.y;
  r3.xw = cb0[152].xx + r3.yz;
  r3.xw = (uint2)r3.xw;
  r1.w = (uint)r3.w << 1;
  r1.w = (int)r1.w + (int)r3.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r3.xy = float2(0.015625,0.015625) * r3.yz;
  r2.w = t8.SampleBias(s5_s, r3.xy, cb0[143].y).x;
  r1.w = r2.w + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r3.xyz = saturate(cb2[13].yyy * r7.xyz);
  r1.x = r7.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r8.xyz);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb2[11].x);
  r3.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  o1.w = t0[r4.z].val[4/4];
  r5.xyzw = t3.Sample(s0_s, v5.zw).xyzw;
  r7.x = t1[r4.w].val[0/4];
  r7.y = t1[r4.w].val[0/4+1];
  r7.z = t1[r4.w].val[0/4+2];
  r7.w = t1[r4.w].val[0/4+3];
  r8.xyzw = r7.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = saturate(r5.xyzw * r7.xyzw + r8.xyzw);
  r7.x = t1[r0.w].val[0/4];
  r7.y = t1[r0.w].val[0/4+1];
  r7.z = t1[r0.w].val[0/4+2];
  r7.w = t1[r0.w].val[0/4+3];
  r5.xyzw = r5.xyzw * r5.xyzw;
  o5.xyzw = r5.xyzw * r7.xyzw;
  r5.xyz = saturate(r3.xyz);
  o4.xyz = sqrt(r5.xyz);
  r0.w = 0.0799999982 * r4.y;
  r5.xyz = -r4.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyw;
  r5.xyz = r4.xxx * r5.xyz + r0.www;
  r7.xyz = -r1.xyw * r4.xxx + r1.xyw;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r8.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r0.www ? r8.xyz : r7.xyz;
  r5.xyz = r0.www ? float3(0,0,0) : r5.xyz;
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.z = r0.w * 2.04040003 + -0.332399994;
  r1.z = r0.w * -4.79510021 + r1.z;
  r0.w = r0.w * 2.75519991 + r1.z;
  r0.w = 1.33200002 + r0.w;
  r0.w = max(1, r0.w);
  r3.xyz = r7.xyz + r3.xyz;
  r4.zw = float2(1,0.5) * v5.xy;
  r8.xy = v5.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t2.Sample(s0_s, r4.zw).xyzw;
  r8.xyzw = t2.Sample(s0_s, r8.xy).xyzw;
  r1.z = r8.w * 0.00392156886 + r9.w;
  r1.z = -0.00196078443 + r1.z;
  r10.xyzw = mad((int4)w6.xyyy, int4(15,15,15,15), int4(4,6,5,7));
  r11.x = t1[r10.x].val[0/4];
  r11.y = t1[r10.x].val[0/4+1];
  r11.z = t1[r10.x].val[0/4+2];
  r11.w = t1[r10.x].val[0/4+3];
  r12.x = t1[r10.y].val[0/4];
  r12.y = t1[r10.y].val[0/4+1];
  r12.z = t1[r10.y].val[0/4+2];
  r12.w = t1[r10.y].val[0/4+3];
  r1.z = r1.z * r11.w + r12.w;
  r9.xyz = r9.xyz * r9.xyz;
  r9.xyz = r9.xyz * r11.xyz + r12.xyz;
  r1.z = exp2(r1.z);
  r1.z = -0.0185813606 + r1.z;
  r11.x = t1[r10.z].val[0/4];
  r11.y = t1[r10.z].val[0/4+1];
  r11.z = t1[r10.z].val[0/4+2];
  r11.w = t1[r10.z].val[0/4+3];
  r10.x = t1[r10.w].val[0/4];
  r10.y = t1[r10.w].val[0/4+1];
  r10.z = t1[r10.w].val[0/4+2];
  r10.w = t1[r10.w].val[0/4+3];
  r8.xyzw = r8.xyzw * r11.xyzw + r10.xyzw;
  r6.w = 1;
  r2.w = dot(r8.xyzw, r6.xyzw);
  r2.w = max(0, r2.w);
  r1.z = r2.w * r1.z;
  r8.xyz = r1.zzz * r9.xyz;
  r8.xyz = cb0[157].xyz * r8.xyz;
  r1.z = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r8.xyz * r3.xyz;
  r8.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r3.xyz = r8.xyz * r3.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
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
    r0.xyz = r2.www ? r2.xyz : r0.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r3.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v7.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r6.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r1.z * r0.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.w = 0.509803951;
  o2.xy = r4.xy;
  o3.xyz = r1.xyw;
  o6.xyzw = float4(0,0,0,0);
  return;
}