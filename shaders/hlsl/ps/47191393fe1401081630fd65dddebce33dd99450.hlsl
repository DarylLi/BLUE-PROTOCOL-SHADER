// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

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

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r0.w = mad((int)v3.x, 36, 4);
  r0.w = t0[r0.w].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.w = v6.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r4.xy = t7.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r4.zw = cmp(float2(0,0) >= r4.xy);
  r4.xy = log2(r4.xy);
  r4.xy = cb2[4].xx * r4.xy;
  r4.xy = exp2(r4.xy);
  r4.xy = r4.zw ? float2(0,0) : r4.xy;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[4].x * r1.w;
  r1.w = exp2(r1.w);
  r4.z = r2.w ? 0 : r1.w;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r1.w = dot(r3.xyz, v1.xyz);
  r2.w = cb2[4].y * r1.w;
  r2.w = 6.28318548 * r2.w;
  r4.y = sin(r2.w);
  r5.xy = cb2[4].zw + r1.ww;
  r5.xy = cb2[4].yy * r5.xy;
  r5.xy = float2(6.28318548,6.28318548) * r5.xy;
  r4.zw = sin(r5.xy);
  r4.xyz = float3(1,1,1) + r4.yzw;
  r4.xyz = cb2[2].xyz * r4.xyz;
  r5.xyz = float3(0.5,0.5,0.5) * r4.xyz;
  r4.xyz = -r4.xyz * float3(0.5,0.5,0.5) + cb2[3].xyz;
  r4.xyz = cb2[5].xxx * r4.xyz + r5.xyz;
  r1.w = dot(r0.xyz, r3.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = 0.200000003 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 5 + cb2[5].z;
  r1.w = saturate(-5 + r1.w);
  r1.w = r1.w * 0.949999988 + 0.0500000007;
  r2.w = t8.SampleBias(s2_s, v2.xy, cb0[143].y).x;
  r2.w = r2.w * 5 + cb2[6].x;
  r2.w = saturate(-5 + r2.w);
  r3.w = r2.w * r1.w;
  r5.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r5.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r5.xyz = r1.www ? r5.xyz : cb0[136].xyz;
  r7.x = t1[0].val[0/4];
  r7.y = t1[0].val[0/4+1];
  r7.z = t1[0].val[0/4+2];
  r7.w = t1[0].val[0/4+3];
  r0.w = 1;
  r7.x = dot(r7.xyzw, r0.xyzw);
  r8.x = t1[1].val[0/4];
  r8.y = t1[1].val[0/4+1];
  r8.z = t1[1].val[0/4+2];
  r8.w = t1[1].val[0/4+3];
  r7.y = dot(r8.xyzw, r0.xyzw);
  r8.x = t1[2].val[0/4];
  r8.y = t1[2].val[0/4+1];
  r8.z = t1[2].val[0/4+2];
  r8.w = t1[2].val[0/4+3];
  r7.z = dot(r8.xyzw, r0.xyzw);
  r8.xyzw = r0.xyzz * r0.yzzx;
  r9.x = t1[3].val[0/4];
  r9.y = t1[3].val[0/4+1];
  r9.z = t1[3].val[0/4+2];
  r9.w = t1[3].val[0/4+3];
  r9.x = dot(r9.xyzw, r8.xyzw);
  r10.x = t1[4].val[0/4];
  r10.y = t1[4].val[0/4+1];
  r10.z = t1[4].val[0/4+2];
  r10.w = t1[4].val[0/4+3];
  r9.y = dot(r10.xyzw, r8.xyzw);
  r10.x = t1[5].val[0/4];
  r10.y = t1[5].val[0/4+1];
  r10.z = t1[5].val[0/4+2];
  r10.w = t1[5].val[0/4+3];
  r9.z = dot(r10.xyzw, r8.xyzw);
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r8.x = t1[6].val[0/4];
  r8.y = t1[6].val[0/4+1];
  r8.z = t1[6].val[0/4+2];
  r7.xyz = r9.xyz + r7.xyz;
  r7.xyz = r8.xyz * r0.www + r7.xyz;
  r7.xyz = max(float3(0,0,0), r7.xyz);
  r7.xyz = cb0[187].xyz * r7.xyz;
  r0.w = cmp(0 < cb1[150].w);
  if (r0.w != 0) {
    r8.xyz = cb0[5].xyw * r2.yyy;
    r8.xyz = r2.xxx * cb0[4].xyw + r8.xyz;
    r8.xyz = r2.zzz * cb0[6].xyw + r8.xyz;
    r8.xyz = cb0[7].xyw + r8.xyz;
    r8.xy = r8.xy / r8.zz;
    r9.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r8.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r9.z = cb0[208].z * r0.w;
    r8.xyzw = t2.SampleLevel(s0_s, r9.xyz, 0).xyzw;
    r9.x = v4.w * r8.w;
    r8.xyz = v4.xyz * r8.www + r8.xyz;
  } else {
    r8.xyz = v4.xyz;
    r9.x = v4.w;
  }
  r9.yzw = -cb0[148].xyz + r2.xyz;
  r10.xyz = cb0[150].xyz * r9.yzw;
  r11.xyz = -cb0[149].xyz + r2.xyz;
  r11.xyz = cb0[151].xyz * r11.xyz;
  r9.yzw = r9.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r9.yzw = float3(0.5,0.5,0.5) + -abs(r9.yzw);
  r9.yzw = saturate(float3(6,6,6) * r9.yzw);
  r0.w = r9.y * r9.z;
  r0.w = r0.w * r9.w;
  r9.yzw = t3.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r12.xyz = t4.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r9.yzw = -r12.xyz + r9.yzw;
  r9.yzw = r0.www * r9.yzw + r12.xyz;
  r10.xyz = t5.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r11.xyz = t6.SampleLevel(s0_s, r11.xyz, 0).xyz;
  r10.xyz = -r11.xyz + r10.xyz;
  r10.xyz = r0.www * r10.xyz + r11.xyz;
  r0.w = dot(r9.yzw, float3(0.300000012,0.589999974,0.109999999));
  r0.w = 9.99999975e-006 + r0.w;
  r11.xyz = r9.yzw / r0.www;
  r12.yzw = r11.xxx * r10.xyz;
  r13.yzw = r11.yyy * r10.xyz;
  r10.yzw = r11.zzz * r10.xyz;
  r0.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r12.x = r9.y;
  r0.x = 0.886227548;
  r11.x = dot(r12.xyzw, r0.xyzw);
  r13.x = r9.z;
  r11.y = dot(r13.xyzw, r0.xyzw);
  r10.x = r9.w;
  r11.z = dot(r10.xyzw, r0.xyzw);
  r0.xyz = max(float3(0,0,0), r11.xyz);
  r9.yzw = r5.xyz * r0.xyz;
  r6.xyz = r1.www ? float3(0,0,0) : r6.xyz;
  r6.xyz = r6.xyz + r5.xyz;
  r0.xyz = -r5.xyz * r0.xyz + r6.xyz;
  r0.xyz = cb0[145].yyy * r0.xyz + r9.yzw;
  r3.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r4.x = t0[r4.x].val[0/4];
    r4.z = t0[r4.x].val[0/4+1];
    r4.w = t0[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r2.xyz;
    r6.x = t0[r4.y].val[0/4];
    r6.y = t0[r4.y].val[0/4+1];
    r6.z = t0[r4.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r4.xyz = cmp(r6.xyz < abs(r4.xzw));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r3.xyzw = r0.wwww ? r2.yzwx : r3.xyzw;
    o0.w = r3.w;
  } else {
    o0.w = r3.w;
  }
  r0.xyz = r7.xyz * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r0.xyz = r0.xyz * r9.xxx + r8.xyz;
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