// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[3];
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
  float4 v2 : COLOR0,
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = cb0[45].xyzw * v5.yyyy;
  r0.xyzw = v5.xxxx * cb0[44].xyzw + r0.xyzw;
  r0.xyzw = v5.zzzz * cb0[46].xyzw + r0.xyzw;
  r0.xyzw = cb0[47].xyzw + r0.xyzw;
  r0.xyz = r0.xyz / r0.www;
  r1.xyz = -cb0[70].xyz + r0.xyz;
  r2.xyz = cb3[7].xxx * cb3[1].xyz;
  r0.w = mad((int)v3.x, 36, 18);
  r3.x = t3[r0.w].val[0/4];
  r3.y = t3[r0.w].val[0/4+1];
  r3.z = t3[r0.w].val[0/4+2];
  r0.w = r3.x + r3.y;
  r0.w = r0.w + r3.z;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r1.w = cb3[7].y * r0.w;
  r3.xy = r1.xy / cb3[8].zz;
  r3.xy = r1.ww * cb3[8].xy + r3.xy;
  r1.w = cb3[8].w * r0.w;
  r3.zw = r1.xy / cb3[10].xx;
  r3.zw = r1.ww * cb3[9].zw + r3.zw;
  r1.w = t8.SampleBias(s1_s, r3.zw, cb0[143].y).x;
  r1.w = cb3[10].y * r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[10].z * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r3.xy = r3.xy + r1.ww;
  r2.w = t9.SampleBias(s2_s, r3.xy, cb0[143].y).x;
  r3.x = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[10].w * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.x ? 0 : r2.w;
  r0.w = cb3[11].x * r0.w;
  r3.x = cb3[11].w * r0.w;
  r3.y = cb3[12].x * r0.w;
  r3.zw = r1.xy / cb3[12].yy;
  r3.xy = r3.xy + r3.zw;
  r3.xy = r3.xy + r1.ww;
  r3.xy = float2(0.5,0.5) + r3.xy;
  r0.w = t9.SampleBias(s2_s, r3.xy, cb0[143].y).x;
  r1.w = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb3[10].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w ? 0 : r0.w;
  r0.w = r2.w + r0.w;
  r0.w = cb3[12].z * r0.w;
  r3.w = saturate(v2.w * r0.w);
  r4.xyz = saturate(cb3[3].xyz);
  r5.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
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
  r6.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r8.xyz = float3(0.449999988,0.449999988,0.449999988) * r7.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r0.www ? r7.xyz : r6.xyz;
  r7.xyz = t1.SampleLevel(s0_s, r5.xyz, 0).xyz;
  r7.xyz = float3(0.886227548,0.886227548,0.886227548) * r7.xyz;
  r7.xyz = max(float3(0,0,0), r7.xyz);
  r7.xyz = cb0[157].xyz * r7.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r5.xyz = t2.SampleLevel(s0_s, r5.xyz, 0).xyz;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.w = dot(r5.xyz, r5.xyz);
    r1.w = sqrt(r1.w);
    r2.w = max(9.99999975e-005, r1.w);
    r5.xyz = r5.xyz / r2.www;
  } else {
    r9.xyz = v1.zxy * v0.yzx;
    r9.xyz = v1.yzx * v0.zxy + -r9.xyz;
    r9.xyz = v1.www * r9.xyz;
    r10.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
    r2.w = dot(r10.xyz, r10.xyz);
    r2.w = rsqrt(r2.w);
    r10.xyz = r10.xyz * r2.www;
    r9.xyz = r10.yyy * r9.xyz;
    r9.xyz = r10.xxx * v0.xyz + r9.xyz;
    r9.xyz = r10.zzz * v1.xyz + r9.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = rsqrt(r2.w);
    r5.xyz = r9.xyz * r2.www;
    r1.w = 1;
  }
  r9.x = t4[0].val[0/4];
  r9.y = t4[0].val[0/4+1];
  r9.z = t4[0].val[0/4+2];
  r9.w = t4[0].val[0/4+3];
  r5.w = 1;
  r9.x = dot(r9.xyzw, r5.xyzw);
  r10.x = t4[1].val[0/4];
  r10.y = t4[1].val[0/4+1];
  r10.z = t4[1].val[0/4+2];
  r10.w = t4[1].val[0/4+3];
  r9.y = dot(r10.xyzw, r5.xyzw);
  r10.x = t4[2].val[0/4];
  r10.y = t4[2].val[0/4+1];
  r10.z = t4[2].val[0/4+2];
  r10.w = t4[2].val[0/4+3];
  r9.z = dot(r10.xyzw, r5.xyzw);
  r10.xyzw = r5.xyzz * r5.yzzx;
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
  r2.w = r5.y * r5.y;
  r2.w = r5.x * r5.x + -r2.w;
  r5.x = t4[6].val[0/4];
  r5.y = t4[6].val[0/4+1];
  r5.z = t4[6].val[0/4+2];
  r9.xyz = r11.xyz + r9.xyz;
  r5.xyz = r5.xyz * r2.www + r9.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[187].xyz * r5.xyz;
  r5.xyz = r5.xyz * r1.www;
  r5.xyz = r7.xyz * float3(0.318309873,0.318309873,0.318309873) + r5.xyz;
  r5.xyz = r5.xyz * r6.xyz;
  r7.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r4.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r7.xyz = cb0[5].xyw * r1.yyy;
    r7.xyz = r1.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r1.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r7.xy = r7.xy / r7.zz;
    r9.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r7.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r9.z = cb0[208].z * r1.w;
    r7.xyzw = t5.SampleLevel(s0_s, r9.xyz, 0).xyzw;
    r9.x = v4.w * r7.w;
    r7.xyz = v4.xyz * r7.www + r7.xyz;
  } else {
    r7.xyz = v4.xyz;
    r9.x = v4.w;
  }
  r9.yzw = -cb0[148].xyz + r1.xyz;
  r10.xyz = cb0[150].xyz * r9.yzw;
  r11.xyz = -cb0[149].xyz + r1.xyz;
  r11.xyz = cb0[151].xyz * r11.xyz;
  r9.yzw = r9.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r9.yzw = float3(0.5,0.5,0.5) + -abs(r9.yzw);
  r9.yzw = saturate(float3(6,6,6) * r9.yzw);
  r1.w = r9.y * r9.z;
  r1.w = r1.w * r9.w;
  r9.yzw = t6.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r10.xyz = t7.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r9.yzw = -r10.xyz + r9.yzw;
  r9.yzw = r1.www * r9.yzw + r10.xyz;
  r9.yzw = r9.yzw * r6.xyz;
  r10.xyz = float3(0.886227548,0.886227548,0.886227548) * r9.yzw;
  r8.xyz = r0.www ? float3(0,0,0) : r8.xyz;
  r6.xyz = r8.xyz + r6.xyz;
  r6.xyz = -r9.yzw * float3(0.886227548,0.886227548,0.886227548) + r6.xyz;
  r6.xyz = cb0[145].yyy * r6.xyz + r10.xyz;
  r3.xyz = max(float3(0,0,0), r2.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r2.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r2.x = t3[r2.x].val[0/4];
    r2.z = t3[r2.x].val[0/4+1];
    r2.w = t3[r2.x].val[0/4+2];
    r2.xzw = -r2.xzw + r1.xyz;
    r8.x = t3[r2.y].val[0/4];
    r8.y = t3[r2.y].val[0/4+1];
    r8.z = t3[r2.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r2.xyz = cmp(r8.xyz < abs(r2.xzw));
    r0.w = (int)r2.y | (int)r2.x;
    r0.w = (int)r2.z | (int)r0.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.yzw = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.x = 1;
    r3.xyzw = r0.wwww ? r1.yzwx : r3.xyzw;
    o0.w = r3.w;
  } else {
    o0.w = r3.w;
  }
  r1.xyz = r5.xyz * r4.xyz + r6.xyz;
  r1.xyz = r1.xyz + r3.xyz;
  r1.xyz = r1.xyz * r9.xxx + r7.xyz;
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