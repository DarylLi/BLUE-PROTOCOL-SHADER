// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

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
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xy = cb2[9].xx * v2.xy;
  r0.w = cb2[9].y * cb0[142].z;
  r1.w = cb2[9].y * cb0[142].z + -0.5;
  r1.w = frac(r1.w);
  r2.zw = t7.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r2.zw = float2(-0.5,-0.5) + r2.zw;
  r2.zw = cb2[9].zz * r2.zw;
  r2.zw = float2(-2,2) * r2.zw;
  r3.xy = r1.ww * r2.zw + r2.xy;
  r3.xy = cb2[3].xy + r3.xy;
  r3.zw = t8.SampleBias(s3_s, r3.xy, cb0[143].y).xy;
  r4.xy = r3.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r0.w = frac(r0.w);
  r2.xy = r2.zw * r0.ww + r2.xy;
  r2.zw = t8.SampleBias(s3_s, r2.xy, cb0[143].y).xy;
  r5.xy = r2.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r1.w = r0.w + r0.w;
  r0.w = 1 + -r0.w;
  r2.z = floor(r1.w);
  r0.w = r0.w * 2 + -r1.w;
  r0.w = r2.z * r0.w + r1.w;
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = r0.www * r5.xyz + r4.xyz;
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb2[9].www * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r4.yzw = r1.www * r0.xyz;
  r5.xyz = t9.SampleBias(s4_s, r3.xy, cb0[143].y).xyz;
  r6.xyz = t9.SampleBias(s4_s, r2.xy, cb0[143].y).xyz;
  r6.xyz = r6.xyz + -r5.xyz;
  r5.xyz = r0.www * r6.xyz + r5.xyz;
  r5.xyz = cb2[5].xyz * r5.xyz;
  r6.xyz = cb2[10].xxx * r5.xyz;
  r5.xyz = -r5.xyz * cb2[10].xxx + cb2[6].xyz;
  r5.xyz = cb2[10].yyy * r5.xyz + r6.xyz;
  r6.xyz = t10.SampleBias(s5_s, r3.xy, cb0[143].y).xyz;
  r7.xyz = t10.SampleBias(s5_s, r2.xy, cb0[143].y).xyz;
  r7.xyz = r7.xyz + -r6.xyz;
  r6.xyz = r0.www * r7.xyz + r6.xyz;
  r2.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.zzz + -r6.xyz;
  r6.xyz = cb2[11].xxx * r7.xyz + r6.xyz;
  r2.z = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb2[10].w, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r2.zzz * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = saturate(cb2[8].xyz * r6.xyz);
  r2.zw = t11.SampleBias(s6_s, r3.xy, cb0[143].y).xy;
  r2.xy = t11.SampleBias(s6_s, r2.xy, cb0[143].y).xy;
  r2.xy = r2.yx + -r2.wz;
  r2.xy = r0.ww * r2.xy + r2.wz;
  r2.xy = saturate(cb2[11].yz + r2.xy);
  o2.z = r2.y * cb0[139].y + cb0[139].x;
  r0.w = mad((int)v3.x, 36, 20);
  r2.y = cmp(0 < cb0[215].x);
  r2.z = t2[r0.w].val[4/4];
  r2.w = t2[r0.w].val[4/4+1];
  r0.w = cmp(0 < r2.w);
  if (r0.w != 0) {
    r3.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.xyz = max(float3(0,0,0), r3.xyz);
    r3.xyz = min(float3(0.99000001,0.99000001,0.99000001), r3.xyz);
    r3.xyz = cb0[213].xyz * r3.xyz;
    r7.xyz = (int3)r3.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r0.w = 1 + cb0[213].w;
    r3.xyz = r3.xyz / r7.www;
    r3.xyz = frac(r3.xyz);
    r3.xyz = cb0[213].www * r3.xyz;
    r3.xyz = r7.xyz * r0.www + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) + r3.xyz;
    r3.xyz = cb0[214].xyz * r3.xyz;
    r0.w = t1.SampleLevel(s0_s, r3.xyz, 0).x;
  } else {
    r2.w = mad((int)v3.x, 36, 18);
    r2.w = t2[r2.w].val[12/4];
    r2.w = cmp(0 < r2.w);
    r2.w = r2.y ? r2.w : 0;
    r0.w = r2.w ? cb1[5].x : 1;
  }
  r3.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r6.xyz;
  r3.xyz = r2.xxx * r3.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r7.xyz = -r6.xyz * r2.xxx + r6.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r3.xyz = r3.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r8.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r2.www ? r8.xyz : r7.xyz;
  r3.xyz = r2.www ? float3(0,0,0) : r3.xyz;
  r2.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  if (r2.y != 0) {
    r8.xyz = r1.xyz * cb1[1].xyz + cb1[0].xyz;
    r8.xyz = max(cb1[2].xyz, r8.xyz);
    r8.xyz = min(cb1[3].xyz, r8.xyz);
    r9.xyzw = t4.Sample(s1_s, r8.xyz).xyzw;
    r10.xyzw = t5.Sample(s0_s, r8.xyz).xyzw;
    r8.xyzw = t6.Sample(s0_s, r8.xyz).xyzw;
    r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
    r12.xw = r9.xw;
    r12.y = r10.x;
    r12.z = r8.x;
    r11.x = 0.886227548;
    r12.x = dot(r12.xyzw, r11.xyzw);
    r13.x = r9.y;
    r13.yw = r10.yw;
    r13.z = r8.y;
    r12.y = dot(r13.xyzw, r11.xyzw);
    r8.x = r9.z;
    r8.y = r10.z;
    r12.z = dot(r8.xyzw, r11.xyzw);
    r8.xyz = max(float3(0,0,0), r12.xyz);
    r8.xyz = float3(0.318309873,0.318309873,0.318309873) * r8.xyz;
  } else {
    r8.xyz = float3(0,0,0);
  }
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r4.x = 1;
    r9.xyzw = r2.yyyy ? cb1[4].wxyz : r4.xyzw;
    r2.y = 1 + -r9.x;
    r2.y = -r2.y * r2.y + 1;
    r0.xyz = r0.xyz * r1.www + -r9.yzw;
    r10.xyz = r2.yyy * r0.xyz + r9.yzw;
    r0.x = saturate(dot(r9.yzw, r4.yzw));
    r0.y = 1 + -r0.x;
    r9.y = r2.y * r0.y + r0.x;
  } else {
    r10.xyz = r4.yzw;
    r9.xy = float2(1,1);
  }
  r11.x = t3[0].val[0/4];
  r11.y = t3[0].val[0/4+1];
  r11.z = t3[0].val[0/4+2];
  r11.w = t3[0].val[0/4+3];
  r10.w = 1;
  r0.x = dot(r11.xyzw, r10.xyzw);
  r11.x = t3[1].val[0/4];
  r11.y = t3[1].val[0/4+1];
  r11.z = t3[1].val[0/4+2];
  r11.w = t3[1].val[0/4+3];
  r0.y = dot(r11.xyzw, r10.xyzw);
  r11.x = t3[2].val[0/4];
  r11.y = t3[2].val[0/4+1];
  r11.z = t3[2].val[0/4+2];
  r11.w = t3[2].val[0/4+3];
  r0.z = dot(r11.xyzw, r10.xyzw);
  r11.xyzw = r10.xyzz * r10.yzzx;
  r12.x = t3[3].val[0/4];
  r12.y = t3[3].val[0/4+1];
  r12.z = t3[3].val[0/4+2];
  r12.w = t3[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t3[4].val[0/4];
  r13.y = t3[4].val[0/4+1];
  r13.z = t3[4].val[0/4+2];
  r13.w = t3[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t3[5].val[0/4];
  r13.y = t3[5].val[0/4+1];
  r13.z = t3[5].val[0/4+2];
  r13.w = t3[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r1.w = r10.y * r10.y;
  r1.w = r10.x * r10.x + -r1.w;
  r10.x = t3[6].val[0/4];
  r10.y = t3[6].val[0/4+1];
  r10.z = t3[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r10.xyz * r1.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.w = r9.x * r9.y;
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r1.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r8.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r3.xyz = r3.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.y = cmp(0 < cb0[140].x);
  if (r2.y != 0) {
    r7.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r7.x = t2[r7.x].val[0/4];
    r7.z = t2[r7.x].val[0/4+1];
    r7.w = t2[r7.x].val[0/4+2];
    r7.xzw = -r7.xzw + r1.xyz;
    r8.x = t2[r7.y].val[0/4];
    r8.y = t2[r7.y].val[0/4+1];
    r8.z = t2[r7.y].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xzw));
    r2.y = (int)r7.y | (int)r7.x;
    r2.y = (int)r7.z | (int)r2.y;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r2.yyy ? r1.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r3.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.y = r1.w * r2.w;
  r1.y = r1.y * cb0[135].y + 0.00390625;
  r1.y = log2(r1.y);
  r1.y = r1.y * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r1.y;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = r2.z;
  o2.x = r2.x;
  o2.yw = float2(0.5,0.505882382);
  o3.xyz = r6.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r0.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}