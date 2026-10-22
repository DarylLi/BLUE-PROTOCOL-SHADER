// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t10 : register(t10);

TextureCube<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

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

SamplerState s6_s : register(s6);

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
  float4 cb1[6];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r1.zw = t6.SampleBias(s2_s, r1.zw, cb0[143].y).xy;
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
  r4.xyz = r4.xyz * r0.www;
  r1.zw = v2.xy * cb2[1].xy + cb2[2].xy;
  r0.w = -0.5 * cb2[20].z;
  r0.w = cb2[20].z * cb2[20].w + r0.w;
  r5.x = dot(v0.xyz, r2.xyz);
  r5.y = dot(r0.xyz, r2.xyz);
  r5.z = dot(v1.xyz, r2.xyz);
  r0.xy = r5.xy * r0.ww + r1.zw;
  r0.xyzw = t7.SampleBias(s3_s, r0.xy, cb0[143].y).xyzw;
  r1.z = cb2[21].x * r0.w;
  r0.w = -r0.w * cb2[21].x + 1;
  r2.xyz = float3(-1,1,1) * r5.xyz;
  r5.xyz = float3(1,1,1) / r2.xyz;
  r6.xy = v2.xy * cb2[3].xy + cb2[4].xy;
  r6.xy = float2(4,4) * r6.xy;
  r6.xy = frac(r6.xy);
  r6.xy = r6.xy * float2(2,-2) + float2(-1,1);
  r6.z = -1;
  r5.xyz = -r5.xyz * r6.xyz + abs(r5.xyz);
  r1.w = min(r5.x, r5.y);
  r1.w = min(r1.w, r5.z);
  r2.xy = r1.ww * r2.xy + r6.xy;
  r1.w = r1.w * r2.z + cb2[6].x;
  r5.x = -1 + r1.w;
  r5.yz = cb2[6].yz + r2.xy;
  r2.xyz = t9.Sample(s5_s, r5.xyz).xyz;
  r2.xyz = r2.xyz * cb2[8].xyz + cb2[10].xyz;
  r2.xyz = cb2[22].yyy * r2.xyz;
  r2.xyz = r2.xyz * r0.www;
  r0.w = cmp(cb0[31].w < 1);
  r1.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.w + r1.x;
  r0.w = r0.w ? r1.y : r1.x;
  r0.w = r0.w / cb2[22].z;
  r1.x = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[22].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = cb2[23].x * r0.w;
  r0.w = max(1, r0.w);
  r0.w = r1.x ? 1 : r0.w;
  r1.xyw = r2.xyz * r0.www;
  r2.xyz = -r2.xyz * r0.www + cb2[11].xyz;
  r1.xyw = cb2[23].yyy * r2.xyz + r1.xyw;
  r2.xyz = t10.Sample(s6_s, r5.xyz).xyz;
  r0.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r0.www + -r2.xyz;
  r2.xyz = cb2[23].zzz * r5.xyz + r2.xyz;
  r2.xyz = cb2[13].xyz * r2.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r0.www + -r0.xyz;
  r0.xyz = cb2[24].yyy * r5.xyz + r0.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r0.xyz);
  r0.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r0.zxy;
  r5.xyz = r0.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb2[24].x, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r0.xyz = r0.xyz * r7.xxx + r5.xyz;
  r0.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r0.xyz;
  r0.xyz = r0.xyz * cb2[15].xyz + -r2.xyz;
  r0.xyz = r1.zzz * r0.xyz + r2.xyz;
  r2.xyz = cb2[17].xyz + -r0.xyz;
  r0.xyz = saturate(cb2[24].zzz * r2.xyz + r0.xyz);
  r2.xy = cb2[18].xy * v2.xy;
  r2.xy = t8.SampleBias(s4_s, r2.xy, cb0[143].y).yx;
  r0.w = saturate(cb2[25].z + r2.y);
  r2.x = saturate(r2.x);
  r2.y = saturate(cb2[25].y);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r0.w = mad((int)v3.x, 36, 20);
  r1.z = cmp(0 < cb0[215].x);
  r2.z = t2[r0.w].val[4/4];
  r2.w = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r2.w);
  if (r0.w != 0) {
    r5.xyz = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r0.w = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r0.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r0.w = t1.SampleLevel(s0_s, r5.xyz, 0).x;
  } else {
    r2.w = mad((int)v3.x, 36, 18);
    r2.w = t2[r2.w].val[12/4];
    r2.w = cmp(0 < r2.w);
    r2.w = r1.z ? r2.w : 0;
    r0.w = r2.w ? cb1[5].x : 1;
  }
  r2.w = 0.0799999982 * r2.y;
  r5.xyz = -r2.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r5.xyz = r2.xxx * r5.xyz + r2.www;
  r6.xyz = -r0.xyz * r2.xxx + r0.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r5.xyz = r2.www ? float3(0,0,0) : r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  if (r1.z != 0) {
    r7.xyz = r3.xyz * cb1[1].xyz + cb1[0].xyz;
    r7.xyz = max(cb1[2].xyz, r7.xyz);
    r7.xyz = min(cb1[3].xyz, r7.xyz);
    r8.xyzw = t3.Sample(s1_s, r7.xyz).xyzw;
    r9.xyzw = t4.Sample(s0_s, r7.xyz).xyzw;
    r7.xyzw = t5.Sample(s0_s, r7.xyz).xyzw;
    r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
    r11.xw = r8.xw;
    r11.y = r9.x;
    r11.z = r7.x;
    r10.x = 0.886227548;
    r11.x = dot(r11.xyzw, r10.xyzw);
    r12.x = r8.y;
    r12.yw = r9.yw;
    r12.z = r7.y;
    r11.y = dot(r12.xyzw, r10.xyzw);
    r7.x = r8.z;
    r7.y = r9.z;
    r11.z = dot(r7.xyzw, r10.xyzw);
    r7.xyz = max(float3(0,0,0), r11.xyz);
    r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r7.xyz * r6.xyz;
  r8.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r7.xyz = r8.xyz * r7.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r1.xyw = max(float3(0,0,0), r1.xyw);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r3.xyz;
    r8.x = t2[r6.y].val[0/4];
    r8.y = t2[r6.y].val[0/4+1];
    r8.z = t2[r6.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r6.xyz = cmp(r8.xyz < abs(r6.xzw));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyw = r3.www ? r3.xyz : r1.xyw;
  }
  r3.xyz = cb0[145].yyy * r5.xyz + r7.xyz;
  r1.xyw = r3.xyz + r1.xyw;
  r3.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r3.xyz = frac(r3.xyz);
  r3.xyz = r3.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r3.xyz = r3.xyz * r3.xyy;
  r3.x = dot(r3.xyz, float3(20.390625,60.703125,2.42812085));
  r3.x = frac(r3.x);
  r3.x = -0.5 + r3.x;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.z = r1.z * r2.w;
  r1.z = r1.z * cb0[135].y + 0.00390625;
  r1.z = log2(r1.z);
  r1.z = r1.z * 0.0625 + 0.5;
  o3.w = r3.x * 0.00392156886 + r1.z;
  o0.xyz = cb0[135].yyy * r1.xyw;
  o0.w = 0;
  o1.w = r2.z;
  o2.w = 0.505882382;
  o2.xy = r2.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}