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

cbuffer cb4 : register(b4)
{
  float4 cb4[8];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[12];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
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
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
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

  r0.xy = t3.Sample(s1_s, v1.zw).zw;
  r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
  r1.x = dot(r0.xy, r0.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r0.z = sqrt(r1.x);
  r0.w = -r0.x;
  r1.x = dot(r0.zw, r0.zw);
  r1.x = rsqrt(r1.x);
  r1.yz = r1.xx * r0.wz;
  r1.x = 0;
  r2.xyz = r1.xyz * r0.zxy;
  r2.xyz = r0.yzx * r1.yzx + -r2.xyz;
  r1.xyw = cb3[11].xyz * r1.yyy;
  r1.xyz = r1.zzz * cb3[9].xyz + r1.xyw;
  r3.xyz = cb3[10].xyz * r2.yyy;
  r2.xyw = r2.xxx * cb3[9].xyz + r3.xyz;
  r2.xyz = r2.zzz * cb3[11].xyz + r2.xyw;
  r3.xyz = cb3[10].xyz * r0.yyy;
  r0.xyw = r0.xxx * cb3[9].xyz + r3.xyz;
  r0.xyz = r0.zzz * cb3[11].xyz + r0.xyw;
  r3.xyzw = cb0[45].xyzw * v3.yyyy;
  r3.xyzw = v3.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v3.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r3.xyz = -cb0[70].xyz + r3.xyz;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r2.xyz = r4.yyy * r2.xyz;
  r1.xyz = r4.xxx * r1.xyz + r2.xyz;
  r0.xyz = r4.zzz * r0.xyz + r1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r1.yzw = r0.xyz * r0.www;
  r2.xyz = cb4[7].xxx * cb4[1].xyz;
  r4.xyz = t4.SampleBias(s2_s, float2(0,0), cb0[143].y).xyz;
  r4.xyz = saturate(cb4[6].xyz * r4.xyz);
  o2.z = cb0[139].y * 0.5 + cb0[139].x;
  r2.w = cmp(0 < cb0[215].x);
  r3.w = cmp(0 < cb1[20].z);
  if (r3.w != 0) {
    r5.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
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
    r4.w = r2.w ? r4.w : 0;
    r3.w = r4.w ? cb2[5].x : 1;
  }
  r5.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = cb0[137].www * float3(0.0240000002,0.0240000002,0.0240000002) + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r7.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r4.www ? r7.xyz : r5.xyz;
  r6.xyz = r4.www ? float3(0,0,0) : r6.xyz;
  r4.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.w = r4.w * 2.04040003 + -0.332399994;
  r5.w = r4.w * -4.79510021 + r5.w;
  r4.w = r4.w * 2.75519991 + r5.w;
  r4.w = 1.33200002 + r4.w;
  r4.w = max(1, r4.w);
  r7.xyz = r1.zwz * r1.zwy;
  r8.yw = r1.ww * r1.zy;
  r5.w = r1.y * r1.y + -r7.x;
  r9.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r1.zwy;
  r8.xz = r7.zy * float2(1,3) + float2(0,-1);
  r7.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r8.xyzw;
  r5.w = 0.429042608 * r5.w;
  r9.x = 0.886227548;
  r6.w = dot(cb2[6].xyzw, r9.xyzw);
  r8.x = dot(cb2[9].xyzw, r7.xyzw);
  r6.w = r8.x + r6.w;
  r8.x = cb2[12].x * r5.w + r6.w;
  r6.w = dot(cb2[7].xyzw, r9.xyzw);
  r8.w = dot(cb2[10].xyzw, r7.xyzw);
  r6.w = r8.w + r6.w;
  r8.y = cb2[12].y * r5.w + r6.w;
  r6.w = dot(cb2[8].xyzw, r9.xyzw);
  r7.x = dot(cb2[11].xyzw, r7.xyzw);
  r6.w = r7.x + r6.w;
  r8.z = cb2[12].z * r5.w + r6.w;
  r7.xyz = max(float3(0,0,0), r8.xyz);
  r7.xyz = r2.www ? r7.xyz : 0;
  r5.w = cmp(cb0[186].y != 0.000000);
  if (r5.w != 0) {
    r1.x = 1;
    r8.xyzw = r2.wwww ? cb2[4].wxyz : r1.xyzw;
    r1.x = 1 + -r8.x;
    r1.x = -r1.x * r1.x + 1;
    r0.xyz = r0.xyz * r0.www + -r8.yzw;
    r0.xyz = r1.xxx * r0.xyz + r8.yzw;
    r2.w = saturate(dot(r8.yzw, r1.yzw));
    r5.w = 1 + -r2.w;
    r8.y = r1.x * r5.w + r2.w;
  } else {
    r0.xyz = r1.yzw;
    r8.xy = float2(1,1);
  }
  r9.x = t2[0].val[0/4];
  r9.y = t2[0].val[0/4+1];
  r9.z = t2[0].val[0/4+2];
  r9.w = t2[0].val[0/4+3];
  r0.w = 1;
  r9.x = dot(r9.xyzw, r0.xyzw);
  r10.x = t2[1].val[0/4];
  r10.y = t2[1].val[0/4+1];
  r10.z = t2[1].val[0/4+2];
  r10.w = t2[1].val[0/4+3];
  r9.y = dot(r10.xyzw, r0.xyzw);
  r10.x = t2[2].val[0/4];
  r10.y = t2[2].val[0/4+1];
  r10.z = t2[2].val[0/4+2];
  r10.w = t2[2].val[0/4+3];
  r9.z = dot(r10.xyzw, r0.xyzw);
  r10.xyzw = r0.xyzz * r0.yzzx;
  r11.x = t2[3].val[0/4];
  r11.y = t2[3].val[0/4+1];
  r11.z = t2[3].val[0/4+2];
  r11.w = t2[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t2[4].val[0/4];
  r12.y = t2[4].val[0/4+1];
  r12.z = t2[4].val[0/4+2];
  r12.w = t2[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t2[5].val[0/4];
  r12.y = t2[5].val[0/4+1];
  r12.z = t2[5].val[0/4+2];
  r12.w = t2[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r9.xyz = r11.xyz + r9.xyz;
  r0.xyz = r0.yzw * r0.xxx + r9.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r8.x * r8.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r7.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r5.xyz;
  r7.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r0.xyz = r7.xyz * r0.xyz;
  r5.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r1.x = cmp(0 < cb0[140].x);
  if (r1.x != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.x = (int)r6.y | (int)r6.x;
    r1.x = (int)r6.z | (int)r1.x;
    r2.w = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.w = 0.00200000009 * r2.w;
    r2.w = frac(r2.w);
    r2.w = cmp(0.5 < r2.w);
    r3.xyz = r2.www ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r1.xxx ? r3.xyz : r2.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r1.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r4.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.300000012,0.505882382);
  o3.xyz = r4.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}