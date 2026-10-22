// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

struct t3_t {
  float val[4];
};
StructuredBuffer<t3_t> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[41];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[215];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.x = v4.z;
  r1.yz = float2(1,0);
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
  r0.w = cb3[24].x + cb0[143].y;
  r4.xy = t4.SampleBias(s2_s, v2.xy, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[24].yyy * r5.xyz + r4.xyz;
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
  r5.xy = cb3[24].zz * v2.xy;
  r0.w = -0.5 * cb3[24].w;
  r6.x = dot(v0.xyz, r2.xyz);
  r6.y = dot(r0.xyz, r2.xyz);
  r5.xy = r6.xy * r0.ww + r5.xy;
  r5.xy = t5.SampleBias(s3_s, r5.xy, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r5.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb3[25].xxx * r7.xyz + r5.xyz;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.y = 1 + -abs(r0.x);
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb3[25].y * r0.y;
  r0.y = exp2(r0.y);
  r5.xyz = cb3[2].xyz * r0.yyy;
  r0.yzw = r0.zzz ? float3(0,0,0) : r5.xyz;
  r2.w = cmp(0 >= abs(r0.x));
  r0.x = log2(abs(r0.x));
  r0.x = cb3[25].z * r0.x;
  r0.x = exp2(r0.x);
  r5.xyz = cb3[4].xyz * r0.xxx;
  r5.xyz = r2.www ? float3(0,0,0) : r5.xyz;
  r0.xyz = r5.xyz + r0.yzw;
  r0.w = cb0[142].z * cb3[26].x + v2.y;
  r0.w = 1.2566371 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.5 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb3[26].z + cb3[26].y;
  r0.w = cb3[26].w * r0.w;
  r2.w = cb3[27].x * cb0[142].z;
  r5.x = cb3[27].w * r2.w;
  r5.y = cb3[28].x * r2.w;
  r5.zw = v2.xy * cb3[28].yy + cb3[6].xy;
  r6.zw = mad((int2)v3.xx, int2(36,36), int2(18,20));
  r7.x = t2[r6.z].val[0/4];
  r7.y = t2[r6.z].val[0/4+1];
  r7.z = t2[r6.z].val[0/4+2];
  r3.w = r7.x + r7.y;
  r3.w = r3.w + r7.z;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = cb1[2].x * r3.w;
  r1.w = 0.100000001 * r3.w;
  r1.zw = v2.xy * cb3[29].xx + r1.zw;
  r1.z = t6.SampleBias(s4_s, r1.zw, cb0[143].y).x;
  r1.w = 0.100000001 * r1.z;
  r1.z = cmp(0 >= r1.z);
  r1.w = log2(r1.w);
  r1.w = 1.5 * r1.w;
  r1.w = exp2(r1.w);
  r1.z = r1.z ? 0 : r1.w;
  r5.zw = r1.zz * cb3[29].yy + r5.zw;
  r5.xy = r5.xy + r5.zw;
  r1.w = -0.5 * cb3[29].z;
  r5.xy = r6.xy * r1.ww + r5.xy;
  r5.xyz = t7.SampleBias(s5_s, r5.xy, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb3[29].www * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r7.xyz ? float3(0,0,0) : r5.xyz;
  r1.w = 1.5 * r2.w;
  r7.x = cb3[27].w * r1.w;
  r7.y = cb3[28].x * r1.w;
  r7.zw = v2.xy * cb3[30].xx + cb3[7].xy;
  r7.xy = r7.xy + r7.zw;
  r1.w = -0.5 * cb3[30].y;
  r7.xy = r6.xy * r1.ww + r7.xy;
  r7.xyz = t7.SampleBias(s5_s, r7.xy, cb0[143].y).xyz;
  r8.xyz = cmp(float3(0,0,0) >= r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = cb3[29].www * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r8.xyz ? float3(0,0,0) : r7.xyz;
  r7.xyz = float3(-1,-1,-1) + r7.xyz;
  r7.xyz = cb3[30].zzz * r7.xyz + float3(1,1,1);
  r5.xyz = r7.xyz * r5.xyz;
  r5.xyz = r5.xyz * r0.www;
  r0.w = cb0[142].z * cb3[30].w + v2.y;
  r0.w = 1.2566371 * r0.w;
  r0.w = sin(r0.w);
  r0.w = 1 + r0.w;
  r0.w = 0.5 * r0.w;
  r0.w = frac(r0.w);
  r0.w = r0.w * cb3[31].y + cb3[31].x;
  r0.w = cb3[31].z * r0.w;
  r1.w = cb3[31].w * cb0[142].z;
  r7.xy = v2.xy * cb3[33].xx + cb3[11].xy;
  r7.xy = r1.zz * cb3[33].ww + r7.xy;
  r7.xy = r1.ww * cb3[32].zw + r7.xy;
  r7.zw = float2(-0.5,-0.5) * cb3[34].xw;
  r7.xy = r6.xy * r7.zz + r7.xy;
  r7.xyz = t8.SampleBias(s6_s, r7.xy, cb0[143].y).xyz;
  r8.xyz = cmp(float3(0,0,0) >= r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = cb3[34].yyy * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r8.xyz ? float3(0,0,0) : r7.xyz;
  r1.z = 1.5 * r1.w;
  r8.xy = v2.xy * cb3[34].zz + cb3[12].xy;
  r1.zw = r1.zz * cb3[32].zw + r8.xy;
  r1.zw = r6.xy * r7.ww + r1.zw;
  r6.xyz = t8.SampleBias(s6_s, r1.zw, cb0[143].y).xyz;
  r8.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb3[34].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r8.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = cb3[35].xxx * r6.xyz + float3(1,1,1);
  r6.xyz = r7.xyz * r6.xyz;
  r6.xyz = r6.xyz * r0.www;
  r6.xyz = cb3[14].xyz * r6.xyz;
  r5.xyz = r5.xyz * cb3[9].xyz + r6.xyz;
  r0.xyz = r0.xyz * cb3[25].www + r5.xyz;
  r1.zw = t9.Sample(s0_s, v2.xy).xy;
  r0.w = cb3[35].y + r1.z;
  r1.z = 1 + -r0.w;
  r1.z = saturate(-cb3[35].z + r1.z);
  r0.xyz = r1.zzz * r0.xyz;
  r0.xyz = cb3[16].xyz * r0.xyz;
  r5.xyz = cb3[35].www * r0.xyz;
  r0.xyz = -r0.xyz * cb3[35].www + cb3[17].xyz;
  r0.xyz = cb3[36].xxx * r0.xyz + r5.xyz;
  r1.z = dot(r4.xyz, r2.xyz);
  r2.x = 1 + -abs(r1.z);
  r2.y = cmp(0 >= r2.x);
  r2.x = log2(r2.x);
  r2.x = cb3[36].y * r2.x;
  r2.x = exp2(r2.x);
  r2.xzw = cb3[19].xyz * r2.xxx;
  r2.xyz = r2.yyy ? float3(0,0,0) : r2.xzw;
  r2.w = cmp(0 >= abs(r1.z));
  r1.z = log2(abs(r1.z));
  r1.z = cb3[36].z * r1.z;
  r1.z = exp2(r1.z);
  r5.xyz = cb3[21].xyz * r1.zzz;
  r5.xyz = r2.www ? float3(0,0,0) : r5.xyz;
  r2.xyz = r5.xyz + r2.xyz;
  r5.xyz = t10.SampleBias(s7_s, v2.xy, cb0[143].y).xyz;
  r1.z = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.zzz + -r5.xyz;
  r5.xyz = cb3[37].zzz * r6.xyz + r5.xyz;
  r1.z = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb3[37].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r1.zzz * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb3[23].xyz * r5.xyz;
  r6.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb3[37].www * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r6.xyz ? float3(0,0,0) : r5.xyz;
  r2.xyz = r2.xyz * cb3[36].www + r5.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.z = saturate(cb3[38].x + r1.w);
  r1.w = cb3[38].y * cb2[1].w;
  r2.w = cmp(cb0[31].w < 1);
  r3.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r3.w + r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.y = cb3[38].z + r1.x;
  r5.xy = float2(0.649999976,0.487499982) * cb2[1].ww;
  r2.w = cb2[1].w * 0.617499948 + -r1.x;
  r2.w = saturate(r2.w / r5.y);
  r3.w = -cb2[1].w * 0.649999976 + 8000;
  r2.w = r2.w * r3.w + r5.x;
  r1.y = r1.y / r2.w;
  r1.x = r1.x / cb3[38].z;
  r2.w = cmp(9.99999975e-006 < abs(r1.w));
  r1.w = cmp(r1.w >= 0);
  r1.y = r1.w ? r1.y : r1.x;
  r1.x = r2.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb3[38].y));
  r1.w = 1 + cb3[38].y;
  r1.y = r1.y ? r1.w : 1.39999998;
  r5.xyz = -cb0[129].xxy + v4.xxy;
  r1.w = r5.x * cb0[130].z + -0.469999999;
  r1.w = 4.93230057 * r1.w;
  r1.w = cos(r1.w);
  r1.w = 0.899999976 + r1.w;
  r1.w = saturate(0.555555582 * r1.w);
  r1.y = r1.y + -r1.w;
  r5.xw = cb0[152].xx + r5.yz;
  r5.xw = (uint2)r5.xw;
  r1.w = (uint)r5.w << 1;
  r1.w = (int)r1.w + (int)r5.x;
  r1.w = (uint)r1.w % 5;
  r1.w = (uint)r1.w;
  r5.xy = float2(0.015625,0.015625) * r5.yz;
  r2.w = t11.SampleBias(s8_s, r5.xy, cb0[143].y).x;
  r1.w = r2.w + r1.w;
  r1.w = 0.166666672 * r1.w;
  r1.x = r1.x * r1.y + r1.w;
  r1.x = saturate(-0.5 + r1.x);
  r5.xyz = -cb0[67].xyz + r3.xyz;
  r1.y = dot(r5.xyz, r5.xyz);
  r1.y = sqrt(r1.y);
  r1.y = r1.y / cb3[39].y;
  r1.y = saturate(r1.y * cb3[40].x + -cb3[39].w);
  r1.y = r1.y * 3 + -1;
  r1.y = r1.y * cb3[40].y + r1.w;
  r1.y = -0.5 + r1.y;
  r1.x = r1.x * r1.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r1.xyw = min(float3(1,1,1), r2.xyz);
  r0.w = saturate(r0.w);
  o2.z = r0.w * cb0[139].y + cb0[139].x;
  r2.x = t2[r6.w].val[4/4];
  r2.y = t2[r6.w].val[4/4+1];
  r0.w = cmp(0 < r2.y);
  if (r0.w != 0) {
    r2.yzw = r3.xyz * cb0[211].xyz + cb0[212].xyz;
    r2.yzw = max(float3(0,0,0), r2.yzw);
    r2.yzw = min(float3(0.99000001,0.99000001,0.99000001), r2.yzw);
    r2.yzw = cb0[213].xyz * r2.yzw;
    r5.xyz = (int3)r2.yzw;
    r5.w = 0;
    r5.xyzw = t0.Load(r5.xyzw).xyzw;
    r5.xyzw = (uint4)r5.xyzw;
    r0.w = 1 + cb0[213].w;
    r2.yzw = r2.yzw / r5.www;
    r2.yzw = frac(r2.yzw);
    r2.yzw = cb0[213].www * r2.yzw;
    r2.yzw = r5.xyz * r0.www + r2.yzw;
    r2.yzw = float3(0.5,0.5,0.5) + r2.yzw;
    r2.yzw = cb0[214].xyz * r2.yzw;
    r0.w = t1.SampleLevel(s1_s, r2.yzw, 0).x;
  } else {
    r0.w = 1;
  }
  r2.yzw = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r1.xyw;
  r2.yzw = r1.zzz * r2.yzw + float3(0.0399999991,0.0399999991,0.0399999991);
  r5.xyz = -r1.xyw * r1.zzz + r1.xyw;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r2.yzw = r2.yzw * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r2.yzw;
  r2.yzw = r2.yzw * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r2.yzw = r3.www ? r2.yzw : r5.xyz;
  r5.x = t3[0].val[0/4];
  r5.y = t3[0].val[0/4+1];
  r5.z = t3[0].val[0/4+2];
  r5.w = t3[0].val[0/4+3];
  r4.w = 1;
  r5.x = dot(r5.xyzw, r4.xyzw);
  r7.x = t3[1].val[0/4];
  r7.y = t3[1].val[0/4+1];
  r7.z = t3[1].val[0/4+2];
  r7.w = t3[1].val[0/4+3];
  r5.y = dot(r7.xyzw, r4.xyzw);
  r7.x = t3[2].val[0/4];
  r7.y = t3[2].val[0/4+1];
  r7.z = t3[2].val[0/4+2];
  r7.w = t3[2].val[0/4+3];
  r5.z = dot(r7.xyzw, r4.xyzw);
  r7.xyzw = r4.xyzz * r4.yzzx;
  r8.x = t3[3].val[0/4];
  r8.y = t3[3].val[0/4+1];
  r8.z = t3[3].val[0/4+2];
  r8.w = t3[3].val[0/4+3];
  r8.x = dot(r8.xyzw, r7.xyzw);
  r9.x = t3[4].val[0/4];
  r9.y = t3[4].val[0/4+1];
  r9.z = t3[4].val[0/4+2];
  r9.w = t3[4].val[0/4+3];
  r8.y = dot(r9.xyzw, r7.xyzw);
  r9.x = t3[5].val[0/4];
  r9.y = t3[5].val[0/4+1];
  r9.z = t3[5].val[0/4+2];
  r9.w = t3[5].val[0/4+3];
  r8.z = dot(r9.xyzw, r7.xyzw);
  r4.w = r4.y * r4.y;
  r4.w = r4.x * r4.x + -r4.w;
  r7.x = t3[6].val[0/4];
  r7.y = t3[6].val[0/4+1];
  r7.z = t3[6].val[0/4+2];
  r5.xyz = r8.xyz + r5.xyz;
  r5.xyz = r7.xyz * r4.www + r5.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r5.xyz = cb0[187].xyz * r5.xyz;
  r5.xyz = r5.xyz * r2.yzw;
  r7.xyz = r1.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyw * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r5.xyz = r7.xyz * r5.xyz;
  r6.xyz = r3.www ? float3(0,0,0) : r6.xyz;
  r2.yzw = r6.xyz + r2.yzw;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r6.x = t2[r6.x].val[0/4];
    r6.z = t2[r6.x].val[0/4+1];
    r6.w = t2[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r3.xyz;
    r7.x = t2[r6.y].val[0/4];
    r7.y = t2[r6.y].val[0/4+1];
    r7.z = t2[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r3.www ? r3.xyz : r0.xyz;
  }
  r2.yzw = cb0[145].yyy * r2.yzw + r5.xyz;
  r0.xyz = r2.yzw + r0.xyz;
  r2.yzw = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r2.yzw = frac(r2.yzw);
  r2.yzw = r2.yzw * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.yzw = r2.yzw * r2.yzz;
  r2.y = dot(r2.yzw, float3(20.390625,60.703125,2.42812085));
  r2.y = frac(r2.y);
  r2.y = -0.5 + r2.y;
  o1.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  o3.w = 0.00392156886 * r2.y;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r2.x;
  o2.yw = float2(0.5,0.505882382);
  o2.x = r1.z;
  o3.xyz = r1.xyw;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}