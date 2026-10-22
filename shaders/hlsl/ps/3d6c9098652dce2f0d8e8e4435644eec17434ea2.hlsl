// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

Texture3D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

struct t6_t {
  float val[4];
};
StructuredBuffer<t6_t> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[7];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[168];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[20];
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
  float4 v3 : TEXCOORD7,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v4.yyyy;
  r1.xyzw = v4.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v4.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r1.w = v5.x ? 1 : -1;
  r0.w = r1.w * r0.w;
  r4.xy = t12.SampleBias(s1_s, v2.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r4.zw = cmp(float2(0,0) >= r4.xy);
  r4.xy = log2(r4.xy);
  r4.xy = cb3[4].xx * r4.xy;
  r4.xy = exp2(r4.xy);
  r4.xy = r4.zw ? float2(0,0) : r4.xy;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[4].x * r1.w;
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
  r4.xyz = r0.xyz * r0.www;
  r1.w = dot(r3.xyz, v1.xyz);
  r2.w = cb3[4].y * r1.w;
  r2.w = 6.28318548 * r2.w;
  r5.y = sin(r2.w);
  r6.xy = cb3[4].zw + r1.ww;
  r6.xy = cb3[4].yy * r6.xy;
  r6.xy = float2(6.28318548,6.28318548) * r6.xy;
  r5.zw = sin(r6.xy);
  r5.xyz = float3(1,1,1) + r5.yzw;
  r5.xyz = cb3[2].xyz * r5.xyz;
  r6.xyz = float3(0.5,0.5,0.5) * r5.xyz;
  r5.xyz = -r5.xyz * float3(0.5,0.5,0.5) + cb3[3].xyz;
  r5.xyz = cb3[5].xxx * r5.xyz + r6.xyz;
  r1.w = dot(r4.xyz, r3.xyz);
  r1.w = max(0, r1.w);
  r1.w = 1 + -r1.w;
  r1.w = max(9.99999975e-005, abs(r1.w));
  r1.w = log2(r1.w);
  r1.w = 0.200000003 * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * 5 + cb3[5].z;
  r1.w = saturate(-5 + r1.w);
  r1.w = r1.w * 0.949999988 + 0.0500000007;
  r2.w = t13.SampleBias(s2_s, v2.xy, cb0[143].y).x;
  r2.w = r2.w * 5 + cb3[6].x;
  r2.w = saturate(-5 + r2.w);
  r3.w = r2.w * r1.w;
  r6.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
  r6.xyz = cb0[213].xyz * r6.xyz;
  r7.xyz = (int3)r6.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r1.w = 1 + cb0[213].w;
  r6.xyz = r6.xyz / r7.www;
  r6.xyz = frac(r6.xyz);
  r6.xyz = cb0[213].www * r6.xyz;
  r6.xyz = r7.xyz * r1.www + r6.xyz;
  r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
  r6.xyz = cb0[214].xyz * r6.xyz;
  r7.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = float3(0.449999988,0.449999988,0.449999988) * r7.xyz;
  r7.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r7.xyz = r1.www ? r7.xyz : cb0[136].xyz;
  r9.xyz = t1.SampleLevel(s0_s, r6.xyz, 0).xyz;
  r10.xyz = t2.SampleLevel(s0_s, r6.xyz, 0).xyz;
  r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r11.xyz = t3.SampleLevel(s0_s, r6.xyz, 0).xyz;
  r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r12.xyz = t4.SampleLevel(s0_s, r6.xyz, 0).xyz;
  r12.xyz = r12.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r10.xyz = r10.xyz * r9.xxx;
  r10.yzw = float3(1.73205125,1.73205125,1.73205125) * r10.xyz;
  r11.xyz = r11.xyz * r9.yyy;
  r11.yzw = float3(1.73205125,1.73205125,1.73205125) * r11.xyz;
  r12.xyz = r12.xyz * r9.zzz;
  r12.yzw = float3(1.73205125,1.73205125,1.73205125) * r12.xyz;
  r13.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.yzx;
  r10.x = r9.x;
  r13.x = 0.886227548;
  r10.x = dot(r10.xyzw, r13.xyzw);
  r11.x = r9.y;
  r10.y = dot(r11.xyzw, r13.xyzw);
  r12.x = r9.z;
  r10.z = dot(r12.xyzw, r13.xyzw);
  r9.xyz = max(float3(0,0,0), r10.xyz);
  r9.xyz = cb0[157].xyz * r9.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r6.xyz = t5.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r2.w = dot(r6.xyz, r6.xyz);
    r10.x = sqrt(r2.w);
    r2.w = max(9.99999975e-005, r10.x);
    r6.xyz = r6.xyz / r2.www;
    r2.w = 1 + -r10.x;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.xyz * r0.www + -r6.xyz;
    r0.xyz = r2.www * r0.xyz + r6.xyz;
    r0.w = saturate(dot(r6.xyz, r4.xyz));
    r5.w = 1 + -r0.w;
    r10.y = r2.w * r5.w + r0.w;
    r4.xyz = r0.xyz;
  } else {
    r10.xy = float2(1,1);
  }
  r0.x = t6[0].val[0/4];
  r0.y = t6[0].val[0/4+1];
  r0.z = t6[0].val[0/4+2];
  r0.w = t6[0].val[0/4+3];
  r4.w = 1;
  r0.x = dot(r0.xyzw, r4.xyzw);
  r6.x = t6[1].val[0/4];
  r6.y = t6[1].val[0/4+1];
  r6.z = t6[1].val[0/4+2];
  r6.w = t6[1].val[0/4+3];
  r0.y = dot(r6.xyzw, r4.xyzw);
  r6.x = t6[2].val[0/4];
  r6.y = t6[2].val[0/4+1];
  r6.z = t6[2].val[0/4+2];
  r6.w = t6[2].val[0/4+3];
  r0.z = dot(r6.xyzw, r4.xyzw);
  r6.xyzw = r4.xyzz * r4.yzzx;
  r11.x = t6[3].val[0/4];
  r11.y = t6[3].val[0/4+1];
  r11.z = t6[3].val[0/4+2];
  r11.w = t6[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r6.xyzw);
  r12.x = t6[4].val[0/4];
  r12.y = t6[4].val[0/4+1];
  r12.z = t6[4].val[0/4+2];
  r12.w = t6[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r6.xyzw);
  r12.x = t6[5].val[0/4];
  r12.y = t6[5].val[0/4+1];
  r12.z = t6[5].val[0/4+2];
  r12.w = t6[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r6.xyzw);
  r0.w = r4.y * r4.y;
  r0.w = r4.x * r4.x + -r0.w;
  r4.x = t6[6].val[0/4];
  r4.y = t6[6].val[0/4+1];
  r4.z = t6[6].val[0/4+2];
  r0.xyz = r11.xyz + r0.xyz;
  r0.xyz = r4.xyz * r0.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r10.x * r10.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r9.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r0.w = cmp(0 < cb2[150].w);
  if (r0.w != 0) {
    r4.xyz = cb0[5].xyw * r2.yyy;
    r4.xyz = r2.xxx * cb0[4].xyw + r4.xyz;
    r4.xyz = r2.zzz * cb0[6].xyw + r4.xyz;
    r4.xyz = cb0[7].xyw + r4.xyz;
    r4.xy = r4.xy / r4.zz;
    r6.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r4.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r6.z = cb0[208].z * r0.w;
    r4.xyzw = t7.SampleLevel(s0_s, r6.xyz, 0).xyzw;
    r6.x = v3.w * r4.w;
    r4.xyz = v3.xyz * r4.www + r4.xyz;
  } else {
    r4.xyz = v3.xyz;
    r6.x = v3.w;
  }
  r6.yzw = -cb0[148].xyz + r2.xyz;
  r9.xyz = cb0[150].xyz * r6.yzw;
  r10.xyz = -cb0[149].xyz + r2.xyz;
  r10.xyz = cb0[151].xyz * r10.xyz;
  r6.yzw = r6.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r6.yzw = float3(0.5,0.5,0.5) + -abs(r6.yzw);
  r6.yzw = saturate(float3(6,6,6) * r6.yzw);
  r0.w = r6.y * r6.z;
  r0.w = r0.w * r6.w;
  r6.yzw = t8.SampleLevel(s0_s, r9.xyz, 0).xyz;
  r11.xyz = t9.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r6.yzw = -r11.xyz + r6.yzw;
  r6.yzw = r0.www * r6.yzw + r11.xyz;
  r9.xyz = t10.SampleLevel(s0_s, r9.xyz, 0).xyz;
  r10.xyz = t11.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r9.xyz = -r10.xyz + r9.xyz;
  r9.xyz = r0.www * r9.xyz + r10.xyz;
  r0.w = dot(r6.yzw, float3(0.300000012,0.589999974,0.109999999));
  r0.w = 9.99999975e-006 + r0.w;
  r10.xyz = r6.yzw / r0.www;
  r11.yzw = r10.xxx * r9.xyz;
  r12.yzw = r10.yyy * r9.xyz;
  r9.yzw = r10.zzz * r9.xyz;
  r11.x = r6.y;
  r10.x = dot(r11.xyzw, r13.xyzw);
  r12.x = r6.z;
  r10.y = dot(r12.xyzw, r13.xyzw);
  r9.x = r6.w;
  r10.z = dot(r9.xyzw, r13.xyzw);
  r6.yzw = max(float3(0,0,0), r10.xyz);
  r9.xyz = r7.xyz * r6.yzw;
  r8.xyz = r1.www ? float3(0,0,0) : r8.xyz;
  r8.xyz = r8.xyz + r7.xyz;
  r6.yzw = -r7.xyz * r6.yzw + r8.xyz;
  r6.yzw = cb0[145].yyy * r6.yzw + r9.xyz;
  r3.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r8.xyz < abs(r5.xyz));
    r0.w = (int)r5.y | (int)r5.x;
    r0.w = (int)r5.z | (int)r0.w;
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
  r0.xyz = r0.xyz * r7.xyz + r6.yzw;
  r0.xyz = r0.xyz + r3.xyz;
  r0.xyz = r0.xyz * r6.xxx + r4.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb2[166].xyz + -cb2[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb2[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}