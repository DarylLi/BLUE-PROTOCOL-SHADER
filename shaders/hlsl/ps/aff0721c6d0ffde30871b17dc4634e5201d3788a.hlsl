// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

struct t4_t {
  float val[4];
};
StructuredBuffer<t4_t> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[168];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear centroid float4 v0 : TEXCOORD10,
  linear centroid float4 v1 : TEXCOORD11,
  float4 v2 : TEXCOORD0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v5.yyyy;
  r0.xyzw = v5.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v5.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xy = cb3[4].xz * v2.xy + cb3[4].yw;
  r3.xyz = cb3[5].yyy * cb3[1].xyz;
  r4.xyz = t11.SampleBias(s2_s, r2.xy, cb0[143].y).xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r0.www + -r4.xyz;
  r4.xyz = cb3[6].xxx * r5.xyz + r4.xyz;
  r0.w = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r0.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r5.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb3[5].w, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r4.xyz = r4.xyz * r7.xxx + r5.xyz;
  r4.xyz = r0.www * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r4.xyz = cb3[3].xyz * r4.xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r0.w = t12.SampleBias(s3_s, r2.xy, cb0[143].y).y;
  r2.zw = cb3[6].ww * r2.xy;
  r5.w = t13.SampleBias(s4_s, r2.zw, cb0[143].y).x;
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r0.w = saturate(r0.w);
  r1.w = saturate(cb3[6].y);
  r5.w = saturate(r5.w);
  r6.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
  r6.xyz = cb0[213].xyz * r6.xyz;
  r7.xyz = (int3)r6.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r2.z = 1 + cb0[213].w;
  r6.xyz = r6.xyz / r7.www;
  r6.xyz = frac(r6.xyz);
  r6.xyz = cb0[213].www * r6.xyz;
  r6.xyz = r7.xyz * r2.zzz + r6.xyz;
  r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
  r6.xyz = cb0[214].xyz * r6.xyz;
  r2.z = 0.0799999982 * r1.w;
  r7.xyz = -r1.www * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r7.xyz = r0.www * r7.xyz + r2.zzz;
  r8.xyz = -r4.xyz * r0.www + r4.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r9.xyz = float3(0.449999988,0.449999988,0.449999988) * r7.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r7.xyz = r0.www ? r7.xyz : r8.xyz;
  r8.xyz = t1.SampleLevel(s0_s, r6.xyz, 0).xyz;
  r8.xyz = float3(0.886227548,0.886227548,0.886227548) * r8.xyz;
  r8.xyz = max(float3(0,0,0), r8.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r6.xyz = t2.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r1.w);
    r2.z = max(9.99999975e-005, r1.w);
    r6.xyz = r6.xyz / r2.zzz;
  } else {
    r10.xyz = v1.zxy * v0.yzx;
    r10.xyz = v1.yzx * v0.zxy + -r10.xyz;
    r10.xyz = v1.www * r10.xyz;
    r2.xy = t10.SampleBias(s1_s, r2.xy, cb0[143].y).xy;
    r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
    r2.w = dot(r2.xy, r2.xy);
    r2.w = 1 + -r2.w;
    r2.w = max(0, r2.w);
    r2.z = sqrt(r2.w);
    r11.xyz = float3(0,0,1) + -r2.xyz;
    r2.xyz = cb3[5].xxx * r11.xyz + r2.xyz;
    r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = rsqrt(r2.w);
    r2.xyz = r2.xyz * r2.www;
    r10.xyz = r2.yyy * r10.xyz;
    r2.xyw = r2.xxx * v0.xyz + r10.xyz;
    r2.xyz = r2.zzz * v1.xyz + r2.xyw;
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = rsqrt(r2.w);
    r6.xyz = r2.xyz * r2.www;
    r1.w = 1;
  }
  r2.x = t4[0].val[0/4];
  r2.y = t4[0].val[0/4+1];
  r2.z = t4[0].val[0/4+2];
  r2.w = t4[0].val[0/4+3];
  r6.w = 1;
  r2.x = dot(r2.xyzw, r6.xyzw);
  r10.x = t4[1].val[0/4];
  r10.y = t4[1].val[0/4+1];
  r10.z = t4[1].val[0/4+2];
  r10.w = t4[1].val[0/4+3];
  r2.y = dot(r10.xyzw, r6.xyzw);
  r10.x = t4[2].val[0/4];
  r10.y = t4[2].val[0/4+1];
  r10.z = t4[2].val[0/4+2];
  r10.w = t4[2].val[0/4+3];
  r2.z = dot(r10.xyzw, r6.xyzw);
  r10.xyzw = r6.xyzz * r6.yzzx;
  r11.x = t4[3].val[0/4];
  r11.y = t4[3].val[0/4+1];
  r11.z = t4[3].val[0/4+2];
  r11.w = t4[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t4[4].val[0/4];
  r12.y = t4[4].val[0/4+1];
  r12.z = t4[4].val[0/4+2];
  r12.w = t4[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t4[5].val[0/4];
  r12.y = t4[5].val[0/4+1];
  r12.z = t4[5].val[0/4+2];
  r12.w = t4[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r2.w = r6.y * r6.y;
  r2.w = r6.x * r6.x + -r2.w;
  r6.x = t4[6].val[0/4];
  r6.y = t4[6].val[0/4+1];
  r6.z = t4[6].val[0/4+2];
  r2.xyz = r11.xyz + r2.xyz;
  r2.xyz = r6.xyz * r2.www + r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = cb0[187].xyz * r2.xyz;
  r2.xyz = r2.xyz * r1.www;
  r2.xyz = r8.xyz * float3(0.318309873,0.318309873,0.318309873) + r2.xyz;
  r2.xyz = r2.xyz * r7.xyz;
  r6.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r4.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r1.yyy;
    r6.xyz = r1.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r1.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r6.xy = r6.xy / r6.zz;
    r8.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r6.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r8.z = cb0[208].z * r1.w;
    r6.xyzw = t5.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r8.x = v4.w * r6.w;
    r6.xyz = v4.xyz * r6.www + r6.xyz;
  } else {
    r6.xyz = v4.xyz;
    r8.x = v4.w;
  }
  r8.yzw = -cb0[148].xyz + r1.xyz;
  r10.xyz = cb0[150].xyz * r8.yzw;
  r11.xyz = -cb0[149].xyz + r1.xyz;
  r11.xyz = cb0[151].xyz * r11.xyz;
  r8.yzw = r8.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.yzw = float3(0.5,0.5,0.5) + -abs(r8.yzw);
  r8.yzw = saturate(float3(6,6,6) * r8.yzw);
  r1.w = r8.y * r8.z;
  r1.w = r1.w * r8.w;
  r10.xyzw = t6.SampleLevel(s0_s, r10.xyz, 0).xyzw;
  r11.xyzw = t7.SampleLevel(s0_s, r11.xyz, 0).xyzw;
  r10.xyzw = -r11.xyzw + r10.xyzw;
  r10.xyzw = r1.wwww * r10.xyzw + r11.xyzw;
  r8.yzw = float3(0.886227548,0.886227548,0.886227548) * r10.xyz;
  r1.w = cmp(0 < cb2[6].w);
  if (r1.w != 0) {
    r11.xyzw = cb2[1].xyzw * r1.yyyy;
    r11.xyzw = r1.xxxx * cb2[0].xyzw + r11.xyzw;
    r11.xyzw = r1.zzzz * cb2[2].xyzw + r11.xyzw;
    r11.xyzw = cb2[3].xyzw + r11.xyzw;
    r10.xy = r11.xy / r11.ww;
    r12.xyzw = t8.SampleLevel(s0_s, r10.xy, 0).xyzw;
    r11.xyw = t9.SampleLevel(s0_s, r10.xy, 0).yzw;
    r13.xyz = float3(6.28318548,12.566371,18.849556) * r11.zzz;
    sincos(r13.xyz, r13.xyz, r14.xyz);
    r14.xyz = float3(1,1,1) + -r14.xyz;
    r1.w = r12.x * r11.z;
    r12.xyz = r13.xyz * r12.yzw;
    r12.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r12.xyz;
    r2.w = dot(r12.xyz, float3(1,1,1));
    r1.w = r1.w * 0.5 + r2.w;
    r11.xyz = r14.xyz * r11.xyw;
    r11.xyz = float3(0.156687468,0.0747561157,0.0460920706) * r11.xyz;
    r2.w = dot(r11.xyz, float3(1,1,1));
    r1.w = r2.w + r1.w;
    r11.xyz = float3(-2.88539004,-3.46385384,-4.90712595) * r1.www;
    r11.xyz = exp2(r11.xyz);
    r11.xyz = min(float3(1,1,1), r11.xyz);
    r12.xy = cmp(r10.xy < cb2[4].xy);
    r10.xy = cmp(cb2[4].zw < r10.xy);
    r10.xy = (int2)r10.xy | (int2)r12.xy;
    r1.w = (int)r10.y | (int)r10.x;
    r10.xyz = cb2[6].xyz * r10.www;
    r11.xyz = float3(1,1,1) + -r11.xyz;
    r11.xyz = r1.www ? float3(0,0,0) : r11.xyz;
    r10.xyz = -r10.xyz * r11.xyz + r8.yzw;
    r10.xyz = max(float3(0,0,0), r10.xyz);
    r10.xyz = r10.xyz * r7.xyz;
  } else {
    r10.xyz = r8.yzw * r7.xyz;
  }
  r8.yzw = r0.www ? float3(0,0,0) : r9.xyz;
  r7.xyz = r8.yzw + r7.xyz;
  r7.xyz = r7.xyz + -r10.xyz;
  r7.xyz = cb0[145].yyy * r7.xyz + r10.xyz;
  r5.xyz = max(float3(0,0,0), r3.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r3.x = t3[r3.x].val[0/4];
    r3.z = t3[r3.x].val[0/4+1];
    r3.w = t3[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r1.xyz;
    r8.y = t3[r3.y].val[0/4];
    r8.z = t3[r3.y].val[0/4+1];
    r8.w = t3[r3.y].val[0/4+2];
    r8.yzw = float3(1,1,1) + r8.yzw;
    r3.xyz = cmp(r8.yzw < abs(r3.xzw));
    r0.w = (int)r3.y | (int)r3.x;
    r0.w = (int)r3.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.yzw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.x = 1;
    r5.xyzw = r0.wwww ? r1.yzwx : r5.xyzw;
    o0.w = r5.w;
  } else {
    o0.w = r5.w;
  }
  r1.xyz = r2.xyz * r4.xyz + r7.xyz;
  r1.xyz = r1.xyz + r5.xyz;
  r1.xyz = r1.xyz * r8.xxx + r6.xyz;
  r2.xyz = cb0[135].yyy * r1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r0.w);
  r0.xyzw = r1.wwww * r0.xyzw;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r0.x = dot(r0.xyz, cb0[358].xyz);
  r0.x = -1 + r0.x;
  r0.x = -abs(r0.x) * 0.5 + 1;
  r0.x = max(0, r0.x);
  r3.xyz = cb1[166].xyz + -cb1[165].xyz;
  r0.xyz = r0.xxx * r3.xyz + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r0.xyz = -cb1[167].xyz + r0.xyz;
  r0.xyz = r1.www * r0.xyz + cb1[167].xyz;
  r0.xyz = -r1.xyz * cb0[135].yyy + r0.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}