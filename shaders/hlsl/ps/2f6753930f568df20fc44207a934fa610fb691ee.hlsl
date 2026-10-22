// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

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

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[16];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[4];
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
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v6.z;
  r1.y = 1;
  r1.xy = v6.ww * r1.xy;
  r2.xyzw = cb0[45].xyzw * v6.yyyy;
  r2.xyzw = v6.xxxx * cb0[44].xyzw + r2.xyzw;
  r2.xyzw = v6.zzzz * cb0[46].xyzw + r2.xyzw;
  r2.xyzw = cb0[47].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = -cb0[70].xyz + r2.xyz;
  r1.zw = cb3[7].xz * v2.xy + cb3[7].yw;
  r4.xy = t8.SampleBias(s2_s, r1.zw, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[8].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.zxy * r0.www;
  r2.w = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.w + r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.x = r1.x / cb3[8].y;
  r1.y = cmp(0 >= r1.x);
  r1.x = log2(r1.x);
  r1.x = cb3[8].z * r1.x;
  r1.x = exp2(r1.x);
  r1.x = min(1, r1.x);
  r1.x = cb3[8].w * r1.x;
  r1.x = max(1, r1.x);
  r1.x = r1.y ? 1 : r1.x;
  r4.xy = r1.zw / cb3[9].zz;
  r5.x = cb3[9].w + r4.x;
  r5.y = cb3[10].x + r4.y;
  r4.xyz = t9.SampleBias(s3_s, r5.xy, cb0[143].y).xyz;
  r1.y = dot(float3(0.577350259,0.577350259,0.577350259), r4.xyz);
  r4.xyz = -r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r5.xyz = float3(0.577350259,0.577350259,0.577350259) * r4.zxy;
  r5.xyz = r4.zxy * float3(0.577350259,0.577350259,0.577350259) + -r5.zxy;
  sincos(cb3[9].y, r6.x, r7.x);
  r5.xyz = r6.xxx * r5.xyz;
  r4.xyz = r4.xyz * r7.xxx + r5.xyz;
  r4.xyz = r1.yyy * float3(0.577350259,0.577350259,0.577350259) + r4.xyz;
  r4.xyz = cb3[2].xyz * r4.xyz;
  r5.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(18,4,6,5));
  r6.x = t0[r5.x].val[0/4];
  r6.y = t0[r5.x].val[0/4+1];
  r6.z = t0[r5.x].val[0/4+2];
  r1.y = r6.x + r6.y;
  r1.y = r1.y + r6.z;
  r1.y = frac(r1.y);
  r1.y = cb0[142].z + r1.y;
  r1.y = cb2[2].x * r1.y;
  r1.y = cb3[10].z * r1.y;
  r6.xy = v2.zw + -v2.xy;
  r6.xy = cb3[11].ww * r6.xy + v2.xy;
  r6.xy = cb3[12].xx * r6.xy;
  r6.xy = r1.yy * cb3[11].yz + r6.xy;
  r1.y = t10.SampleBias(s4_s, r6.xy, cb0[143].y).x;
  r2.w = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb3[12].y * r1.y;
  r1.y = exp2(r1.y);
  r1.y = r2.w ? 0 : r1.y;
  r2.w = cb3[12].z * r1.y;
  r2.w = cb0[142].z * cb3[10].y + r2.w;
  r2.w = 6.28318548 * r2.w;
  r2.w = sin(r2.w);
  r2.w = r2.w * 0.5 + 0.5;
  r2.w = r2.w * cb3[13].x + cb3[12].w;
  r2.w = max(cb3[13].z, r2.w);
  r2.w = min(cb3[13].y, r2.w);
  r2.w = cb3[13].w * r2.w;
  r2.w = cb2[3].y * r2.w;
  r1.y = r2.w * r1.y;
  r4.xyz = r4.xyz * r1.yyy;
  r6.xyz = r4.xyz * r1.xxx;
  r4.xyz = -r1.xxx * r4.xyz + cb3[4].xyz;
  r4.xyz = cb3[14].xxx * r4.xyz + r6.xyz;
  r6.xyzw = t11.SampleBias(s5_s, r1.zw, cb0[143].y).xyzw;
  r1.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r1.xxx + -r6.xyz;
  r7.xyz = cb3[14].www * r7.xyz + r6.xyz;
  r1.x = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[14].z, r5.x, r9.x);
  r8.xyz = r8.xyz * r5.xxx;
  r7.xyz = r7.xyz * r9.xxx + r8.xyz;
  r7.xyz = r1.xxx * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r7.xyz = cb3[6].xyz * r7.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r1.x = t12.SampleBias(s6_s, r1.zw, cb0[143].y).y;
  r1.yzw = min(float3(1,1,1), r7.xyz);
  r1.x = saturate(r1.x);
  r2.w = saturate(cb3[15].x);
  r6.w = saturate(r6.w);
  r3.w = 0.0799999982 * r2.w;
  r7.xyz = -r2.www * float3(0.0799999982,0.0799999982,0.0799999982) + r1.yzw;
  r7.xyz = r1.xxx * r7.xyz + r3.www;
  r8.xyz = -r1.yzw * r1.xxx + r1.yzw;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r9.xyz = float3(0.449999988,0.449999988,0.449999988) * r7.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r7.xyz = r1.xxx ? r7.xyz : r8.xyz;
  r8.xy = float2(1,0.5) * v3.xy;
  r8.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t6.Sample(s1_s, r8.xy).xyzw;
  r8.xyzw = t6.Sample(s1_s, r8.zw).xyzw;
  r2.w = r8.w * 0.00392156886 + r10.w;
  r2.w = -0.00196078443 + r2.w;
  r11.x = t1[r5.y].val[0/4];
  r11.y = t1[r5.y].val[0/4+1];
  r11.z = t1[r5.y].val[0/4+2];
  r11.w = t1[r5.y].val[0/4+3];
  r12.x = t1[r5.z].val[0/4];
  r12.y = t1[r5.z].val[0/4+1];
  r12.z = t1[r5.z].val[0/4+2];
  r12.w = t1[r5.z].val[0/4+3];
  r2.w = r2.w * r11.w + r12.w;
  r5.xyz = r10.xyz * r10.xyz;
  r5.xyz = r5.xyz * r11.xyz + r12.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r10.x = t1[r5.w].val[0/4];
  r10.y = t1[r5.w].val[0/4+1];
  r10.z = t1[r5.w].val[0/4+2];
  r10.w = t1[r5.w].val[0/4+3];
  r3.w = mad((int)w4.x, 15, 7);
  r11.x = t1[r3.w].val[0/4];
  r11.y = t1[r3.w].val[0/4+1];
  r11.z = t1[r3.w].val[0/4+2];
  r11.w = t1[r3.w].val[0/4+3];
  r8.xyzw = r8.xyzw * r10.xyzw + r11.xyzw;
  r0.w = 1;
  r3.w = dot(r8.zxyw, r0.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r5.xyz = r2.www * r5.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r8.xyzw = t7.Sample(s1_s, v3.xy).xyzw;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = r8.w * r8.w;
    r3.w = dot(r8.xyz, r8.xyz);
    r3.w = rsqrt(r3.w);
    r0.xyz = r8.xyz * r3.www;
  } else {
    r2.w = 1;
  }
  r8.x = t2[0].val[0/4];
  r8.y = t2[0].val[0/4+1];
  r8.z = t2[0].val[0/4+2];
  r8.w = t2[0].val[0/4+3];
  r0.w = 1;
  r8.x = dot(r8.xyzw, r0.xyzw);
  r10.x = t2[1].val[0/4];
  r10.y = t2[1].val[0/4+1];
  r10.z = t2[1].val[0/4+2];
  r10.w = t2[1].val[0/4+3];
  r8.y = dot(r10.xyzw, r0.xyzw);
  r10.x = t2[2].val[0/4];
  r10.y = t2[2].val[0/4+1];
  r10.z = t2[2].val[0/4+2];
  r10.w = t2[2].val[0/4+3];
  r8.z = dot(r10.xyzw, r0.xyzw);
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
  r8.xyz = r11.xyz + r8.xyz;
  r0.xyz = r0.yzw * r0.xxx + r8.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.xyz = r0.xyz * r2.www;
  r0.xyz = r5.xyz * cb0[157].xyz + r0.xyz;
  r0.xyz = r0.xyz * r7.xyz;
  r5.xyz = r1.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r1.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r1.yzw = r1.yzw * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r1.yzw = float3(1.33200002,1.33200002,1.33200002) + r1.yzw;
  r1.yzw = max(float3(1,1,1), r1.yzw);
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r5.xyz = cb0[5].xyw * r3.yyy;
    r5.xyz = r3.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r3.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r5.xy = r5.xy / r5.zz;
    r8.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r5.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r8.z = cb0[208].z * r0.w;
    r5.xyzw = t3.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r8.x = v5.w * r5.w;
    r5.xyz = v5.xyz * r5.www + r5.xyz;
  } else {
    r5.xyz = v5.xyz;
    r8.x = v5.w;
  }
  r8.yzw = -cb0[148].xyz + r3.xyz;
  r10.xyz = cb0[150].xyz * r8.yzw;
  r11.xyz = -cb0[149].xyz + r3.xyz;
  r11.xyz = cb0[151].xyz * r11.xyz;
  r8.yzw = r8.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.yzw = float3(0.5,0.5,0.5) + -abs(r8.yzw);
  r8.yzw = saturate(float3(6,6,6) * r8.yzw);
  r0.w = r8.y * r8.z;
  r0.w = r0.w * r8.w;
  r8.yzw = t4.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r10.xyz = t5.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r8.yzw = -r10.xyz + r8.yzw;
  r8.yzw = r0.www * r8.yzw + r10.xyz;
  r8.yzw = r8.yzw * r7.xyz;
  r10.xyz = float3(0.886227548,0.886227548,0.886227548) * r8.yzw;
  r9.xyz = r1.xxx ? float3(0,0,0) : r9.xyz;
  r7.xyz = r9.xyz + r7.xyz;
  r7.xyz = -r8.yzw * float3(0.886227548,0.886227548,0.886227548) + r7.xyz;
  r7.xyz = cb0[145].yyy * r7.xyz + r10.xyz;
  r6.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r4.x = t0[r4.x].val[0/4];
    r4.z = t0[r4.x].val[0/4+1];
    r4.w = t0[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r3.xyz;
    r8.y = t0[r4.y].val[0/4];
    r8.z = t0[r4.y].val[0/4+1];
    r8.w = t0[r4.y].val[0/4+2];
    r8.yzw = float3(1,1,1) + r8.yzw;
    r4.xyz = cmp(r8.yzw < abs(r4.xzw));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r1.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r3.yzw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.x = 1;
    r6.xyzw = r0.wwww ? r3.yzwx : r6.xyzw;
    o0.w = r6.w;
  } else {
    o0.w = r6.w;
  }
  r0.xyz = r0.xyz * r1.yzw + r7.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r0.xyz = r0.xyz * r8.xxx + r5.xyz;
  r1.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r2.xyz = r2.xyz * r1.www;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, cb0[358].xyz);
  r1.w = -1 + r1.w;
  r1.w = -abs(r1.w) * 0.5 + 1;
  r1.w = max(0, r1.w);
  r2.xyz = cb1[166].xyz + -cb1[165].xyz;
  r2.xyz = r1.www * r2.xyz + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r2.xyz = -cb1[167].xyz + r2.xyz;
  r2.xyz = r1.www * r2.xyz + cb1[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  return;
}