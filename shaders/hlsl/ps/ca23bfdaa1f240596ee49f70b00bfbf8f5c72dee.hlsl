// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

struct t2_t {
  float val[4];
};
StructuredBuffer<t2_t> t2 : register(t2);

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[39];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[188];
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
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
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
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r1.xyz * r0.www;
  r0.w = cb2[24].x + cb0[143].y;
  r3.xy = t5.SampleBias(s2_s, v2.xy, r0.w).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb2[24].yyy * r4.xyz + r3.xyz;
  r3.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyz = r3.yyy * r0.yzx;
  r3.xyw = r3.xxx * v0.yzx + r4.xyz;
  r3.xyz = r3.zzz * v1.yzx + r3.xyw;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r3.xyz * r0.www;
  r5.xy = cb2[24].zz * v2.xy;
  r1.w = -0.5 * cb2[24].w;
  r6.x = dot(v0.xyz, r2.xyz);
  r6.y = dot(r0.xyz, r2.xyz);
  r5.xy = r6.xy * r1.ww + r5.xy;
  r5.xy = t6.SampleBias(s3_s, r5.xy, cb0[143].y).xy;
  r5.xy = r5.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r5.xy, r5.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r5.z = sqrt(r1.w);
  r7.xyz = float3(0,0,1) + -r5.xyz;
  r5.xyz = cb2[25].xxx * r7.xyz + r5.xyz;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.y = 1 + -abs(r0.x);
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb2[25].y * r0.y;
  r0.y = exp2(r0.y);
  r5.xyz = cb2[2].xyz * r0.yyy;
  r5.xyz = r0.zzz ? float3(0,0,0) : r5.xyz;
  r0.y = cmp(0 >= abs(r0.x));
  r0.x = log2(abs(r0.x));
  r0.x = cb2[25].z * r0.x;
  r0.x = exp2(r0.x);
  r7.xyz = cb2[4].xyz * r0.xxx;
  r0.xyz = r0.yyy ? float3(0,0,0) : r7.xyz;
  r0.xyz = r5.xyz + r0.xyz;
  r1.w = cb0[142].z * cb2[26].x + v2.y;
  r1.w = 1.2566371 * r1.w;
  r1.w = sin(r1.w);
  r1.w = 1 + r1.w;
  r1.w = 0.5 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * cb2[26].z + cb2[26].y;
  r1.w = cb2[26].w * r1.w;
  r2.w = cb2[27].x * cb0[142].z;
  r5.x = cb2[27].w * r2.w;
  r5.y = cb2[28].x * r2.w;
  r5.zw = v2.xy * cb2[28].yy + cb2[6].xy;
  r7.xyzw = mad((int4)v4.xxyy, int4(36,36,15,15), int4(18,20,4,6));
  r8.x = t0[r7.x].val[0/4];
  r8.y = t0[r7.x].val[0/4+1];
  r8.z = t0[r7.x].val[0/4+2];
  r3.w = r8.x + r8.y;
  r3.w = r3.w + r8.z;
  r3.w = frac(r3.w);
  r3.w = cb0[142].z + r3.w;
  r3.w = cb1[2].x * r3.w;
  r8.y = 0.100000001 * r3.w;
  r8.x = 0;
  r6.zw = v2.xy * cb2[29].xx + r8.xy;
  r3.w = t7.SampleBias(s4_s, r6.zw, cb0[143].y).x;
  r6.z = 0.100000001 * r3.w;
  r3.w = cmp(0 >= r3.w);
  r6.z = log2(r6.z);
  r6.z = 1.5 * r6.z;
  r6.z = exp2(r6.z);
  r3.w = r3.w ? 0 : r6.z;
  r5.zw = r3.ww * cb2[29].yy + r5.zw;
  r5.xy = r5.xy + r5.zw;
  r5.z = -0.5 * cb2[29].z;
  r5.xy = r6.xy * r5.zz + r5.xy;
  r5.xyz = t8.SampleBias(s5_s, r5.xy, cb0[143].y).xyz;
  r8.xyz = cmp(float3(0,0,0) >= r5.xyz);
  r5.xyz = log2(r5.xyz);
  r5.xyz = cb2[29].www * r5.xyz;
  r5.xyz = exp2(r5.xyz);
  r5.xyz = r8.xyz ? float3(0,0,0) : r5.xyz;
  r2.w = 1.5 * r2.w;
  r8.x = cb2[27].w * r2.w;
  r8.y = cb2[28].x * r2.w;
  r6.zw = v2.xy * cb2[30].xx + cb2[7].xy;
  r6.zw = r8.xy + r6.zw;
  r2.w = -0.5 * cb2[30].y;
  r6.zw = r6.xy * r2.ww + r6.zw;
  r8.xyz = t8.SampleBias(s5_s, r6.zw, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r8.xyz);
  r8.xyz = log2(r8.xyz);
  r8.xyz = cb2[29].www * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r8.xyz = r9.xyz ? float3(0,0,0) : r8.xyz;
  r8.xyz = float3(-1,-1,-1) + r8.xyz;
  r8.xyz = cb2[30].zzz * r8.xyz + float3(1,1,1);
  r5.xyz = r8.xyz * r5.xyz;
  r5.xyz = r5.xyz * r1.www;
  r1.w = cb0[142].z * cb2[30].w + v2.y;
  r1.w = 1.2566371 * r1.w;
  r1.w = sin(r1.w);
  r1.w = 1 + r1.w;
  r1.w = 0.5 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * cb2[31].y + cb2[31].x;
  r1.w = cb2[31].z * r1.w;
  r2.w = cb2[31].w * cb0[142].z;
  r6.zw = v2.xy * cb2[33].xx + cb2[11].xy;
  r6.zw = r3.ww * cb2[33].ww + r6.zw;
  r6.zw = r2.ww * cb2[32].zw + r6.zw;
  r8.xy = float2(-0.5,-0.5) * cb2[34].xw;
  r6.zw = r6.xy * r8.xx + r6.zw;
  r8.xzw = t9.SampleBias(s6_s, r6.zw, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r8.xzw);
  r8.xzw = log2(r8.xzw);
  r8.xzw = cb2[34].yyy * r8.xzw;
  r8.xzw = exp2(r8.xzw);
  r8.xzw = r9.xyz ? float3(0,0,0) : r8.xzw;
  r2.w = 1.5 * r2.w;
  r6.zw = v2.xy * cb2[34].zz + cb2[12].xy;
  r6.zw = r2.ww * cb2[32].zw + r6.zw;
  r6.xy = r6.xy * r8.yy + r6.zw;
  r6.xyz = t9.SampleBias(s6_s, r6.xy, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb2[34].yyy * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r9.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = cb2[35].xxx * r6.xyz + float3(1,1,1);
  r6.xyz = r8.xzw * r6.xyz;
  r6.xyz = r6.xyz * r1.www;
  r6.xyz = cb2[14].xyz * r6.xyz;
  r5.xyz = r5.xyz * cb2[9].xyz + r6.xyz;
  r0.xyz = r0.xyz * cb2[25].www + r5.xyz;
  r5.xy = t10.Sample(s0_s, v2.xy).xy;
  r1.w = cb2[35].y + r5.x;
  r2.w = 1 + -r1.w;
  r2.w = saturate(-cb2[35].z + r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = cb2[16].xyz * r0.xyz;
  r5.xzw = cb2[35].www * r0.xyz;
  r0.xyz = -r0.xyz * cb2[35].www + cb2[17].xyz;
  r0.xyz = cb2[36].xxx * r0.xyz + r5.xzw;
  r2.x = dot(r4.zxy, r2.xyz);
  r2.y = 1 + -abs(r2.x);
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb2[36].y * r2.y;
  r2.y = exp2(r2.y);
  r5.xzw = cb2[19].xyz * r2.yyy;
  r2.yzw = r2.zzz ? float3(0,0,0) : r5.xzw;
  r3.w = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb2[36].z * r2.x;
  r2.x = exp2(r2.x);
  r5.xzw = cb2[21].xyz * r2.xxx;
  r5.xzw = r3.www ? float3(0,0,0) : r5.xzw;
  r2.xyz = r5.xzw + r2.yzw;
  r5.xzw = t11.SampleBias(s7_s, v2.xy, cb0[143].y).xyz;
  r2.w = dot(r5.xzw, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r2.www + -r5.xzw;
  r5.xzw = cb2[37].zzz * r6.xyz + r5.xzw;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xzw);
  r5.xzw = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xzw;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.wxz;
  r6.xyz = r5.wxz * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb2[37].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xzw = r5.xzw * r8.xxx + r6.xyz;
  r5.xzw = r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xzw;
  r5.xzw = cb2[23].xyz * r5.xzw;
  r6.xyz = cmp(float3(0,0,0) >= r5.xzw);
  r5.xzw = log2(r5.xzw);
  r5.xzw = cb2[37].www * r5.xzw;
  r5.xzw = exp2(r5.xzw);
  r5.xzw = r6.xyz ? float3(0,0,0) : r5.xzw;
  r2.xyz = r2.xyz * cb2[36].www + r5.xzw;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r2.w = saturate(cb2[38].x + r5.y);
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r1.w = saturate(r1.w);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  o1.w = t0[r7.y].val[4/4];
  r5.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r2.xyz;
  r5.xyz = r2.www * r5.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r2.xyz * r2.www + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r8.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.www ? r8.xyz : r6.xyz;
  r5.xyz = r1.www ? float3(0,0,0) : r5.xyz;
  r1.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r1.w * 2.04040003 + -0.332399994;
  r3.w = r1.w * -4.79510021 + r3.w;
  r1.w = r1.w * 2.75519991 + r3.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r7.xy = float2(1,0.5) * v3.xy;
  r8.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r9.xyzw = t3.Sample(s1_s, r7.xy).xyzw;
  r8.xyzw = t3.Sample(s1_s, r8.xy).xyzw;
  r3.w = r8.w * 0.00392156886 + r9.w;
  r3.w = -0.00196078443 + r3.w;
  r10.x = t1[r7.z].val[0/4];
  r10.y = t1[r7.z].val[0/4+1];
  r10.z = t1[r7.z].val[0/4+2];
  r10.w = t1[r7.z].val[0/4+3];
  r7.x = t1[r7.w].val[0/4];
  r7.y = t1[r7.w].val[0/4+1];
  r7.z = t1[r7.w].val[0/4+2];
  r7.w = t1[r7.w].val[0/4+3];
  r3.w = r3.w * r10.w + r7.w;
  r9.xyz = r9.xyz * r9.xyz;
  r7.xyz = r9.xyz * r10.xyz + r7.xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r9.xy = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r10.x = t1[r9.x].val[0/4];
  r10.y = t1[r9.x].val[0/4+1];
  r10.z = t1[r9.x].val[0/4+2];
  r10.w = t1[r9.x].val[0/4+3];
  r9.x = t1[r9.y].val[0/4];
  r9.y = t1[r9.y].val[0/4+1];
  r9.z = t1[r9.y].val[0/4+2];
  r9.w = t1[r9.y].val[0/4+3];
  r8.xyzw = r8.xyzw * r10.xyzw + r9.xyzw;
  r4.w = 1;
  r4.w = dot(r8.xyzw, r4.xyzw);
  r4.w = max(0, r4.w);
  r3.w = r4.w * r3.w;
  r7.xyz = r3.www * r7.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r8.xyzw = t4.Sample(s1_s, v3.xy).xyzw;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.x = r8.w * r8.w;
    r3.w = dot(r8.xyz, r8.xyz);
    r3.w = rsqrt(r3.w);
    r8.xyz = r8.xyz * r3.www;
    r3.w = -r8.w * r8.w + 1;
    r3.w = -r3.w * r3.w + 1;
    r3.xyz = r3.zxy * r0.www + -r8.xyz;
    r10.xyz = r3.www * r3.xyz + r8.xyz;
    r0.w = saturate(dot(r8.yzx, r4.xyz));
    r3.x = 1 + -r0.w;
    r9.y = r3.w * r3.x + r0.w;
  } else {
    r10.xyz = r4.zxy;
    r9.xy = float2(1,1);
  }
  r3.x = t2[0].val[0/4];
  r3.y = t2[0].val[0/4+1];
  r3.z = t2[0].val[0/4+2];
  r3.w = t2[0].val[0/4+3];
  r10.w = 1;
  r3.x = dot(r3.xyzw, r10.xyzw);
  r8.x = t2[1].val[0/4];
  r8.y = t2[1].val[0/4+1];
  r8.z = t2[1].val[0/4+2];
  r8.w = t2[1].val[0/4+3];
  r3.y = dot(r8.xyzw, r10.xyzw);
  r8.x = t2[2].val[0/4];
  r8.y = t2[2].val[0/4+1];
  r8.z = t2[2].val[0/4+2];
  r8.w = t2[2].val[0/4+3];
  r3.z = dot(r8.xyzw, r10.xyzw);
  r8.xyzw = r10.xyzz * r10.yzzx;
  r11.x = t2[3].val[0/4];
  r11.y = t2[3].val[0/4+1];
  r11.z = t2[3].val[0/4+2];
  r11.w = t2[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r8.xyzw);
  r12.x = t2[4].val[0/4];
  r12.y = t2[4].val[0/4+1];
  r12.z = t2[4].val[0/4+2];
  r12.w = t2[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r8.xyzw);
  r12.x = t2[5].val[0/4];
  r12.y = t2[5].val[0/4+1];
  r12.z = t2[5].val[0/4+2];
  r12.w = t2[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r8.xyzw);
  r0.w = r10.y * r10.y;
  r0.w = r10.x * r10.x + -r0.w;
  r8.x = t2[6].val[0/4];
  r8.y = t2[6].val[0/4+1];
  r8.z = t2[6].val[0/4+2];
  r3.xyz = r11.xyz + r3.xyz;
  r3.xyz = r8.xyz * r0.www + r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = cb0[187].xyz * r3.xyz;
  r0.w = r9.x * r9.y;
  r3.xyz = r3.xyz * r0.www;
  r3.xyz = r7.xyz * cb0[157].xyz + r3.xyz;
  r0.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r3.xyz * r6.xyz;
  r7.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r3.xyz = r7.xyz * r3.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t0[r6.x].val[0/4];
    r6.z = t0[r6.x].val[0/4+1];
    r6.w = t0[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r1.xyz;
    r7.x = t0[r6.y].val[0/4];
    r7.y = t0[r6.y].val[0/4+1];
    r7.z = t0[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r3.www ? r1.xyz : r0.xyz;
  }
  r1.xyz = cb0[145].yyy * r5.xyz + r3.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r4.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.yw = float2(0.5,0.75686276);
  o2.x = r2.w;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}