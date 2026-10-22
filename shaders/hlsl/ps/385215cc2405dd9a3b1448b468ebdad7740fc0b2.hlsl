// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[6];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[216];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xy = t6.SampleBias(s2_s, v3.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb3[4].xxx * r3.xyz + r2.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.xyz + r0.xyz;
  r0.xyz = r2.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.yzw = r0.xyz * r0.www;
  r3.xyz = cb3[4].yyy * cb3[1].xyz;
  r4.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * cb1[5].xyz;
  r4.xyz = v2.xxx * float3(100,10,1) + r4.xyz;
  r4.xyz = frac(r4.xyz);
  r1.w = dot(r4.xy, r4.yz);
  r1.w = -0.5 + r1.w;
  r1.w = dot(r1.ww, cb3[4].zz);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = sqrt(r3.w);
  r4.xyz = r4.xyz / r3.www;
  r5.xyzw = t7.SampleBias(s3_s, v3.xy, cb0[143].y).xyzw;
  r3.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r3.www + -r5.xyz;
  r5.xyz = cb3[5].yyy * r6.xyz + r5.xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[5].x, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb3[3].xyz * r5.xyz;
  r4.xyz = r1.www * r4.xyz + r5.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r1.w = cb3[5].z * r5.w;
  r3.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[5].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r4.w = cmp(0.00100000005 < abs(v2.w));
  r5.xy = floor(v4.xy);
  r5.x = dot(r5.xy, float2(347.834503,3343.28369));
  r5.x = cos(r5.x);
  r5.x = 1000 * r5.x;
  r5.x = frac(r5.x);
  r5.y = cmp(v2.w < 0);
  r5.z = 1 + v2.w;
  r5.z = cmp(r5.x < r5.z);
  r5.x = cmp(v2.w < r5.x);
  r5.x = r5.y ? r5.z : r5.x;
  r5.x = cmp((int)r5.x == 0);
  r4.w = r4.w ? r5.x : 0;
  if (r4.w != 0) discard;
  r1.w = -0.333299994 + r1.w;
  r1.w = cmp(r1.w < 0);
  r1.w = (int)r1.w | (int)r3.w;
  if (r1.w != 0) discard;
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r1.w = cmp(0 < cb0[215].x);
  r3.w = cmp(0 < cb1[20].z);
  if (r3.w != 0) {
    r5.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r3.w = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r3.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r3.w = t1.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r4.w = cmp(0 < cb1[18].w);
    r4.w = r1.w ? r4.w : 0;
    r3.w = r4.w ? cb2[5].x : 1;
  }
  r5.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  if (r1.w != 0) {
    r6.xyz = r1.xyz * cb2[1].xyz + cb2[0].xyz;
    r6.xyz = max(cb2[2].xyz, r6.xyz);
    r6.xyz = min(cb2[3].xyz, r6.xyz);
    r7.xyzw = t3.Sample(s1_s, r6.xyz).xyzw;
    r8.xyzw = t4.Sample(s0_s, r6.xyz).xyzw;
    r6.xyzw = t5.Sample(s0_s, r6.xyz).xyzw;
    r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r2.zwy;
    r10.xw = r7.xw;
    r10.y = r8.x;
    r10.z = r6.x;
    r9.x = 0.886227548;
    r10.x = dot(r10.xyzw, r9.xyzw);
    r11.x = r7.y;
    r11.yw = r8.yw;
    r11.z = r6.y;
    r10.y = dot(r11.xyzw, r9.xyzw);
    r6.x = r7.z;
    r6.y = r8.z;
    r10.z = dot(r6.xyzw, r9.xyzw);
    r6.xyz = max(float3(0,0,0), r10.xyz);
    r6.xyz = float3(0.318309873,0.318309873,0.318309873) * r6.xyz;
  } else {
    r6.xyz = float3(0,0,0);
  }
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r2.x = 1;
    r7.xyzw = r1.wwww ? cb2[4].wxyz : r2.xyzw;
    r1.w = 1 + -r7.x;
    r1.w = -r1.w * r1.w + 1;
    r0.xyz = r0.xyz * r0.www + -r7.yzw;
    r0.xyz = r1.www * r0.xyz + r7.yzw;
    r2.x = saturate(dot(r7.yzw, r2.yzw));
    r4.w = 1 + -r2.x;
    r7.y = r1.w * r4.w + r2.x;
  } else {
    r0.xyz = r2.yzw;
    r7.xy = float2(1,1);
  }
  r8.x = t2[0].val[0/4];
  r8.y = t2[0].val[0/4+1];
  r8.z = t2[0].val[0/4+2];
  r8.w = t2[0].val[0/4+3];
  r0.w = 1;
  r8.x = dot(r8.xyzw, r0.xyzw);
  r9.x = t2[1].val[0/4];
  r9.y = t2[1].val[0/4+1];
  r9.z = t2[1].val[0/4+2];
  r9.w = t2[1].val[0/4+3];
  r8.y = dot(r9.xyzw, r0.xyzw);
  r9.x = t2[2].val[0/4];
  r9.y = t2[2].val[0/4+1];
  r9.z = t2[2].val[0/4+2];
  r9.w = t2[2].val[0/4+3];
  r8.z = dot(r9.xyzw, r0.xyzw);
  r9.xyzw = r0.xyzz * r0.yzzx;
  r10.x = t2[3].val[0/4];
  r10.y = t2[3].val[0/4+1];
  r10.z = t2[3].val[0/4+2];
  r10.w = t2[3].val[0/4+3];
  r10.x = dot(r10.xyzw, r9.xyzw);
  r11.x = t2[4].val[0/4];
  r11.y = t2[4].val[0/4+1];
  r11.z = t2[4].val[0/4+2];
  r11.w = t2[4].val[0/4+3];
  r10.y = dot(r11.xyzw, r9.xyzw);
  r11.x = t2[5].val[0/4];
  r11.y = t2[5].val[0/4+1];
  r11.z = t2[5].val[0/4+2];
  r11.w = t2[5].val[0/4+3];
  r10.z = dot(r11.xyzw, r9.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r8.xyz = r10.xyz + r8.xyz;
  r0.xyz = r0.yzw * r0.xxx + r8.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r7.x * r7.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r6.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r5.xyz;
  r6.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r0.xyz = r6.xyz * r0.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
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
    r3.xyz = r1.www ? r1.xyz : r3.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r2.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyzw = float4(0,0,1,0.505882382);
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}