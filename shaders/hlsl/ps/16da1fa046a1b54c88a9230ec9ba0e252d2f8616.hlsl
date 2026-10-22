// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float3 v5 : TEXCOORD9,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
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

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyz = -cb0[70].xyz + v5.xyz;
  r2.xy = t6.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb1[11].xxx * r3.xyz + r2.xyz;
  r0.w = 1 + r2.z;
  r3.xyz = r1.xyz / cb1[11].www;
  r4.xy = t7.SampleBias(s3_s, r3.xz, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r5.y = v1.y * r1.w;
  r5.xz = -r4.xy;
  r4.xy = t7.SampleBias(s3_s, r3.yz, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r6.x = v1.x * r1.w;
  r6.yz = -r4.xy;
  r1.w = cb1[12].y + -cb1[12].z;
  r4.xy = saturate(abs(v1.xz) * r1.ww + cb1[12].zz);
  r6.xyz = r6.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r6.xyz + r5.xyz;
  r4.zw = t7.SampleBias(s3_s, r3.xy, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.zw, r4.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r6.xy = -r4.zw;
  r6.z = v1.z * r1.w;
  r6.xyz = r6.xyz + -r5.xyz;
  r5.xyz = r4.yyy * r6.xyz + r5.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r5.xyz = r5.xyz / r1.www;
  r6.x = dot(v0.xyz, r5.xyz);
  r6.y = dot(r0.zxy, r5.xyz);
  r6.z = dot(v1.xyz, r5.xyz);
  r5.xyz = float3(0,0,1) + -r6.xyz;
  r5.xyz = cb1[12].www * r5.xyz + r6.xyz;
  r6.xyz = r1.xyz / cb1[13].zzz;
  r4.zw = t8.SampleBias(s4_s, r6.xz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.zw, r4.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.y = v1.y * r1.w;
  r7.xz = -r4.zw;
  r4.zw = t8.SampleBias(s4_s, r6.yz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.zw, r4.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r8.x = v1.x * r1.w;
  r8.yz = -r4.zw;
  r1.w = cb1[14].x + -cb1[14].y;
  r4.zw = saturate(abs(v1.xz) * r1.ww + cb1[14].yy);
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.zzz * r8.xyz + r7.xyz;
  r8.xy = t8.SampleBias(s4_s, r6.xy, cb0[143].y).xy;
  r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r8.xy, r8.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r8.xy = -r8.xy;
  r8.z = v1.z * r1.w;
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.www * r8.xyz + r7.xyz;
  r1.w = dot(r7.xyz, r7.xyz);
  r1.w = sqrt(r1.w);
  r7.xyz = r7.xyz / r1.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.zxy, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb1[14].zzz * r7.xyz + r8.xyz;
  r8.xy = t9.SampleBias(s5_s, v2.xy, cb0[143].y).xy;
  r1.w = saturate(cb1[14].w * r8.x);
  r3.w = saturate(cb1[15].x * r8.y);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r1.www * r7.xyz + r5.xyz;
  r1.xyz = r1.xyz / cb1[15].www;
  r7.xy = t10.SampleBias(s6_s, r1.xz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r5.w = dot(r7.xy, r7.xy);
  r5.w = 1 + -r5.w;
  r5.w = max(0, r5.w);
  r5.w = sqrt(r5.w);
  r8.y = v1.y * r5.w;
  r8.xz = -r7.xy;
  r7.xy = t10.SampleBias(s6_s, r1.yz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r5.w = dot(r7.xy, r7.xy);
  r5.w = 1 + -r5.w;
  r5.w = max(0, r5.w);
  r5.w = sqrt(r5.w);
  r9.x = v1.x * r5.w;
  r9.yz = -r7.xy;
  r5.w = cb1[16].y + -cb1[16].z;
  r7.xy = saturate(abs(v1.xz) * r5.ww + cb1[16].zz);
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r7.xxx * r9.xyz + r8.xyz;
  r7.zw = t10.SampleBias(s6_s, r1.xy, cb0[143].y).xy;
  r7.zw = r7.zw * float2(2,2) + float2(-1,-1);
  r5.w = dot(r7.zw, r7.zw);
  r5.w = 1 + -r5.w;
  r5.w = max(0, r5.w);
  r5.w = sqrt(r5.w);
  r9.xy = -r7.zw;
  r9.z = v1.z * r5.w;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r7.yyy * r9.xyz + r8.xyz;
  r5.w = dot(r8.xyz, r8.xyz);
  r5.w = sqrt(r5.w);
  r8.xyz = r8.xyz / r5.www;
  r9.x = dot(v0.xyz, r8.xyz);
  r9.y = dot(r0.zxy, r8.xyz);
  r9.z = dot(v1.xyz, r8.xyz);
  r8.xyz = float3(0,0,1) + -r9.xyz;
  r8.xyz = cb1[16].www * r8.xyz + r9.xyz;
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r3.www * r8.xyz + r5.xyz;
  r2.w = 1 + r2.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r2.z = dot(r2.xyw, r5.xyz);
  r5.xyz = r5.xyz * r0.www;
  r2.xyz = r2.xyw * r2.zzz + -r5.xyz;
  r2.xyz = r2.xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r2.xyz * r0.www;
  r0.xyz = r2.yyy * r0.xyz;
  r0.xyz = r2.xxx * v0.yzx + r0.xyz;
  r0.xyz = r2.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r0.xyz * r0.www;
  r5.xyz = cb1[4].xyz + -cb1[3].xyz;
  r5.xyz = cb1[17].xxx * r5.xyz + cb1[3].xyz;
  r8.xyz = t11.Sample(s0_s, r3.xz).xyz;
  r9.xyz = t11.Sample(s0_s, r3.yz).xyz;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r4.xxx * r9.xyz + r8.xyz;
  r9.xyz = t11.Sample(s0_s, r3.xy).xyz;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r4.yyy * r9.xyz + r8.xyz;
  r5.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r5.www + -r8.xyz;
  r8.xyz = cb1[17].www * r9.xyz + r8.xyz;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb1[17].z, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r5.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = cb1[6].xyz * r8.xyz;
  r9.xyz = t12.Sample(s0_s, r6.xz).xyz;
  r10.xyz = t12.Sample(s0_s, r6.yz).xyz;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.zzz * r10.xyz + r9.xyz;
  r10.xyz = t12.Sample(s0_s, r6.xy).xyz;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r4.www * r10.xyz + r9.xyz;
  r5.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r5.www + -r9.xyz;
  r9.xyz = cb1[18].zzz * r10.xyz + r9.xyz;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r10.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb1[18].y, r11.x, r12.x);
  r10.xyz = r11.xxx * r10.xyz;
  r9.xyz = r9.xyz * r12.xxx + r10.xyz;
  r9.xyz = r5.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r9.xyz = r9.xyz * cb1[8].xyz + -r8.xyz;
  r8.xyz = r1.www * r9.xyz + r8.xyz;
  r9.xyz = t13.Sample(s0_s, r1.xz).xyz;
  r10.xyz = t13.Sample(s0_s, r1.yz).xyz;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r7.xxx * r10.xyz + r9.xyz;
  r10.xyz = t13.Sample(s0_s, r1.xy).xyz;
  r10.xyz = r10.xyz + -r9.xyz;
  r9.xyz = r7.yyy * r10.xyz + r9.xyz;
  r5.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r5.www + -r9.xyz;
  r9.xyz = cb1[19].yyy * r10.xyz + r9.xyz;
  r5.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r5.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r10.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb1[19].x, r11.x, r12.x);
  r10.xyz = r11.xxx * r10.xyz;
  r9.xyz = r9.xyz * r12.xxx + r10.xyz;
  r9.xyz = r5.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r9.xyz = r9.xyz * cb1[10].xyz + -r8.xyz;
  r8.xyz = r3.www * r9.xyz + r8.xyz;
  r8.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r8.xyz);
  r7.zw = t14.Sample(s0_s, r3.xz).xy;
  r9.xy = t14.Sample(s0_s, r3.yz).xy;
  r9.xy = r9.xy + -r7.zw;
  r7.zw = r4.xx * r9.xy + r7.zw;
  r3.xy = t14.Sample(s0_s, r3.xy).xy;
  r3.xy = r3.xy + -r7.zw;
  r3.xy = r4.yy * r3.xy + r7.zw;
  r3.x = saturate(cb1[19].z + r3.x);
  r4.xy = t15.Sample(s0_s, r6.xz).xy;
  r6.zw = t15.Sample(s0_s, r6.yz).xy;
  r6.zw = r6.zw + -r4.xy;
  r4.xy = r4.zz * r6.zw + r4.xy;
  r6.xy = t15.Sample(s0_s, r6.xy).xy;
  r6.xy = r6.xy + -r4.xy;
  r4.xy = r4.ww * r6.xy + r4.xy;
  r3.z = saturate(cb1[19].w + r4.x);
  r3.z = r3.z + -r3.x;
  r3.x = r1.w * r3.z + r3.x;
  r4.xz = t16.Sample(s0_s, r1.xz).xy;
  r6.xy = t16.Sample(s0_s, r1.yz).xy;
  r6.xy = r6.xy + -r4.xz;
  r4.xz = r7.xx * r6.xy + r4.xz;
  r1.xy = t16.Sample(s0_s, r1.xy).xy;
  r1.xy = r1.xy + -r4.xz;
  r1.xy = r7.yy * r1.xy + r4.xz;
  r1.x = saturate(cb1[20].x + r1.x);
  r1.x = r1.x + -r3.x;
  r1.x = saturate(r3.w * r1.x + r3.x);
  r1.z = r4.y + -r3.y;
  r1.z = r1.w * r1.z + r3.y;
  r1.y = r1.y + -r1.z;
  r3.x = saturate(r3.w * r1.y + r1.z);
  r1.yzw = min(float3(1,1,1), r8.xyz);
  r3.y = saturate(cb1[20].y);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r1.x = (int)w4.x * 15;
  r4.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,1,4,6));
  o1.w = t0[r4.x].val[4/4];
  r6.xyzw = t5.Sample(s1_s, v3.zw).xyzw;
  r7.x = t1[r4.y].val[0/4];
  r7.y = t1[r4.y].val[0/4+1];
  r7.z = t1[r4.y].val[0/4+2];
  r7.w = t1[r4.y].val[0/4+3];
  r8.xyzw = r7.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r6.xyzw = saturate(r6.xyzw * r7.xyzw + r8.xyzw);
  r7.x = t1[r1.x].val[0/4];
  r7.y = t1[r1.x].val[0/4+1];
  r7.z = t1[r1.x].val[0/4+2];
  r7.w = t1[r1.x].val[0/4+3];
  r6.xyzw = r6.xyzw * r6.xyzw;
  o5.xyzw = r6.xyzw * r7.xyzw;
  r1.x = 0.0799999982 * r3.y;
  r6.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.yzw;
  r6.xyz = r3.xxx * r6.xyz + r1.xxx;
  r7.xyz = -r1.yzw * r3.xxx + r1.yzw;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.xyz * cb0[137].www + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r8.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.xxx ? r8.xyz : r7.xyz;
  r6.xyz = r1.xxx ? float3(0,0,0) : r6.xyz;
  r1.x = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.z = r1.x * 2.04040003 + -0.332399994;
  r3.z = r1.x * -4.79510021 + r3.z;
  r1.x = r1.x * 2.75519991 + r3.z;
  r1.x = 1.33200002 + r1.x;
  r1.x = max(1, r1.x);
  r3.zw = float2(1,0.5) * v3.xy;
  r4.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r8.xyzw = t3.Sample(s1_s, r3.zw).xyzw;
  r9.xyzw = t3.Sample(s1_s, r4.xy).xyzw;
  r3.z = r9.w * 0.00392156886 + r8.w;
  r3.z = -0.00196078443 + r3.z;
  r10.x = t1[r4.z].val[0/4];
  r10.y = t1[r4.z].val[0/4+1];
  r10.z = t1[r4.z].val[0/4+2];
  r10.w = t1[r4.z].val[0/4+3];
  r4.x = t1[r4.w].val[0/4];
  r4.y = t1[r4.w].val[0/4+1];
  r4.z = t1[r4.w].val[0/4+2];
  r4.w = t1[r4.w].val[0/4+3];
  r3.z = r3.z * r10.w + r4.w;
  r8.xyz = r8.xyz * r8.xyz;
  r4.xyz = r8.xyz * r10.xyz + r4.xyz;
  r3.z = exp2(r3.z);
  r3.z = -0.0185813606 + r3.z;
  r8.xy = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r10.x = t1[r8.x].val[0/4];
  r10.y = t1[r8.x].val[0/4+1];
  r10.z = t1[r8.x].val[0/4+2];
  r10.w = t1[r8.x].val[0/4+3];
  r8.x = t1[r8.y].val[0/4];
  r8.y = t1[r8.y].val[0/4+1];
  r8.z = t1[r8.y].val[0/4+2];
  r8.w = t1[r8.y].val[0/4+3];
  r8.xyzw = r9.xyzw * r10.xyzw + r8.xyzw;
  r2.w = 1;
  r2.w = dot(r8.xyzw, r2.xyzw);
  r2.w = max(0, r2.w);
  r2.w = r3.z * r2.w;
  r4.xyz = r2.www * r4.xyz;
  r2.w = cmp(cb0[186].y != 0.000000);
  if (r2.w != 0) {
    r8.xyzw = t4.Sample(s1_s, v3.xy).xyzw;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.x = r8.w * r8.w;
    r2.w = dot(r8.xyz, r8.xyz);
    r2.w = rsqrt(r2.w);
    r8.xyz = r8.xyz * r2.www;
    r2.w = -r8.w * r8.w + 1;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.zxy * r0.www + -r8.xyz;
    r0.xyz = r2.www * r0.xyz + r8.xyz;
    r3.z = saturate(dot(r8.yzx, r2.xyz));
    r3.w = 1 + -r3.z;
    r9.y = r2.w * r3.w + r3.z;
  } else {
    r0.xyz = r2.zxy;
    r9.xy = float2(1,1);
  }
  r8.x = t2[0].val[0/4];
  r8.y = t2[0].val[0/4+1];
  r8.z = t2[0].val[0/4+2];
  r8.w = t2[0].val[0/4+3];
  r0.w = 1;
  r8.x = dot(r8.xyzw, r0.xyzw);
  r10.x = t2[1].val[0/4];
  r10.y = t2[1].val[0/4+1];
  r10.z = t2[1].val[0/4+2];
  r10.w = t2[1].val[0/4+3];
  r8.y = dot(r10.xyzw, r0.xyzw);
  r10.x = t2[2].val[0/4];
  r10.y = t2[2].val[0/4+1];
  r10.z = t2[2].val[0/4+2];
  r10.w = t2[2].val[0/4+3];
  r8.z = dot(r10.xyzw, r0.xyzw);
  r10.xyzw = r0.xyzz * r0.yzzx;
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
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t2[6].val[0/4];
  r0.z = t2[6].val[0/4+1];
  r0.w = t2[6].val[0/4+2];
  r8.xyz = r11.xyz + r8.xyz;
  r0.xyz = r0.yzw * r0.xxx + r8.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r9.x * r9.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r4.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r4.xyz = r1.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r4.xyz = r1.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r4.xyz;
  r4.xyz = r1.yzw * float3(2.75519991,2.75519991,2.75519991) + r4.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r4.xyz = max(float3(1,1,1), r4.xyz);
  r0.xyz = r4.xyz * r0.xyz;
  r4.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r6.xyzw = cb0[45].xyzw * v6.yyyy;
    r6.xyzw = v6.xxxx * cb0[44].xyzw + r6.xyzw;
    r6.xyzw = v6.zzzz * cb0[46].xyzw + r6.xyzw;
    r6.xyzw = cb0[47].xyzw + r6.xyzw;
    r6.xyz = r6.xyz / r6.www;
    r6.xyz = -cb0[70].xyz + r6.xyz;
    r3.zw = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r7.x = t0[r3.z].val[0/4];
    r7.y = t0[r3.z].val[0/4+1];
    r7.z = t0[r3.z].val[0/4+2];
    r7.xyz = -r7.xyz + r6.xyz;
    r8.x = t0[r3.w].val[0/4];
    r8.y = t0[r3.w].val[0/4+1];
    r8.z = t0[r3.w].val[0/4+2];
    r8.xyz = float3(1,1,1) + r8.xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r3.z = dot(r6.xyz, float3(0.577000022,0.577000022,0.577000022));
    r3.z = 0.00200000009 * r3.z;
    r3.z = frac(r3.z);
    r3.z = cmp(0.5 < r3.z);
    r6.xyz = r3.zzz ? float3(0,1,1) : float3(1,1,0);
    r5.xyz = r2.www ? r6.xyz : r5.xyz;
  }
  r0.xyz = cb0[145].yyy * r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r2.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r2.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.x;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r1.yzw;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}