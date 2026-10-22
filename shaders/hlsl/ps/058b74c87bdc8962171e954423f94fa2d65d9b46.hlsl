// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t11 : register(t11);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[23];
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
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = -r1.xyz * r0.www;
  r3.xy = t5.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r3.xy = r3.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r4.xyz = float3(0,0,1) + -r3.xyz;
  r3.xyz = cb1[14].xxx * r4.xyz + r3.xyz;
  r0.w = 1 + r3.z;
  r4.xy = cb1[14].yy * v2.xy;
  r4.xy = t6.SampleBias(s3_s, r4.xy, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r5.xyz = float3(0,0,1) + -r4.xyz;
  r4.xyz = cb1[14].zzz * r5.xyz + r4.xyz;
  r3.w = 1 + r3.z;
  r4.xyz = float3(-1,-1,1) * r4.xyz;
  r1.w = dot(r3.xyw, r4.xyz);
  r4.xyz = r4.xyz * r0.www;
  r3.xyz = r3.xyw * r1.www + -r4.xyz;
  r4.xyz = r3.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.yyy * r0.yzx;
  r4.xyw = r4.xxx * v0.yzx + r5.xyz;
  r4.xyz = r4.zzz * v1.yzx + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = r4.xyz * r0.www;
  r1.w = dot(r5.zxy, r2.xyz);
  r6.xyz = r5.zxy * r1.www;
  r6.xyz = r6.xyz * float3(2,2,2) + -r2.xyz;
  r1.w = 1 + -abs(r1.w);
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb1[14].w * r1.w;
  r1.w = exp2(r1.w);
  r7.xyz = cb1[2].xyz * r1.www;
  r7.xyz = cb1[15].xxx * r7.xyz;
  r7.xyz = r2.www ? float3(0,0,0) : r7.xyz;
  r8.xyz = r3.yyy * r0.xyz;
  r3.xyw = r3.xxx * v0.xyz + r8.xyz;
  r3.xyz = r3.zzz * v1.xyz + r3.xyw;
  r1.w = dot(-r2.xyz, r3.xyz);
  r2.w = cb1[15].w * cb1[15].w;
  r3.w = -r1.w * r1.w + 1;
  r2.w = -r2.w * r3.w + 1;
  r4.w = sqrt(r2.w);
  r4.w = cb1[15].w * r1.w + r4.w;
  r2.w = cmp(r2.w >= 0);
  r8.xyz = r4.www * r3.xyz;
  r8.xyz = cb1[15].www * -r2.xyz + -r8.xyz;
  r8.xyz = r2.www ? r8.xyz : 0;
  r8.x = t11.Sample(s6_s, r8.xyz).x;
  r9.xy = cb1[16].zw * cb1[16].zw;
  r9.xy = -r9.xy * r3.ww + float2(1,1);
  r9.zw = sqrt(r9.xy);
  r9.zw = cb1[16].zw * r1.ww + r9.zw;
  r9.xy = cmp(r9.xy >= float2(0,0));
  r10.xyz = r9.zzz * r3.xyz;
  r10.xyz = cb1[16].zzz * -r2.xyz + -r10.xyz;
  r10.xyz = r9.xxx ? r10.xyz : 0;
  r8.y = t11.Sample(s6_s, r10.xyz).y;
  r3.xyz = r9.www * r3.xyz;
  r3.xyz = cb1[16].www * -r2.xyz + -r3.xyz;
  r3.xyz = r9.yyy ? r3.xyz : 0;
  r8.z = t11.Sample(s6_s, r3.xyz).z;
  r1.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r1.www + -r8.xyz;
  r3.xyz = cb1[17].xxx * r3.xyz + r8.xyz;
  r6.xyz = t11.Sample(s6_s, r6.xyz).xyz;
  r1.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r1.www + -r6.xyz;
  r6.xyz = cb1[17].xxx * r8.xyz + r6.xyz;
  r6.xyz = cb1[6].xyz * r6.xyz;
  r8.xyz = cmp(float3(0,0,0) >= r6.xyz);
  r6.xyz = log2(r6.xyz);
  r6.xyz = cb1[17].zzz * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r6.xyz = r8.xyz ? float3(0,0,0) : r6.xyz;
  r6.xyz = cb1[17].yyy * r6.xyz;
  r3.xyz = r3.xyz * cb1[17].yyy + r6.xyz;
  r6.xy = float2(0.100000001,0.100000001) * r5.zx;
  r6.zw = cmp(float2(0,0) >= r5.zx);
  r6.xy = log2(r6.xy);
  r6.xy = float2(1.5,1.5) * r6.xy;
  r6.xy = exp2(r6.xy);
  r6.xy = r6.zw ? float2(0,0) : r6.xy;
  r6.zw = cb1[18].xx * r6.xy;
  r6.zw = v2.xy * cb1[17].ww + r6.zw;
  r1.w = -0.5 * cb1[18].y;
  r8.x = dot(v0.xyz, r2.xyz);
  r8.y = dot(r0.xyz, r2.xyz);
  r0.xy = r8.xy * r1.ww + r6.zw;
  r0.xyz = t7.Sample(s0_s, r0.xy).xyz;
  r2.xyz = cmp(float3(0,0,0) >= r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.xyz = cb1[18].zzz * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = r2.xyz ? float3(0,0,0) : r0.xyz;
  r0.xyz = cb1[18].www * r0.xyz;
  r2.xy = cb1[19].yy * r6.xy;
  r2.xy = v2.xy * cb1[19].xx + r2.xy;
  r1.w = -0.5 * cb1[19].z;
  r2.xy = r8.xy * r1.ww + r2.xy;
  r2.xyz = t8.Sample(s0_s, r2.xy).xyz;
  r6.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb1[19].www * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r6.xyz ? float3(0,0,0) : r2.xyz;
  r2.xyz = cb1[20].xxx * r2.xyz;
  r2.xyz = cb1[10].xyz * r2.xyz;
  r0.xyz = r0.xyz * cb1[8].xyz + r2.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r2.xyz = t9.SampleBias(s4_s, v2.xy, cb0[143].y).xyz;
  r1.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.xyz = r1.www + -r2.xyz;
  r2.xyz = cb1[20].www * r3.xyz + r2.xyz;
  r1.w = dot(float3(0.577350259,0.577350259,0.577350259), r2.xyz);
  r2.xyz = -r1.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r3.xyz = float3(0.577350259,0.577350259,0.577350259) * r2.zxy;
  r3.xyz = r2.zxy * float3(0.577350259,0.577350259,0.577350259) + -r3.zxy;
  sincos(cb1[20].z, r6.x, r8.x);
  r3.xyz = r6.xxx * r3.xyz;
  r2.xyz = r2.xyz * r8.xxx + r3.xyz;
  r2.xyz = r1.www * float3(0.577350259,0.577350259,0.577350259) + r2.xyz;
  r2.xyz = cb1[12].xyz * r2.xyz;
  r3.xyz = cmp(float3(0,0,0) >= r2.xyz);
  r2.xyz = log2(r2.xyz);
  r2.xyz = cb1[21].xxx * r2.xyz;
  r2.xyz = exp2(r2.xyz);
  r2.xyz = r3.xyz ? float3(0,0,0) : r2.xyz;
  r3.xyz = r2.xyz + r0.xyz;
  r6.xy = t10.SampleBias(s5_s, v2.xy, cb0[143].y).xy;
  r1.w = cb1[21].y + r6.x;
  r2.w = saturate(1 + -r1.w);
  r0.xyz = r0.xyz * r2.www + r2.xyz;
  r0.xyz = r0.xyz + -r3.xyz;
  r0.xyz = cb1[21].zzz * r0.xyz + r3.xyz;
  r0.xyz = r7.xyz + r0.xyz;
  r2.xyz = cb1[21].www * r0.xyz;
  r3.xyz = -cb1[21].www * r0.xyz + cb1[13].xyz;
  r2.xyz = cb1[22].xxx * r3.xyz + r2.xyz;
  r0.xyz = cb1[21].www * -r0.xyz + r0.xyz;
  r0.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r0.xyz);
  r3.x = saturate(cb1[22].y + r6.y);
  r0.xyz = min(float3(1,1,1), r0.xyz);
  r3.y = saturate(cb1[22].z);
  r1.w = saturate(r1.w);
  o2.z = r1.w * cb0[139].y + cb0[139].x;
  r6.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,4,6,5));
  o1.w = t0[r6.x].val[4/4];
  r1.w = 0.0799999982 * r3.y;
  r7.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r0.xyz;
  r7.xyz = r3.xxx * r7.xyz + r1.www;
  r8.xyz = -r0.xyz * r3.xxx + r0.xyz;
  r8.xyz = r8.xyz * cb0[136].www + cb0[136].xyz;
  r7.xyz = r7.xyz * cb0[137].www + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r8.xyz = r1.www ? r9.xyz : r8.xyz;
  r7.xyz = r1.www ? float3(0,0,0) : r7.xyz;
  r1.w = dot(r7.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.w * 2.04040003 + -0.332399994;
  r2.w = r1.w * -4.79510021 + r2.w;
  r1.w = r1.w * 2.75519991 + r2.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r3.zw = float2(1,0.5) * v3.xy;
  r9.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r10.xyzw = t3.Sample(s1_s, r3.zw).xyzw;
  r9.xyzw = t3.Sample(s1_s, r9.xy).xyzw;
  r2.w = r9.w * 0.00392156886 + r10.w;
  r2.w = -0.00196078443 + r2.w;
  r11.x = t1[r6.y].val[0/4];
  r11.y = t1[r6.y].val[0/4+1];
  r11.z = t1[r6.y].val[0/4+2];
  r11.w = t1[r6.y].val[0/4+3];
  r12.x = t1[r6.z].val[0/4];
  r12.y = t1[r6.z].val[0/4+1];
  r12.z = t1[r6.z].val[0/4+2];
  r12.w = t1[r6.z].val[0/4+3];
  r2.w = r2.w * r11.w + r12.w;
  r6.xyz = r10.xyz * r10.xyz;
  r6.xyz = r6.xyz * r11.xyz + r12.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r10.x = t1[r6.w].val[0/4];
  r10.y = t1[r6.w].val[0/4+1];
  r10.z = t1[r6.w].val[0/4+2];
  r10.w = t1[r6.w].val[0/4+3];
  r3.z = mad((int)w4.x, 15, 7);
  r11.x = t1[r3.z].val[0/4];
  r11.y = t1[r3.z].val[0/4+1];
  r11.z = t1[r3.z].val[0/4+2];
  r11.w = t1[r3.z].val[0/4+3];
  r9.xyzw = r9.xyzw * r10.xyzw + r11.xyzw;
  r5.w = 1;
  r3.z = dot(r9.xyzw, r5.xyzw);
  r3.z = max(0, r3.z);
  r2.w = r3.z * r2.w;
  r6.xyz = r2.www * r6.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r9.xyzw = t4.Sample(s1_s, v3.xy).xyzw;
    r9.xyz = r9.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r10.x = r9.w * r9.w;
    r2.w = dot(r9.xyz, r9.xyz);
    r2.w = rsqrt(r2.w);
    r9.xyz = r9.xyz * r2.www;
    r2.w = -r9.w * r9.w + 1;
    r2.w = -r2.w * r2.w + 1;
    r4.xyz = r4.zxy * r0.www + -r9.xyz;
    r4.xyz = r2.www * r4.xyz + r9.xyz;
    r0.w = saturate(dot(r9.yzx, r5.xyz));
    r3.z = 1 + -r0.w;
    r10.y = r2.w * r3.z + r0.w;
  } else {
    r4.xyz = r5.zxy;
    r10.xy = float2(1,1);
  }
  r9.x = t2[0].val[0/4];
  r9.y = t2[0].val[0/4+1];
  r9.z = t2[0].val[0/4+2];
  r9.w = t2[0].val[0/4+3];
  r4.w = 1;
  r9.x = dot(r9.xyzw, r4.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r9.y = dot(r11.xyzw, r4.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r9.z = dot(r11.xyzw, r4.xyzw);
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
  r9.xyz = r12.xyz + r9.xyz;
  r4.xyz = r4.xyz * r0.www + r9.xyz;
  r4.xyz = max(float3(0,0,0), r4.xyz);
  r4.xyz = cb0[187].xyz * r4.xyz;
  r0.w = r10.x * r10.y;
  r4.xyz = r4.xyz * r0.www;
  r4.xyz = r6.xyz * cb0[157].xyz + r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r8.xyz;
  r6.xyz = r0.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r0.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r0.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r4.xyz = r6.xyz * r4.xyz;
  r6.xyz = r7.xyz * float3(0.449999988,0.449999988,0.449999988) + r8.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r1.xyz = -cb0[70].xyz + r1.xyz;
    r3.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t0[r3.z].val[0/4];
    r7.y = t0[r3.z].val[0/4+1];
    r7.z = t0[r3.z].val[0/4+2];
    r7.xyz = -r7.xyz + r1.xyz;
    r8.x = t0[r3.w].val[0/4];
    r8.y = t0[r3.w].val[0/4+1];
    r8.z = t0[r3.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.xyz = r2.www ? r1.xyz : r2.xyz;
  }
  r1.xyz = cb0[145].yyy * r6.xyz + r4.xyz;
  r1.xyz = r1.xyz + r2.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r1.xyz;
  o0.w = 0;
  o2.w = 0.75686276;
  o2.xy = r3.xy;
  o3.xyz = r0.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}