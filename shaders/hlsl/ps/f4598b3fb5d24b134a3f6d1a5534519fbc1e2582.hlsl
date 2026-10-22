// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t8 : register(t8);

TextureCube<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[26];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[13];
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
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.y = 1;
  r1.xy = v4.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v4.yyyy;
  r2.xyzw = v4.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v4.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r0.w = dot(-r2.xyz, -r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r2.xyz * r0.www;
  r1.zw = cb2[19].xx * v2.xy;
  r1.zw = t4.SampleBias(s1_s, r1.zw, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[19].yyy * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r5.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r5.yzw = r4.xyz * r0.www;
  r1.zw = v2.xy * cb2[1].xy + cb2[2].xy;
  r2.w = -0.5 * cb2[20].z;
  r2.w = cb2[20].z * cb2[20].w + r2.w;
  r6.x = dot(v0.xyz, r2.xyz);
  r6.y = dot(r0.xyz, r2.xyz);
  r6.z = dot(v1.xyz, r2.xyz);
  r0.xy = r6.xy * r2.ww + r1.zw;
  r2.xyzw = t5.SampleBias(s2_s, r0.xy, cb0[143].y).xyzw;
  r0.x = cb2[21].x * r2.w;
  r0.y = -r2.w * cb2[21].x + 1;
  r6.xyz = float3(-1,1,1) * r6.xyz;
  r7.xyz = float3(1,1,1) / r6.xyz;
  r1.zw = v2.xy * cb2[3].xy + cb2[4].xy;
  r1.zw = float2(4,4) * r1.zw;
  r1.zw = frac(r1.zw);
  r8.xy = r1.zw * float2(2,-2) + float2(-1,1);
  r8.z = -1;
  r7.xyz = -r7.xyz * r8.xyz + abs(r7.xyz);
  r0.z = min(r7.x, r7.y);
  r0.z = min(r0.z, r7.z);
  r1.zw = r0.zz * r6.xy + r8.xy;
  r0.z = r0.z * r6.z + cb2[6].x;
  r6.x = -1 + r0.z;
  r6.yz = cb2[6].yz + r1.zw;
  r7.xyz = t7.Sample(s4_s, r6.xyz).xyz;
  r7.xyz = r7.xyz * cb2[8].xyz + cb2[10].xyz;
  r7.xyz = cb2[22].yyy * r7.xyz;
  r7.xyz = r7.xyz * r0.yyy;
  r0.y = cmp(cb0[31].w < 1);
  r0.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r0.z = r1.x + r0.z;
  r0.y = r0.y ? r1.y : r0.z;
  r0.y = r0.y / cb2[22].z;
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb2[22].w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.y = cb2[23].x * r0.y;
  r0.y = max(1, r0.y);
  r0.y = r0.z ? 1 : r0.y;
  r1.xyz = r7.xyz * r0.yyy;
  r7.xyz = -r7.xyz * r0.yyy + cb2[11].xyz;
  r1.xyz = cb2[23].yyy * r7.xyz + r1.xyz;
  r6.xyz = t8.Sample(s5_s, r6.xyz).xyz;
  r0.y = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.yyy + -r6.xyz;
  r6.xyz = cb2[23].zzz * r7.xyz + r6.xyz;
  r6.xyz = cb2[13].xyz * r6.xyz;
  r0.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r0.yyy + -r2.xyz;
  r2.xyz = cb2[24].yyy * r7.xyz + r2.xyz;
  r0.y = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r7.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb2[24].x, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r2.xyz = r2.xyz * r9.xxx + r7.xyz;
  r2.xyz = r0.yyy * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = r2.xyz * cb2[15].xyz + -r6.xyz;
  r0.xyz = r0.xxx * r2.xyz + r6.xyz;
  r2.xyz = cb2[17].xyz + -r0.xyz;
  r0.xyz = saturate(cb2[24].zzz * r2.xyz + r0.xyz);
  r2.xy = cb2[18].xy * v2.xy;
  r2.xy = t6.SampleBias(s3_s, r2.xy, cb0[143].y).yx;
  r1.w = saturate(cb2[25].z + r2.y);
  r2.x = saturate(r2.x);
  r2.y = saturate(cb2[25].y);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = mad((int)v3.x, 36, 20);
  r2.z = cmp(0 < cb0[215].x);
  r6.x = t2[r1.w].val[4/4];
  r6.y = t2[r1.w].val[4/4+1];
  r1.w = cmp(0 < r6.y);
  if (r1.w != 0) {
    r6.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.yzw = max(float3(0,0,0), r6.yzw);
    r6.yzw = min(float3(0.99000001,0.99000001,0.99000001), r6.yzw);
    r6.yzw = cb0[213].xyz * r6.yzw;
    r7.xyz = (int3)r6.yzw;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r1.w = 1 + cb0[213].w;
    r6.yzw = r6.yzw / r7.www;
    r6.yzw = frac(r6.yzw);
    r6.yzw = cb0[213].www * r6.yzw;
    r6.yzw = r7.xyz * r1.www + r6.yzw;
    r6.yzw = float3(0.5,0.5,0.5) + r6.yzw;
    r6.yzw = cb0[214].xyz * r6.yzw;
    r1.w = t1.SampleLevel(s0_s, r6.yzw, 0).x;
  } else {
    r2.w = mad((int)v3.x, 36, 18);
    r2.w = t2[r2.w].val[12/4];
    r2.w = cmp(0 < r2.w);
    r2.w = r2.z ? r2.w : 0;
    r1.w = r2.w ? cb1[5].x : 1;
  }
  r2.w = 0.0799999982 * r2.y;
  r6.yzw = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r6.yzw = r2.xxx * r6.yzw + r2.www;
  r7.xyz = -r0.xyz * r2.xxx + r0.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.yzw = r6.yzw * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r8.xyz = r6.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r2.www ? r8.xyz : r7.xyz;
  r6.yzw = r2.www ? float3(0,0,0) : r6.yzw;
  r2.w = dot(r6.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r8.xyz = r5.zwz * r5.zwy;
  r9.yw = r5.ww * r5.zy;
  r3.w = r5.y * r5.y + -r8.x;
  r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.zwy;
  r9.xz = r8.zy * float2(1,3) + float2(0,-1);
  r8.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r9.xyzw;
  r3.w = 0.429042608 * r3.w;
  r10.x = 0.886227548;
  r4.w = dot(cb1[6].xyzw, r10.xyzw);
  r7.w = dot(cb1[9].xyzw, r8.xyzw);
  r4.w = r7.w + r4.w;
  r9.x = cb1[12].x * r3.w + r4.w;
  r4.w = dot(cb1[7].xyzw, r10.xyzw);
  r7.w = dot(cb1[10].xyzw, r8.xyzw);
  r4.w = r7.w + r4.w;
  r9.y = cb1[12].y * r3.w + r4.w;
  r4.w = dot(cb1[8].xyzw, r10.xyzw);
  r7.w = dot(cb1[11].xyzw, r8.xyzw);
  r4.w = r7.w + r4.w;
  r9.z = cb1[12].z * r3.w + r4.w;
  r8.xyz = max(float3(0,0,0), r9.xyz);
  r8.xyz = r2.zzz ? r8.xyz : 0;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r5.x = 1;
    r9.xyzw = r2.zzzz ? cb1[4].wxyz : r5.xyzw;
    r2.z = 1 + -r9.x;
    r2.z = -r2.z * r2.z + 1;
    r4.xyz = r4.xyz * r0.www + -r9.yzw;
    r4.xyz = r2.zzz * r4.xyz + r9.yzw;
    r0.w = saturate(dot(r9.yzw, r5.yzw));
    r3.w = 1 + -r0.w;
    r9.y = r2.z * r3.w + r0.w;
  } else {
    r4.xyz = r5.yzw;
    r9.xy = float2(1,1);
  }
  r10.x = t3[0].val[0/4];
  r10.y = t3[0].val[0/4+1];
  r10.z = t3[0].val[0/4+2];
  r10.w = t3[0].val[0/4+3];
  r4.w = 1;
  r10.x = dot(r10.xyzw, r4.xyzw);
  r11.x = t3[1].val[0/4];
  r11.y = t3[1].val[0/4+1];
  r11.z = t3[1].val[0/4+2];
  r11.w = t3[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r4.xyzw);
  r11.x = t3[2].val[0/4];
  r11.y = t3[2].val[0/4+1];
  r11.z = t3[2].val[0/4+2];
  r11.w = t3[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r4.xyzw);
  r11.xyzw = r4.xyzz * r4.yzzx;
  r12.x = t3[3].val[0/4];
  r12.y = t3[3].val[0/4+1];
  r12.z = t3[3].val[0/4+2];
  r12.w = t3[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t3[4].val[0/4];
  r13.y = t3[4].val[0/4+1];
  r13.z = t3[4].val[0/4+2];
  r13.w = t3[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t3[5].val[0/4];
  r13.y = t3[5].val[0/4+1];
  r13.z = t3[5].val[0/4+2];
  r13.w = t3[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.w = r4.y * r4.y;
  r0.w = r4.x * r4.x + -r0.w;
  r4.x = t3[6].val[0/4];
  r4.y = t3[6].val[0/4+1];
  r4.z = t3[6].val[0/4+2];
  r10.xyz = r12.xyz + r10.xyz;
  r4.xyz = r4.xyz * r0.www + r10.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = cb0[187].xyz * r4.xyz;
  r0.w = r9.x * r9.y;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r8.xyz * cb0[157].xyz + r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r7.xyz;
  r8.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r4.xyz = r8.xyz * r4.xyz;
  r6.yzw = r6.yzw * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r2.z = cmp(0 < cb0[140].x);
  if (r2.z != 0) {
    r7.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r7.x].val[0/4];
    r7.z = t2[r7.x].val[0/4+1];
    r7.w = t2[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r3.xyz;
    r8.x = t2[r7.y].val[0/4];
    r8.y = t2[r7.y].val[0/4+1];
    r8.z = t2[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r2.z = (int)r7.y | (int)r7.x;
    r2.z = (int)r7.z | (int)r2.z;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r2.zzz ? r3.xyz : r1.xyz;
  }
  r3.xyz = cb0[145].yyy * r6.yzw + r4.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r2.z = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r2.z = frac(r2.z);
  r2.z = -0.5 + r2.z;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.z * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r6.x;
  o2.w = 0.505882382;
  o2.xy = r2.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}