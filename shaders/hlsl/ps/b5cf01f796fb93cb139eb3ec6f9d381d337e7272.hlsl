// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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

Texture2D<float4> t2 : register(t2);

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
  float4 cb0[184];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyz = -cb0[70].xyz + v5.xyz;
  r2.xy = t4.SampleBias(s2_s, v2.xy, cb0[143].y).xy;
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r2.z = sqrt(r0.w);
  r3.xyz = float3(0,0,1) + -r2.xyz;
  r2.xyz = cb1[11].xxx * r3.xyz + r2.xyz;
  r0.w = 1 + r2.z;
  r3.xyz = r1.xyz / cb1[11].www;
  r4.xy = t5.SampleBias(s3_s, r3.xz, cb0[143].y).xy;
  r4.xy = r4.xy * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r5.y = v1.y * r1.w;
  r5.xz = -r4.xy;
  r4.xy = t5.SampleBias(s3_s, r3.yz, cb0[143].y).xy;
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
  r4.zw = t5.SampleBias(s3_s, r3.xy, cb0[143].y).xy;
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
  r4.zw = t6.SampleBias(s4_s, r6.xz, cb0[143].y).xy;
  r4.zw = r4.zw * float2(2,2) + float2(-1,-1);
  r1.w = dot(r4.zw, r4.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r7.y = v1.y * r1.w;
  r7.xz = -r4.zw;
  r4.zw = t6.SampleBias(s4_s, r6.yz, cb0[143].y).xy;
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
  r8.xy = t6.SampleBias(s4_s, r6.xy, cb0[143].y).xy;
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
  r8.xy = t7.SampleBias(s5_s, v2.xy, cb0[143].y).xy;
  r1.w = saturate(cb1[14].w * r8.x);
  r3.w = saturate(cb1[15].x * r8.y);
  r7.xyz = r7.xyz + -r5.xyz;
  r5.xyz = r1.www * r7.xyz + r5.xyz;
  r1.xyz = r1.xyz / cb1[15].www;
  r7.xy = t8.SampleBias(s6_s, r1.xz, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r5.w = dot(r7.xy, r7.xy);
  r5.w = 1 + -r5.w;
  r5.w = max(0, r5.w);
  r5.w = sqrt(r5.w);
  r8.y = v1.y * r5.w;
  r8.xz = -r7.xy;
  r7.xy = t8.SampleBias(s6_s, r1.yz, cb0[143].y).xy;
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
  r7.zw = t8.SampleBias(s6_s, r1.xy, cb0[143].y).xy;
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
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = cb1[4].xyz + -cb1[3].xyz;
  r2.xyz = cb1[17].xxx * r2.xyz + cb1[3].xyz;
  r5.xyz = t9.Sample(s0_s, r3.xz).xyz;
  r8.xyz = t9.Sample(s0_s, r3.yz).xyz;
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r4.xxx * r8.xyz + r5.xyz;
  r8.xyz = t9.Sample(s0_s, r3.xy).xyz;
  r8.xyz = r8.xyz + -r5.xyz;
  r5.xyz = r4.yyy * r8.xyz + r5.xyz;
  r2.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r8.xyz = r2.www + -r5.xyz;
  r5.xyz = cb1[17].www * r8.xyz + r5.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r8.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb1[17].z, r9.x, r10.x);
  r8.xyz = r9.xxx * r8.xyz;
  r5.xyz = r5.xyz * r10.xxx + r8.xyz;
  r5.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb1[6].xyz * r5.xyz;
  r8.xyz = t10.Sample(s0_s, r6.xz).xyz;
  r9.xyz = t10.Sample(s0_s, r6.yz).xyz;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r4.zzz * r9.xyz + r8.xyz;
  r9.xyz = t10.Sample(s0_s, r6.xy).xyz;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r4.www * r9.xyz + r8.xyz;
  r2.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r2.www + -r8.xyz;
  r8.xyz = cb1[18].zzz * r9.xyz + r8.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb1[18].y, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = r8.xyz * cb1[8].xyz + -r5.xyz;
  r5.xyz = r1.www * r8.xyz + r5.xyz;
  r8.xyz = t11.Sample(s0_s, r1.xz).xyz;
  r9.xyz = t11.Sample(s0_s, r1.yz).xyz;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r7.xxx * r9.xyz + r8.xyz;
  r9.xyz = t11.Sample(s0_s, r1.xy).xyz;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r7.yyy * r9.xyz + r8.xyz;
  r2.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r9.xyz = r2.www + -r8.xyz;
  r8.xyz = cb1[19].yyy * r9.xyz + r8.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r8.xyz);
  r8.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r9.xyz = float3(0.577350259,0.577350259,0.577350259) * r8.zxy;
  r9.xyz = r8.zxy * float3(0.577350259,0.577350259,0.577350259) + -r9.zxy;
  sincos(cb1[19].x, r10.x, r11.x);
  r9.xyz = r10.xxx * r9.xyz;
  r8.xyz = r8.xyz * r11.xxx + r9.xyz;
  r8.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r8.xyz;
  r8.xyz = r8.xyz * cb1[10].xyz + -r5.xyz;
  r5.xyz = r3.www * r8.xyz + r5.xyz;
  r5.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r5.xyz);
  r7.zw = t12.Sample(s0_s, r3.xz).xy;
  r8.xy = t12.Sample(s0_s, r3.yz).xy;
  r8.xy = r8.xy + -r7.zw;
  r7.zw = r4.xx * r8.xy + r7.zw;
  r3.xy = t12.Sample(s0_s, r3.xy).xy;
  r3.xy = r3.xy + -r7.zw;
  r3.xy = r4.yy * r3.xy + r7.zw;
  r2.w = saturate(cb1[19].z + r3.x);
  r3.xz = t13.Sample(s0_s, r6.xz).xy;
  r4.xy = t13.Sample(s0_s, r6.yz).xy;
  r4.xy = r4.xy + -r3.xz;
  r3.xz = r4.zz * r4.xy + r3.xz;
  r4.xy = t13.Sample(s0_s, r6.xy).xy;
  r4.xy = r4.xy + -r3.xz;
  r3.xz = r4.ww * r4.xy + r3.xz;
  r3.x = saturate(cb1[19].w + r3.x);
  r3.x = r3.x + -r2.w;
  r2.w = r1.w * r3.x + r2.w;
  r4.xy = t14.Sample(s0_s, r1.xz).xy;
  r4.zw = t14.Sample(s0_s, r1.yz).xy;
  r4.zw = r4.zw + -r4.xy;
  r4.xy = r7.xx * r4.zw + r4.xy;
  r1.xy = t14.Sample(s0_s, r1.xy).xy;
  r1.xy = r1.xy + -r4.xy;
  r1.xy = r7.yy * r1.xy + r4.xy;
  r1.x = saturate(cb1[20].x + r1.x);
  r1.x = r1.x + -r2.w;
  r1.x = saturate(r3.w * r1.x + r2.w);
  r1.z = r3.z + -r3.y;
  r1.z = r1.w * r1.z + r3.y;
  r1.y = r1.y + -r1.z;
  r3.x = saturate(r3.w * r1.y + r1.z);
  r1.yzw = min(float3(1,1,1), r5.xyz);
  r3.y = saturate(cb1[20].y);
  o2.z = r1.x * cb0[139].y + cb0[139].x;
  r1.x = (int)w4.x * 15;
  r4.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(20,1,4,6));
  o1.w = t0[r4.x].val[4/4];
  r5.xyzw = t3.Sample(s1_s, v3.zw).xyzw;
  r6.x = t1[r4.y].val[0/4];
  r6.y = t1[r4.y].val[0/4+1];
  r6.z = t1[r4.y].val[0/4+2];
  r6.w = t1[r4.y].val[0/4+3];
  r7.xyzw = r6.xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r5.xyzw = saturate(r5.xyzw * r6.xyzw + r7.xyzw);
  r6.x = t1[r1.x].val[0/4];
  r6.y = t1[r1.x].val[0/4+1];
  r6.z = t1[r1.x].val[0/4+2];
  r6.w = t1[r1.x].val[0/4+3];
  r5.xyzw = r5.xyzw * r5.xyzw;
  o5.xyzw = r5.xyzw * r6.xyzw;
  r1.x = 0.0799999982 * r3.y;
  r5.xyz = -r3.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r1.yzw;
  r5.xyz = r3.xxx * r5.xyz + r1.xxx;
  r6.xyz = -r1.yzw * r3.xxx + r1.yzw;
  r6.xyz = r6.xyz * cb0[136].www + cb0[136].xyz;
  r5.xyz = r5.xyz * cb0[137].www + cb0[137].xyz;
  r1.x = cmp(0 != cb0[183].w);
  r7.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r6.xyz = r1.xxx ? r7.xyz : r6.xyz;
  r5.xyz = r1.xxx ? float3(0,0,0) : r5.xyz;
  r1.x = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = r1.x * 2.04040003 + -0.332399994;
  r2.w = r1.x * -4.79510021 + r2.w;
  r1.x = r1.x * 2.75519991 + r2.w;
  r1.x = 1.33200002 + r1.x;
  r1.x = max(1, r1.x);
  r3.zw = float2(1,0.5) * v3.xy;
  r4.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r7.xyzw = t2.Sample(s1_s, r3.zw).xyzw;
  r8.xyzw = t2.Sample(s1_s, r4.xy).xyzw;
  r2.w = r8.w * 0.00392156886 + r7.w;
  r2.w = -0.00196078443 + r2.w;
  r9.x = t1[r4.z].val[0/4];
  r9.y = t1[r4.z].val[0/4+1];
  r9.z = t1[r4.z].val[0/4+2];
  r9.w = t1[r4.z].val[0/4+3];
  r4.x = t1[r4.w].val[0/4];
  r4.y = t1[r4.w].val[0/4+1];
  r4.z = t1[r4.w].val[0/4+2];
  r4.w = t1[r4.w].val[0/4+3];
  r2.w = r2.w * r9.w + r4.w;
  r7.xyz = r7.xyz * r7.xyz;
  r4.xyz = r7.xyz * r9.xyz + r4.xyz;
  r2.w = exp2(r2.w);
  r2.w = -0.0185813606 + r2.w;
  r3.zw = mad((int2)w4.xy, int2(15,15), int2(5,7));
  r7.x = t1[r3.z].val[0/4];
  r7.y = t1[r3.z].val[0/4+1];
  r7.z = t1[r3.z].val[0/4+2];
  r7.w = t1[r3.z].val[0/4+3];
  r9.x = t1[r3.w].val[0/4];
  r9.y = t1[r3.w].val[0/4+1];
  r9.z = t1[r3.w].val[0/4+2];
  r9.w = t1[r3.w].val[0/4+3];
  r7.xyzw = r8.xyzw * r7.xyzw + r9.xyzw;
  r0.w = 1;
  r0.w = dot(r7.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r2.w * r0.w;
  r4.xyz = r0.www * r4.xyz;
  r4.xyz = cb0[157].xyz * r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r6.xyz;
  r7.xyz = r1.yzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r7.xyz = r1.yzw * float3(-4.79510021,-4.79510021,-4.79510021) + r7.xyz;
  r7.xyz = r1.yzw * float3(2.75519991,2.75519991,2.75519991) + r7.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r4.xyz = r7.xyz * r4.xyz;
  r5.xyz = r5.xyz * float3(0.449999988,0.449999988,0.449999988) + r6.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
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
    r2.xyz = r2.www ? r6.xyz : r2.xyz;
  }
  r4.xyz = cb0[145].yyy * r5.xyz + r4.xyz;
  r2.xyz = r4.xyz + r2.xyz;
  r4.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r4.xyz = frac(r4.xyz);
  r4.xyz = r4.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r4.xyz = r4.xyz * r4.xyy;
  r2.w = dot(r4.xyz, float3(20.390625,60.703125,2.42812085));
  r2.w = frac(r2.w);
  r2.w = -0.5 + r2.w;
  o1.xyz = r0.zxy * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.x = r0.w * r1.x;
  r0.x = r0.x * cb0[135].y + 0.00390625;
  r0.x = log2(r0.x);
  r0.x = r0.x * 0.0625 + 0.5;
  o3.w = r2.w * 0.00392156886 + r0.x;
  o0.xyz = cb0[135].yyy * r2.xyz;
  o0.w = 0;
  o2.w = 0.505882382;
  o2.xy = r3.xy;
  o3.xyz = r1.yzw;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = float4(0,0,0,0);
  return;
}