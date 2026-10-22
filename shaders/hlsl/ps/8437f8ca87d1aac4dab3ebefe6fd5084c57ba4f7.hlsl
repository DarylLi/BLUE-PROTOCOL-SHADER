// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[215];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_Position0,
  uint v2 : SV_IsFrontFace0,
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

  r0.x = v1.z;
  r0.y = 1;
  r0.xy = v1.ww * r0.xy;
  r1.xyzw = cb0[45].xyzw * v1.yyyy;
  r1.xyzw = v1.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v1.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xyzw = float4(0.5,0.5,10,10) * v0.xyxy;
  r0.zw = t3.SampleBias(s1_s, r2.zw, cb0[143].y).xy;
  r3.xy = r0.zw * float2(2,2) + float2(-1,-1);
  r0.z = dot(r3.xy, r3.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r3.z = sqrt(r0.z);
  r4.x = cb0[138].w;
  r4.z = 1;
  r3.xyz = r4.xxz * r3.xyz;
  r4.x = 0.300000012;
  r4.z = cb0[138].w;
  r3.xyz = r3.xyz * r4.xxz + cb0[138].xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r3.xyz * r0.zzz;
  r4.xyz = cb2[2].xxx * cb2[1].xyz;
  r5.xyzw = float4(20,20,5,5) * v0.xyxy;
  r0.z = t4.SampleBias(s2_s, r5.xy, cb0[143].y).x;
  r0.z = r0.z * 0.600000024 + 0.400000006;
  r0.w = t4.SampleBias(s2_s, r5.zw, cb0[143].y).y;
  r1.w = cmp(cb0[31].w < 1);
  r2.z = r0.x * cb0[65].x + cb0[65].y;
  r0.x = r0.x * cb0[65].z + -cb0[65].w;
  r0.x = 1 / r0.x;
  r0.x = r2.z + r0.x;
  r0.x = r1.w ? r0.y : r0.x;
  r0.x = -24 + r0.x;
  r0.x = saturate(0.00066666666 * r0.x);
  r0.y = 1 + -r0.w;
  r0.y = r0.x * r0.y + r0.w;
  r1.w = r0.z * -2 + 1;
  r0.y = r0.y * r1.w + r0.z;
  r0.z = t4.SampleBias(s2_s, r2.xy, cb0[143].y).y;
  r1.w = r0.x * -r0.w + r0.w;
  r1.w = r1.w + r0.z;
  r2.x = 0.5 + -r1.w;
  r1.w = r2.x * 0.5 + r1.w;
  r1.w = r1.w * 0.365000039 + 0.294999987;
  r0.y = r1.w * r0.y;
  r0.y = 0.5 * r0.y;
  r0.w = r0.w * 0.300000012 + 0.699999988;
  r1.w = 1 + -r0.w;
  r0.x = r0.x * r1.w + r0.w;
  r0.x = saturate(r0.z * 0.5 + r0.x);
  r0.yzw = saturate(r0.yyy);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r0.x = cmp(0 < cb1[20].z);
  if (r0.x != 0) {
    r2.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r2.xyz = max(float3(0,0,0), r2.xyz);
    r2.xyz = min(float3(0.99000001,0.99000001,0.99000001), r2.xyz);
    r2.xyz = cb0[213].xyz * r2.xyz;
    r5.xyz = (int3)r2.xyz;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r0.x = 1 + cb0[213].w;
    r2.xyz = r2.xyz / r5.www;
    r2.xyz = frac(r2.xyz);
    r2.xyz = cb0[213].www * r2.xyz;
    r2.xyz = r5.xyz * r0.xxx + r2.xyz;
    r2.xyz = float3(0.5,0.5,0.5) + r2.xyz;
    r2.xyz = cb0[214].xyz * r2.xyz;
    r0.x = t1.SampleLevel(s0_s, r2.xyz, 0).x;
  } else {
    r0.x = 1;
  }
  r2.xyz = r0.www * cb0[136].www + cb0[136].xyz;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r2.xyz;
  r2.xyz = r1.www ? r5.xyz : r2.xyz;
  r5.x = t2[0].val[0/4];
  r5.y = t2[0].val[0/4+1];
  r5.z = t2[0].val[0/4+2];
  r5.w = t2[0].val[0/4+3];
  r3.w = 1;
  r5.x = dot(r5.xyzw, r3.xyzw);
  r7.x = t2[1].val[0/4];
  r7.y = t2[1].val[0/4+1];
  r7.z = t2[1].val[0/4+2];
  r7.w = t2[1].val[0/4+3];
  r5.y = dot(r7.xyzw, r3.xyzw);
  r7.x = t2[2].val[0/4];
  r7.y = t2[2].val[0/4+1];
  r7.z = t2[2].val[0/4+2];
  r7.w = t2[2].val[0/4+3];
  r5.z = dot(r7.xyzw, r3.xyzw);
  r7.xyzw = r3.xyzz * r3.yzzx;
  r8.x = t2[3].val[0/4];
  r8.y = t2[3].val[0/4+1];
  r8.z = t2[3].val[0/4+2];
  r8.w = t2[3].val[0/4+3];
  r8.x = dot(r8.xyzw, r7.xyzw);
  r9.x = t2[4].val[0/4];
  r9.y = t2[4].val[0/4+1];
  r9.z = t2[4].val[0/4+2];
  r9.w = t2[4].val[0/4+3];
  r8.y = dot(r9.xyzw, r7.xyzw);
  r9.x = t2[5].val[0/4];
  r9.y = t2[5].val[0/4+1];
  r9.z = t2[5].val[0/4+2];
  r9.w = t2[5].val[0/4+3];
  r8.z = dot(r9.xyzw, r7.xyzw);
  r2.w = r3.y * r3.y;
  r2.w = r3.x * r3.x + -r2.w;
  r7.x = t2[6].val[0/4];
  r7.y = t2[6].val[0/4+1];
  r7.z = t2[6].val[0/4+2];
  r5.xyz = r8.xyz + r5.xyz;
  r5.xyz = r7.xyz * r2.www + r5.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[187].xyz * r5.xyz;
  r5.xyz = r5.xyz * r2.xyz;
  r2.w = r0.w * 2.04040003 + -0.332399994;
  r2.w = r0.w * -4.79510021 + r2.w;
  r2.w = r0.w * 2.75519991 + r2.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r5.xyz = r5.xyz * r2.www;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r2.xyz = r6.xyz + r2.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xyz = -cb1[5].xyz + r1.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r1.www ? r1.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r2.xyz + r5.xyz;
  r1.xyz = r1.xyz + r4.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v1.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r1.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = r0.yzw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}