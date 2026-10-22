// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

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
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.yyy * r0.yzx;
  r4.xyw = r4.xxx * v0.yzx + r5.xyz;
  r4.xyz = r4.zzz * v1.yzx + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(18,4,6,5));
  r6.x = t0[r5.x].val[0/4];
  r6.y = t0[r5.x].val[0/4+1];
  r6.z = t0[r5.x].val[0/4+2];
  r0.w = r6.x + r6.y;
  r0.w = r0.w + r6.z;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r1.w = cb3[7].x * r0.w;
  r6.x = cb3[7].w * r1.w;
  r6.y = cb3[8].x * r1.w;
  r7.x = cb3[8].y * v2.x + cb3[8].z;
  r7.y = cb3[8].w * v2.y + cb3[9].x;
  r6.zw = r7.xy + r6.xy;
  r1.w = cb3[9].y * 0.0199999996 + -0.00999999978;
  r7.x = dot(v0.xyz, r3.xyz);
  r7.y = dot(r0.xyz, r3.xyz);
  r0.xy = r7.xy * r1.ww + r6.zw;
  r0.z = cb3[9].z * r0.w;
  r3.xy = cb3[10].ww * v2.xy;
  r3.xy = r0.zz * cb3[10].yz + r3.xy;
  r0.z = t6.SampleBias(s2_s, r3.xy, cb0[143].y).x;
  r0.z = cb3[11].x * r0.z;
  r1.w = cmp(0 >= r0.z);
  r0.z = log2(r0.z);
  r0.z = cb3[11].y * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r1.w ? 0 : r0.z;
  r0.xy = r0.xy + r0.zz;
  r3.x = t7.SampleBias(s3_s, r0.xy, cb0[143].y).x;
  r6.zw = cb3[8].yw * v2.xy + cb3[11].zw;
  r6.zw = r6.xy + r6.zw;
  r7.zw = cb3[12].xw * float2(0.0199999996,0.0199999996) + float2(-0.00999999978,-0.00999999978);
  r6.zw = r7.xy * r7.zz + r6.zw;
  r6.zw = r6.zw + r0.zz;
  r3.y = t7.SampleBias(s3_s, r6.zw, cb0[143].y).y;
  r6.zw = cb3[8].yw * v2.xy + cb3[12].yz;
  r6.xy = r6.xy + r6.zw;
  r6.xy = r7.xy * r7.ww + r6.xy;
  r6.xy = r6.xy + r0.zz;
  r3.z = t7.SampleBias(s3_s, r6.xy, cb0[143].y).z;
  r3.xyz = cb3[4].xyz * r3.xyz;
  r0.w = cb3[13].x * r0.w;
  r6.x = cb3[13].w * r0.w;
  r6.y = cb3[14].x * r0.w;
  r6.xy = v2.xy * cb3[14].yy + r6.xy;
  r0.zw = r6.xy + r0.zz;
  r6.xyz = t8.SampleBias(s4_s, r0.zw, cb0[143].y).xyz;
  r7.xyz = cb3[14].zzz * r6.xyz;
  r0.z = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = -r6.xyz * cb3[14].zzz + r0.zzz;
  r6.xyz = cb3[14].www * r6.xyz + r7.xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb3[15].xxx * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? float3(0,0,0) : r6.xyz;
  r3.xyz = r6.xyz * r3.xyz;
  r6.xyz = cb3[15].yyy * r3.xyz;
  r3.xyz = -r3.xyz * cb3[15].yyy + cb3[6].xyz;
  r3.xyz = cb3[15].zzz * r3.xyz + r6.xyz;
  r0.x = t9.SampleBias(s5_s, r0.xy, cb0[143].y).w;
  r0.w = saturate(cb3[15].w * r0.x);
  r6.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r6.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r6.xyz = r1.www ? r6.xyz : cb0[136].xyz;
  r8.xy = float2(1,0.5) * v3.xy;
  r8.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t5.Sample(s1_s, r8.xy).xyzw;
  r8.xyzw = t5.Sample(s1_s, r8.zw).xyzw;
  r2.w = r8.w * 0.00392156886 + r9.w;
  r2.w = -0.00196078443 + r2.w;
  r10.x = t1[r5.y].val[0/4];
  r10.y = t1[r5.y].val[0/4+1];
  r10.z = t1[r5.y].val[0/4+2];
  r10.w = t1[r5.y].val[0/4+3];
  r11.x = t1[r5.z].val[0/4];
  r11.y = t1[r5.z].val[0/4+1];
  r11.z = t1[r5.z].val[0/4+2];
  r11.w = t1[r5.z].val[0/4+3];
  r2.w = r2.w * r10.w + r11.w;
  r5.xyz = r9.xyz * r9.xyz;
  r5.xyz = r5.xyz * r10.xyz + r11.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r9.x = t1[r5.w].val[0/4];
  r9.y = t1[r5.w].val[0/4+1];
  r9.z = t1[r5.w].val[0/4+2];
  r9.w = t1[r5.w].val[0/4+3];
  r3.w = mad((int)w4.x, 15, 7);
  r10.x = t1[r3.w].val[0/4];
  r10.y = t1[r3.w].val[0/4+1];
  r10.z = t1[r3.w].val[0/4+2];
  r10.w = t1[r3.w].val[0/4+3];
  r8.xyzw = r8.xyzw * r9.xyzw + r10.xyzw;
  r4.w = 1;
  r3.w = dot(r8.xyzw, r4.xyzw);
  r3.w = max(0, r3.w);
  r2.w = r3.w * r2.w;
  r4.xyz = r2.www * r5.xyz;
  r4.xyz = cb0[157].xyz * r4.xyz;
  r2.w = cmp(0 < cb1[150].w);
  if (r2.w != 0) {
    r5.xyz = cb0[5].xyw * r2.yyy;
    r5.xyz = r2.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r2.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r5.xy = r5.xy / r5.zz;
    r8.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r2.w = r5.z * cb0[209].x + cb0[209].y;
    r2.w = log2(r2.w);
    r2.w = cb0[209].z * r2.w;
    r8.z = cb0[208].z * r2.w;
    r5.xyzw = t2.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r8.x = v5.w * r5.w;
    r5.xyz = v5.xyz * r5.www + r5.xyz;
  } else {
    r5.xyz = v5.xyz;
    r8.x = v5.w;
  }
  r8.yzw = -cb0[148].xyz + r2.xyz;
  r9.xyz = cb0[150].xyz * r8.yzw;
  r10.xyz = -cb0[149].xyz + r2.xyz;
  r10.xyz = cb0[151].xyz * r10.xyz;
  r8.yzw = r8.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.yzw = float3(0.5,0.5,0.5) + -abs(r8.yzw);
  r8.yzw = saturate(float3(6,6,6) * r8.yzw);
  r2.w = r8.y * r8.z;
  r2.w = r2.w * r8.w;
  r8.yzw = t3.SampleLevel(s0_s, r9.xyz, 0).xyz;
  r9.xyz = t4.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r8.yzw = -r9.xyz + r8.yzw;
  r8.yzw = r2.www * r8.yzw + r9.xyz;
  r8.yzw = r8.yzw * r6.xyz;
  r9.xyz = float3(0.886227548,0.886227548,0.886227548) * r8.yzw;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r7.xyz = r7.xyz + r6.xyz;
  r7.xyz = -r8.yzw * float3(0.886227548,0.886227548,0.886227548) + r7.xyz;
  r7.xyz = cb0[145].yyy * r7.xyz + r9.xyz;
  r0.xyz = max(float3(0,0,0), r3.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
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
    r1.w = (int)r3.y | (int)r3.x;
    r1.w = (int)r3.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r0.xyzw = r1.wwww ? r2.yzwx : r0.xyzw;
    o0.w = r0.w;
  } else {
    o0.w = r0.w;
  }
  r2.xyz = r4.xyz * r6.xyz + r7.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r0.xyz = r0.xyz * r8.xxx + r5.xyz;
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