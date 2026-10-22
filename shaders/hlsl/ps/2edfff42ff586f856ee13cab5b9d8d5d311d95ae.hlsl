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

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
  r3.yz = r0.zw * float2(2,2) + float2(-1,-1);
  r0.z = dot(r3.yz, r3.yz);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r3.w = sqrt(r0.z);
  r4.x = cb0[138].w;
  r4.z = 1;
  r3.xyz = r4.xxz * r3.yzw;
  r4.x = 0.300000012;
  r4.z = cb0[138].w;
  r3.xyz = r3.xyz * r4.xxz + cb0[138].xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r4.yzw = r3.xyz * r0.zzz;
  r5.xyz = cb3[2].xxx * cb3[1].xyz;
  r6.xyzw = float4(20,20,5,5) * v0.xyxy;
  r0.w = t4.SampleBias(s2_s, r6.xy, cb0[143].y).x;
  r0.w = r0.w * 0.600000024 + 0.400000006;
  r1.w = t4.SampleBias(s2_s, r6.zw, cb0[143].y).y;
  r2.z = cmp(cb0[31].w < 1);
  r2.w = r0.x * cb0[65].x + cb0[65].y;
  r0.x = r0.x * cb0[65].z + -cb0[65].w;
  r0.x = 1 / r0.x;
  r0.x = r2.w + r0.x;
  r0.x = r2.z ? r0.y : r0.x;
  r0.x = -24 + r0.x;
  r0.x = saturate(0.00066666666 * r0.x);
  r0.y = 1 + -r1.w;
  r0.y = r0.x * r0.y + r1.w;
  r2.z = r0.w * -2 + 1;
  r0.y = r0.y * r2.z + r0.w;
  r0.w = t4.SampleBias(s2_s, r2.xy, cb0[143].y).y;
  r2.x = r0.x * -r1.w + r1.w;
  r2.x = r2.x + r0.w;
  r2.y = 0.5 + -r2.x;
  r2.x = r2.y * 0.5 + r2.x;
  r2.x = r2.x * 0.365000039 + 0.294999987;
  r0.y = r2.x * r0.y;
  r0.y = 0.5 * r0.y;
  r1.w = r1.w * 0.300000012 + 0.699999988;
  r2.x = 1 + -r1.w;
  r0.x = r0.x * r2.x + r1.w;
  r0.x = saturate(r0.w * 0.5 + r0.x);
  r2.xyz = saturate(r0.yyy);
  o2.z = r0.x * cb0[139].y + cb0[139].x;
  r0.x = cmp(0 < cb0[215].x);
  r0.y = cmp(0 < cb1[20].z);
  if (r0.y != 0) {
    r6.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r0.y = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r0.yyy + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r0.y = t1.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r0.w = cmp(0 < cb1[18].w);
    r0.w = r0.x ? r0.w : 0;
    r0.y = r0.w ? cb2[5].x : 1;
  }
  r6.xyz = r2.zzz * cb0[136].www + cb0[136].xyz;
  r7.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r8.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r0.www ? r8.xyz : r6.xyz;
  r7.xyz = r0.www ? float3(0,0,0) : r7.xyz;
  r0.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = r0.w * 2.04040003 + -0.332399994;
  r1.w = r0.w * -4.79510021 + r1.w;
  r0.w = r0.w * 2.75519991 + r1.w;
  r0.w = 1.33200002 + r0.w;
  r8.xyz = r4.zwz * r4.zwy;
  r9.yw = r4.ww * r4.zy;
  r1.w = r4.y * r4.y + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r1.w = 0.429042608 * r1.w;
  r10.x = 0.886227548;
  r2.w = dot(cb2[6].xyzw, r10.xyzw);
  r3.w = dot(cb2[9].xyzw, r8.xyzw);
  r2.w = r3.w + r2.w;
  r9.x = cb2[12].x * r1.w + r2.w;
  r2.w = dot(cb2[7].xyzw, r10.xyzw);
  r3.w = dot(cb2[10].xyzw, r8.xyzw);
  r2.w = r3.w + r2.w;
  r9.y = cb2[12].y * r1.w + r2.w;
  r2.w = dot(cb2[8].xyzw, r10.xyzw);
  r3.w = dot(cb2[11].xyzw, r8.xyzw);
  r2.w = r3.w + r2.w;
  r9.z = cb2[12].z * r1.w + r2.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r0.xxx ? r8.xyz : 0;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r4.x = 1;
    r9.xyzw = r0.xxxx ? cb2[4].wxyz : r4.xyzw;
    r0.x = 1 + -r9.x;
    r0.x = -r0.x * r0.x + 1;
    r3.xyz = r3.xyz * r0.zzz + -r9.yzw;
    r3.xyz = r0.xxx * r3.xyz + r9.yzw;
    r0.z = saturate(dot(r9.yzw, r4.yzw));
    r1.w = 1 + -r0.z;
    r9.y = r0.x * r1.w + r0.z;
  } else {
    r3.xyz = r4.yzw;
    r9.xy = float2(1,1);
  }
  r10.x = t2[0].val[0/4];
  r10.y = t2[0].val[0/4+1];
  r10.z = t2[0].val[0/4+2];
  r10.w = t2[0].val[0/4+3];
  r3.w = 1;
  r10.x = dot(r10.xyzw, r3.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r3.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r3.xyzw);
  r11.xyzw = r3.xyzz * r3.yzzx;
  r12.x = t2[3].val[0/4];
  r12.y = t2[3].val[0/4+1];
  r12.z = t2[3].val[0/4+2];
  r12.w = t2[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t2[4].val[0/4];
  r13.y = t2[4].val[0/4+1];
  r13.z = t2[4].val[0/4+2];
  r13.w = t2[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t2[5].val[0/4];
  r13.y = t2[5].val[0/4+1];
  r13.z = t2[5].val[0/4+2];
  r13.w = t2[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.x = r3.y * r3.y;
  r0.x = r3.x * r3.x + -r0.x;
  r3.x = t2[6].val[0/4];
  r3.y = t2[6].val[0/4+1];
  r3.z = t2[6].val[0/4+2];
  r10.xyz = r12.xyz + r10.xyz;
  r3.xyz = r3.xyz * r0.xxx + r10.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = cb0[187].xyz * r3.xyz;
  r0.x = r9.x * r9.y;
  r3.xyz = r3.xyz * r0.xxx;
  r3.xyz = r8.xyz * cb0[157].xyz + r3.xyz;
  r0.x = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r3.xyz * r6.xyz;
  r0.z = r2.z * 2.04040003 + -0.332399994;
  r0.z = r2.z * -4.79510021 + r0.z;
  r0.z = r2.z * 2.75519991 + r0.z;
  r0.z = 1.33200002 + r0.z;
  r0.zw = max(float2(1,1), r0.zw);
  r3.xyz = r3.xyz * r0.zzz;
  r6.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r0.z = cmp(0 < cb0[140].x);
  if (r0.z != 0) {
    r7.xyz = -cb1[5].xyz + r1.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r0.z = (int)r7.y | (int)r7.x;
    r0.z = (int)r7.z | (int)r0.z;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r0.zzz ? r1.xyz : r5.xyz;
  }
  r1.xyz = cb0[145].yyy * r6.xyz + r3.xyz;
  r1.xyz = r1.xyz + r5.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v1.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r0.z = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r0.z = frac(r0.z);
  r0.z = -0.5 + r0.z;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.x * r0.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r0.z * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.5,0.505882382);
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}