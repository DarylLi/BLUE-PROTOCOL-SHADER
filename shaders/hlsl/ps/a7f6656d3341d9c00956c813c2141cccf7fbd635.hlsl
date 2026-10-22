// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
  r2.xyz = -cb0[70].xyz + r2.xyz;
  r3.xyz = mad((int3)v3.xxx, int3(36,36,36), int3(4,5,20));
  r0.w = t2[r3.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r1.z = v5.x ? 1 : -1;
  r0.w = r1.z * r0.w;
  r1.zw = t6.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r4.xy = r1.zw * float2(2,2) + float2(-1,-1);
  r1.z = dot(r4.xy, r4.xy);
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r4.z = sqrt(r1.z);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[6].xxx * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r1.z = dot(r0.xyz, r0.xyz);
  r1.z = rsqrt(r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.xyz = cb2[6].yyy * cb2[1].xyz;
  r3.x = t2[r3.y].val[0/4];
  r3.y = t2[r3.y].val[0/4+1];
  r3.w = t2[r3.y].val[0/4+2];
  r5.xyz = float3(0.00999999978,0.00999999978,0.00999999978) * r3.xyw;
  r5.xyz = frac(r5.xyz);
  r0.w = dot(r5.xy, r5.yz);
  r0.w = -0.5 + r0.w;
  r0.w = dot(r0.ww, cb2[6].zz);
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = sqrt(r1.z);
  r5.xyz = r5.xyz / r1.zzz;
  r6.xyz = -cb0[67].xyz + r2.xyz;
  r1.z = dot(r6.xyz, r6.xyz);
  r1.z = sqrt(r1.z);
  r1.w = r1.z / cb2[6].w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb2[7].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r4.w = 1 + cb2[7].y;
  r1.w = r4.w * r1.w;
  r1.w = r2.w ? 0 : r1.w;
  r1.w = cb0[143].y + r1.w;
  r1.w = -1 + r1.w;
  r6.xyzw = t7.SampleBias(s3_s, v2.xy, r1.w).xyzw;
  r5.xyz = r0.www * r5.xyz + r6.xyz;
  r0.w = saturate(dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999)));
  r1.w = 1 + -r0.w;
  r1.w = r1.w + r1.w;
  r6.xyz = -r1.www * cb2[4].xyz + float3(1,1,1);
  r1.w = r0.w + r0.w;
  r7.xyz = cb2[3].xyz * r1.www;
  r0.w = cmp(r0.w >= 0.5);
  r6.xyz = r0.www ? r6.xyz : r7.xyz;
  r0.w = r1.z / cb2[7].z;
  r1.z = cmp(0 >= r0.w);
  r0.w = log2(r0.w);
  r0.w = cb2[7].w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r1.z ? 0 : r0.w;
  r6.xyz = r6.xyz + -r5.xyz;
  r6.xyz = r6.xyz * r0.www;
  r5.xyz = cb2[8].xxx * r6.xyz + r5.xyz;
  r6.xyz = cb2[8].yyy * r5.xyz;
  r6.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r6.xyz);
  r0.w = cmp(cb0[31].w < 1);
  r1.z = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.z + r1.x;
  r0.w = r0.w ? r1.y : r1.x;
  r0.w = r0.w / cb2[9].y;
  r1.xyz = -cb0[129].xxy + v4.xxy;
  r1.x = r1.x * cb0[130].z + -0.469999999;
  r1.x = 4.93230057 * r1.x;
  r1.x = cos(r1.x);
  r1.x = 0.899999976 + r1.x;
  r1.x = saturate(0.555555582 * r1.x);
  r1.x = cb2[9].w + -r1.x;
  r7.xy = cb0[152].xx + r1.yz;
  r7.xy = (uint2)r7.xy;
  r1.w = (uint)r7.y << 1;
  r1.w = (int)r1.w + (int)r7.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r1.yz = float2(0.015625,0.015625) * r1.yz;
  r1.y = t8.SampleBias(s4_s, r1.yz, cb0[143].y).x;
  r1.y = r1.w + r1.y;
  r1.y = 0.166666672 * r1.y;
  r0.w = r0.w * r1.x + r1.y;
  r0.w = saturate(-0.5 + r0.w);
  r1.xyz = saturate(cb2[11].www * r5.xyz);
  r0.w = r6.w * r0.w + -0.333299994;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r5.xyz = min(float3(1,1,1), r6.xyz);
  r6.xy = saturate(cb2[8].zw);
  o2.z = r6.y * cb0[139].y + cb0[139].x;
  o4.w = saturate(cb2[9].x);
  r1.xyz = r1.xyz * cb0[136].www + cb0[136].xyz;
  r0.w = cmp(0 < cb0[215].x);
  r6.y = t2[r3.z].val[4/4];
  r6.z = t2[r3.z].val[4/4+1];
  r1.w = cmp(0 < r6.z);
  if (r1.w != 0) {
    r7.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r7.xyz = max(float3(0,0,0), r7.xyz);
    r7.xyz = min(float3(0.99000001,0.99000001,0.99000001), r7.xyz);
    r7.xyz = cb0[213].xyz * r7.xyz;
    r8.xyz = (int3)r7.xyz;
    r8.w = 0;
    r8.xyzw = t0.Load(r8.xyzw).xyzw;
    r8.xyzw = (uint4)r8.xyzw;
    r1.w = 1 + cb0[213].w;
    r7.xyz = r7.xyz / r8.www;
    r7.xyz = frac(r7.xyz);
    r7.xyz = cb0[213].www * r7.xyz;
    r7.xyz = r8.xyz * r1.www + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) + r7.xyz;
    r7.xyz = cb0[214].xyz * r7.xyz;
    r1.w = t1.SampleLevel(s0_s, r7.xyz, 0).x;
  } else {
    r2.w = mad((int)v3.x, 36, 18);
    r2.w = t2[r2.w].val[12/4];
    r2.w = cmp(0 < r2.w);
    r2.w = r0.w ? r2.w : 0;
    r1.w = r2.w ? cb1[5].x : 1;
  }
  r7.xyz = saturate(r1.xyz);
  o4.xyz = sqrt(r7.xyz);
  r2.w = cb0[137].w * r6.x;
  r7.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = r2.www * float3(0.0799999982,0.0799999982,0.0799999982) + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r9.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r2.www ? r9.xyz : r7.xyz;
  r8.xyz = r2.www ? float3(0,0,0) : r8.xyz;
  r2.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.z = r2.w * 2.04040003 + -0.332399994;
  r3.z = r2.w * -4.79510021 + r3.z;
  r2.w = r2.w * 2.75519991 + r3.z;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r1.xyz = r7.xyz + r1.xyz;
  if (r0.w != 0) {
    r9.xyz = r2.xyz * cb1[1].xyz + cb1[0].xyz;
    r9.xyz = max(cb1[2].xyz, r9.xyz);
    r9.xyz = min(cb1[3].xyz, r9.xyz);
    r10.xyzw = t3.Sample(s1_s, r9.xyz).xyzw;
    r11.xyzw = t4.Sample(s0_s, r9.xyz).xyzw;
    r9.xyzw = t5.Sample(s0_s, r9.xyz).xyzw;
    r12.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
    r13.xw = r10.xw;
    r13.y = r11.x;
    r13.z = r9.x;
    r12.x = 0.886227548;
    r13.x = dot(r13.xyzw, r12.xyzw);
    r14.x = r10.y;
    r14.yw = r11.yw;
    r14.z = r9.y;
    r13.y = dot(r14.xyzw, r12.xyzw);
    r9.x = r10.z;
    r9.y = r11.z;
    r13.z = dot(r9.xyzw, r12.xyzw);
    r9.xyz = max(float3(0,0,0), r13.xyz);
    r9.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  } else {
    r9.xyz = float3(0,0,0);
  }
  r9.xyz = cb0[157].xyz * r9.xyz;
  r0.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.xyz = r9.xyz * r1.xyz;
  r9.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r9.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r9.xyz;
  r9.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r9.xyz;
  r9.xyz = float3(1.33200002,1.33200002,1.33200002) + r9.xyz;
  r9.xyz = max(float3(1,1,1), r9.xyz);
  r1.xyz = r9.xyz * r1.xyz;
  r7.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r3.z = cmp(0 < cb0[140].x);
  if (r3.z != 0) {
    r3.xyz = -r3.xyw + r2.xyz;
    r3.w = mad((int)v3.x, 36, 19);
    r8.x = t2[r3.w].val[0/4];
    r8.y = t2[r3.w].val[0/4+1];
    r8.z = t2[r3.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r3.xyz = cmp(r8.xyz < abs(r3.xyz));
    r3.x = (int)r3.y | (int)r3.x;
    r3.x = (int)r3.z | (int)r3.x;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r4.xyz = r3.xxx ? r2.xyz : r4.xyz;
  }
  r1.xyz = cb0[145].yyy * r7.xyz + r1.xyz;
  r1.xyz = r1.xyz + r4.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r2.w;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = r6.y;
  o2.xw = float2(0,0.509803951);
  o2.y = r6.x;
  o3.xyz = r5.xyz;
  o5.x = r1.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}