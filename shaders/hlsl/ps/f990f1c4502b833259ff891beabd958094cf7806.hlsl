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
  float4 cb2[16];
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
  float4 v0 : TEXCOORD0,
  float3 v1 : PARTICLE_LIGHTING_OFFSET0,
  float4 v2 : TANGENTX0,
  float4 v3 : TANGENTZ0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v3.zxy * v2.yzx;
  r0.xyz = v3.yzx * v2.zxy + -r0.xyz;
  r0.xyz = v3.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = cb0[142].z * cb2[11].z + v0.x;
  r2.x = cb2[12].y * r0.w;
  r0.w = cb0[142].z * cb2[12].z + v0.y;
  r2.y = cb2[12].w * r0.w;
  r2.xy = t3.SampleBias(s1_s, r2.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r3.xy = cb2[13].xx * r2.xy;
  r2.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v2.xyz + r0.xyz;
  r0.xyz = r2.zzz * v3.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb2[13].yyy * cb2[4].xyz;
  r1.w = cb0[142].z * cb2[14].x + v0.x;
  r3.x = cb2[14].w * r1.w;
  r1.w = cb0[142].z * cb2[15].x + v0.y;
  r3.y = cb2[15].y * r1.w;
  r1.w = t4.SampleBias(s2_s, r3.xy, cb0[143].y).x;
  r1.w = 1 + -r1.w;
  r2.w = dot(-cb0[18].xyz, r0.xyz);
  r2.w = 1 + -r2.w;
  r1.w = -r1.w * r2.w + cb2[15].z;
  r1.w = saturate(ceil(r1.w));
  r1.w = -0.333299994 + r1.w;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  o2.z = cb0[139].y * 0.5 + cb0[139].x;
  r1.w = cmp(0 < cb1[20].z);
  if (r1.w != 0) {
    r3.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.xyz = max(float3(0,0,0), r3.xyz);
    r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
    r3.xyz = cb0[213].xyz * r3.xyz;
    r4.xyz = (int3)r3.xyz;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r1.w = 1 + cb0[213].w;
    r3.xyz = r3.xyz / r4.www;
    r3.xyz = frac(r3.xyz);
    r3.xyz = cb0[213].www * r3.xyz;
    r3.xyz = r4.xyz * r1.www + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
    r3.xyz = cb0[214].xyz * r3.xyz;
    r1.w = t1.SampleLevel(s0_s, r3.xyz, 0).x;
  } else {
    r1.w = 1;
  }
  r3.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r4.xyz = float3(0.449999988,0.449999988,0.449999988) * r3.xyz;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r3.xyz = r2.www ? r3.xyz : cb0[136].xyz;
  r5.x = t2[0].val[0/4];
  r5.y = t2[0].val[0/4+1];
  r5.z = t2[0].val[0/4+2];
  r5.w = t2[0].val[0/4+3];
  r0.w = 1;
  r5.x = dot(r5.xyzw, r0.xyzw);
  r6.x = t2[1].val[0/4];
  r6.y = t2[1].val[0/4+1];
  r6.z = t2[1].val[0/4+2];
  r6.w = t2[1].val[0/4+3];
  r5.y = dot(r6.xyzw, r0.xyzw);
  r6.x = t2[2].val[0/4];
  r6.y = t2[2].val[0/4+1];
  r6.z = t2[2].val[0/4+2];
  r6.w = t2[2].val[0/4+3];
  r5.z = dot(r6.xyzw, r0.xyzw);
  r6.xyzw = r0.xyzz * r0.yzzx;
  r7.x = t2[3].val[0/4];
  r7.y = t2[3].val[0/4+1];
  r7.z = t2[3].val[0/4+2];
  r7.w = t2[3].val[0/4+3];
  r7.x = dot(r7.xyzw, r6.xyzw);
  r8.x = t2[4].val[0/4];
  r8.y = t2[4].val[0/4+1];
  r8.z = t2[4].val[0/4+2];
  r8.w = t2[4].val[0/4+3];
  r7.y = dot(r8.xyzw, r6.xyzw);
  r8.x = t2[5].val[0/4];
  r8.y = t2[5].val[0/4+1];
  r8.z = t2[5].val[0/4+2];
  r8.w = t2[5].val[0/4+3];
  r7.z = dot(r8.xyzw, r6.xyzw);
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r6.x = t2[6].val[0/4];
  r6.y = t2[6].val[0/4+1];
  r6.z = t2[6].val[0/4+2];
  r5.xyz = r7.xyz + r5.xyz;
  r5.xyz = r6.xyz * r0.www + r5.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[187].xyz * r5.xyz;
  r5.xyz = r5.xyz * r3.xyz;
  r4.xyz = r2.www ? float3(0,0,0) : r4.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xyz = -cb1[5].xyz + r1.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r4.xyz = cmp(r6.xyz < abs(r4.xyz));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r0.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r3.xyz + r5.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r0.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r0.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = float3(0,0,0);
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}