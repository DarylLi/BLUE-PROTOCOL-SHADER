// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb5 : register(b5)
{
  float4 cb5[41];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[2];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[8];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
  r0.w = cb5[24].x + cb0[143].y;
  r4.xy = t3.SampleBias(s2_s, v2.xy, r0.w).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb5[24].yyy * r5.xyz + r4.xyz;
  r4.xyz = r4.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.yyy * r0.yzx;
  r4.xyw = r4.xxx * v0.yzx + r5.xyz;
  r4.xyz = r4.zzz * v1.yzx + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r4.xyz * r0.www;
  r6.xy = cb5[24].zz * v2.xy;
  r2.w = -0.5 * cb5[24].w;
  r7.x = dot(v0.xyz, r2.xyz);
  r7.y = dot(r0.xyz, r2.xyz);
  r6.xy = r7.xy * r2.ww + r6.xy;
  r6.xy = t4.SampleBias(s3_s, r6.xy, cb0[143].y).xy;
  r6.xy = r6.xy * float2(2,2) + float2(-1,-1);
  r2.w = dot(r6.xy, r6.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r6.z = sqrt(r2.w);
  r8.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyz = cb5[25].xxx * r8.xyz + r6.xyz;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.xyz + r0.xyz;
  r0.xyz = r6.zzz * v1.xyz + r0.xyz;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.y = 1 + -abs(r0.x);
  r0.z = cmp(0 >= r0.y);
  r0.y = log2(r0.y);
  r0.y = cb5[25].y * r0.y;
  r0.y = exp2(r0.y);
  r6.xyz = cb5[2].xyz * r0.yyy;
  r6.xyz = r0.zzz ? float3(0,0,0) : r6.xyz;
  r0.y = cmp(0 >= abs(r0.x));
  r0.x = log2(abs(r0.x));
  r0.x = cb5[25].z * r0.x;
  r0.x = exp2(r0.x);
  r8.xyz = cb5[4].xyz * r0.xxx;
  r0.xyz = r0.yyy ? float3(0,0,0) : r8.xyz;
  r0.xyz = r6.xyz + r0.xyz;
  r2.w = cb0[142].z * cb5[26].x + v2.y;
  r2.w = 1.2566371 * r2.w;
  r2.w = sin(r2.w);
  r2.w = 1 + r2.w;
  r2.w = 0.5 * r2.w;
  r2.w = frac(r2.w);
  r2.w = r2.w * cb5[26].z + cb5[26].y;
  r2.w = cb5[26].w * r2.w;
  r3.w = cb5[27].x * cb0[142].z;
  r6.x = cb5[27].w * r3.w;
  r6.y = cb5[28].x * r3.w;
  r6.zw = v2.xy * cb5[28].yy + cb5[6].xy;
  r4.w = cb1[18].x + cb1[18].y;
  r4.w = cb1[18].z + r4.w;
  r4.w = frac(r4.w);
  r4.w = cb0[142].z + r4.w;
  r4.w = cb3[2].x * r4.w;
  r1.w = 0.100000001 * r4.w;
  r1.zw = v2.xy * cb5[29].xx + r1.zw;
  r1.z = t5.SampleBias(s4_s, r1.zw, cb0[143].y).x;
  r1.w = 0.100000001 * r1.z;
  r1.z = cmp(0 >= r1.z);
  r1.w = log2(r1.w);
  r1.w = 1.5 * r1.w;
  r1.w = exp2(r1.w);
  r1.z = r1.z ? 0 : r1.w;
  r6.zw = r1.zz * cb5[29].yy + r6.zw;
  r6.xy = r6.xy + r6.zw;
  r1.w = -0.5 * cb5[29].z;
  r6.xy = r7.xy * r1.ww + r6.xy;
  r6.xyz = t6.SampleBias(s5_s, r6.xy, cb0[143].y).xyz;
  r8.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb5[29].www * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r8.xyz ? float3(0,0,0) : r6.xyz;
  r1.w = 1.5 * r3.w;
  r8.x = cb5[27].w * r1.w;
  r8.y = cb5[28].x * r1.w;
  r7.zw = v2.xy * cb5[30].xx + cb5[7].xy;
  r7.zw = r8.xy + r7.zw;
  r1.w = -0.5 * cb5[30].y;
  r7.zw = r7.xy * r1.ww + r7.zw;
  r8.xyz = t6.SampleBias(s5_s, r7.zw, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r8.xyz);
  r8.xyz = log2(r8.xyz);
  r8.xyz = cb5[29].www * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r8.xyz = r9.xyz ? float3(0,0,0) : r8.xyz;
  r8.xyz = float3(-1,-1,-1) + r8.xyz;
  r8.xyz = cb5[30].zzz * r8.xyz + float3(1,1,1);
  r6.xyz = r8.xyz * r6.xyz;
  r6.xyz = r6.xyz * r2.www;
  r1.w = cb0[142].z * cb5[30].w + v2.y;
  r1.w = 1.2566371 * r1.w;
  r1.w = sin(r1.w);
  r1.w = 1 + r1.w;
  r1.w = 0.5 * r1.w;
  r1.w = frac(r1.w);
  r1.w = r1.w * cb5[31].y + cb5[31].x;
  r1.w = cb5[31].z * r1.w;
  r2.w = cb5[31].w * cb0[142].z;
  r7.zw = v2.xy * cb5[33].xx + cb5[11].xy;
  r7.zw = r1.zz * cb5[33].ww + r7.zw;
  r7.zw = r2.ww * cb5[32].zw + r7.zw;
  r8.xy = float2(-0.5,-0.5) * cb5[34].xw;
  r7.zw = r7.xy * r8.xx + r7.zw;
  r8.xzw = t7.SampleBias(s6_s, r7.zw, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r8.xzw);
  r8.xzw = log2(r8.xzw);
  r8.xzw = cb5[34].yyy * r8.xzw;
  r8.xzw = exp2(r8.xzw);
  r8.xzw = r9.xyz ? float3(0,0,0) : r8.xzw;
  r1.z = 1.5 * r2.w;
  r7.zw = v2.xy * cb5[34].zz + cb5[12].xy;
  r7.zw = r1.zz * cb5[32].zw + r7.zw;
  r7.xy = r7.xy * r8.yy + r7.zw;
  r7.xyz = t7.SampleBias(s6_s, r7.xy, cb0[143].y).xyz;
  r9.xyz = cmp(float3(0,0,0) >= r7.xyz);
  r7.xyz = log2(r7.xyz);
  r7.xyz = cb5[34].yyy * r7.xyz;
  r7.xyz = exp2(r7.xyz);
  r7.xyz = r9.xyz ? float3(0,0,0) : r7.xyz;
  r7.xyz = float3(-1,-1,-1) + r7.xyz;
  r7.xyz = cb5[35].xxx * r7.xyz + float3(1,1,1);
  r7.xyz = r8.xzw * r7.xyz;
  r7.xyz = r7.xyz * r1.www;
  r7.xyz = cb5[14].xyz * r7.xyz;
  r6.xyz = r6.xyz * cb5[9].xyz + r7.xyz;
  r0.xyz = r0.xyz * cb5[25].www + r6.xyz;
  r1.zw = t8.Sample(s0_s, v2.xy).xy;
  r1.z = cb5[35].y + r1.z;
  r2.w = 1 + -r1.z;
  r2.w = saturate(-cb5[35].z + r2.w);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = cb5[16].xyz * r0.xyz;
  r6.xyz = cb5[35].www * r0.xyz;
  r0.xyz = -r0.xyz * cb5[35].www + cb5[17].xyz;
  r0.xyz = cb5[36].xxx * r0.xyz + r6.xyz;
  r2.x = dot(r5.zxy, r2.xyz);
  r2.y = 1 + -abs(r2.x);
  r2.z = cmp(0 >= r2.y);
  r2.y = log2(r2.y);
  r2.y = cb5[36].y * r2.y;
  r2.y = exp2(r2.y);
  r6.xyz = cb5[19].xyz * r2.yyy;
  r2.yzw = r2.zzz ? float3(0,0,0) : r6.xyz;
  r3.w = cmp(0 >= abs(r2.x));
  r2.x = log2(abs(r2.x));
  r2.x = cb5[36].z * r2.x;
  r2.x = exp2(r2.x);
  r6.xyz = cb5[21].xyz * r2.xxx;
  r6.xyz = r3.www ? float3(0,0,0) : r6.xyz;
  r2.xyz = r6.xyz + r2.yzw;
  r6.xyz = t9.SampleBias(s7_s, v2.xy, cb0[143].y).xyz;
  r2.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = r2.www + -r6.xyz;
  r6.xyz = cb5[37].zzz * r7.xyz + r6.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r6.xyz);
  r6.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r7.xyz = float3(0.577350259,0.577350259,0.577350259) * r6.zxy;
  r7.xyz = r6.zxy * float3(0.577350259,0.577350259,0.577350259) + -r7.zxy;
  sincos(cb5[37].y, r8.x, r9.x);
  r7.xyz = r8.xxx * r7.xyz;
  r6.xyz = r6.xyz * r9.xxx + r7.xyz;
  r6.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r6.xyz;
  r6.xyz = cb5[23].xyz * r6.xyz;
  r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb5[37].www * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r7.xyz ? float3(0,0,0) : r6.xyz;
  r2.xyz = r2.xyz * cb5[36].www + r6.xyz;
  r2.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r2.xyz);
  r1.w = saturate(cb5[38].x + r1.w);
  r2.w = cb5[38].y * cb4[1].w;
  r3.w = cmp(cb0[31].w < 1);
  r4.w = r1.x * cb0[65].x + cb0[65].y;
  r1.x = r1.x * cb0[65].z + -cb0[65].w;
  r1.x = 1 / r1.x;
  r1.x = r4.w + r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = cb5[38].z + r1.x;
  r6.xy = float2(0.649999976,0.487499982) * cb4[1].ww;
  r3.w = cb4[1].w * 0.617499948 + -r1.x;
  r3.w = saturate(r3.w / r6.y);
  r4.w = -cb4[1].w * 0.649999976 + 8000;
  r3.w = r3.w * r4.w + r6.x;
  r1.y = r1.y / r3.w;
  r1.x = r1.x / cb5[38].z;
  r3.w = cmp(9.99999975e-006 < abs(r2.w));
  r2.w = cmp(r2.w >= 0);
  r1.y = r2.w ? r1.y : r1.x;
  r1.x = r3.w ? r1.y : r1.x;
  r1.y = cmp(9.99999975e-006 < abs(cb5[38].y));
  r2.w = 1 + cb5[38].y;
  r1.y = r1.y ? r2.w : 1.39999998;
  r6.xyz = -cb0[129].xxy + v4.xxy;
  r2.w = r6.x * cb0[130].z + -0.469999999;
  r2.w = 4.93230057 * r2.w;
  r2.w = cos(r2.w);
  r2.w = 0.899999976 + r2.w;
  r2.w = saturate(0.555555582 * r2.w);
  r1.y = -r2.w + r1.y;
  r6.xw = cb0[152].xx + r6.yz;
  r6.xw = (uint2)r6.xw;
  r2.w = (uint)r6.w << 1;
  r2.w = (int)r2.w + (int)r6.x;
  r2.w = (uint)r2.w % 5;
  r2.w = (uint)r2.w;
  r6.xy = float2(0.015625,0.015625) * r6.yz;
  r3.w = t10.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r2.w = r3.w + r2.w;
  r2.w = 0.166666672 * r2.w;
  r1.x = r1.x * r1.y + r2.w;
  r1.x = saturate(-0.5 + r1.x);
  r6.xyz = -cb0[67].xyz + r3.xyz;
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = sqrt(r1.y);
  r1.y = r1.y / cb5[39].y;
  r1.y = saturate(r1.y * cb5[40].x + -cb5[39].w);
  r1.y = r1.y * 3 + -1;
  r1.y = r1.y * cb5[40].y + r2.w;
  r1.y = -0.5 + r1.y;
  r1.x = r1.x * r1.y + -0.333299994;
  r1.x = cmp(r1.x < 0);
  if (r1.x != 0) discard;
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r1.z = saturate(r1.z);
  o2.z = r1.z * cb0[139].y + cb0[139].x;
  r1.xyz = float3(-0.0399999991,-0.0399999991,-0.0399999991) + r2.xyz;
  r1.xyz = r1.www * r1.xyz + float3(0.0399999991,0.0399999991,0.0399999991);
  r6.xyz = -r2.xyz * r1.www + r2.xyz;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r1.xyz = r1.xyz * cb0[137].www + cb0[137].xyz;
  r2.w = cmp(0 != cb0[183].w);
  r7.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r2.www ? r7.xyz : r6.xyz;
  r1.xyz = r2.www ? float3(0,0,0) : r1.xyz;
  r2.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r2.w * 2.04040003 + -0.332399994;
  r3.w = r2.w * -4.79510021 + r3.w;
  r2.w = r2.w * 2.75519991 + r3.w;
  r2.w = 1.33200002 + r2.w;
  r2.w = max(1, r2.w);
  r7.xy = float2(1,0.5) * v3.xy;
  r7.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t1.Sample(s1_s, r7.xy).xyzw;
  r7.xyzw = t1.Sample(s1_s, r7.zw).xyzw;
  r3.w = r7.w * 0.00392156886 + r8.w;
  r3.w = -0.00196078443 + r3.w;
  r3.w = r3.w * cb2[4].w + cb2[6].w;
  r8.xyz = r8.xyz * r8.xyz;
  r8.xyz = r8.xyz * cb2[4].xyz + cb2[6].xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r7.xyzw = r7.xyzw * cb2[5].xyzw + cb2[7].xyzw;
  r5.w = 1;
  r4.w = dot(r7.xyzw, r5.xyzw);
  r4.w = max(0, r4.w);
  r3.w = r4.w * r3.w;
  r7.xyz = r3.www * r8.xyz;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r8.xyzw = t2.Sample(s1_s, v3.xy).xyzw;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.x = r8.w * r8.w;
    r3.w = dot(r8.xyz, r8.xyz);
    r3.w = rsqrt(r3.w);
    r8.xyz = r8.xyz * r3.www;
    r3.w = -r8.w * r8.w + 1;
    r3.w = -r3.w * r3.w + 1;
    r4.xyz = r4.zxy * r0.www + -r8.xyz;
    r4.xyz = r3.www * r4.xyz + r8.xyz;
    r0.w = saturate(dot(r8.yzx, r5.xyz));
    r5.w = 1 + -r0.w;
    r9.y = r3.w * r5.w + r0.w;
  } else {
    r4.xyz = r5.zxy;
    r9.xy = float2(1,1);
  }
  r8.x = t0[0].val[0/4];
  r8.y = t0[0].val[0/4+1];
  r8.z = t0[0].val[0/4+2];
  r8.w = t0[0].val[0/4+3];
  r4.w = 1;
  r8.x = dot(r8.xyzw, r4.xyzw);
  r10.x = t0[1].val[0/4];
  r10.y = t0[1].val[0/4+1];
  r10.z = t0[1].val[0/4+2];
  r10.w = t0[1].val[0/4+3];
  r8.y = dot(r10.xyzw, r4.xyzw);
  r10.x = t0[2].val[0/4];
  r10.y = t0[2].val[0/4+1];
  r10.z = t0[2].val[0/4+2];
  r10.w = t0[2].val[0/4+3];
  r8.z = dot(r10.xyzw, r4.xyzw);
  r10.xyzw = r4.xyzz * r4.yzzx;
  r11.x = t0[3].val[0/4];
  r11.y = t0[3].val[0/4+1];
  r11.z = t0[3].val[0/4+2];
  r11.w = t0[3].val[0/4+3];
  r11.x = dot(r11.xyzw, r10.xyzw);
  r12.x = t0[4].val[0/4];
  r12.y = t0[4].val[0/4+1];
  r12.z = t0[4].val[0/4+2];
  r12.w = t0[4].val[0/4+3];
  r11.y = dot(r12.xyzw, r10.xyzw);
  r12.x = t0[5].val[0/4];
  r12.y = t0[5].val[0/4+1];
  r12.z = t0[5].val[0/4+2];
  r12.w = t0[5].val[0/4+3];
  r11.z = dot(r12.xyzw, r10.xyzw);
  r0.w = r4.y * r4.y;
  r0.w = r4.x * r4.x + -r0.w;
  r4.x = t0[6].val[0/4];
  r4.y = t0[6].val[0/4+1];
  r4.z = t0[6].val[0/4+2];
  r8.xyz = r11.xyz + r8.xyz;
  r4.xyz = r4.xyz * r0.www + r8.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = cb0[187].xyz * r4.xyz;
  r0.w = r9.x * r9.y;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r7.xyz * cb0[157].xyz + r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r6.xyz;
  r7.xyz = r2.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r2.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r2.xyz * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r4.xyz = r7.xyz * r4.xyz;
  r1.xyz = r1.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xyz = -cb1[5].xyz + r3.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r3.x = dot(r3.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.x = 0.00200000009 * r3.x;
    r3.x = frac(r3.x);
    r3.x = cmp(0.5 < r3.x);
    r3.xyz = r3.xxx ? float3(0,1,1) : float3(1,1,0);
    r0.xyz = r3.www ? r3.xyz : r0.xyz;
  }
  r1.xyz = cb0[145].yyy * r1.xyz + r4.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v4.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r2.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.yw = float2(0.5,0.75686276);
  o2.x = r1.w;
  o3.xyz = r2.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}