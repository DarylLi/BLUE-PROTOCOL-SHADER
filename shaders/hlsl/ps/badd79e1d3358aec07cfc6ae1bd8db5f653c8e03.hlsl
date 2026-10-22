// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t12 : register(t12);

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

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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
  float4 cb3[23];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
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
  r1.xyzw = cb0[45].xyzw * v3.yyyy;
  r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r3.xy = t6.SampleBias(s3_s, v2.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb3[14].xxx * r4.xyz + r3.xyz;
  r0.w = 1 + r3.z;
  r4.xy = cb3[14].yy * v2.xy;
  r4.xy = t7.SampleBias(s4_s, r4.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb3[14].zzz * r5.xyz + r4.xyz;
  r3.w = 1 + r3.z;
  r4.xyz = float3(-1,-1,1) * r4.xyz;
  r1.w = dot(r3.xyw, r4.xyz);
  r4.xyz = r4.xyz * r0.www;
  r3.xyz = r3.xyw * r1.www + -r4.xyz;
  r4.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.yyy * r0.xyz;
  r4.xyw = r4.xxx * v0.xyz + r5.xyz;
  r4.xyz = r4.zzz * v1.xyz + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r5.yzw = r4.xyz * r0.www;
  r1.w = dot(r5.yzw, r1.xyz);
  r6.xyz = r5.yzw * r1.www;
  r6.xyz = r6.xyz * float3(2,2,2) + -r1.xyz;
  r1.w = 1 + -abs(r1.w);
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[14].w * r1.w;
  r1.w = exp2(r1.w);
  r7.xyz = cb3[2].xyz * r1.www;
  r7.xyz = cb3[15].xxx * r7.xyz;
  r7.xyz = r2.www ? float3(0,0,0) : r7.xyz;
  r8.xyz = r3.yyy * r0.xyz;
  r3.xyw = r3.xxx * v0.xyz + r8.xyz;
  r3.xyz = r3.zzz * v1.xyz + r3.xyw;
  r1.w = dot(-r1.xyz, r3.xyz);
  r2.w = cb3[15].w * cb3[15].w;
  r3.w = -r1.w * r1.w + 1;
  r2.w = -r2.w * r3.w + 1;
  r4.w = sqrt(r2.w);
  r4.w = cb3[15].w * r1.w + r4.w;
  r2.w = cmp(r2.w >= 0);
  r8.xyz = r4.www * r3.xyz;
  r8.xyz = cb3[15].www * -r1.xyz + -r8.xyz;
  r8.xyz = r2.www ? r8.xyz : 0;
  r8.x = t12.Sample(s7_s, r8.xyz).x;
  r9.xy = cb3[16].zw * cb3[16].zw;
  r9.xy = -r9.xy * r3.ww + float2(1,1);
  r9.zw = sqrt(r9.xy);
  r9.zw = cb3[16].zw * r1.ww + r9.zw;
  r9.xy = cmp(r9.xy >= float2(0,0));
  r10.xyz = r9.zzz * r3.xyz;
  r10.xyz = cb3[16].zzz * -r1.xyz + -r10.xyz;
  r10.xyz = r9.xxx ? r10.xyz : 0;
  r8.y = t12.Sample(s7_s, r10.xyz).y;
  r3.xyz = r9.www * r3.xyz;
  r3.xyz = cb3[16].www * -r1.xyz + -r3.xyz;
  r3.xyz = r9.yyy ? r3.xyz : 0;
  r8.z = t12.Sample(s7_s, r3.xyz).z;
  r1.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r1.www + -r8.xyz;
  r3.xyz = cb3[17].xxx * r3.xyz + r8.xyz;
  r6.xyz = t12.Sample(s7_s, r6.xyz).xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.www + -r6.xyz;
  r6.xyz = cb3[17].xxx * r8.xyz + r6.xyz;
  r6.xyz = cb3[6].xyz * r6.xyz;
  r8.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb3[17].zzz * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r8.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = cb3[17].yyy * r6.xyz;
  r3.xyz = r3.xyz * cb3[17].yyy + r6.xyz;
  r6.xy = float2(0.100000001,0.100000001) * r5.yz;
  r6.zw = cmp(float2(0,0) >= r5.yz);
  r6.xy = log2(r6.xy);
  r6.xy = float2(1.5,1.5) * r6.xy;
  r6.xy = exp2(r6.xy);
  r6.xy = r6.zw ? float2(0,0) : r6.xy;
  r6.zw = cb3[18].xx * r6.xy;
  r6.zw = v2.xy * cb3[17].ww + r6.zw;
  r1.w = -0.5 * cb3[18].y;
  r8.x = dot(v0.xyz, r1.xyz);
  r8.y = dot(r0.xyz, r1.xyz);
  r0.xy = r8.xy * r1.ww + r6.zw;
  r0.xyz = t8.Sample(s0_s, r0.xy).xyz;
  r1.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb3[18].zzz * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r1.xyz ? float3(0,0,0) : r0.xyz;
  r0.xyz = cb3[18].www * r0.xyz;
  r1.xy = cb3[19].yy * r6.xy;
  r1.xy = v2.xy * cb3[19].xx + r1.xy;
  r1.z = -0.5 * cb3[19].z;
  r1.xy = r8.xy * r1.zz + r1.xy;
  r1.xyz = t9.Sample(s0_s, r1.xy).xyz;
  r6.xyz = cmp(float3(0,0,0) >= r1.xyz);
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb3[19].www * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r6.xyz ? float3(0,0,0) : r1.xyz;
  r1.xyz = cb3[20].xxx * r1.xyz;
  r1.xyz = cb3[10].xyz * r1.xyz;
  r0.xyz = r0.xyz * cb3[8].xyz + r1.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r1.xyz = t10.SampleBias(s5_s, v2.xy, cb0[143].y).xyz;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r1.www + -r1.xyz;
  r1.xyz = cb3[20].www * r3.xyz + r1.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r1.xyz);
  r1.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r3.xyz = float3(0.577350259,0.577350259,0.577350259) * r1.zxy;
  r3.xyz = r1.zxy * float3(0.577350259,0.577350259,0.577350259) + -r3.zxy;
  sincos(cb3[20].z, r6.x, r8.x);
  r3.xyz = r6.xxx * r3.xyz;
  r1.xyz = r1.xyz * r8.xxx + r3.xyz;
  r1.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r1.xyz;
  r1.xyz = cb3[12].xyz * r1.xyz;
  r3.xyz = cmp(float3(0,0,0) >= r1.xyz);
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb3[21].xxx * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r1.xyz = r3.xyz ? float3(0,0,0) : r1.xyz;
  r3.xyz = r1.xyz + r0.xyz;
  r6.xy = t11.SampleBias(s6_s, v2.xy, cb0[143].y).xy;
  r1.w = cb3[21].y + r6.x;
  r2.w = saturate(1 + -r1.w);
  r0.xyz = r0.xyz * r2.www + r1.xyz;
  r0.xyz = r0.xyz + -r3.xyz;
  r0.xyz = cb3[21].zzz * r0.xyz + r3.xyz;
  r0.xyz = r7.xyz + r0.xyz;
  r1.xyz = cb3[21].www * r0.xyz;
  r3.xyz = -cb3[21].www * r0.xyz + cb3[13].xyz;
  r1.xyz = cb3[22].xxx * r3.xyz + r1.xyz;
  r0.xyz = cb3[21].www * -r0.xyz + r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  r3.x = saturate(cb3[22].y + r6.y);
  r0.xyz = min(float3(1,1,1), r0.xyz);
  r3.y = saturate(cb3[22].z);
  r1.w = saturate(r1.w);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = cmp(0 < cb0[215].x);
  r2.w = cmp(0 < cb1[20].z);
  if (r2.w != 0) {
    r6.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r6.xyz = max(float3(0,0,0), r6.xyz);
    r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
    r6.xyz = cb0[213].xyz * r6.xyz;
    r7.xyz = (int3)r6.xyz;
    r7.w = 0;
    r7.xyzw = t0.Load(r7.xyzw).xyzw;
    r7.xyzw = (uint4)r7.xyzw;
    r2.w = 1 + cb0[213].w;
    r6.xyz = r6.xyz / r7.www;
    r6.xyz = frac(r6.xyz);
    r6.xyz = cb0[213].www * r6.xyz;
    r6.xyz = r7.xyz * r2.www + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
    r6.xyz = cb0[214].xyz * r6.xyz;
    r2.w = t1.SampleLevel(s1_s, r6.xyz, 0).x;
  } else {
    r3.z = cmp(0 < cb1[18].w);
    r3.z = r1.w ? r3.z : 0;
    r2.w = r3.z ? cb2[5].x : 1;
  }
  r3.z = 0.0799999982 * r3.y;
  r6.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r6.xyz = r3.xxx * r6.xyz + r3.zzz;
  r7.xyz = -r0.xyz * r3.xxx + r0.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r3.z = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r3.zzz ? r8.xyz : r7.xyz;
  r6.xyz = r3.zzz ? float3(0,0,0) : r6.xyz;
  r3.z = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r3.z * 2.04040003 + -0.332399994;
  r3.w = r3.z * -4.79510021 + r3.w;
  r3.z = r3.z * 2.75519991 + r3.w;
  r3.z = 1.33200002 + r3.z;
  r3.z = max(1, r3.z);
  if (r1.w != 0) {
    r8.xyz = r2.xyz * cb2[1].xyz + cb2[0].xyz;
    r8.xyz = max(cb2[2].xyz, r8.xyz);
    r8.xyz = min(cb2[3].xyz, r8.xyz);
    r9.xyzw = t3.Sample(s2_s, r8.xyz).xyzw;
    r10.xyzw = t4.Sample(s1_s, r8.xyz).xyzw;
    r8.xyzw = t5.Sample(s1_s, r8.xyz).xyzw;
    r11.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r5.zwy;
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
    r5.x = 1;
    r9.xyzw = r1.wwww ? cb2[4].wxyz : r5.xyzw;
    r1.w = 1 + -r9.x;
    r1.w = -r1.w * r1.w + 1;
    r4.xyz = r4.xyz * r0.www + -r9.yzw;
    r4.xyz = r1.www * r4.xyz + r9.yzw;
    r0.w = saturate(dot(r9.yzw, r5.yzw));
    r3.w = 1 + -r0.w;
    r9.y = r1.w * r3.w + r0.w;
  } else {
    r4.xyz = r5.yzw;
    r9.xy = float2(1,1);
  }
  r10.x = t2[0].val[0/4];
  r10.y = t2[0].val[0/4+1];
  r10.z = t2[0].val[0/4+2];
  r10.w = t2[0].val[0/4+3];
  r4.w = 1;
  r10.x = dot(r10.xyzw, r4.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r4.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r4.xyzw);
  r11.xyzw = r4.xyzz * r4.yzzx;
  r12.x = t2[3].val[0/4];
  r12.y = t2[3].val[0/4+1];
  r12.z = t2[3].val[0/4+2];
  r12.w = t2[3].val[0/4+3];
  r12.x = dot(r12.xyzw, r11.xyzw);
  r13.x = t2[4].val[0/4];
  r13.y = t2[4].val[0/4+1];
  r13.z = t2[4].val[0/4+2];
  r13.w = t2[4].val[0/4+3];
  r12.y = dot(r13.xyzw, r11.xyzw);
  r13.x = t2[5].val[0/4];
  r13.y = t2[5].val[0/4+1];
  r13.z = t2[5].val[0/4+2];
  r13.w = t2[5].val[0/4+3];
  r12.z = dot(r13.xyzw, r11.xyzw);
  r0.w = r4.y * r4.y;
  r0.w = r4.x * r4.x + -r0.w;
  r4.x = t2[6].val[0/4];
  r4.y = t2[6].val[0/4+1];
  r4.z = t2[6].val[0/4+2];
  r10.xyz = r12.xyz + r10.xyz;
  r4.xyz = r4.xyz * r0.www + r10.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = cb0[187].xyz * r4.xyz;
  r0.w = r9.x * r9.y;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r8.xyz * cb0[157].xyz + r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r7.xyz;
  r8.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r4.xyz = r8.xyz * r4.xyz;
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r7.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r1.w = (int)r7.y | (int)r7.x;
    r1.w = (int)r7.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r1.xyz = r1.www ? r2.xyz : r1.xyz;
  }
  r2.xyz = cb0[145].yyy * r6.xyz + r4.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r3.z;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r2.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}