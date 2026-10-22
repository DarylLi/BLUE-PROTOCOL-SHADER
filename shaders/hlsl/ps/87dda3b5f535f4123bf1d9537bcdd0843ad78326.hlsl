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

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  out float4 o6 : SV_Target6)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r2.xyz * r0.www;
  r1.zw = cb1[12].xx * v2.xy;
  r0.w = cb1[12].y + cb0[143].y;
  r4.xy = t4.SampleBias(s1_s, r1.zw, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb1[12].zzz * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.w = t5.SampleBias(s2_s, v2.xy, cb0[143].y).x;
  r2.w = -1 + r2.w;
  r4.xy = cb1[13].zw + r2.ww;
  r4.xy = saturate(ceil(r4.xy));
  r4.xz = float2(1,1) + -r4.xy;
  r2.w = r4.x * r4.y;
  r5.xyz = cb1[2].xyz * r2.www;
  r6.xyz = -r2.www * cb1[2].xyz + cb1[3].xyz;
  r5.xyz = cb1[14].xxx * r6.xyz + r5.xyz;
  r6.xyzw = t6.SampleBias(s3_s, r1.zw, cb0[143].y).xyzw;
  r3.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r3.www + -r6.xyz;
  r6.xyz = cb1[14].www * r7.xyz + r6.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb1[14].z, r4.x, r8.x);
  r7.xyz = r7.xyz * r4.xxx;
  r6.xyz = r6.xyz * r8.xxx + r7.xyz;
  r6.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb1[5].xyz * r6.xyz;
  r7.xyz = cb1[15].xxx * r6.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r8.xyz = cb1[2].xyz + -r7.xyz;
  r7.xyz = saturate(r2.www * r8.xyz + r7.xyz);
  r1.zw = t7.SampleBias(s4_s, r1.zw, cb0[143].y).xy;
  r2.w = cmp(0 >= r1.z);
  r1.z = log2(r1.z);
  r1.z = cb1[15].y * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r2.w ? 0 : r1.z;
  r1.z = saturate(cb1[15].z + r1.z);
  r8.x = saturate(cb1[15].w + r1.w);
  r1.w = dot(r0.zxy, r3.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = cb1[16].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 0.959999979 + 0.0399999991;
  r1.w = cb1[16].y * r1.w;
  r2.w = saturate(cb1[16].w + v1.z);
  r1.w = r2.w * r1.w;
  r1.w = max(0, r1.w);
  r1.w = min(0.5, r1.w);
  r8.y = saturate(cb1[17].x * r1.w);
  r1.w = cb1[17].z * r4.z + r4.y;
  r2.w = cmp(cb0[31].w < 1);
  r3.x = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.x + r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.x = r1.x / cb1[17].w;
  r3.xyz = -cb0[129].xxy + v5.xxy;
  r1.y = r3.x * cb0[130].z + -0.469999999;
  r1.y = 4.93230057 * r1.y;
  r1.y = cos(r1.y);
  r1.y = 0.899999976 + r1.y;
  r1.y = saturate(0.555555582 * r1.y);
  r1.y = cb1[18].y + -r1.y;
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
  r1.x = r6.w * r1.x;
  r3.xyz = saturate(cb1[20].xxx * r6.xyz);
  r1.x = r1.w * r1.x + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb1[17].y);
  r1.xyz = r3.xyz * cb0[136].www + cb0[136].xyz;
  r1.w = (int)w4.x * 15;
  r3.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,1,4,6));
  o1.w = t0[r3.x].val[4/4];
  r4.xyzw = t3.Sample(s0_s, v3.zw).xyzw;
  r6.x = t1[r3.y].val[0/4];
  r6.y = t1[r3.y].val[0/4+1];
  r6.z = t1[r3.y].val[0/4+2];
  r6.w = t1[r3.y].val[0/4+3];
  r9.xyzw = r6.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r4.xyzw = saturate(r4.xyzw * r6.xyzw + r9.xyzw);
  r6.x = t1[r1.w].val[0/4];
  r6.y = t1[r1.w].val[0/4+1];
  r6.z = t1[r1.w].val[0/4+2];
  r6.w = t1[r1.w].val[0/4+3];
  r4.xyzw = r4.xyzw * r4.xyzw;
  o5.xyzw = r4.xyzw * r6.xyzw;
  r4.xyz = saturate(r1.xyz);
  o4.xyz = sqrt(r4.xyz);
  r1.w = 0.0799999982 * r8.y;
  r4.xyz = -r8.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyz;
  r4.xyz = r8.xxx * r4.xyz + r1.www;
  r6.xyz = -r7.xyz * r8.xxx + r7.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r9.xyz : r6.xyz;
  r4.xyz = r1.www ? float3(0,0,0) : r4.xyz;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r1.xyz = r6.xyz + r1.xyz;
  r3.xy = float2(1,0.5) * v3.xy;
  r8.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t2.Sample(s0_s, r3.xy).xyzw;
  r10.xyzw = t2.Sample(s0_s, r8.zw).xyzw;
  r2.w = r10.w * 0.00392156886 + r9.w;
  r2.w = -0.00196078443 + r2.w;
  r11.x = t1[r3.z].val[0/4];
  r11.y = t1[r3.z].val[0/4+1];
  r11.z = t1[r3.z].val[0/4+2];
  r11.w = t1[r3.z].val[0/4+3];
  r3.x = t1[r3.w].val[0/4];
  r3.y = t1[r3.w].val[0/4+1];
  r3.z = t1[r3.w].val[0/4+2];
  r3.w = t1[r3.w].val[0/4+3];
  r2.w = r2.w * r11.w + r3.w;
  r9.xyz = r9.xyz * r9.xyz;
  r3.xyz = r9.xyz * r11.xyz + r3.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r8.zw = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r9.x = t1[r8.z].val[0/4];
  r9.y = t1[r8.z].val[0/4+1];
  r9.z = t1[r8.z].val[0/4+2];
  r9.w = t1[r8.z].val[0/4+3];
  r11.x = t1[r8.w].val[0/4];
  r11.y = t1[r8.w].val[0/4+1];
  r11.z = t1[r8.w].val[0/4+2];
  r11.w = t1[r8.w].val[0/4+3];
  r9.xyzw = r10.xyzw * r9.xyzw + r11.xyzw;
  r0.w = 1;
  r0.w = dot(r9.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.w * r0.w;
  r3.xyz = r0.www * r3.xyz;
  r3.xyz = cb0[157].xyz * r3.xyz;
  r0.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r3.xyz * r1.xyz;
  r3.xyz = r7.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r7.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r7.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r1.xyz = r3.xyz * r1.xyz;
  r3.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r4.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r2.xyz = -cb0[70].xyz + r2.xyz;
    r5.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r5.x = t0[r5.x].val[0/4];
    r5.z = t0[r5.x].val[0/4+1];
    r5.w = t0[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r6.x = t0[r5.y].val[0/4];
    r6.y = t0[r5.y].val[0/4+1];
    r6.z = t0[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r2.w = (int)r5.y | (int)r5.x;
    r2.w = (int)r5.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r2.www ? r2.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r3.xyz + r1.xyz;
  r1.xyz = r1.xyz + r4.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.w = 0.509803951;
  o2.xy = r8.xy;
  o3.xyz = r7.xyz;
  o6.xyzw = float4(0,0,0,0);
  return;
}