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

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[27];
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
  float4 v2 : COLOR0,
  float4 v3 : TEXCOORD0,
  float3 v4 : TEXCOORD9,
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
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r3.xyz = -cb0[70].xyz + v4.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = -r1.xyz * r0.www;
  r4.xy = cb3[12].xx * v3.xy;
  r0.w = cb3[12].z + cb0[143].y;
  r4.zw = t6.SampleBias(s3_s, r4.xy, r0.w).xy;
  r5.xy = r4.zw + r4.zw;
  r6.xy = r4.zw * float2(2,2) + float2(-1,-1);
  r0.w = dot(r6.xy, r6.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r6.z = sqrt(r0.w);
  r7.xyz = float3(0,0,1) + -r6.xyz;
  r6.xyw = cb3[12].www * r7.xyz + r6.xyz;
  r4.zw = r3.xy / cb3[13].zz;
  r7.xy = t7.SampleBias(s4_s, r4.zw, cb0[143].y).xy;
  r7.xy = r7.xy * float2(2,2) + float2(-1,-1);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r7.xy = -r7.xy;
  r7.z = v1.z * r0.w;
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = sqrt(r0.w);
  r7.xyz = r7.xyz / r0.www;
  r8.x = dot(v0.xyz, r7.xyz);
  r8.y = dot(r0.xyz, r7.xyz);
  r8.z = dot(v1.xyz, r7.xyz);
  r7.xyz = float3(0,0,1) + -r8.xyz;
  r7.xyz = cb3[13].www * r7.xyz + r8.xyz;
  r7.xyz = cb3[14].yyy * r6.xyw + r7.xyz;
  r8.xy = cmp(float2(0,0) >= v2.yz);
  r8.zw = log2(v2.yz);
  r8.zw = cb3[14].zz * r8.zw;
  r8.zw = exp2(r8.zw);
  r8.xy = r8.xy ? float2(0,0) : r8.zw;
  r3.xyz = r3.xyz / cb3[15].yyy;
  r0.w = t8.Sample(s0_s, r3.xz).x;
  r1.w = t8.Sample(s0_s, r3.yz).x;
  r3.zw = saturate(abs(v1.xz) * float2(3,3) + float2(-1,-1));
  r1.w = r1.w + -r0.w;
  r0.w = r3.z * r1.w + r0.w;
  r1.w = t8.Sample(s0_s, r3.xy).x;
  r1.w = r1.w + -r0.w;
  r0.w = r3.w * r1.w + r0.w;
  r1.w = cmp(0 >= abs(r0.w));
  r0.w = log2(abs(r0.w));
  r0.w = cb3[15].z * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w ? 0 : r0.w;
  r3.xy = r0.ww * r8.xy + r8.xy;
  r3.zw = cmp(float2(0,0) >= r3.xy);
  r3.xy = log2(r3.xy);
  r3.xy = cb3[15].ww * r3.xy;
  r3.xy = exp2(r3.xy);
  r3.xy = r3.zw ? float2(0,0) : r3.xy;
  r3.xy = r3.xy + -r8.xy;
  r5.z = r6.z;
  r5.xyz = float3(-1,-1,1) + r5.xyz;
  r9.xyz = r5.yyy * r0.xyz;
  r5.xyw = r5.xxx * v0.xyz + r9.xyz;
  r5.xyz = r5.zzz * v1.xyz + r5.xyw;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r1.w);
  r5.xyz = r5.xyz / r1.www;
  r1.w = dot(r5.xyz, cb3[3].xyz);
  r1.w = r1.w * 0.5 + 0.5;
  r1.w = r1.w * r0.w + -r0.w;
  r0.w = cb3[17].w * r1.w + r0.w;
  r0.w = saturate(r0.w * cb3[18].x + cb3[18].w);
  r3.xy = cb3[16].xx * r3.xy + r8.xy;
  r0.w = saturate(-r3.y + r0.w);
  r0.w = saturate(r3.x + r0.w);
  r3.xyzw = t9.SampleBias(s5_s, r4.xy, cb0[143].y).xyzw;
  r1.w = r3.w * -2 + 1;
  r1.w = cb3[19].x * r1.w + r3.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[19].y * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb3[19].z * r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r0.w = max(r1.w, r0.w);
  r1.w = cb3[19].w + -r3.z;
  r1.w = 1 + r1.w;
  r2.w = cmp(0 >= r1.w);
  r1.w = log2(r1.w);
  r1.w = cb3[20].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.w = r2.w ? 0 : r1.w;
  r2.w = r1.w * -2 + 1;
  r1.w = cb3[20].y * r2.w + r1.w;
  r0.w = r1.w * r0.w;
  r5.xyz = r7.xyz + -r6.xyw;
  r5.xyz = r0.www * r5.xyz + r6.xyw;
  r5.xyz = r5.xyz * cb0[138].www + cb0[138].xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r5.xyz * r1.www;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * v0.xyz + r0.xyz;
  r0.xyz = r5.zzz * v1.xyz + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r5.yzw = r1.www * r0.xyz;
  r6.xyz = cb3[20].zzz * cb3[4].xyz;
  r7.xyz = t10.SampleBias(s6_s, r4.xy, cb0[143].y).xyz;
  r2.w = -1 + r3.z;
  r2.w = cb3[21].y * r2.w + 1;
  r8.xyz = r7.xyz * r2.www;
  r3.z = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r7.xyz = -r7.xyz * r2.www + r3.zzz;
  r7.xyz = cb3[21].zzz * r7.xyz + r8.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r7.xyz);
  r7.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = float3(0.577350259,0.577350259,0.577350259) * r7.zxy;
  r8.xyz = r7.zxy * float3(0.577350259,0.577350259,0.577350259) + -r8.zxy;
  sincos(cb3[21].x, r4.x, r9.x);
  r8.xyz = r8.xyz * r4.xxx;
  r7.xyz = r7.xyz * r9.xxx + r8.xyz;
  r7.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r7.xyz;
  r8.xyz = cb3[6].xyz * r7.xyz;
  r9.xyz = t11.Sample(s0_s, r4.zw).xyz;
  r2.w = dot(r9.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r2.www + -r9.xyz;
  r9.xyz = cb3[22].yyy * r10.xyz + r9.xyz;
  r2.w = dot(float3(0.577350259,0.577350259,0.577350259), r9.xyz);
  r9.xyz = -r2.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = float3(0.577350259,0.577350259,0.577350259) * r9.zxy;
  r10.xyz = r9.zxy * float3(0.577350259,0.577350259,0.577350259) + -r10.zxy;
  sincos(cb3[22].x, r4.x, r11.x);
  r10.xyz = r10.xyz * r4.xxx;
  r9.xyz = r9.xyz * r11.xxx + r10.xyz;
  r9.xyz = r2.www * float3(0.577350259,0.577350259,0.577350259) + r9.xyz;
  r10.xyz = cb3[8].xyz * r9.xyz;
  r2.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r2.w = saturate(cb3[22].z * r2.w);
  r3.z = 1 + -r2.w;
  r3.z = r3.z + r3.z;
  r11.xyz = -r3.zzz * cb3[11].xyz + float3(1,1,1);
  r3.z = r2.w + r2.w;
  r12.xyz = cb3[10].xyz * r3.zzz;
  r2.w = cmp(r2.w >= 0.5);
  r11.xyz = r2.www ? r11.xyz : r12.xyz;
  r12.xyz = cb3[10].xyz + -r11.xyz;
  r11.xyz = cb3[22].www * r12.xyz + r11.xyz;
  r12.xyz = -cb0[67].xyz + r2.xyz;
  r2.w = dot(r12.xyz, r12.xyz);
  r2.w = sqrt(r2.w);
  r2.w = r2.w / cb3[23].x;
  r3.z = cmp(0 >= r2.w);
  r2.w = log2(r2.w);
  r2.w = cb3[23].y * r2.w;
  r2.w = exp2(r2.w);
  r2.w = min(1, r2.w);
  r2.w = r3.z ? 0 : r2.w;
  r9.xyz = -r9.xyz * cb3[8].xyz + r11.xyz;
  r9.xyz = r9.xyz * r2.www;
  r9.xyz = cb3[23].zzz * r9.xyz + r10.xyz;
  r7.xyz = -r7.xyz * cb3[6].xyz + r9.xyz;
  r7.xyz = r0.www * r7.xyz + r8.xyz;
  r7.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r7.xyz);
  r2.w = cmp(0 >= r3.x);
  r3.x = log2(r3.x);
  r3.x = cb3[23].w * r3.x;
  r3.x = exp2(r3.x);
  r2.w = r2.w ? 0 : r3.x;
  r4.y = saturate(cb3[24].x + r2.w);
  r4.x = cb3[24].y + r3.y;
  r3.xy = t12.Sample(s0_s, r4.zw).xy;
  r3.yz = cb3[24].zw + r3.xy;
  r3.x = saturate(r3.y);
  r3.xy = r3.zx + -r4.xy;
  r3.xy = saturate(r0.ww * r3.xy + r4.xy);
  r0.w = dot(r5.yzw, r1.xyz);
  r0.w = max(0, r0.w);
  r0.w = 1 + -r0.w;
  r0.w = max(9.99999975e-005, abs(r0.w));
  r0.w = log2(r0.w);
  r0.w = cb3[25].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * 0.959999979 + 0.0399999991;
  r0.w = cb3[25].y * r0.w;
  r1.x = saturate(cb3[25].w + v1.z);
  r0.w = r1.x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = min(0.5, r0.w);
  r0.w = saturate(cb3[26].x * r0.w);
  r1.xyz = min(float3(1,1,1), r7.xyz);
  o2.z = r3.y * cb0[139].y + cb0[139].x;
  r2.w = cmp(0 < cb0[215].x);
  r3.y = cmp(0 < cb1[20].z);
  if (r3.y != 0) {
    r3.yzw = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r3.yzw = max(float3(0,0,0), r3.yzw);
    r3.yzw = min(float3(0.99000001,0.99000001,0.99000001), r3.yzw);
    r3.yzw = cb0[213].xyz * r3.yzw;
    r4.xyz = (int3)r3.yzw;
    r4.w = 0;
    r4.xyzw = t0.Load(r4.xyzw).xyzw;
    r4.xyzw = (uint4)r4.xyzw;
    r6.w = 1 + cb0[213].w;
    r3.yzw = r3.yzw / r4.www;
    r3.yzw = frac(r3.yzw);
    r3.yzw = cb0[213].www * r3.yzw;
    r3.yzw = r4.xyz * r6.www + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) + r3.yzw;
    r3.yzw = cb0[214].xyz * r3.yzw;
    r3.y = t1.SampleLevel(s1_s, r3.yzw, 0).x;
  } else {
    r3.z = cmp(0 < cb1[18].w);
    r3.z = r2.w ? r3.z : 0;
    r3.y = r3.z ? cb2[5].x : 1;
  }
  r3.z = 0.0799999982 * r0.w;
  r4.xyz = -r0.www * float3(0.0799999982,0.0799999982,0.0799999982) + r1.xyz;
  r4.xyz = r3.xxx * r4.xyz + r3.zzz;
  r7.xyz = -r1.xyz * r3.xxx + r1.xyz;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r4.xyz = r4.xyz * cb0[137].www + cb0[137].xyz;
  r3.z = cmp(0 != cb0[183].w);
  r8.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r3.zzz ? r8.xyz : r7.xyz;
  r4.xyz = r3.zzz ? float3(0,0,0) : r4.xyz;
  r3.z = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r3.z * 2.04040003 + -0.332399994;
  r3.w = r3.z * -4.79510021 + r3.w;
  r3.z = r3.z * 2.75519991 + r3.w;
  r3.z = 1.33200002 + r3.z;
  r3.z = max(1, r3.z);
  if (r2.w != 0) {
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
    r9.xyzw = r2.wwww ? cb2[4].wxyz : r5.xyzw;
    r2.w = 1 + -r9.x;
    r2.w = -r2.w * r2.w + 1;
    r0.xyz = r0.xyz * r1.www + -r9.yzw;
    r10.xyz = r2.www * r0.xyz + r9.yzw;
    r0.x = saturate(dot(r9.yzw, r5.yzw));
    r0.y = 1 + -r0.x;
    r9.y = r2.w * r0.y + r0.x;
  } else {
    r10.xyz = r5.yzw;
    r9.xy = float2(1,1);
  }
  r11.x = t2[0].val[0/4];
  r11.y = t2[0].val[0/4+1];
  r11.z = t2[0].val[0/4+2];
  r11.w = t2[0].val[0/4+3];
  r10.w = 1;
  r0.x = dot(r11.xyzw, r10.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r0.y = dot(r11.xyzw, r10.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r0.z = dot(r11.xyzw, r10.xyzw);
  r11.xyzw = r10.xyzz * r10.yzzx;
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
  r1.w = r10.y * r10.y;
  r1.w = r10.x * r10.x + -r1.w;
  r10.x = t2[6].val[0/4];
  r10.y = t2[6].val[0/4+1];
  r10.z = t2[6].val[0/4+2];
  r0.xyz = r12.xyz + r0.xyz;
  r0.xyz = r10.xyz * r1.www + r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r1.w = r9.x * r9.y;
  r0.xyz = r1.www * r0.xyz;
  r0.xyz = r8.xyz * cb0[157].xyz + r0.xyz;
  r1.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r7.xyz;
  r8.xyz = r1.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r8.xyz = r1.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r8.xyz;
  r8.xyz = r1.xyz * float3(2.75519991,2.75519991,2.75519991) + r8.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r0.xyz = r8.xyz * r0.xyz;
  r4.xyz = r4.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r2.w = cmp(0 < cb0[140].x);
  if (r2.w != 0) {
    r7.xyz = -cb1[5].xyz + r2.xyz;
    r8.xyz = float3(1,1,1) + cb1[19].xyz;
    r7.xyz = cmp(r8.xyz < abs(r7.xyz));
    r2.w = (int)r7.y | (int)r7.x;
    r2.w = (int)r7.z | (int)r2.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.xyz = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r6.xyz = r2.www ? r2.xyz : r6.xyz;
  }
  r0.xyz = cb0[145].yyy * r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r6.xyz;
  r2.xyz = float3(0.0078125,0.0078125,0.0078125) * v5.xyx;
  r2.xyz = frac(r2.xyz);
  r2.xyz = r2.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r2.xyz = r2.xyz * r2.xyy;
  r2.x = dot(r2.xyz, float3(20.390625,60.703125,2.42812085));
  r2.x = frac(r2.x);
  r2.x = -0.5 + r2.x;
  o1.xyz = r5.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r1.w = r1.w * r3.z;
  r1.w = r1.w * cb0[135].y + 0.00390625;
  r1.w = log2(r1.w);
  r1.w = r1.w * 0.0625 + 0.5;
  o3.w = r2.x * 0.00392156886 + r1.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.x = r3.x;
  o2.w = 0.505882382;
  o2.y = r0.w;
  o3.xyz = r1.xyz;
  o4.xyzw = float4(0,0,0,0);
  o5.x = r3.y;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}