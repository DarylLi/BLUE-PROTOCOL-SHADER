// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture3D<float4> t14 : register(t14);

TextureCube<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

TextureCubeArray<float4> t11 : register(t11);

TextureCube<float4> t10 : register(t10);

Buffer<uint4> t9 : register(t9);

Buffer<uint4> t8 : register(t8);

Buffer<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

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

SamplerState s13_s : register(s13);

SamplerState s12_s : register(s12);

SamplerState s11_s : register(s11);

SamplerState s10_s : register(s10);

SamplerState s9_s : register(s9);

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
  float4 cb5[77];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[8];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[2728];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[179];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[359];
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
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
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
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r4.xyz = mad((int3)v3.xxx, int3(36,36,36), int3(4,20,23));
  r0.w = t2[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r3.w = v5.x ? 1 : -1;
  r0.w = r3.w * r0.w;
  r3.w = cb5[42].x * v2.y + cb5[42].y;
  r4.x = -cb5[42].z * r3.w + 1;
  r4.w = -cb5[42].w + r2.z;
  r4.w = abs(r4.w) / cb5[43].x;
  r4.w = -r4.w * cb5[43].y + 1;
  r5.y = -r4.x * r4.w + 1;
  r5.x = v2.x;
  r4.xw = r5.xy * cb5[2].xy + float2(0.200000003,0.200000003);
  r5.z = cb3[2].x * cb0[142].z;
  r5.z = cb5[44].x * r5.z;
  r5.zw = cb5[3].xy * r5.zz;
  r4.xw = r5.zw * float2(0.699999988,0.699999988) + r4.xw;
  r6.y = t17.SampleBias(s9_s, r4.xw, cb0[143].y).x;
  r6.xw = float2(0,1);
  r6.xy = cb5[45].xx * r6.xy;
  r7.x = frac(cb0[142].z);
  r7.yz = r6.xy * r7.xx + r4.xw;
  r7.yzw = t17.SampleBias(s9_s, r7.yz, cb0[143].y).xyz;
  r8.x = 0.5 + cb0[142].z;
  r8.x = frac(r8.x);
  r4.xw = r6.xy * r8.xx + r4.xw;
  r8.yzw = t17.SampleBias(s9_s, r4.xw, cb0[143].y).xyz;
  r4.x = r8.x + r8.x;
  r4.w = max(1, r4.x);
  r4.w = -1 + r4.w;
  r4.w = r4.w + r4.w;
  r4.xw = min(float2(1,1), r4.xw);
  r4.w = 1 + -r4.w;
  r4.x = r4.x + r4.x;
  r4.x = min(1, r4.x);
  r4.x = r4.w * r4.x;
  r8.yzw = r8.yzw + -r7.yzw;
  r7.yzw = r4.xxx * r8.yzw + r7.yzw;
  r8.yzw = r7.yzw + r7.yzw;
  r9.xyz = -r7.yzw * float3(2,2,2) + float3(0,0,1);
  r10.xyz = cb5[45].yyy * r9.xyz + r8.yzw;
  r4.w = 1 + r10.z;
  r5.xy = r5.xy * cb5[1].xy + r5.zw;
  r5.zw = r6.xy * r7.xx + r5.xy;
  r7.xyw = t17.SampleBias(s9_s, r5.zw, cb0[143].y).xyz;
  r5.xy = r6.xy * r8.xx + r5.xy;
  r5.xyz = t17.SampleBias(s9_s, r5.xy, cb0[143].y).xyz;
  r5.xyz = r5.xyz + -r7.xyw;
  r5.xyz = r4.xxx * r5.xyz + r7.xyw;
  r7.xyw = r5.xyz + r5.xyz;
  r5.yzw = -r5.xyz * float3(2,2,2) + float3(0,0,1);
  r11.xyz = cb5[45].zzz * r5.yzw + r7.xyw;
  r10.w = 1 + r10.z;
  r11.xyz = float3(-1,-1,1) * r11.xyz;
  r4.x = dot(r10.xyw, r11.xyz);
  r11.xyz = r11.xyz * r4.www;
  r10.xyz = r10.xyw * r4.xxx + -r11.xyz;
  r11.xyz = float3(0,0,1) + -r10.xyz;
  r10.xyz = cb5[45].www * r11.xyz + r10.xyz;
  r4.x = cb5[6].y + v2.y;
  r4.x = r4.x * cb5[47].w + -cb5[47].w;
  r4.x = saturate(cb5[48].z + r4.x);
  r4.w = cb5[49].y * r4.x;
  r4.x = -cb5[49].y * r4.x + 1;
  r4.x = cb5[49].w * r4.x + r4.w;
  r10.xyz = float3(-1,-1,-1) + r10.xyz;
  r10.xyz = r4.xxx * r10.xyz + float3(1,1,1);
  r10.xyz = r10.xyz * cb0[138].www + cb0[138].xyz;
  r4.w = dot(r10.xyz, r10.xyz);
  r4.w = rsqrt(r4.w);
  r10.xyz = r10.xyz * r4.www;
  r0.xyz = r10.yyy * r0.xyz;
  r0.xyz = r10.xxx * v0.xyz + r0.xyz;
  r0.xyz = r10.zzz * v1.xyz + r0.xyz;
  r4.w = dot(r0.xyz, r0.xyz);
  r4.w = rsqrt(r4.w);
  r0.xyz = r4.www * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.w = cb0[142].z * cb5[51].x + v2.x;
  r6.x = cb5[52].y * r4.w;
  r4.w = cb0[142].z * cb5[52].z + v2.y;
  r6.y = cb5[52].w * r4.w;
  r4.w = cb0[142].z * cb5[54].x + v2.x;
  r10.x = cb5[55].y * r4.w;
  r4.w = cb0[142].z * cb5[55].z + v2.y;
  r10.y = cb5[55].w * r4.w;
  r4.w = t18.SampleBias(s10_s, r10.xy, cb0[143].y).z;
  r4.w = -0.5 + r4.w;
  r4.w = r4.w + r4.w;
  r6.xy = r4.ww * cb5[56].yy + r6.xy;
  r6.x = t19.SampleBias(s11_s, r6.xy, cb0[143].y).x;
  r6.y = cmp(0 >= r6.x);
  r6.x = log2(r6.x);
  r6.x = cb5[56].z * r6.x;
  r6.x = exp2(r6.x);
  r10.xyz = cb5[14].xyz * r6.xxx;
  r10.xyz = r6.yyy ? float3(0,0,0) : r10.xyz;
  r11.xyz = cb4[6].xyz * cb5[58].yyy + cb5[18].xyz;
  r6.x = dot(cb4[7].xyz, r0.xyz);
  r6.y = saturate(r6.x);
  r6.y = 1 + -r6.y;
  r8.x = cb0[142].z * cb5[59].z + v2.x;
  r12.x = cb5[60].w * r8.x;
  r8.x = cb0[142].z * cb5[61].x + v2.y;
  r12.y = cb5[61].y * r8.x;
  r8.x = cb0[142].z * cb5[62].z + v2.x;
  r13.x = cb5[63].w * r8.x;
  r8.x = cb0[142].z * cb5[64].x + v2.y;
  r13.y = cb5[64].y * r8.x;
  r12.zw = t18.SampleBias(s10_s, r13.xy, cb0[143].y).xy;
  r12.zw = float2(-0.5,-0.5) + r12.zw;
  r12.zw = cb5[64].ww * r12.zw;
  r12.xy = r12.zw * float2(2,2) + r12.xy;
  r8.x = t20.SampleBias(s12_s, r12.xy, cb0[143].y).x;
  r12.xyz = -cb5[28].xyz + cb5[27].xyz;
  r12.xyz = r8.xxx * r12.xyz + cb5[28].xyz;
  r13.xyz = cb5[30].xyz * r12.xyz;
  r12.xyz = r12.xyz * cb5[32].xyz + -r13.xyz;
  r12.xyz = r4.xxx * r12.xyz + r13.xyz;
  r13.xyz = -r12.xyz * cb5[65].xxx + r12.xyz;
  r13.xyz = cb4[6].xyz * r13.xyz;
  r13.xyz = r13.xyz * r6.xxx;
  r8.xyz = cb5[65].yyy * r9.xyz + r8.yzw;
  r6.x = 1 + r8.z;
  r5.yzw = cb5[65].zzz * r5.yzw + r7.xyw;
  r8.w = 1 + r8.z;
  r5.yzw = float3(-1,-1,1) * r5.yzw;
  r7.x = dot(r8.xyw, r5.yzw);
  r5.yzw = r6.xxx * r5.yzw;
  r5.yzw = r8.xyw * r7.xxx + -r5.yzw;
  r6.x = dot(r5.yzw, r5.yzw);
  r6.x = sqrt(r6.x);
  r5.yzw = r5.yzw / r6.xxx;
  r6.x = saturate(dot(r5.yzw, cb4[7].xyz));
  r7.xyw = cb0[67].xyz + -r2.xyz;
  r8.x = dot(r7.xyw, r7.xyw);
  r8.x = sqrt(r8.x);
  r7.xyw = r7.xyw / r8.xxx;
  r7.xyw = cb4[7].xyz + r7.xyw;
  r8.x = dot(r7.xyw, r7.xyw);
  r8.x = sqrt(r8.x);
  r7.xyw = r7.xyw / r8.xxx;
  r5.y = saturate(dot(r7.xyw, r5.yzw));
  r5.z = 11 * cb5[66].x;
  r5.z = exp2(r5.z);
  r5.w = cmp(0 >= r5.y);
  r5.y = log2(r5.y);
  r5.y = r5.z * r5.y;
  r5.y = exp2(r5.y);
  r5.y = r6.x * r5.y;
  r5.y = cb5[66].y * r5.y;
  r7.xyw = cb4[5].xyz * r5.yyy;
  r5.yzw = r5.www ? float3(0,0,0) : r7.xyw;
  r5.yzw = r13.xyz * float3(0.318309844,0.318309844,0.318309844) + r5.yzw;
  r5.yzw = r11.xyz * r6.yyy + r5.yzw;
  r5.yzw = r10.xyz * r5.yzw;
  r7.xyw = cb5[32].xyz + -cb5[30].xyz;
  r7.xyw = r4.xxx * r7.xyw + cb5[30].xyz;
  r8.xyz = r7.xyw * r5.yzw;
  r5.yzw = -r5.yzw * r7.xyw + cb5[33].xyz;
  r5.yzw = cb5[66].zzz * r5.yzw + r8.xyz;
  r7.xyw = saturate(cb5[35].xyz * r12.xyz);
  r4.x = saturate(cb5[67].w * r3.w);
  r3.w = 1 + -r3.w;
  r3.w = saturate(cb5[68].z * r3.w);
  r3.w = r4.x * r3.w;
  r4.x = r5.x + -r7.z;
  r4.x = r4.x * cb5[46].y + v2.x;
  r4.x = r4.x * 2 + -1;
  r4.x = 1 + -abs(r4.x);
  r4.x = r4.x * cb5[69].x + -cb5[69].x;
  r4.x = saturate(cb5[69].z + r4.x);
  r4.x = cb5[69].w * r4.x;
  r5.x = cb0[142].z * cb5[71].x + v2.x;
  r6.x = cb5[72].y * r5.x;
  r5.x = cb0[142].z * cb5[72].z + v2.y;
  r6.y = cb5[72].w * r5.x;
  r6.xy = r4.ww * cb5[73].yy + r6.xy;
  r5.x = t21.SampleBias(s13_s, r6.xy, cb0[143].y).x;
  r6.x = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = cb5[73].z * r5.x;
  r5.x = exp2(r5.x);
  r5.x = r6.x ? 0 : r5.x;
  r6.x = cb0[142].z * cb5[74].w + v2.x;
  r6.x = cb5[76].x * r6.x;
  r7.z = cb0[142].z * cb5[76].y + v2.y;
  r6.y = cb5[76].z * r7.z;
  r6.xy = r4.ww * cb5[56].yy + r6.xy;
  r4.w = t17.SampleBias(s9_s, r6.xy, cb0[143].y).x;
  r6.x = -0.100000001 + v2.x;
  r6.y = 0.899999976 + -v2.x;
  r6.x = min(r6.x, r6.y);
  r4.w = r6.x * 5 + r4.w;
  r4.w = r5.x * r4.w;
  r4.w = r4.w * cb5[69].x + -cb5[69].x;
  r4.w = saturate(cb5[69].z + r4.w);
  r4.x = r4.x * r4.w;
  r8.w = saturate(r4.x * r3.w);
  r3.w = saturate(cb5[65].x);
  r4.x = saturate(cb5[66].w);
  r4.w = saturate(cb5[67].x);
  r4.w = r4.w * cb0[139].y + cb0[139].x;
  r4.y = t2[r4.y].val[8/4];
  r4.y = cmp(0 < r4.y);
  if (r4.y != 0) {
    r9.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r9.xyz = max(float3(0,0,0), r9.xyz);
    r9.xyz = min(float3(0.99000001,0.99000001,0.99000001), r9.xyz);
    r9.xyz = cb0[213].xyz * r9.xyz;
    r10.xyz = (int3)r9.xyz;
    r10.w = 0;
    r10.xyzw = t0.Load(r10.xyzw).xyzw;
    r10.xyzw = (uint4)r10.xyzw;
    r4.y = 1 + cb0[213].w;
    r9.xyz = r9.xyz / r10.www;
    r9.xyz = frac(r9.xyz);
    r9.xyz = cb0[213].www * r9.xyz;
    r9.xyz = r10.xyz * r4.yyy + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) + r9.xyz;
    r9.xyz = cb0[214].xyz * r9.xyz;
    r6.z = t1.SampleLevel(s0_s, r9.xyz, 0).x;
  } else {
    r6.z = 1;
  }
  r4.y = 0.0799999982 * r4.x;
  r9.xyz = -r4.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyw;
  r9.xyz = r3.www * r9.xyz + r4.yyy;
  r10.xyz = -r7.xyw * r3.www + r7.xyw;
  r10.xyz = r10.xyz * cb0[136].www + cb0[136].xyz;
  r9.xyz = r9.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r11.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r11.w = 0;
  r10.w = r9.x;
  r10.xyzw = r3.wwww ? r11.xyzw : r10.xyzw;
  r9.yz = r3.ww ? float2(0,0) : r9.yz;
  r11.x = t3[0].val[0/4];
  r11.y = t3[0].val[0/4+1];
  r11.z = t3[0].val[0/4+2];
  r11.w = t3[0].val[0/4+3];
  r0.w = 1;
  r11.x = dot(r11.xyzw, r0.xyzw);
  r12.x = t3[1].val[0/4];
  r12.y = t3[1].val[0/4+1];
  r12.z = t3[1].val[0/4+2];
  r12.w = t3[1].val[0/4+3];
  r11.y = dot(r12.xyzw, r0.xyzw);
  r12.x = t3[2].val[0/4];
  r12.y = t3[2].val[0/4+1];
  r12.z = t3[2].val[0/4+2];
  r12.w = t3[2].val[0/4+3];
  r11.z = dot(r12.xyzw, r0.xyzw);
  r12.xyzw = r0.xyzz * r0.yzzx;
  r13.x = t3[3].val[0/4];
  r13.y = t3[3].val[0/4+1];
  r13.z = t3[3].val[0/4+2];
  r13.w = t3[3].val[0/4+3];
  r13.x = dot(r13.xyzw, r12.xyzw);
  r14.x = t3[4].val[0/4];
  r14.y = t3[4].val[0/4+1];
  r14.z = t3[4].val[0/4+2];
  r14.w = t3[4].val[0/4+3];
  r13.y = dot(r14.xyzw, r12.xyzw);
  r14.x = t3[5].val[0/4];
  r14.y = t3[5].val[0/4+1];
  r14.z = t3[5].val[0/4+2];
  r14.w = t3[5].val[0/4+3];
  r13.z = dot(r14.xyzw, r12.xyzw);
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r12.x = t3[6].val[0/4];
  r12.y = t3[6].val[0/4+1];
  r12.z = t3[6].val[0/4+2];
  r11.xyz = r13.xyz + r11.xyz;
  r11.xyz = r12.xyz * r0.www + r11.xyz;
  r11.xyz = max(float3(0,0,0), r11.xyz);
  r11.xyz = cb0[187].xyz * r11.xyz;
  r11.xyz = r11.xyz * r10.xyz;
  r12.xyz = r7.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r12.xyz = r7.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r12.xyz;
  r7.xyz = r7.xyw * float3(2.75519991,2.75519991,2.75519991) + r12.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r4.xy = -cb0[129].xy + v4.xy;
  r4.xy = cb0[131].zw * r4.xy;
  r4.xy = (uint2)r4.xy;
  r0.w = v4.w * cb1[3].x + cb1[3].y;
  r0.w = log2(r0.w);
  r0.w = cb1[3].z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = (uint)r0.w;
  r3.w = asint(cb1[1].z) + -1;
  r0.w = min((uint)r3.w, (uint)r0.w);
  r4.xy = (uint2)r4.xy >> asuint(cb1[2].xx);
  r0.w = mad((int)r0.w, asint(cb1[1].y), (int)r4.y);
  r0.w = mad((int)r0.w, asint(cb1[1].x), (int)r4.x);
  r3.w = t2[r4.z].val[12/4];
  if (cb1[0].z != 0) {
    r4.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r12.yzw = r4.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r13.xyzw = cb1[51].xyzw * r2.yyyy;
      r13.xyzw = r2.xxxx * cb1[50].xyzw + r13.xyzw;
      r13.xyzw = r2.zzzz * cb1[52].xyzw + r13.xyzw;
      r13.xyzw = cb1[53].xyzw + r13.xyzw;
      r4.xy = r13.xy / r13.ww;
      r6.xy = cmp(r4.xy >= float2(0,0));
      r13.xy = cmp(float2(1,1) >= r4.xy);
      r6.xy = r6.xy ? r13.xy : 0;
      r4.z = r6.y ? r6.x : 0;
      if (r4.z != 0) {
        r4.x = t6.SampleLevel(s3_s, r4.xy, 0).x;
        r4.y = cmp(r13.z < r4.x);
        r4.x = cmp(0.99000001 < r4.x);
        r4.x = (int)r4.x | (int)r4.y;
        r13.x = r4.x ? 1.000000 : 0;
      } else {
        r13.x = 1;
      }
    } else {
      r13.x = 1;
    }
    if (cb1[9].z != 0) {
      r4.x = cb1[9].z;
      r4.y = 0;
      while (true) {
        r4.z = cmp((uint)r4.y >= asuint(cb1[9].z));
        if (r4.z != 0) break;
        r4.z = dot(cb1[10].xyzw, icb[r4.y+0].xyzw);
        r4.z = cmp(v4.w < r4.z);
        if (r4.z != 0) {
          r4.x = r4.y;
          break;
        }
        r4.y = (int)r4.y + 1;
      }
      r4.y = cmp((uint)r4.x < asuint(cb1[9].z));
      if (r4.y != 0) {
        r4.y = (uint)r4.x << 2;
        r14.xyzw = cb1[r4.y+12].xyzw * r2.yyyy;
        r14.xyzw = r2.xxxx * cb1[r4.y+11].xyzw + r14.xyzw;
        r14.xyzw = r2.zzzz * cb1[r4.y+13].xyzw + r14.xyzw;
        r14.xyzw = cb1[r4.y+14].xyzw + r14.xyzw;
        r15.xyzw = r14.xyxy / r14.wwww;
        r4.yz = cmp(r15.zw >= cb1[r4.x+27].xy);
        r6.xy = cmp(cb1[r4.x+27].zw >= r15.zw);
        r4.xy = r4.yz ? r6.xy : 0;
        r4.x = r4.y ? r4.x : 0;
        if (r4.x != 0) {
          r15.xyzw = r15.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r4.xy = frac(r15.zw);
          r15.xyzw = floor(r15.xyzw);
          r16.xyzw = float4(0.5,1.5,0.5,0.5) + r15.zwzw;
          r16.xyzw = cb1[31].zwzw * r16.xyzw;
          r17.x = t5.SampleLevel(s2_s, r16.xy, 0).x;
          r15.xyzw = float4(1.5,1.5,1.5,0.5) + r15.xyzw;
          r15.xyzw = cb1[31].zwzw * r15.xyzw;
          r17.y = t5.SampleLevel(s2_s, r15.xy, 0).x;
          r17.z = t5.SampleLevel(s2_s, r15.zw, 0).x;
          r17.w = t5.SampleLevel(s2_s, r16.zw, 0).x;
          r4.z = r14.z * 4000 + -1;
          r14.xyzw = saturate(r17.xyzw * float4(4000,4000,4000,4000) + -r4.zzzz);
          r6.xy = r14.zy + -r14.wx;
          r4.xz = r4.xx * r6.xy + r14.wx;
          r4.z = r4.z + -r4.x;
          r4.x = r4.y * r4.z + r4.x;
        } else {
          r4.x = 1;
        }
      } else {
        r4.x = 1;
      }
    } else {
      r4.x = 1;
    }
    r12.x = 1;
    r4.y = dot(float4(1,1,1,1), r12.xyzw);
    r13.yzw = r12.yzw;
    r4.z = dot(r13.xyzw, float4(1,1,1,1));
    r4.z = -1 + r4.z;
    r4.y = r4.y * r4.z + 1;
    r4.z = saturate(v4.w * cb1[9].x + cb1[9].y);
    r4.z = r4.z * r4.z;
    r4.y = r4.y + -r4.x;
    r4.x = r4.z * r4.y + r4.x;
    r4.y = min(1, r4.x);
    r4.y = r4.x + r4.y;
    r4.y = cmp(0 < r4.y);
    if (r4.y != 0) {
      r4.y = dot(cb1[4].xyz, cb1[4].xyz);
      r4.y = rsqrt(r4.y);
      r12.xyz = cb1[4].xyz * r4.yyy;
      r4.y = dot(r0.xyz, r12.xyz);
      r4.z = saturate(r4.y);
      r5.x = max(cb0[226].y, r4.w);
      r6.x = dot(r0.xyz, r3.xyz);
      r6.y = dot(r3.xyz, r12.xyz);
      r7.w = r6.y * 2 + 2;
      r7.w = rsqrt(r7.w);
      r4.y = r6.x + r4.y;
      r4.y = saturate(r4.y * r7.w);
      r6.y = saturate(r7.w * r6.y + r7.w);
      r6.x = 9.99999975e-006 + abs(r6.x);
      r6.x = min(1, r6.x);
      r12.xyz = r10.xyz * r4.zzz;
      r12.xyz = float3(0.318309873,0.318309873,0.318309873) * r12.xyz;
      r7.w = r5.x * r5.x;
      r11.w = r7.w * r7.w;
      r12.w = r4.y * r11.w + -r4.y;
      r4.y = r12.w * r4.y + 1;
      r4.y = r4.y * r4.y;
      r4.y = 3.14159274 * r4.y;
      r4.y = r11.w / r4.y;
      r5.x = -r5.x * r5.x + 1;
      r11.w = r6.x * r5.x + r7.w;
      r5.x = r4.z * r5.x + r7.w;
      r5.x = r6.x * r5.x;
      r5.x = r4.z * r11.w + r5.x;
      r5.x = rcp(r5.x);
      r4.y = r5.x * r4.y;
      r5.x = 1 + -r6.y;
      r6.x = r5.x * r5.x;
      r6.x = r6.x * r6.x;
      r6.y = r6.x * r5.x;
      r7.w = saturate(50 * r9.y);
      r5.x = -r6.x * r5.x + 1;
      r9.x = r10.w;
      r13.yzw = r5.xxx * r9.xyz;
      r13.yzw = r7.www * r6.yyy + r13.yzw;
      r4.y = 0.5 * r4.y;
      r13.yzw = r4.yyy * r13.yzw;
      r13.yzw = r13.yzw * r4.zzz;
      r4.xyz = cb1[5].xyz * r4.xxx;
      r12.xyz = r12.xyz * r4.xyz;
      r4.xyz = r13.zwy * r4.yzx;
      r12.w = r4.z;
    } else {
      r4.xy = float2(0,0);
      r12.xyzw = float4(0,0,0,0);
    }
    r4.z = asuint(cb1[8].z) >> 8;
    r4.z = (int)r3.w & (int)r4.z;
    r12.xyzw = r4.zzzz ? r12.xyzw : float4(0,0,0,0);
    r4.xy = r4.zz ? r4.xy : float2(0,0);
    r6.z = r13.x;
  } else {
    r12.xyzw = float4(0,0,0,0);
    r4.xy = float2(0,0);
  }
  r4.z = (uint)r0.w << 1;
  r4.z = t8.Load(r4.z).x;
  r4.z = min(asuint(cb1[0].x), (uint)r4.z);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.x = (((uint)r0.w << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r5.x = t8.Load(r5.x).x;
  r4.z = min(asuint(cb1[0].x), (uint)r4.z);
  r6.x = dot(-r3.xyz, r0.xyz);
  r6.x = r6.x + r6.x;
  r13.xyz = r0.xyz * -r6.xxx + -r3.xyz;
  r6.x = max(cb0[226].y, r4.w);
  r6.y = r6.x * r6.x;
  r6.x = -r6.x * r6.x + 1;
  r7.w = dot(r0.xyz, r3.xyz);
  r11.w = r7.w + r7.w;
  r13.w = r11.w * r7.w + -1;
  r14.x = 9.99999975e-006 + abs(r7.w);
  r14.x = min(1, r14.x);
  r14.yzw = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
  r15.x = r6.y * r6.y;
  r15.y = saturate(50 * r9.y);
  r16.y = 1;
  r9.w = r10.w;
  r17.xyz = r12.xyz;
  r18.x = r12.w;
  r18.yz = r4.xy;
  r10.w = 0;
  while (true) {
    r15.z = cmp((uint)r10.w >= (uint)r4.z);
    if (r15.z != 0) break;
    r15.z = (int)r5.x + (int)r10.w;
    r15.z = t9.Load(r15.z).x;
    r15.w = (int)r15.z * 6;
    r19.xyzw = t7.Load(r15.w).xyzw;
    r15.w = mad((int)r15.z, 6, 1);
    r20.xyzw = t7.Load(r15.w).xyzw;
    r16.zw = mad((int2)r15.zz, int2(6,6), int2(2,3));
    r21.xyzw = t7.Load(r16.z).xyzw;
    r22.xyzw = t7.Load(r16.w).xyzw;
    r15.w = cmp(r20.w == 0.000000);
    r16.z = cmp(-2 < r22.x);
    r19.xyz = r19.xyz + -r2.xyz;
    r16.w = dot(r19.xyz, r19.xyz);
    r17.w = rsqrt(r16.w);
    r23.xyz = r19.xyz * r17.www;
    r17.w = r19.w * r19.w;
    r16.w = r17.w * r16.w;
    r16.w = -r16.w * r16.w + 1;
    r16.w = max(0, r16.w);
    r16.w = r16.w * r16.w;
    r24.xyz = r19.xyz * r19.www;
    r17.w = dot(r24.xyz, r24.xyz);
    r17.w = min(1, r17.w);
    r17.w = 1 + -r17.w;
    r17.w = log2(r17.w);
    r17.w = r20.w * r17.w;
    r17.w = exp2(r17.w);
    r16.w = r15.w ? r16.w : r17.w;
    r17.w = dot(r23.xyz, r21.xyz);
    r17.w = r17.w + -r22.x;
    r17.w = saturate(r17.w * r22.y);
    r17.w = r17.w * r17.w;
    r17.w = r17.w * r16.w;
    r16.z = r16.z ? r17.w : r16.w;
    r16.w = cmp(0 < r16.z);
    if (r16.w != 0) {
      r16.w = (int)r21.w & 255;
      r16.w = r16.w ? 1 : 0;
      if (r16.w != 0) {
        r23.xyzw = (int4)r21.wwww & int4(1,2,4,8);
        r23.xyzw = r23.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r16.w = (uint)r21.w >> 4;
        if (1 == 0) r17.w = 0; else if (1+4 < 32) {         r17.w = (uint)r21.w << (32-(1 + 4)); r17.w = (uint)r17.w >> (32-1);        } else r17.w = (uint)r21.w >> 4;
        r24.x = r17.w ? 1 : 0;
        r21.xyz = (int3)r16.www & int3(2,4,8);
        r24.yzw = r21.xyz ? float3(1,1,1) : float3(0,0,0);
        r16.w = dot(r24.xyzw, float4(1,1,1,1));
        r17.w = dot(r23.xyzw, float4(1,1,1,1));
        r18.w = dot(r6.zwww, r23.xyzw);
        r18.w = -1 + r18.w;
        r17.w = r17.w * r18.w + 1;
        r21.xy = r17.ww * r16.ww;
      } else {
        r21.xy = float2(1,1);
      }
      r16.w = r21.x + r21.y;
      r16.w = cmp(0 < r16.w);
      if (r16.w != 0) {
        r15.z = mad((int)r15.z, 6, 4);
        r23.xyzw = t7.Load(r15.z).xyzw;
        r15.z = f16tof32(r22.w);
        r16.w = 0.5 * r15.z;
        r22.xyw = -r16.www * r23.xyz + r19.xyz;
        r19.xyz = r16.www * r23.xyz + r19.xyz;
        r16.w = cmp(0 < r15.z);
        if (r16.w != 0) {
          r17.w = dot(r22.xyw, r22.xyw);
          r18.w = dot(r19.xyz, r19.xyz);
          r17.w = rsqrt(r17.w);
          r18.w = rsqrt(r18.w);
          r19.w = r18.w * r17.w;
          r20.w = dot(r22.xyw, r19.xyz);
          r20.w = r20.w * r19.w;
          r21.y = r20.w * 0.5 + r19.w;
          r21.y = 0.5 + r21.y;
          r23.y = r19.w / r21.y;
          r19.w = dot(r0.xyz, r22.xyw);
          r21.y = dot(r0.xyz, r19.xyz);
          r18.w = r21.y * r18.w;
          r17.w = r19.w * r17.w + r18.w;
          r23.x = 0.5 * r17.w;
        } else {
          r17.w = dot(r22.xyw, r22.xyw);
          r18.w = 1 + r17.w;
          r23.y = rcp(r18.w);
          r17.w = rsqrt(r17.w);
          r24.xyz = r22.xyw * r17.www;
          r23.x = dot(r0.xyz, r24.xyz);
          r20.w = 1;
        }
        r17.w = cmp(0 < r22.z);
        r18.w = r22.z * r22.z;
        r18.w = saturate(r18.w * r23.y);
        r18.w = sqrt(r18.w);
        r19.w = cmp(r23.x < r18.w);
        r21.y = max(r23.x, -r18.w);
        r21.y = r21.y + r18.w;
        r21.y = r21.y * r21.y;
        r18.w = 4 * r18.w;
        r18.w = r21.y / r18.w;
        r18.w = r19.w ? r18.w : r23.x;
        r17.w = saturate(r17.w ? r18.w : r23.x);
        r15.w = r15.w ? r23.y : 1;
        r19.xyz = r19.xyz + -r22.xyw;
        r18.w = dot(r13.xyz, r19.xyz);
        r23.xyz = r18.www * r13.xyz + -r19.xyz;
        r19.w = dot(r22.xyw, r23.xyz);
        r18.w = r18.w * r18.w;
        r15.z = r15.z * r15.z + -r18.w;
        r15.z = saturate(r19.w / r15.z);
        r19.xyz = r15.zzz * r19.xyz + r22.xyw;
        r19.xyz = r16.www ? r19.xyz : r22.xyw;
        r15.z = dot(r19.xyz, r19.xyz);
        r15.z = rsqrt(r15.z);
        r19.xyz = r19.xyz * r15.zzz;
        r16.w = r22.z * r15.z;
        r16.w = saturate(r16.w * r6.x);
        r15.z = saturate(r23.w * r15.z);
        r18.w = dot(r0.xyz, r19.xyz);
        r19.x = dot(r3.xyz, r19.xyz);
        r19.y = r19.x * 2 + 2;
        r19.y = rsqrt(r19.y);
        r19.z = r18.w + r7.w;
        r19.z = saturate(r19.z * r19.y);
        r19.y = saturate(r19.y * r19.x + r19.y);
        r19.w = cmp(0 < r16.w);
        if (r19.w != 0) {
          r21.y = -r16.w * r16.w + 1;
          r21.y = sqrt(r21.y);
          r21.z = dot(r7.ww, r18.ww);
          r22.x = r21.z + -r19.x;
          r22.y = cmp(r22.x >= r21.y);
          if (r22.y != 0) {
            r19.z = 1;
            r19.y = abs(r7.w);
          } else {
            r22.y = -r22.x * r22.x + 1;
            r22.y = rsqrt(r22.y);
            r22.y = r22.y * r16.w;
            r22.z = -r22.x * r18.w + r7.w;
            r22.x = -r22.x * r19.x + r13.w;
            r22.xw = r22.yy * r22.xz;
            r23.x = r18.w * r18.w;
            r23.x = -r7.w * r7.w + -r23.x;
            r23.x = 1 + r23.x;
            r23.x = -r19.x * r19.x + r23.x;
            r21.z = saturate(r21.z * r19.x + r23.x);
            r21.z = sqrt(r21.z);
            r21.z = r22.y * r21.z;
            r23.x = r21.z * r7.w;
            r23.y = r23.x + r23.x;
            r23.z = r18.w * r21.y + r7.w;
            r22.y = r22.y * r22.z + r23.z;
            r22.z = r19.x * r21.y + r22.x;
            r22.z = 1 + r22.z;
            r23.w = r22.z * r21.z;
            r24.x = r22.y * r22.z;
            r24.y = r23.y * r22.y;
            r23.x = r22.y * r23.x;
            r23.x = 0.5 * r23.x;
            r23.x = r23.w * -0.5 + r23.x;
            r23.x = r24.x * r23.x;
            r24.z = -r23.w * 2 + r24.y;
            r24.y = r24.y * r24.z;
            r23.w = r23.w * r23.w + r24.y;
            r24.y = r22.z * r22.z;
            r22.z = r19.x * r21.y + r22.z;
            r22.z = r22.z * -0.5 + -0.5;
            r22.z = r24.x * r22.z;
            r22.z = r23.z * r24.y + r22.z;
            r22.y = r22.y * r22.z + r23.w;
            r22.z = r23.x + r23.x;
            r23.z = r23.x * r23.x;
            r23.z = r22.y * r22.y + r23.z;
            r22.z = r22.z / r23.z;
            r22.y = r22.z * r22.y;
            r22.z = -r22.z * r23.x + 1;
            r21.z = r22.y * r21.z;
            r21.z = r22.z * r22.w + r21.z;
            r22.y = r22.y * r23.y;
            r22.x = r22.z * r22.x + r22.y;
            r18.w = r18.w * r21.y + r21.z;
            r19.x = r19.x * r21.y + r22.x;
            r21.y = r19.x * 2 + 2;
            r21.y = rsqrt(r21.y);
            r18.w = r18.w + r7.w;
            r19.z = saturate(r18.w * r21.y);
            r19.y = saturate(r21.y * r19.x + r21.y);
          }
        }
        r15.w = r15.w * r17.w;
        r22.xyz = r15.www * r14.yzw;
        r18.w = cmp(0 < r15.z);
        r15.z = r15.z * r15.z;
        r19.x = r19.y * 3.5999999 + 0.400000006;
        r15.z = r15.z / r19.x;
        r15.z = r6.y * r6.y + r15.z;
        r15.z = min(1, r15.z);
        r16.x = r18.w ? r15.z : r15.x;
        r15.z = 0.25 * r16.w;
        r18.w = (uint)r16.x >> 1;
        r18.w = (int)r18.w + 0x1fbd1df5;
        r16.w = r18.w * 3 + r16.w;
        r15.z = r16.w * r15.z;
        r16.w = 0.00100000005 + r19.y;
        r15.z = r15.z / r16.w;
        r23.x = r16.x + r15.z;
        r23.y = r16.x / r23.x;
        r19.xw = r19.ww ? r23.xy : r16.xy;
        r15.z = cmp(r20.w < 1);
        r18.w = 1.00010002 + -r20.w;
        r20.w = 1 + r20.w;
        r18.w = r18.w / r20.w;
        r18.w = sqrt(r18.w);
        r20.w = 0.25 * r18.w;
        r21.y = (uint)r19.x >> 1;
        r21.y = (int)r21.y + 0x1fbd1df5;
        r18.w = r21.y * 3 + r18.w;
        r18.w = r20.w * r18.w;
        r16.w = r18.w / r16.w;
        r16.w = r19.x + r16.w;
        r16.w = r19.x / r16.w;
        r16.w = sqrt(r16.w);
        r16.w = r19.w * r16.w;
        r15.z = r15.z ? r16.w : r19.w;
        r16.w = r19.z * r16.x + -r19.z;
        r16.w = r16.w * r19.z + 1;
        r16.w = r16.w * r16.w;
        r16.w = 3.14159274 * r16.w;
        r16.w = r16.x / r16.w;
        r15.z = r16.w * r15.z;
        r16.x = sqrt(r16.x);
        r16.w = 1 + -r16.x;
        r18.w = r14.x * r16.w + r16.x;
        r16.x = r17.w * r16.w + r16.x;
        r16.x = r16.x * r14.x;
        r16.x = r17.w * r18.w + r16.x;
        r16.x = rcp(r16.x);
        r15.z = r16.x * r15.z;
        r16.x = 1 + -r19.y;
        r16.w = r16.x * r16.x;
        r16.w = r16.w * r16.w;
        r17.w = r16.w * r16.x;
        r16.x = -r16.w * r16.x + 1;
        r19.xyz = r16.xxx * r9.wyz;
        r19.xyz = r15.yyy * r17.www + r19.xyz;
        r15.z = 0.5 * r15.z;
        r19.xyz = r15.zzz * r19.xyz;
        r19.xyz = r19.xyz * r15.www;
        r16.xzw = r20.xyz * r16.zzz;
        r16.xzw = r16.xzw * r21.xxx;
        r20.xyz = r22.xyz * r16.xzw;
        r16.xzw = r19.xyz * r16.xzw;
      } else {
        r20.xyz = float3(0,0,0);
        r16.xzw = float3(0,0,0);
      }
    } else {
      r20.xyz = float3(0,0,0);
      r16.xzw = float3(0,0,0);
    }
    r15.z = (uint)r21.w >> 8;
    r15.z = (int)r3.w & (int)r15.z;
    r19.xyz = r20.xyz + r17.xyz;
    r16.xzw = r18.xyz + r16.xzw;
    r17.xyz = r15.zzz ? r19.xyz : r17.xyz;
    r18.xyz = r15.zzz ? r16.xzw : r18.xyz;
    r10.w = (int)r10.w + 1;
  }
  r4.xyz = r18.xyz + r17.xyz;
  r3.yzw = r11.www * r0.xyz + -r3.xyz;
  r7.w = saturate(r7.w);
  r0.w = (int)r0.w + asint(cb1[0].w);
  r5.x = (uint)r0.w << 1;
  r5.x = t8.Load(r5.x).x;
  r5.x = min(asuint(cb1[0].y), (uint)r5.x);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = t8.Load(r0.w).x;
  r6.x = max(0.00100000005, r4.w);
  r6.x = log2(r6.x);
  r6.x = -r6.x * 1.20000005 + 1;
  r6.y = -1 + cb0[195].z;
  r6.y = r6.y + -r6.x;
  r3.x = 0;
  r12.xyz = float3(0,0,0);
  r6.zw = float2(1,0);
  while (true) {
    r10.w = cmp((uint)r6.w >= (uint)r5.x);
    if (r10.w != 0) break;
    r10.w = cmp(r6.z < 0.00100000005);
    if (r10.w != 0) {
      break;
    }
    r10.w = (int)r0.w + (int)r6.w;
    r10.w = t9.Load(r10.w).x;
    r13.xyz = -cb2[r10.w+0].xyz + r2.xyz;
    r11.w = dot(r13.xyz, r13.xyz);
    r12.w = sqrt(r11.w);
    r13.w = cmp(r12.w < cb2[r10.w+0].w);
    if (r13.w != 0) {
      r13.w = cmp(0 < cb2[r10.w+341].z);
      if (r13.w != 0) {
        r13.w = (uint)r10.w << 2;
        r14.xyz = cb2[r13.w+1024].xyz * r2.yyy;
        r14.xyz = r2.xxx * cb2[r13.w+1023].xyz + r14.xyz;
        r14.xyz = r2.zzz * cb2[r13.w+1025].xyz + r14.xyz;
        r14.xyz = cb2[r13.w+1026].xyz + r14.xyz;
        r15.xzw = cb2[r13.w+1024].xyz * r3.zzz;
        r15.xzw = r3.yyy * cb2[r13.w+1023].xyz + r15.xzw;
        r15.xzw = r3.www * cb2[r13.w+1025].xyz + r15.xzw;
        r15.xzw = rcp(r15.xzw);
        r16.xyz = -r14.xyz * r15.xzw + -r15.xzw;
        r15.xzw = -r14.xyz * r15.xzw + r15.xzw;
        r15.xzw = max(r16.xyz, r15.xzw);
        r13.w = min(r15.z, r15.w);
        r13.w = min(r15.x, r13.w);
        r15.xzw = r13.www * r3.yzw + r2.xyz;
        r16.xyz = cb2[r10.w+682].xyz + cb2[r10.w+0].xyz;
        r16.xyz = -r16.xyz + r15.xzw;
        r13.w = cb2[r10.w+2387].w * 0.699999988;
        r15.xzw = -cb2[r10.w+2387].www * float3(0.5,0.5,0.5) + cb2[r10.w+2387].xyz;
        r17.xyz = cb2[r10.w+2387].xyz * r14.xyz;
        r18.xyz = cmp(r17.xyz < -r15.xzw);
        r19.xyz = r14.xyz * cb2[r10.w+2387].xyz + r15.xzw;
        r19.xyz = abs(r19.xyz);
        r18.xyz = r18.xyz ? r19.xyz : 0;
        r17.xyz = cmp(r15.xzw < r17.xyz);
        r14.xyz = r14.xyz * cb2[r10.w+2387].xyz + -r15.xzw;
        r14.xyz = abs(r14.xyz);
        r14.xyz = r17.xyz ? r14.xyz : 0;
        r14.w = dot(r18.xyz, float3(1,1,1));
        r14.x = dot(r14.xyz, float3(1,1,1));
        r14.x = r14.w + r14.x;
        r13.w = 1 / r13.w;
        r13.w = saturate(r14.x * r13.w);
        r14.x = r13.w * -2 + 3;
        r13.w = r13.w * r13.w;
        r14.x = -r14.x * r13.w + 1;
      } else {
        r12.w = saturate(r12.w / cb2[r10.w+0].w);
        r13.w = dot(r3.yzw, r13.xyz);
        r11.w = -cb2[r10.w+0].w * cb2[r10.w+0].w + r11.w;
        r11.w = r13.w * r13.w + -r11.w;
        r15.x = cmp(r11.w >= 0);
        r11.w = sqrt(r11.w);
        r11.w = r11.w + -r13.w;
        r13.xyz = r11.www * r3.yzw + r13.xyz;
        r13.yzw = -cb2[r10.w+682].xyz + r13.xyz;
        r11.w = r12.w * 2.5 + -1.5;
        r11.w = max(0, r11.w);
        r12.w = r11.w * r11.w;
        r11.w = -r11.w * 2 + 3;
        r13.x = -r12.w * r11.w + 1;
        r14.xyzw = r15.xxxx ? r13.xyzw : r3.xyzw;
        r16.xyz = r14.yzw;
      }
      r16.w = cb2[r10.w+341].y;
      r13.xyzw = t11.SampleLevel(s5_s, r16.xyzw, r6.y).xyzw;
      r13.xyz = cb2[r10.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r14.xxx;
      r12.xyz = r13.xyz * r6.zzz + r12.xyz;
      r10.w = -r13.w * r14.x + 1;
      r6.z = r10.w * r6.z;
    }
    r6.w = (int)r6.w + 1;
  }
  r12.xyz = cb0[157].xyz * r12.xyz;
  r0.w = cmp(0 < cb1[116].y);
  if (r0.w != 0) {
    r0.w = cb1[116].x + -r6.x;
    r0.w = -1 + r0.w;
    r6.xyw = t10.SampleLevel(s4_s, r3.yzw, r0.w).xyz;
    r6.xyw = cb0[187].xyz * r6.xyw;
    r0.w = cmp(cb1[116].z < 1);
    r13.xyz = r6.zzz * r6.xyw + r12.xyz;
    r6.xyw = r0.www ? float3(0,0,0) : r6.xyw;
    r12.xyz = r0.www ? r13.xyz : r12.xyz;
  } else {
    r6.xyw = float3(0,0,0);
  }
  r0.w = saturate(r4.w * cb0[197].x + cb0[197].y);
  r3.x = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r3.x * r0.w;
  r3.x = min(0, cb0[197].z);
  r3.x = -1 + r3.x;
  r0.w = r0.w * r3.x + 1;
  r6.xyz = r6.zzz * r6.xyw;
  r6.xyz = r12.xyz * r0.www + r6.xyz;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r12.xy = r0.ww * float2(32.6650009,11.8149996) + v4.xy;
    r0.w = dot(r12.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r12.xyzw = cb0[1].xyzw * r1.yyyy;
    r12.xyzw = r1.xxxx * cb0[0].xyzw + r12.xyzw;
    r12.xyzw = r1.zzzz * cb0[2].xyzw + r12.xyzw;
    r12.xyzw = cb0[3].xyzw + r12.xyzw;
    r3.xyz = r3.yzw * v4.www + r1.xyz;
    r13.xyzw = cb0[1].xyzw * r3.yyyy;
    r13.xyzw = r3.xxxx * cb0[0].xyzw + r13.xyzw;
    r3.xyzw = r3.zzzz * cb0[2].xyzw + r13.xyzw;
    r3.xyzw = cb0[3].xyzw + r3.xyzw;
    r5.x = rcp(r12.w);
    r13.xyz = r12.xyz * r5.xxx;
    r3.w = rcp(r3.w);
    r12.xy = v4.ww * cb0[30].zw + r12.zw;
    r5.x = rcp(r12.y);
    r3.xyz = r3.xyz * r3.www + -r13.xyz;
    r3.w = dot(r3.xy, r3.xy);
    r3.w = sqrt(r3.w);
    r6.w = 0.5 * r3.w;
    r12.yz = r13.xy * r6.ww + r3.xy;
    r12.yz = -r3.ww * float2(0.5,0.5) + abs(r12.yz);
    r12.yz = max(float2(0,0), r12.yz);
    r12.yz = r12.yz / abs(r3.xy);
    r12.yz = float2(1,1) + -r12.yz;
    r3.w = min(r12.y, r12.z);
    r3.w = r3.w / r6.w;
    r3.xyz = r3.xyz * r3.www;
    r3.w = -r12.x * r5.x + r13.z;
    r3.w = 4 * r3.w;
    r3.w = max(abs(r3.z), r3.w);
    r12.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb1[176].xy * r12.xy;
    r3.xy = cb1[176].xy * r3.xy;
    r5.x = 0.0833333358 * r3.w;
    r3.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r3.xyz;
    r12.xyz = r3.xyz * r0.www + r13.xyz;
    r0.w = 1;
    r16.x = 0;
    r13.xyz = float3(0,0,0);
    r6.w = 0;
    r10.w = 0;
    r11.w = 0;
    r12.w = 0;
    r14.xw = float2(0,0);
    while (true) {
      r15.x = cmp((uint)r14.w >= 12);
      if (r15.x != 0) break;
      r15.x = (uint)r14.w;
      r17.xyzw = float4(1,2,3,4) + r15.xxxx;
      r18.xyzw = r17.xxxy * r3.xyzz + r12.xyzz;
      r19.xyzw = r17.yyzz * r3.xyxy + r12.xyxy;
      r17.xyzw = r17.wwzw * r3.xyzz + r12.xyzz;
      r15.x = r4.w * 0.666666687 + r0.w;
      r15.z = r4.w * 0.666666687 + r15.x;
      r20.x = t15.SampleLevel(s7_s, r18.xy, r0.w).x;
      r20.y = t15.SampleLevel(s7_s, r19.xy, r0.w).x;
      r20.z = t15.SampleLevel(s7_s, r19.zw, r15.x).x;
      r20.w = t15.SampleLevel(s7_s, r17.xy, r15.x).x;
      r17.xy = r18.zw;
      r17.xyzw = r17.xyzw + -r20.xyzw;
      r18.xyzw = r3.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r17.xyzw;
      r18.xyzw = cmp(abs(r18.xyzw) < r5.xxxx);
      r15.xw = (int2)r18.zw | (int2)r18.xy;
      r15.x = (int)r15.w | (int)r15.x;
      if (r15.x != 0) {
        r16.x = r17.x;
        r13.xyz = r17.yzw;
        r6.w = r18.x;
        r10.w = r18.y;
        r11.w = r18.z;
        r12.w = -1;
        break;
      }
      r14.x = r17.w;
      r14.w = (int)r14.w + 4;
      r0.w = r15.z;
      r16.x = r17.x;
      r13.xyz = r17.yzw;
      r6.w = r18.x;
      r10.w = r18.y;
      r11.w = r18.z;
      r12.w = r15.x;
    }
    if (r12.w != 0) {
      r13.w = 2;
      r17.xy = r13.yz;
      r17.z = 3;
      r13.yzw = r11.www ? r13.xyw : r17.xyz;
      r16.y = r13.x;
      r16.z = 1;
      r13.xyz = r10.www ? r16.xyz : r13.yzw;
      r14.y = r16.x;
      r14.z = 0;
      r13.xyz = r6.www ? r14.xyz : r13.xyz;
      r0.w = (uint)r14.w;
      r0.w = r13.z + r0.w;
      r3.w = r13.x + -r13.y;
      r3.w = saturate(r13.x / r3.w);
      r0.w = r3.w + r0.w;
      r3.xyz = r3.xyz * r0.www + r12.xyz;
      r3.xy = cb1[176].zw * r3.xy;
      r3.xy = r3.xy * float2(2,-2) + float2(-1,1);
      r3.xy = cb0[66].xy * r3.xy;
      r3.xy = r3.xy / cb0[66].xy;
      r12.xyz = cb0[123].xyw * r3.yyy;
      r12.xyz = r3.xxx * cb0[122].xyw + r12.xyz;
      r12.xyz = r3.zzz * cb0[124].xyw + r12.xyz;
      r12.xyz = cb0[125].xyw + r12.xyz;
      r3.zw = r12.xy / r12.zz;
      r12.xy = r3.zw * cb1[177].xy + cb1[177].zw;
      r3.xy = saturate(abs(r3.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r3.xy, r3.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r3.xy = saturate(abs(r3.zw) * float2(5,5) + float2(-4,-4));
      r3.x = dot(r3.xy, r3.xy);
      r3.x = 1 + -r3.x;
      r3.x = max(0, r3.x);
      r0.w = min(r3.x, r0.w);
      r3.xyz = t16.SampleLevel(s8_s, r12.xy, 0).xyz;
      r3.xyz = min(float3(0,0,0), -r3.xyz);
      r3.w = saturate(-r4.w * 6.5999999 + 2);
      r0.w = r3.w * r0.w;
      r3.w = 1;
      r3.xyz = -r3.xyz * r0.www;
      r3.xyz = cb1[178].xxx * r3.xyz;
      r0.w = -r3.w * r0.w + 1;
      r6.xyz = r6.xyz * r0.www + r3.xyz;
    }
  }
  r3.xyzw = r4.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r3.x * r3.x;
  r5.x = -9.27999973 * r7.w;
  r5.x = exp2(r5.x);
  r0.w = min(r5.x, r0.w);
  r0.w = r0.w * r3.x + r3.y;
  r3.xy = r0.ww * float2(-1.03999996,1.03999996) + r3.zw;
  r9.xyz = r9.wyz;
  r0.w = r15.y * r3.y;
  r3.xyz = r9.xyz * r3.xxx + r0.www;
  r0.w = dot(cb1[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r2.w = -1;
    r0.w = dot(cb1[122].xyzw, r2.xyzw);
    r0.w = saturate(abs(r0.w) * cb1[129].x + cb1[129].y);
    r0.w = 1 + -r0.w;
    r12.xyz = -cb1[123].xyz + r2.xyz;
    r2.w = dot(r12.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r12.xyz, cb1[125].xyz);
    r3.w = cb1[125].w + -abs(r3.w);
    r3.w = saturate(cb1[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb1[122].xyz, r0.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r3.w = -0.200000003 + r4.w;
    r3.w = saturate(10 * r3.w);
    r3.w = 1 + -r3.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r3.w;
    r2.w = cmp(0 < r0.w);
    if (r2.w != 0) {
      r12.xyz = -cb0[67].xyz + r2.xyz;
      r2.w = dot(r12.xyz, r12.xyz);
      r2.w = rsqrt(r2.w);
      r12.xyz = r12.xyz * r2.www;
      r2.w = dot(r12.xyz, -cb1[122].xyz);
      r2.w = r2.w + r2.w;
      r12.xyz = cb1[122].xyz * r2.www + r12.xyz;
      r13.xyz = cb1[127].xyz * r0.yyy;
      r13.xyz = r0.xxx * cb1[126].xyz + r13.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r13.xyz;
      r2.w = dot(r12.xyz, r0.xyz);
      r2.w = r2.w + r2.w;
      r0.xyz = r0.xyz * -r2.www + r12.xyz;
      r0.xyz = r0.xyz * cb1[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r12.xyz = cb0[13].xyz * r0.yyy;
      r12.xyz = r0.xxx * cb0[12].xyz + r12.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r12.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r2.w = asuint(cb0[197].w) << 2;
      r12.xyz = cb1[r2.w+132].xyw * r0.yyy;
      r12.xyz = r0.xxx * cb1[r2.w+131].xyw + r12.xyz;
      r0.xyz = r0.zzz * cb1[r2.w+133].xyw + r12.xyz;
      r0.xyz = cb1[r2.w+134].xyw + r0.xyz;
      r2.w = cb1[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb1[141].xy, r0.xy);
      r0.xy = min(cb1[141].xy, r0.xy);
      r0.xy = r0.xy * cb1[r2.w+139].xy + cb1[r2.w+139].zw;
      r12.xyzw = t12.SampleLevel(s5_s, r0.xy, 0).xyzw;
      r0.x = r12.w * r0.w;
    } else {
      r12.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r6.xyz = r0.xxx * r6.xyz + r12.xyz;
  }
  r0.xyz = r6.xyz * r3.xyz;
  r3.xyz = r9.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r9.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r9.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r0.xyz * r3.xyz + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r2.w = sqrt(r0.w);
  r3.x = dot(r1.xyz, cb0[60].xyz);
  r2.w = r2.w / r3.x;
  r2.w = cb0[210].z * r2.w;
  r2.w = max(0, r2.w);
  r3.x = min(cb1[143].z, cb0[67].z);
  r3.y = cb0[67].z + -r3.x;
  r1.w = r3.y + r1.z;
  r3.y = dot(r1.xyw, r1.xyw);
  r3.z = rsqrt(r3.y);
  r3.y = r3.y * r3.z;
  r2.w = max(cb1[143].w, r2.w);
  r3.w = cmp(0 < r2.w);
  r4.x = r2.w * r3.z;
  r3.x = r4.x * r1.w + r3.x;
  r4.x = -r4.x * r1.w + r1.w;
  r2.w = -r2.w * r3.z + 1;
  r2.w = r2.w * r3.y;
  r4.y = -cb1[146].y + r3.x;
  r4.y = cb1[143].y * r4.y;
  r4.y = max(-127, r4.y);
  r4.y = exp2(-r4.y);
  r4.y = cb1[146].x * r4.y;
  r3.x = -cb1[144].w + r3.x;
  r3.x = cb1[144].y * r3.x;
  r3.x = max(-127, r3.x);
  r3.x = exp2(-r3.x);
  r3.x = cb1[144].z * r3.x;
  r4.y = r3.w ? r4.y : cb1[143].x;
  r3.x = r3.w ? r3.x : cb1[144].x;
  r2.w = r3.w ? r2.w : r3.y;
  r3.w = r3.w ? r4.x : r1.w;
  r4.x = cb1[143].y * r3.w;
  r4.x = max(-127, r4.x);
  r4.z = exp2(-r4.x);
  r4.z = 1 + -r4.z;
  r4.z = r4.z / r4.x;
  r4.w = -r4.x * 0.240226507 + 0.693147182;
  r4.x = cmp(0.00999999978 < abs(r4.x));
  r4.x = r4.x ? r4.z : r4.w;
  r3.w = cb1[144].y * r3.w;
  r3.w = max(-127, r3.w);
  r4.z = exp2(-r3.w);
  r4.z = 1 + -r4.z;
  r4.z = r4.z / r3.w;
  r4.w = -r3.w * 0.240226507 + 0.693147182;
  r3.w = cmp(0.00999999978 < abs(r3.w));
  r3.w = r3.w ? r4.z : r4.w;
  r3.x = r3.x * r3.w;
  r3.x = r4.y * r4.x + r3.x;
  r3.w = r3.x * r2.w;
  r4.xy = cmp(float2(0,0) < cb1[146].zw);
  if (r4.x != 0) {
    r4.x = saturate(r3.y * cb1[150].x + cb1[150].y);
    r4.zw = float2(1,-1) * cb1[149].yx;
    r6.x = dot(r1.xy, r4.zw);
    r6.y = dot(r1.xy, cb1[149].xy);
    r6.z = r1.w;
    r12.xyz = t13.SampleLevel(s6_s, r6.xyz, 0).xyz;
    r6.xyz = t13.SampleLevel(s6_s, r6.xyz, cb1[150].z).xyz;
    r12.xyz = r12.xyz + -r6.xyz;
    r4.xzw = r4.xxx * r12.xyz + r6.xyz;
    r4.xzw = cb1[145].xyz * r4.xzw;
  } else {
    r4.xzw = cb1[145].xyz;
  }
  r5.x = cmp(cb1[147].w >= 0);
  r6.x = cmp(cb1[146].z == 0.000000);
  r5.x = r5.x ? r6.x : 0;
  if (r5.x != 0) {
    r6.xyz = r3.zzz * r1.xyw;
    r1.w = saturate(dot(r6.xyz, cb1[147].xyz));
    r1.w = log2(r1.w);
    r1.w = cb1[148].w * r1.w;
    r1.w = exp2(r1.w);
    r6.xyz = cb1[148].xyz * r1.www;
    r1.w = -cb1[147].w + r2.w;
    r1.w = max(0, r1.w);
    r1.w = r3.x * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r6.xyz = r6.xyz * r1.www;
  } else {
    r6.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r3.w);
  r1.w = min(1, r1.w);
  r6.w = max(cb1[145].w, r1.w);
  r1.w = cmp(cb1[146].w < r3.y);
  r1.w = r1.w ? r4.y : 0;
  r3.xyzw = r1.wwww ? float4(1,0,0,0) : r6.wxyz;
  r1.w = 1 + -r3.x;
  r3.yzw = r4.xzw * r1.www + r3.yzw;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r4.xyz = cb0[5].xyw * r2.yyy;
    r4.xyz = r2.xxx * cb0[4].xyw + r4.xyz;
    r4.xyz = r2.zzz * cb0[6].xyw + r4.xyz;
    r4.xyz = cb0[7].xyw + r4.xyz;
    r4.xy = r4.xy / r4.zz;
    r6.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r4.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r6.z = cb0[208].z * r1.w;
    r4.xyzw = t14.SampleLevel(s0_s, r6.xyz, 0).xyzw;
    r3.yzw = r3.yzw * r4.www + r4.xyz;
    r3.x = r4.w * r3.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r4.xyz = cb0[5].xyw * r2.yyy;
    r4.xyz = r2.xxx * cb0[4].xyw + r4.xyz;
    r4.xyz = r2.zzz * cb0[6].xyw + r4.xyz;
    r4.xyz = cb0[7].xyw + r4.xyz;
    r1.w = cmp(0 != cb0[184].x);
    r6.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r4.xy = r4.xy / r4.zz;
    r4.xy = r4.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r6.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r6.xyz;
    r2.w = dot(r6.xyz, r6.xyz);
    r4.z = sqrt(r2.w);
    r4.z = -cb0[181].x + r4.z;
    r4.z = max(0, r4.z);
    r4.z = cb0[182].x * r4.z;
    r4.z = cb0[181].z * r4.z;
    r12.z = sqrt(r4.z);
    r4.z = cb0[181].y * r12.z;
    r4.w = cmp(r4.z < 0.707106769);
    r4.z = dot(r4.zz, r4.zz);
    r4.z = min(1, r4.z);
    r4.z = r4.w ? r4.z : 1;
    r2.w = rsqrt(r2.w);
    r6.xyz = r6.xyz * r2.www;
    r2.w = -r6.z * r6.z + 1;
    r2.w = sqrt(r2.w);
    r13.y = r6.z * 0.5 + 0.5;
    r6.xy = r6.xy / r2.ww;
    r2.w = 1 + -abs(r6.x);
    r2.w = sqrt(r2.w);
    r4.w = abs(r6.x) * -0.0187292993 + 0.0742610022;
    r4.w = r4.w * abs(r6.x) + -0.212114394;
    r4.w = r4.w * abs(r6.x) + 1.57072878;
    r5.x = r4.w * r2.w;
    r5.x = r5.x * -2 + 3.14159274;
    r6.x = cmp(r6.x < -r6.x);
    r5.x = r6.x ? r5.x : 0;
    r2.w = r4.w * r2.w + r5.x;
    r4.w = cmp(r6.y < 0);
    r5.x = 6.28318548 + -r2.w;
    r2.w = r4.w ? r5.x : r2.w;
    r13.x = 0.159154937 * r2.w;
    r6.xy = cb0[180].zw * float2(0.5,0.5) + r13.xy;
    r6.zw = float2(1,1) + cb0[180].xy;
    r6.zw = cb0[180].xy / r6.zw;
    r6.xy = r6.xy * r6.zw;
    r12.xy = r1.ww ? r6.xy : r4.xy;
    r6.xyzw = t4.SampleLevel(s1_s, r12.xyz, 0).xyzw;
    r4.xyw = r6.xyz * r4.zzz;
    r1.w = 1 + -r6.w;
    r1.w = -r4.z * r1.w + 1;
    r4.xyz = cb0[135].zzz * r4.xyw;
    r3.yzw = r4.xyz * r3.xxx + r3.yzw;
    r3.x = r3.x * r1.w;
  }
  r4.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r4.xyz = r4.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r4.xyz + r0.xyz;
  r8.xyz = max(float3(0,0,0), r5.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r4.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r4.x = t2[r4.x].val[0/4];
    r4.z = t2[r4.x].val[0/4+1];
    r4.w = t2[r4.x].val[0/4+2];
    r4.xzw = -r4.xzw + r2.xyz;
    r5.x = t2[r4.y].val[0/4];
    r5.y = t2[r4.y].val[0/4+1];
    r5.z = t2[r4.y].val[0/4+2];
    r5.xyz = float3(1,1,1) + r5.xyz;
    r4.xyz = cmp(r5.xyz < abs(r4.xzw));
    r1.w = (int)r4.y | (int)r4.x;
    r1.w = (int)r4.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r8.xyzw = r1.wwww ? r2.yzwx : r8.xyzw;
    o0.w = r8.w;
  } else {
    o0.w = r8.w;
  }
  r0.xyz = r11.xyz * r7.xyz + r0.xyz;
  r0.xyz = r0.xyz + r8.xyz;
  r0.xyz = r0.xyz * r3.xxx + r3.yzw;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb1[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb1[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb1[166].xyz + -cb1[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb1[165].xyz;
  r1.w = cb1[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb1[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb1[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb1[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb1[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}