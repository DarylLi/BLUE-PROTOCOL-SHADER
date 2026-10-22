// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  nointerpolation uint v3 : PRIMITIVE_ID0,
  float4 v4 : TEXCOORD7,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
  r0.w = mad((int)v3.x, 36, 18);
  r4.x = t3[r0.w].val[0/4];
  r4.y = t3[r0.w].val[0/4+1];
  r4.z = t3[r0.w].val[0/4+2];
  r0.w = r4.x + r4.y;
  r0.w = r0.w + r4.z;
  r0.w = frac(r0.w);
  r0.w = cb0[142].z + r0.w;
  r0.w = cb2[2].x * r0.w;
  r1.w = cb3[7].x * r0.w;
  r4.x = cb3[7].w * r1.w;
  r4.y = cb3[8].x * r1.w;
  r5.x = cb3[8].y * v2.x + cb3[8].z;
  r5.y = cb3[8].w * v2.y + cb3[9].x;
  r4.zw = r5.xy + r4.xy;
  r1.w = cb3[9].y * 0.0199999996 + -0.00999999978;
  r5.x = dot(v0.xyz, r3.xyz);
  r5.y = dot(r0.xyz, r3.xyz);
  r3.xy = r5.xy * r1.ww + r4.zw;
  r1.w = cb3[9].z * r0.w;
  r3.zw = cb3[10].ww * v2.xy;
  r3.zw = r1.ww * cb3[10].yz + r3.zw;
  r1.w = t8.SampleBias(s1_s, r3.zw, cb0[143].y).x;
  r1.w = cb3[11].x * r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[11].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r3.xy = r3.xy + r1.ww;
  r6.x = t9.SampleBias(s2_s, r3.xy, cb0[143].y).x;
  r3.zw = cb3[8].yw * v2.xy + cb3[11].zw;
  r3.zw = r4.xy + r3.zw;
  r4.zw = cb3[12].xw * float2(0.0199999996,0.0199999996) + float2(-0.00999999978,-0.00999999978);
  r3.zw = r5.xy * r4.zz + r3.zw;
  r3.zw = r3.zw + r1.ww;
  r6.y = t9.SampleBias(s2_s, r3.zw, cb0[143].y).y;
  r3.zw = cb3[8].yw * v2.xy + cb3[12].yz;
  r3.zw = r4.xy + r3.zw;
  r3.zw = r5.xy * r4.ww + r3.zw;
  r3.zw = r3.zw + r1.ww;
  r6.z = t9.SampleBias(s2_s, r3.zw, cb0[143].y).z;
  r4.xyz = cb3[4].xyz * r6.xyz;
  r0.w = cb3[13].x * r0.w;
  r5.x = cb3[13].w * r0.w;
  r5.y = cb3[14].x * r0.w;
  r3.zw = v2.xy * cb3[14].yy + r5.xy;
  r3.zw = r3.zw + r1.ww;
  r5.xyz = t10.SampleBias(s3_s, r3.zw, cb0[143].y).xyz;
  r6.xyz = cb3[14].zzz * r5.xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = -r5.xyz * cb3[14].zzz + r0.www;
  r5.xyz = cb3[14].www * r5.xyz + r6.xyz;
  r6.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb3[15].xxx * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r6.xyz ? float3(0,0,0) : r5.xyz;
  r4.xyz = r5.xyz * r4.xyz;
  r5.xyz = cb3[15].yyy * r4.xyz;
  r4.xyz = -r4.xyz * cb3[15].yyy + cb3[6].xyz;
  r4.xyz = cb3[15].zzz * r4.xyz + r5.xyz;
  r0.w = t11.SampleBias(s4_s, r3.xy, cb0[143].y).w;
  r3.w = saturate(cb3[15].w * r0.w);
  r5.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
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
  r6.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r7.xyz = float3(0.449999988,0.449999988,0.449999988) * r6.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r6.xyz = r0.www ? r6.xyz : cb0[136].xyz;
  r8.xyz = t1.SampleLevel(s0_s, r5.xyz, 0).xyz;
  r8.xyz = float3(0.886227548,0.886227548,0.886227548) * r8.xyz;
  r8.xyz = max(float3(0,0,0), r8.xyz);
  r8.xyz = cb0[157].xyz * r8.xyz;
  r1.w = cmp(cb0[186].y != 0.000000);
  if (r1.w != 0) {
    r5.xyz = t2.SampleLevel(s0_s, r5.xyz, 0).xyz;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.w = dot(r5.xyz, r5.xyz);
    r1.w = sqrt(r1.w);
    r2.w = max(9.99999975e-005, r1.w);
    r5.xyz = r5.xyz / r2.www;
  } else {
    r9.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = rsqrt(r2.w);
    r9.xyz = r9.xyz * r2.www;
    r0.xyz = r9.yyy * r0.xyz;
    r0.xyz = r9.xxx * v0.xyz + r0.xyz;
    r0.xyz = r9.zzz * v1.xyz + r0.xyz;
    r2.w = dot(r0.xyz, r0.xyz);
    r2.w = rsqrt(r2.w);
    r5.xyz = r2.www * r0.xyz;
    r1.w = 1;
  }
  r9.x = t4[0].val[0/4];
  r9.y = t4[0].val[0/4+1];
  r9.z = t4[0].val[0/4+2];
  r9.w = t4[0].val[0/4+3];
  r5.w = 1;
  r0.x = dot(r9.xyzw, r5.xyzw);
  r9.x = t4[1].val[0/4];
  r9.y = t4[1].val[0/4+1];
  r9.z = t4[1].val[0/4+2];
  r9.w = t4[1].val[0/4+3];
  r0.y = dot(r9.xyzw, r5.xyzw);
  r9.x = t4[2].val[0/4];
  r9.y = t4[2].val[0/4+1];
  r9.z = t4[2].val[0/4+2];
  r9.w = t4[2].val[0/4+3];
  r0.z = dot(r9.xyzw, r5.xyzw);
  r9.xyzw = r5.xyzz * r5.yzzx;
  r10.x = t4[3].val[0/4];
  r10.y = t4[3].val[0/4+1];
  r10.z = t4[3].val[0/4+2];
  r10.w = t4[3].val[0/4+3];
  r10.x = dot(r10.xyzw, r9.xyzw);
  r11.x = t4[4].val[0/4];
  r11.y = t4[4].val[0/4+1];
  r11.z = t4[4].val[0/4+2];
  r11.w = t4[4].val[0/4+3];
  r10.y = dot(r11.xyzw, r9.xyzw);
  r11.x = t4[5].val[0/4];
  r11.y = t4[5].val[0/4+1];
  r11.z = t4[5].val[0/4+2];
  r11.w = t4[5].val[0/4+3];
  r10.z = dot(r11.xyzw, r9.xyzw);
  r2.w = r5.y * r5.y;
  r2.w = r5.x * r5.x + -r2.w;
  r5.x = t4[6].val[0/4];
  r5.y = t4[6].val[0/4+1];
  r5.z = t4[6].val[0/4+2];
  r0.xyz = r10.xyz + r0.xyz;
  r0.xyz = r5.xyz * r2.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.xyz = r0.xyz * r1.www;
  r0.xyz = r8.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r5.xyz = cb0[5].xyw * r2.yyy;
    r5.xyz = r2.xxx * cb0[4].xyw + r5.xyz;
    r5.xyz = r2.zzz * cb0[6].xyw + r5.xyz;
    r5.xyz = cb0[7].xyw + r5.xyz;
    r5.xy = r5.xy / r5.zz;
    r8.xy = r5.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r5.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r8.z = cb0[208].z * r1.w;
    r5.xyzw = t5.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r8.x = v4.w * r5.w;
    r5.xyz = v4.xyz * r5.www + r5.xyz;
  } else {
    r5.xyz = v4.xyz;
    r8.x = v4.w;
  }
  r8.yzw = -cb0[148].xyz + r2.xyz;
  r9.xyz = cb0[150].xyz * r8.yzw;
  r10.xyz = -cb0[149].xyz + r2.xyz;
  r10.xyz = cb0[151].xyz * r10.xyz;
  r8.yzw = r8.yzw * cb0[150].xyz + float3(-0.5,-0.5,-0.5);
  r8.yzw = float3(0.5,0.5,0.5) + -abs(r8.yzw);
  r8.yzw = saturate(float3(6,6,6) * r8.yzw);
  r1.w = r8.y * r8.z;
  r1.w = r1.w * r8.w;
  r8.yzw = t6.SampleLevel(s0_s, r9.xyz, 0).xyz;
  r9.xyz = t7.SampleLevel(s0_s, r10.xyz, 0).xyz;
  r8.yzw = -r9.xyz + r8.yzw;
  r8.yzw = r1.www * r8.yzw + r9.xyz;
  r8.yzw = r8.yzw * r6.xyz;
  r9.xyz = float3(0.886227548,0.886227548,0.886227548) * r8.yzw;
  r7.xyz = r0.www ? float3(0,0,0) : r7.xyz;
  r7.xyz = r7.xyz + r6.xyz;
  r7.xyz = -r8.yzw * float3(0.886227548,0.886227548,0.886227548) + r7.xyz;
  r7.xyz = cb0[145].yyy * r7.xyz + r9.xyz;
  r3.xyz = max(float3(0,0,0), r4.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r4.x = t3[r4.x].val[0/4];
    r4.z = t3[r4.x].val[0/4+1];
    r4.w = t3[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r2.xyz;
    r8.y = t3[r4.y].val[0/4];
    r8.z = t3[r4.y].val[0/4+1];
    r8.w = t3[r4.y].val[0/4+2];
    r8.yzw = float3(1,1,1) + r8.yzw;
    r4.xyz = cmp(r8.yzw < abs(r4.xzw));
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
  r0.xyz = r0.xyz * r6.xyz + r7.xyz;
  r0.xyz = r0.xyz + r3.xyz;
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