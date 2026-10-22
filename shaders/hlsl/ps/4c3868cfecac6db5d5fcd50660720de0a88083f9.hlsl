// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

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

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[39];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r0.w = cb4[24].x + cb0[143].y;
  r3.xy = t6.SampleBias(s3_s, v2.xy, r0.w).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb4[24].yyy * r4.xyz + r3.xyz;
  r3.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyz = r3.yyy * r0.xyz;
  r3.xyw = r3.xxx * v0.xyz + r4.xyz;
  r3.xyz = r3.zzz * v1.xyz + r3.xyw;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r4.yzw = r3.xyz * r0.www;
  r5.xy = cb4[24].zz * v2.xy;
  r1.w = -0.5 * cb4[24].w;
  r6.x = dot(v0.xyz, r1.xyz);
  r6.y = dot(r0.xyz, r1.xyz);
  r5.xy = r6.xy * r1.ww + r5.xy;
  r5.xy = t7.SampleBias(s4_s, r5.xy, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r7.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb4[25].xxx * r7.xyz + r5.xyz;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = 1 + -abs(r0.x);
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb4[25].y * r0.y;
  r0.y = exp2(r0.y);
  r5.xyz = cb4[2].xyz * r0.yyy;
  r5.xyz = r0.zzz ? float3(0,0,0) : r5.xyz;
  r0.y = cmp(0 >= abs(r0.x));
  r0.x = log2(abs(r0.x));
  r0.x = cb4[25].z * r0.x;
  r0.x = exp2(r0.x);
  r7.xyz = cb4[4].xyz * r0.xxx;
  r0.xyz = r0.yyy ? float3(0,0,0) : r7.xyz;
  r0.xyz = r5.xyz + r0.xyz;
  r1.w = cb0[142].z * cb4[26].x + v2.y;
  r1.w = 1.2566371 * r1.w;
  r1.w = sin(r1.w);
  r1.w = 1 + r1.w;
  r1.w = 0.5 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * cb4[26].z + cb4[26].y;
  r1.w = cb4[26].w * r1.w;
  r2.w = cb4[27].x * cb0[142].z;
  r5.x = cb4[27].w * r2.w;
  r5.y = cb4[28].x * r2.w;
  r5.zw = v2.xy * cb4[28].yy + cb4[6].xy;
  r3.w = cb1[18].x + cb1[18].y;
  r3.w = cb1[18].z + r3.w;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = cb3[2].x * r3.w;
  r7.y = 0.100000001 * r3.w;
  r7.x = 0;
  r6.zw = v2.xy * cb4[29].xx + r7.xy;
  r3.w = t8.SampleBias(s5_s, r6.zw, cb0[143].y).x;
  r6.z = 0.100000001 * r3.w;
  r3.w = cmp(0 >= r3.w);
  r6.z = log2(r6.z);
  r6.z = 1.5 * r6.z;
  r6.z = exp2(r6.z);
  r3.w = r3.w ? 0 : r6.z;
  r5.zw = r3.ww * cb4[29].yy + r5.zw;
  r5.xy = r5.xy + r5.zw;
  r5.z = -0.5 * cb4[29].z;
  r5.xy = r6.xy * r5.zz + r5.xy;
  r5.xyz = t9.SampleBias(s6_s, r5.xy, cb0[143].y).xyz;
  r7.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb4[29].www * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r7.xyz ? float3(0,0,0) : r5.xyz;
  r2.w = 1.5 * r2.w;
  r7.x = cb4[27].w * r2.w;
  r7.y = cb4[28].x * r2.w;
  r6.zw = v2.xy * cb4[30].xx + cb4[7].xy;
  r6.zw = r7.xy + r6.zw;
  r2.w = -0.5 * cb4[30].y;
  r6.zw = r6.xy * r2.ww + r6.zw;
  r7.xyz = t9.SampleBias(s6_s, r6.zw, cb0[143].y).xyz;
  r8.xyz = cmp(float3(0,0,0) >= r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = cb4[29].www * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r8.xyz ? float3(0,0,0) : r7.xyz;
  r7.xyz = float3(-1,-1,-1) + r7.xyz;
  r7.xyz = cb4[30].zzz * r7.xyz + float3(1,1,1);
  r5.xyz = r7.xyz * r5.xyz;
  r5.xyz = r5.xyz * r1.www;
  r1.w = cb0[142].z * cb4[30].w + v2.y;
  r1.w = 1.2566371 * r1.w;
  r1.w = sin(r1.w);
  r1.w = 1 + r1.w;
  r1.w = 0.5 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * cb4[31].y + cb4[31].x;
  r1.w = cb4[31].z * r1.w;
  r2.w = cb4[31].w * cb0[142].z;
  r6.zw = v2.xy * cb4[33].xx + cb4[11].xy;
  r6.zw = r3.ww * cb4[33].ww + r6.zw;
  r6.zw = r2.ww * cb4[32].zw + r6.zw;
  r7.xy = float2(-0.5,-0.5) * cb4[34].xw;
  r6.zw = r6.xy * r7.xx + r6.zw;
  r7.xzw = t10.SampleBias(s7_s, r6.zw, cb0[143].y).xyz;
  r8.xyz = cmp(float3(0,0,0) >= r7.xzw);
  r7.xzw = log2(r7.xzw);
  r7.xzw = cb4[34].yyy * r7.xzw;
  r7.xzw = exp2(r7.xzw);
  r7.xzw = r8.xyz ? float3(0,0,0) : r7.xzw;
  r2.w = 1.5 * r2.w;
  r6.zw = v2.xy * cb4[34].zz + cb4[12].xy;
  r6.zw = r2.ww * cb4[32].zw + r6.zw;
  r6.xy = r6.xy * r7.yy + r6.zw;
  r6.xyz = t10.SampleBias(s7_s, r6.xy, cb0[143].y).xyz;
  r8.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb4[34].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r8.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = cb4[35].xxx * r6.xyz + float3(1,1,1);
  r6.xyz = r7.xzw * r6.xyz;
  r6.xyz = r6.xyz * r1.www;
  r6.xyz = cb4[14].xyz * r6.xyz;
  r5.xyz = r5.xyz * cb4[9].xyz + r6.xyz;
  r0.xyz = r0.xyz * cb4[25].www + r5.xyz;
  r5.xy = t11.Sample(s0_s, v2.xy).xy;
  r1.w = cb4[35].y + r5.x;
  r2.w = 1 + -r1.w;
  r2.w = saturate(-cb4[35].z + r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = cb4[16].xyz * r0.xyz;
  r5.xzw = cb4[35].www * r0.xyz;
  r0.xyz = -r0.xyz * cb4[35].www + cb4[17].xyz;
  r0.xyz = cb4[36].xxx * r0.xyz + r5.xzw;
  r1.x = dot(r4.yzw, r1.xyz);
  r1.y = 1 + -abs(r1.x);
  r1.z = cmp(0 >= r1.y);
  r1.y = log2(r1.y);
  r1.y = cb4[36].y * r1.y;
  r1.y = exp2(r1.y);
  r5.xzw = cb4[19].xyz * r1.yyy;
  r5.xzw = r1.zzz ? float3(0,0,0) : r5.xzw;
  r1.y = cmp(0 >= abs(r1.x));
  r1.x = log2(abs(r1.x));
  r1.x = cb4[36].z * r1.x;
  r1.x = exp2(r1.x);
  r6.xyz = cb4[21].xyz * r1.xxx;
  r1.xyz = r1.yyy ? float3(0,0,0) : r6.xyz;
  r1.xyz = r5.xzw + r1.xyz;
  r5.xzw = t12.SampleBias(s8_s, v2.xy, cb0[143].y).xyz;
  r2.w = dot(r5.xzw, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r2.www + -r5.xzw;
  r5.xzw = cb4[37].zzz * r6.xyz + r5.xzw;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xzw);
  r5.xzw = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xzw;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.wxz;
  r6.xyz = r5.wxz * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb4[37].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xzw = r5.xzw * r8.xxx + r6.xyz;
  r5.xzw = r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xzw;
  r5.xzw = cb4[23].xyz * r5.xzw;
  r6.xyz = cmp(float3(0,0,0) >= r5.xzw);
  r5.xzw = log2(r5.xzw);
  r5.xzw = cb4[37].www * r5.xzw;
  r5.xzw = exp2(r5.xzw);
  r5.xzw = r6.xyz ? float3(0,0,0) : r5.xzw;
  r1.xyz = r1.xyz * cb4[36].www + r5.xzw;
  r1.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r1.xyz);
  r2.w = saturate(cb4[38].x + r5.y);
  r1.xyz = min(float3(1,1,1), r1.xyz);
  r1.w = saturate(r1.w);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r1.w = cmp(0 < cb0[215].x);
  r3.w = cmp(0 < cb1[20].z);
  if (r3.w != 0) {
    r5.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r5.xyz = max(float3(0,0,0), r5.xyz);
    r5.xyz = min(float3(0.99000001,0.99000001,0.99000001), r5.xyz);
    r5.xyz = cb0[213].xyz * r5.xyz;
    r6.xyz = (int3)r5.xyz;
    r6.w = 0;
    r6.xyzw = t0.Load(r6.xyzw).xyzw;
    r6.xyzw = (uint4)r6.xyzw;
    r3.w = 1 + cb0[213].w;
    r5.xyz = r5.xyz / r6.www;
    r5.xyz = frac(r5.xyz);
    r5.xyz = cb0[213].www * r5.xyz;
    r5.xyz = r6.xyz * r3.www + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) + r5.xyz;
    r5.xyz = cb0[214].xyz * r5.xyz;
    r3.w = t1.SampleLevel(s1_s, r5.xyz, 0).x;
  } else {
    r5.x = cmp(0 < cb1[18].w);
    r5.x = r1.w ? r5.x : 0;
    r3.w = r5.x ? cb2[5].x : 1;
  }
  r5.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r1.xyz;
  r5.xyz = r2.www * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r1.xyz * r2.www + r1.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r5.w = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r5.www ? r7.xyz : r6.xyz;
  r5.xyz = r5.www ? float3(0,0,0) : r5.xyz;
  r5.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.w = r5.w * 2.04040003 + -0.332399994;
  r6.w = r5.w * -4.79510021 + r6.w;
  r5.w = r5.w * 2.75519991 + r6.w;
  r5.w = 1.33200002 + r5.w;
  r5.w = max(1, r5.w);
  if (r1.w != 0) {
    r7.xyz = r2.xyz * cb2[1].xyz + cb2[0].xyz;
    r7.xyz = max(cb2[2].xyz, r7.xyz);
    r7.xyz = min(cb2[3].xyz, r7.xyz);
    r8.xyzw = t3.Sample(s2_s, r7.xyz).xyzw;
    r9.xyzw = t4.Sample(s1_s, r7.xyz).xyzw;
    r7.xyzw = t5.Sample(s1_s, r7.xyz).xyzw;
    r10.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r4.zwy;
    r11.xw = r8.xw;
    r11.y = r9.x;
    r11.z = r7.x;
    r10.x = 0.886227548;
    r11.x = dot(r11.xyzw, r10.xyzw);
    r12.x = r8.y;
    r12.yw = r9.yw;
    r12.z = r7.y;
    r11.y = dot(r12.xyzw, r10.xyzw);
    r7.x = r8.z;
    r7.y = r9.z;
    r11.z = dot(r7.xyzw, r10.xyzw);
    r7.xyz = max(float3(0,0,0), r11.xyz);
    r7.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
  } else {
    r7.xyz = float3(0,0,0);
  }
  r6.w = cmp(cb0[186].y != 0.000000);
  if (r6.w != 0) {
    r4.x = 1;
    r8.xyzw = r1.wwww ? cb2[4].wxyz : r4.xyzw;
    r1.w = 1 + -r8.x;
    r1.w = -r1.w * r1.w + 1;
    r3.xyz = r3.xyz * r0.www + -r8.yzw;
    r9.xyz = r1.www * r3.xyz + r8.yzw;
    r0.w = saturate(dot(r8.yzw, r4.yzw));
    r3.x = 1 + -r0.w;
    r8.y = r1.w * r3.x + r0.w;
  } else {
    r9.xyz = r4.yzw;
    r8.xy = float2(1,1);
  }
  r10.x = t2[0].val[0/4];
  r10.y = t2[0].val[0/4+1];
  r10.z = t2[0].val[0/4+2];
  r10.w = t2[0].val[0/4+3];
  r9.w = 1;
  r3.x = dot(r10.xyzw, r9.xyzw);
  r10.x = t2[1].val[0/4];
  r10.y = t2[1].val[0/4+1];
  r10.z = t2[1].val[0/4+2];
  r10.w = t2[1].val[0/4+3];
  r3.y = dot(r10.xyzw, r9.xyzw);
  r10.x = t2[2].val[0/4];
  r10.y = t2[2].val[0/4+1];
  r10.z = t2[2].val[0/4+2];
  r10.w = t2[2].val[0/4+3];
  r3.z = dot(r10.xyzw, r9.xyzw);
  r10.xyzw = r9.xyzz * r9.yzzx;
  r11.x = t2[3].val[0/4];
  r11.y = t2[3].val[0/4+1];
  r11.z = t2[3].val[0/4+2];
  r11.w = t2[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t2[4].val[0/4];
  r12.y = t2[4].val[0/4+1];
  r12.z = t2[4].val[0/4+2];
  r12.w = t2[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t2[5].val[0/4];
  r12.y = t2[5].val[0/4+1];
  r12.z = t2[5].val[0/4+2];
  r12.w = t2[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r0.w = r9.y * r9.y;
  r0.w = r9.x * r9.x + -r0.w;
  r9.x = t2[6].val[0/4];
  r9.y = t2[6].val[0/4+1];
  r9.z = t2[6].val[0/4+2];
  r3.xyz = r11.xyz + r3.xyz;
  r3.xyz = r9.xyz * r0.www + r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = cb0[187].xyz * r3.xyz;
  r0.w = r8.x * r8.y;
  r3.xyz = r3.xyz * r0.www;
  r3.xyz = r7.xyz * cb0[157].xyz + r3.xyz;
  r0.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r3.xyz * r6.xyz;
  r7.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r3.xyz = r7.xyz * r3.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xyz = -cb1[5].xyz + r2.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r1.www ? r2.xyz : r0.xyz;
  }
  r2.xyz = cb0[145].yyy * r5.xyz + r3.xyz;
  r0.xyz = r2.xyz + r0.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v3.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r1.w = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  o1.xyz = r4.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r5.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.w * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.yw = float2(0.5,0.505882382);
  o2.x = r2.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.w;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}