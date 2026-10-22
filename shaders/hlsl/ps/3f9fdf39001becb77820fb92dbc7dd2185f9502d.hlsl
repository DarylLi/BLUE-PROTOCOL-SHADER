// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s3_s : register(s3);

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
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.xyz = r3.yyy * r0.xyz;
  r0.xyz = r3.xxx * v0.yzx + r0.xyz;
  r0.xyz = r3.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r3.xyz = cb3[7].xxx * cb3[1].xyz;
  r4.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(18,4,6,5));
  r5.x = t0[r4.x].val[0/4];
  r5.y = t0[r4.x].val[0/4+1];
  r5.z = t0[r4.x].val[0/4+2];
  r1.w = r5.x + r5.y;
  r1.w = r1.w + r5.z;
  r1.w = frac(r1.w);
  r1.w = cb0[142].z + r1.w;
  r1.w = cb2[2].x * r1.w;
  r2.w = cb3[7].y * r1.w;
  r5.xy = r2.xy / cb3[8].zz;
  r5.xy = r2.ww * cb3[8].xy + r5.xy;
  r2.w = cb3[8].w * r1.w;
  r5.zw = r2.xy / cb3[10].xx;
  r5.zw = r2.ww * cb3[9].zw + r5.zw;
  r2.w = t6.SampleBias(s2_s, r5.zw, cb0[143].y).x;
  r2.w = cb3[10].y * r2.w;
  r3.w = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[10].z * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r3.w ? 0 : r2.w;
  r5.xy = r5.xy + r2.ww;
  r3.w = t7.SampleBias(s3_s, r5.xy, cb0[143].y).x;
  r4.x = cmp(0 >= r3.w);
  r3.w = log2(r3.w);
  r3.w = cb3[10].w * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r4.x ? 0 : r3.w;
  r1.w = cb3[11].x * r1.w;
  r5.x = cb3[11].w * r1.w;
  r5.y = cb3[12].x * r1.w;
  r5.zw = r2.xy / cb3[12].yy;
  r5.xy = r5.xy + r5.zw;
  r5.xy = r5.xy + r2.ww;
  r5.xy = float2(0.5,0.5) + r5.xy;
  r1.w = t7.SampleBias(s3_s, r5.xy, cb0[143].y).x;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[10].w * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r1.w = r3.w + r1.w;
  r1.w = cb3[12].z * r1.w;
  r5.w = saturate(v2.w * r1.w);
  r6.xyz = saturate(cb3[3].xyz);
  r7.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = float3(0.449999988,0.449999988,0.449999988) * r8.xyz;
  r8.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.www ? r8.xyz : r7.xyz;
  r8.xy = float2(1,0.5) * v3.xy;
  r8.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t5.Sample(s1_s, r8.xy).xyzw;
  r8.xyzw = t5.Sample(s1_s, r8.zw).xyzw;
  r2.w = r8.w * 0.00392156886 + r10.w;
  r2.w = -0.00196078443 + r2.w;
  r11.x = t1[r4.y].val[0/4];
  r11.y = t1[r4.y].val[0/4+1];
  r11.z = t1[r4.y].val[0/4+2];
  r11.w = t1[r4.y].val[0/4+3];
  r12.x = t1[r4.z].val[0/4];
  r12.y = t1[r4.z].val[0/4+1];
  r12.z = t1[r4.z].val[0/4+2];
  r12.w = t1[r4.z].val[0/4+3];
  r2.w = r2.w * r11.w + r12.w;
  r4.xyz = r10.xyz * r10.xyz;
  r4.xyz = r4.xyz * r11.xyz + r12.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r10.x = t1[r4.w].val[0/4];
  r10.y = t1[r4.w].val[0/4+1];
  r10.z = t1[r4.w].val[0/4+2];
  r10.w = t1[r4.w].val[0/4+3];
  r3.w = mad((int)w4.x, 15, 7);
  r11.x = t1[r3.w].val[0/4];
  r11.y = t1[r3.w].val[0/4+1];
  r11.z = t1[r3.w].val[0/4+2];
  r11.w = t1[r3.w].val[0/4+3];
  r8.xyzw = r8.xyzw * r10.xyzw + r11.xyzw;
  r0.w = 1;
  r0.x = dot(r8.xyzw, r0.xyzw);
  r0.x = max(0, r0.x);
  r0.x = r2.w * r0.x;
  r0.xyz = r0.xxx * r4.xyz;
  r0.xyz = cb0[157].xyz * r0.xyz;
  r0.xyz = r0.xyz * r7.xyz;
  r4.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r6.xyz = cb0[5].xyw * r2.yyy;
    r6.xyz = r2.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r2.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r6.xy = r6.xy / r6.zz;
    r8.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r6.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r8.z = cb0[208].z * r0.w;
    r6.xyzw = t2.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r8.x = v5.w * r6.w;
    r6.xyz = v5.xyz * r6.www + r6.xyz;
  } else {
    r6.xyz = v5.xyz;
    r8.x = v5.w;
  }
  r8.yzw = -cb0[148].xyz + r2.xyz;
  r10.xyz = cb0[150].xyz * r8.yzw;
  r11.xyz = -cb0[149].xyz + r2.xyz;
  r11.xyz = cb0[151].xyz * r11.xyz;
  r8.yzw = r8.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.yzw = float3(0.5,0.5,0.5) + -abs(r8.yzw);
  r8.yzw = saturate(float3(6,6,6) * r8.yzw);
  r0.w = r8.y * r8.z;
  r0.w = r0.w * r8.w;
  r8.yzw = t3.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r10.xyz = t4.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r8.yzw = -r10.xyz + r8.yzw;
  r8.yzw = r0.www * r8.yzw + r10.xyz;
  r8.yzw = r8.yzw * r7.xyz;
  r10.xyz = float3(0.886227548,0.886227548,0.886227548) * r8.yzw;
  r9.xyz = r1.www ? float3(0,0,0) : r9.xyz;
  r7.xyz = r9.xyz + r7.xyz;
  r7.xyz = -r8.yzw * float3(0.886227548,0.886227548,0.886227548) + r7.xyz;
  r7.xyz = cb0[145].yyy * r7.xyz + r10.xyz;
  r5.xyz = max(float3(0,0,0), r3.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r3.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r3.x = t0[r3.x].val[0/4];
    r3.z = t0[r3.x].val[0/4+1];
    r3.w = t0[r3.x].val[0/4+2];
    r3.xzw = -r3.xzw + r2.xyz;
    r8.y = t0[r3.y].val[0/4];
    r8.z = t0[r3.y].val[0/4+1];
    r8.w = t0[r3.y].val[0/4+2];
    r8.yzw = float3(1,1,1) + r8.yzw;
    r3.xyz = cmp(r8.yzw < abs(r3.xzw));
    r0.w = (int)r3.y | (int)r3.x;
    r0.w = (int)r3.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r5.xyzw = r0.wwww ? r2.yzwx : r5.xyzw;
    o0.w = r5.w;
  } else {
    o0.w = r5.w;
  }
  r0.xyz = r0.xyz * r4.xyz + r7.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r0.xyz = r0.xyz * r8.xxx + r6.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb1[166].xyz + -cb1[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb1[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb1[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}