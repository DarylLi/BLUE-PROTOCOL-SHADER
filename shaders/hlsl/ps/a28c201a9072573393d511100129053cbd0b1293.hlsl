// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

struct t10_t {
  float val[4];
};
StructuredBuffer<t10_t> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[7];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[21];
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
  float4 v2 : TEXCOORD15,
  float4 v3 : COLOR1,
  float4 v4 : TEXCOORD0,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r1.xyz = -cb0[70].xyz + r1.xyz;
  r2.xyz = cb1[3].xyz + -cb0[67].xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r2.xyz = r2.xyz / r0.www;
  r3.x = dot(v0.xyz, r2.xyz);
  r3.y = dot(r0.xyz, r2.xyz);
  r3.z = dot(v1.xyz, r2.xyz);
  r2.xyzw = t11.SampleBias(s1_s, v4.xy, cb0[143].y).wxyz;
  r2.yzw = float3(-0.5,-0.5,-0.5) + r2.yzw;
  r2.yzw = r2.yzw + r2.yzw;
  r4.xyz = cb0[17].xyz + cb0[16].xyz;
  r5.x = dot(v0.xyz, r4.xyz);
  r5.y = dot(r0.xyz, r4.xyz);
  r4.xy = r5.xy * r2.yz;
  r4.z = 0;
  r2.yzw = -r3.xyz * r2.www + r4.xyz;
  r0.w = dot(r2.yzw, r2.yzw);
  r0.w = sqrt(r0.w);
  r2.yzw = r2.yzw / r0.www;
  r2.yzw = r2.yzw * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r2.yzw, r2.yzw);
  r0.w = rsqrt(r0.w);
  r2.yzw = r2.yzw * r0.www;
  r0.xyz = r2.zzz * r0.xyz;
  r0.xyz = r2.yyy * v0.xyz + r0.xyz;
  r0.xyz = r2.www * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r2.yzw = r0.xyz * r0.www;
  r3.xyz = cb2[6].xxx * cb2[1].xyz;
  r4.xyzw = t12.SampleBias(s2_s, v4.xy, cb0[143].y).xyzw;
  r5.xyz = t13.SampleBias(s3_s, v4.xy, cb0[143].y).xyz;
  r1.w = cmp(0.00100000005 < abs(v3.w));
  r6.xy = floor(v6.xy);
  r3.w = dot(r6.xy, float2(347.834503,3343.28369));
  r3.w = cos(r3.w);
  r3.w = 1000 * r3.w;
  r3.w = frac(r3.w);
  r5.w = cmp(v3.w < 0);
  r6.x = 1 + v3.w;
  r6.x = cmp(r3.w < r6.x);
  r3.w = cmp(v3.w < r3.w);
  r3.w = r5.w ? r6.x : r3.w;
  r3.w = cmp((int)r3.w == 0);
  r1.w = r1.w ? r3.w : 0;
  if (r1.w != 0) discard;
  r1.w = r4.w * v4.z + -0.100000001;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r4.xyz = saturate(r4.xyz);
  r2.x = saturate(r2.x);
  r1.w = r2.x * cb0[139].y + cb0[139].x;
  r5.xyz = saturate(r5.xyz);
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r1.xyz * cb0[211].xyz + cb0[212].xyz;
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r6.xyz = min(float3(0.99000001,0.99000001,0.99000001), r6.xyz);
  r6.xyz = cb0[213].xyz * r6.xyz;
  r7.xyz = (int3)r6.xyz;
  r7.w = 0;
  r7.xyzw = t0.Load(r7.xyzw).xyzw;
  r7.xyzw = (uint4)r7.xyzw;
  r2.x = 1 + cb0[213].w;
  r6.xyz = r6.xyz / r7.www;
  r6.xyz = frac(r6.xyz);
  r6.xyz = cb0[213].www * r6.xyz;
  r6.xyz = r7.xyz * r2.xxx + r6.xyz;
  r6.xyz = float3(0.5,0.5,0.5) + r6.xyz;
  r6.xyz = cb0[214].xyz * r6.xyz;
  r2.x = cmp(0 < cb1[20].z);
  if (r2.x != 0) {
    r2.x = t9.SampleLevel(s0_s, r6.xyz, 0).x;
  } else {
    r2.x = 1;
  }
  r7.xyz = saturate(r5.xyz);
  o4.xyz = sqrt(r7.xyz);
  r7.xyz = ddx_coarse(v2.xyz);
  r8.xyz = ddy_coarse(v2.xyz);
  r3.w = dot(r7.xyz, r7.xyz);
  r4.w = dot(r8.xyz, r8.xyz);
  r3.w = max(r4.w, r3.w);
  r3.w = log2(r3.w);
  r3.w = cb0[183].z * r3.w;
  r3.w = exp2(r3.w);
  r3.w = saturate(r3.w * cb0[183].x + cb0[183].y);
  o2.z = max(r3.w, r1.w);
  r7.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = cb0[137].www * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[137].xyz;
  r1.w = cmp(0 != cb0[183].w);
  r9.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r7.xyz = r1.www ? r9.xyz : r7.xyz;
  r8.xyz = r1.www ? float3(0,0,0) : r8.xyz;
  r1.w = dot(r8.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r1.w * 2.04040003 + -0.332399994;
  r3.w = r1.w * -4.79510021 + r3.w;
  r1.w = r1.w * 2.75519991 + r3.w;
  r1.w = 1.33200002 + r1.w;
  r1.w = max(1, r1.w);
  r9.xyz = t1.SampleLevel(s0_s, r6.xyz, 0).zxy;
  r10.xyzw = t2.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r10.xyzw = r10.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r11.xyzw = t4.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r11.xyzw = r11.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r12.xyzw = t6.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r12.xyzw = r12.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r10.xyzw = r10.xyzw * r9.yyyy;
  r10.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r10.wxyz;
  r11.xyzw = r11.xyzw * r9.zzzz;
  r11.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r11.wxyz;
  r12.xyzw = r12.xyzw * r9.xxxx;
  r12.xyzw = float4(3.87297893,1.73205125,1.73205125,1.73205125) * r12.wxyz;
  r13.xyzw = t3.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r13.xyzw = r13.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r14.xyzw = t5.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r14.xyzw = r14.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r15.xyzw = t7.SampleLevel(s0_s, r6.xyz, 0).xyzw;
  r15.xyzw = r15.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r13.xyzw = r13.xyzw * r9.yyyy;
  r13.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r13.xyzw;
  r14.xyzw = r14.xyzw * r9.zzzz;
  r14.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r14.xyzw;
  r15.xyzw = r15.xyzw * r9.xxxx;
  r15.xyzw = float4(3.87297893,4.47213888,3.87297893,3.87297893) * r15.xyzw;
  r16.xyz = r2.zwz * r2.zwy;
  r17.yw = r2.ww * r2.zy;
  r3.w = r2.y * r2.y + -r16.x;
  r18.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r2.zwy;
  r17.xz = r16.zy * float2(1,3) + float2(0,-1);
  r16.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r17.xyzw;
  r4.w = 0.429042608 * r3.w;
  r17.x = r9.y;
  r17.yzw = r10.yzw;
  r18.x = 0.886227548;
  r5.w = dot(r17.xyzw, r18.xyzw);
  r10.yzw = r13.xyz;
  r6.w = dot(r10.xyzw, r16.xyzw);
  r5.w = r6.w + r5.w;
  r10.x = r13.w * r4.w + r5.w;
  r19.x = r9.z;
  r19.yzw = r11.yzw;
  r5.w = dot(r19.xyzw, r18.xyzw);
  r11.yzw = r14.xyz;
  r7.w = dot(r11.xyzw, r16.xyzw);
  r5.w = r7.w + r5.w;
  r10.y = r14.w * r4.w + r5.w;
  r9.yzw = r12.yzw;
  r5.w = dot(r9.xyzw, r18.xyzw);
  r12.yzw = r15.xyz;
  r8.w = dot(r12.xyzw, r16.xyzw);
  r5.w = r8.w + r5.w;
  r10.z = r15.w * r4.w + r5.w;
  r10.xyz = max(float3(0,0,0), r10.xyz);
  r10.xyz = cb0[157].xyz * r10.xyz;
  r11.xyz = -r2.yzw;
  r12.yzw = float3(1.02332771,-1.02332771,1.02332771) * r2.zwy;
  r12.x = 0.886227548;
  r5.w = dot(r17.xyzw, r12.xyzw);
  r5.w = r5.w + r6.w;
  r13.x = r13.w * r4.w + r5.w;
  r5.w = dot(r19.xyzw, r12.xyzw);
  r5.w = r5.w + r7.w;
  r13.y = r14.w * r4.w + r5.w;
  r5.w = dot(r9.xyzw, r12.xyzw);
  r5.w = r5.w + r8.w;
  r13.z = r15.w * r4.w + r5.w;
  r9.xyz = max(float3(0,0,0), r13.xyz);
  r9.xyz = cb0[157].xyz * r9.xyz;
  r4.w = cmp(cb0[186].y != 0.000000);
  if (r4.w != 0) {
    r6.xyz = t8.SampleLevel(s0_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = sqrt(r4.w);
    r5.w = max(9.99999975e-005, r4.w);
    r6.xyz = r6.xyz / r5.www;
    r5.w = 1 + -r4.w;
    r5.w = -r5.w * r5.w + 1;
    r0.xyz = r0.xyz * r0.www + -r6.xyz;
    r0.xyz = r5.www * r0.xyz + r6.xyz;
    r6.x = saturate(dot(r6.xyz, r2.yzw));
    r6.y = 1 + -r6.x;
    r5.w = r5.w * r6.y + r6.x;
  } else {
    r0.xyz = r2.yzw;
    r4.w = 1;
    r5.w = 1;
  }
  r6.x = t10[0].val[0/4];
  r6.y = t10[0].val[0/4+1];
  r6.z = t10[0].val[0/4+2];
  r6.w = t10[0].val[0/4+3];
  r0.w = 1;
  r12.x = dot(r6.xyzw, r0.xyzw);
  r13.x = t10[1].val[0/4];
  r13.y = t10[1].val[0/4+1];
  r13.z = t10[1].val[0/4+2];
  r13.w = t10[1].val[0/4+3];
  r12.y = dot(r13.xyzw, r0.xyzw);
  r14.x = t10[2].val[0/4];
  r14.y = t10[2].val[0/4+1];
  r14.z = t10[2].val[0/4+2];
  r14.w = t10[2].val[0/4+3];
  r12.z = dot(r14.xyzw, r0.xyzw);
  r15.xyzw = r0.xyzz * r0.yzzx;
  r16.x = t10[3].val[0/4];
  r16.y = t10[3].val[0/4+1];
  r16.z = t10[3].val[0/4+2];
  r16.w = t10[3].val[0/4+3];
  r17.x = dot(r16.xyzw, r15.xyzw);
  r18.x = t10[4].val[0/4];
  r18.y = t10[4].val[0/4+1];
  r18.z = t10[4].val[0/4+2];
  r18.w = t10[4].val[0/4+3];
  r17.y = dot(r18.xyzw, r15.xyzw);
  r19.x = t10[5].val[0/4];
  r19.y = t10[5].val[0/4+1];
  r19.z = t10[5].val[0/4+2];
  r19.w = t10[5].val[0/4+3];
  r17.z = dot(r19.xyzw, r15.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t10[6].val[0/4];
  r0.z = t10[6].val[0/4+1];
  r0.w = t10[6].val[0/4+2];
  r12.xyz = r17.xyz + r12.xyz;
  r12.xyz = r0.yzw * r0.xxx + r12.xyz;
  r12.xyz = max(float3(0,0,0), r12.xyz);
  r12.xyz = cb0[187].xyz * r12.xyz;
  r0.x = r5.w * r4.w;
  r12.xyz = r12.xyz * r0.xxx;
  r11.w = 1;
  r6.x = dot(r6.xyzw, r11.xyzw);
  r6.y = dot(r13.xyzw, r11.xyzw);
  r6.z = dot(r14.xyzw, r11.xyzw);
  r11.xyzw = r2.yzww * r2.zwwy;
  r13.x = dot(r16.xyzw, r11.xyzw);
  r13.y = dot(r18.xyzw, r11.xyzw);
  r13.z = dot(r19.xyzw, r11.xyzw);
  r6.xyz = r13.xyz + r6.xyz;
  r0.xyz = r0.yzw * r3.www + r6.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.xyz = r0.xyz * r4.www;
  r0.xyz = r9.xyz * float3(0.318309873,0.318309873,0.318309873) + r0.xyz;
  r6.xyz = r10.xyz * float3(0.318309873,0.318309873,0.318309873) + r12.xyz;
  r0.w = dot(r6.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r5.xyz;
  r0.xyz = r6.xyz * r7.xyz + r0.xyz;
  r5.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r5.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r5.xyz;
  r5.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r5.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r0.xyz = r5.xyz * r0.xyz;
  r5.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.w = cmp(0 < cb0[140].x);
  if (r3.w != 0) {
    r6.xyz = -cb1[5].xyz + r1.xyz;
    r7.xyz = float3(1,1,1) + cb1[19].xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xyz));
    r3.w = (int)r6.y | (int)r6.x;
    r3.w = (int)r6.z | (int)r3.w;
    r1.x = dot(r1.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.x = 0.00200000009 * r1.x;
    r1.x = frac(r1.x);
    r1.x = cmp(0.5 < r1.x);
    r1.xyz = r1.xxx ? float3(0,1,1) : float3(1,1,0);
    r3.xyz = r3.www ? r1.xyz : r3.xyz;
  }
  r0.xyz = cb0[145].yyy * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r3.xyz;
  r1.xyz = float3(0.0078125,0.0078125,0.0078125) * v6.xyx;
  r1.xyz = frac(r1.xyz);
  r1.xyz = r1.xyz * float3(128,128,128) + float3(-64.3406219,-72.4656219,-64.3406219);
  r1.xyz = r1.xyz * r1.xyy;
  r1.x = dot(r1.xyz, float3(20.390625,60.703125,2.42812085));
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  o1.xyz = r2.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r0.w = r0.w * r1.w;
  r0.w = r0.w * cb0[135].y + 0.00390625;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0625 + 0.5;
  o3.w = r1.x * 0.00392156886 + r0.w;
  o0.xyz = cb0[135].yyy * r0.xyz;
  o0.w = 0;
  o1.w = cb1[20].y;
  o2.xyw = float3(0,0.5,0.525490224);
  o3.xyz = r4.xyz;
  o4.w = 1;
  o5.x = r2.x;
  o5.yzw = float3(1,1,1);
  o6.xyzw = float4(0,0,0,0);
  return;
}