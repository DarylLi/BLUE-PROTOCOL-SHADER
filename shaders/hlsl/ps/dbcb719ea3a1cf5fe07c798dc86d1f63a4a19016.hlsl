// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[9];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = t4.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r1.z = sqrt(r0.w);
  r1.xyz = r1.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.xyz = r1.yyy * r0.xyz;
  r0.xyz = r1.xxx * v0.yzx + r0.xyz;
  r0.xyz = r1.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = cb1[4].xyz + -cb1[3].xyz;
  r1.xyz = cb1[7].yyy * r1.xyz + cb1[3].xyz;
  r2.xyz = saturate(cb1[6].xyz);
  r3.xy = saturate(cb1[7].zw);
  r3.zw = saturate(cb1[8].yx);
  o2.z = r3.w * cb0[139].y + cb0[139].x;
  r1.w = (int)w4.x * 15;
  r4.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,1,4,6));
  o1.w = t0[r4.x].val[4/4];
  r5.xyzw = t3.Sample(s0_s, v3.zw).xyzw;
  r6.x = t1[r4.y].val[0/4];
  r6.y = t1[r4.y].val[0/4+1];
  r6.z = t1[r4.y].val[0/4+2];
  r6.w = t1[r4.y].val[0/4+3];
  r7.xyzw = r6.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = saturate(r5.xyzw * r6.xyzw + r7.xyzw);
  r6.x = t1[r1.w].val[0/4];
  r6.y = t1[r1.w].val[0/4+1];
  r6.z = t1[r1.w].val[0/4+2];
  r6.w = t1[r1.w].val[0/4+3];
  r5.xyzw = r5.xyzw * r5.xyzw;
  o5.xyzw = r5.xyzw * r6.xyzw;
  r1.w = 0.0799999982 * r3.y;
  r5.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r2.xyz;
  r5.xyz = r3.xxx * r5.xyz + r1.www;
  r6.xyz = -r2.xyz * r3.xxx + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r7.xyz : r6.xyz;
  r5.xyz = r1.www ? float3(0,0,0) : r5.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.www * float3(2.04040003,-4.79510021,2.75519991) + float3(-0.332399994,0.641700029,0.690299988);
  r1.w = r3.z * r7.x + r7.y;
  r1.w = r1.w * r3.z + r7.z;
  r1.w = r1.w * r3.z;
  r1.w = max(r3.z, r1.w);
  r4.xy = float2(1,0.5) * v3.xy;
  r7.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t2.Sample(s0_s, r4.xy).xyzw;
  r7.xyzw = t2.Sample(s0_s, r7.xy).xyzw;
  r2.w = r7.w * 0.00392156886 + r8.w;
  r2.w = -0.00196078443 + r2.w;
  r9.x = t1[r4.z].val[0/4];
  r9.y = t1[r4.z].val[0/4+1];
  r9.z = t1[r4.z].val[0/4+2];
  r9.w = t1[r4.z].val[0/4+3];
  r4.x = t1[r4.w].val[0/4];
  r4.y = t1[r4.w].val[0/4+1];
  r4.z = t1[r4.w].val[0/4+2];
  r4.w = t1[r4.w].val[0/4+3];
  r2.w = r2.w * r9.w + r4.w;
  r8.xyz = r8.xyz * r8.xyz;
  r4.xyz = r8.xyz * r9.xyz + r4.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r8.xy = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r9.x = t1[r8.x].val[0/4];
  r9.y = t1[r8.x].val[0/4+1];
  r9.z = t1[r8.x].val[0/4+2];
  r9.w = t1[r8.x].val[0/4+3];
  r8.x = t1[r8.y].val[0/4];
  r8.y = t1[r8.y].val[0/4+1];
  r8.z = t1[r8.y].val[0/4+2];
  r8.w = t1[r8.y].val[0/4+3];
  r7.xyzw = r7.xyzw * r9.xyzw + r8.xyzw;
  r0.w = 1;
  r0.w = dot(r7.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.w * r0.w;
  r4.xyz = r0.www * r4.xyz;
  r4.xyz = cb0[157].xyz * r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r6.xyz;
  r7.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + float3(0.641700029,0.641700029,0.641700029);
  r9.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + float3(0.690299988,0.690299988,0.690299988);
  r7.xyz = r3.zzz * r7.xyz + r8.xyz;
  r7.xyz = r7.xyz * r3.zzz + r9.xyz;
  r7.xyz = r7.xyz * r3.zzz;
  r7.xyz = max(r7.xyz, r3.zzz);
  r4.xyz = r7.xyz * r4.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r6.xyzw = cb0[45].xyzw * v5.yyyy;
    r6.xyzw = v5.xxxx * cb0[44].xyzw + r6.xyzw;
    r6.xyzw = v5.zzzz * cb0[46].xyzw + r6.xyzw;
    r6.xyzw = cb0[47].xyzw + r6.xyzw;
    r6.xyz = r6.xyz / r6.www;
    r6.xyz = -cb0[70].xyz + r6.xyz;
    r3.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t0[r3.z].val[0/4];
    r7.y = t0[r3.z].val[0/4+1];
    r7.z = t0[r3.z].val[0/4+2];
    r7.xyz = -r7.xyz + r6.xyz;
    r8.x = t0[r3.w].val[0/4];
    r8.y = t0[r3.w].val[0/4+1];
    r8.z = t0[r3.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r3.z = dot(r6.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.z = 0.00200000009 * r3.z;
    r3.z = frac(r3.z);
    r3.z = cmp(0.5 < r3.z);
    r6.xyz = r3.zzz ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r2.www ? r6.xyz : r1.xyz;
  }
  r4.xyz = cb0[145].yyy * r5.xyz + r4.xyz;
  r1.xyz = r4.xyz + r1.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r2.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}