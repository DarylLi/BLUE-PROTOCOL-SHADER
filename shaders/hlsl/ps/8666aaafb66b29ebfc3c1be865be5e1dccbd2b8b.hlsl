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

cbuffer cb6 : register(b6)
{
  float4 cb6[77];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[8];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[3];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[2728];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
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
  r3.w = cb6[42].x * v2.y + cb6[42].y;
  r4.x = -cb6[42].z * r3.w + 1;
  r4.w = -cb6[42].w + r2.z;
  r4.w = abs(r4.w) / cb6[43].x;
  r4.w = -r4.w * cb6[43].y + 1;
  r5.y = -r4.x * r4.w + 1;
  r5.x = v2.x;
  r4.xw = r5.xy * cb6[2].xy + float2(0.200000003,0.200000003);
  r5.z = cb4[2].x * cb0[142].z;
  r5.z = cb6[44].x * r5.z;
  r5.zw = cb6[3].xy * r5.zz;
  r4.xw = r5.zw * float2(0.699999988,0.699999988) + r4.xw;
  r6.y = t17.SampleBias(s9_s, r4.xw, cb0[143].y).x;
  r6.xw = float2(0,1);
  r6.xy = cb6[45].xx * r6.xy;
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
  r10.xyz = cb6[45].yyy * r9.xyz + r8.yzw;
  r4.w = 1 + r10.z;
  r5.xy = r5.xy * cb6[1].xy + r5.zw;
  r5.zw = r6.xy * r7.xx + r5.xy;
  r7.xyw = t17.SampleBias(s9_s, r5.zw, cb0[143].y).xyz;
  r5.xy = r6.xy * r8.xx + r5.xy;
  r5.xyz = t17.SampleBias(s9_s, r5.xy, cb0[143].y).xyz;
  r5.xyz = r5.xyz + -r7.xyw;
  r5.xyz = r4.xxx * r5.xyz + r7.xyw;
  r7.xyw = r5.xyz + r5.xyz;
  r5.yzw = -r5.xyz * float3(2,2,2) + float3(0,0,1);
  r11.xyz = cb6[45].zzz * r5.yzw + r7.xyw;
  r10.w = 1 + r10.z;
  r11.xyz = float3(-1,-1,1) * r11.xyz;
  r4.x = dot(r10.xyw, r11.xyz);
  r11.xyz = r11.xyz * r4.www;
  r10.xyz = r10.xyw * r4.xxx + -r11.xyz;
  r11.xyz = float3(0,0,1) + -r10.xyz;
  r10.xyz = cb6[45].www * r11.xyz + r10.xyz;
  r4.x = cb6[6].y + v2.y;
  r4.x = r4.x * cb6[47].w + -cb6[47].w;
  r4.x = saturate(cb6[48].z + r4.x);
  r4.w = cb6[49].y * r4.x;
  r4.x = -cb6[49].y * r4.x + 1;
  r4.x = cb6[49].w * r4.x + r4.w;
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
  r10.yzw = r0.xyz * r0.www;
  r4.w = cb0[142].z * cb6[51].x + v2.x;
  r6.x = cb6[52].y * r4.w;
  r4.w = cb0[142].z * cb6[52].z + v2.y;
  r6.y = cb6[52].w * r4.w;
  r4.w = cb0[142].z * cb6[54].x + v2.x;
  r11.x = cb6[55].y * r4.w;
  r4.w = cb0[142].z * cb6[55].z + v2.y;
  r11.y = cb6[55].w * r4.w;
  r4.w = t18.SampleBias(s10_s, r11.xy, cb0[143].y).z;
  r4.w = -0.5 + r4.w;
  r4.w = r4.w + r4.w;
  r6.xy = r4.ww * cb6[56].yy + r6.xy;
  r6.x = t19.SampleBias(s11_s, r6.xy, cb0[143].y).x;
  r6.y = cmp(0 >= r6.x);
  r6.x = log2(r6.x);
  r6.x = cb6[56].z * r6.x;
  r6.x = exp2(r6.x);
  r11.xyz = cb6[14].xyz * r6.xxx;
  r11.xyz = r6.yyy ? float3(0,0,0) : r11.xyz;
  r12.xyz = cb5[6].xyz * cb6[58].yyy + cb6[18].xyz;
  r6.x = dot(cb5[7].xyz, r10.yzw);
  r6.y = saturate(r6.x);
  r6.y = 1 + -r6.y;
  r8.x = cb0[142].z * cb6[59].z + v2.x;
  r13.x = cb6[60].w * r8.x;
  r8.x = cb0[142].z * cb6[61].x + v2.y;
  r13.y = cb6[61].y * r8.x;
  r8.x = cb0[142].z * cb6[62].z + v2.x;
  r14.x = cb6[63].w * r8.x;
  r8.x = cb0[142].z * cb6[64].x + v2.y;
  r14.y = cb6[64].y * r8.x;
  r13.zw = t18.SampleBias(s10_s, r14.xy, cb0[143].y).xy;
  r13.zw = float2(-0.5,-0.5) + r13.zw;
  r13.zw = cb6[64].ww * r13.zw;
  r13.xy = r13.zw * float2(2,2) + r13.xy;
  r8.x = t20.SampleBias(s12_s, r13.xy, cb0[143].y).x;
  r13.xyz = -cb6[28].xyz + cb6[27].xyz;
  r13.xyz = r8.xxx * r13.xyz + cb6[28].xyz;
  r14.xyz = cb6[30].xyz * r13.xyz;
  r13.xyz = r13.xyz * cb6[32].xyz + -r14.xyz;
  r13.xyz = r4.xxx * r13.xyz + r14.xyz;
  r14.xyz = -r13.xyz * cb6[65].xxx + r13.xyz;
  r14.xyz = cb5[6].xyz * r14.xyz;
  r14.xyz = r14.xyz * r6.xxx;
  r8.xyz = cb6[65].yyy * r9.xyz + r8.yzw;
  r6.x = 1 + r8.z;
  r5.yzw = cb6[65].zzz * r5.yzw + r7.xyw;
  r8.w = 1 + r8.z;
  r5.yzw = float3(-1,-1,1) * r5.yzw;
  r7.x = dot(r8.xyw, r5.yzw);
  r5.yzw = r6.xxx * r5.yzw;
  r5.yzw = r8.xyw * r7.xxx + -r5.yzw;
  r6.x = dot(r5.yzw, r5.yzw);
  r6.x = sqrt(r6.x);
  r5.yzw = r5.yzw / r6.xxx;
  r6.x = saturate(dot(r5.yzw, cb5[7].xyz));
  r7.xyw = cb0[67].xyz + -r2.xyz;
  r8.x = dot(r7.xyw, r7.xyw);
  r8.x = sqrt(r8.x);
  r7.xyw = r7.xyw / r8.xxx;
  r7.xyw = cb5[7].xyz + r7.xyw;
  r8.x = dot(r7.xyw, r7.xyw);
  r8.x = sqrt(r8.x);
  r7.xyw = r7.xyw / r8.xxx;
  r5.y = saturate(dot(r7.xyw, r5.yzw));
  r5.z = 11 * cb6[66].x;
  r5.z = exp2(r5.z);
  r5.w = cmp(0 >= r5.y);
  r5.y = log2(r5.y);
  r5.y = r5.z * r5.y;
  r5.y = exp2(r5.y);
  r5.y = r6.x * r5.y;
  r5.y = cb6[66].y * r5.y;
  r7.xyw = cb5[5].xyz * r5.yyy;
  r5.yzw = r5.www ? float3(0,0,0) : r7.xyw;
  r5.yzw = r14.xyz * float3(0.318309844,0.318309844,0.318309844) + r5.yzw;
  r5.yzw = r12.xyz * r6.yyy + r5.yzw;
  r5.yzw = r11.xyz * r5.yzw;
  r7.xyw = cb6[32].xyz + -cb6[30].xyz;
  r7.xyw = r4.xxx * r7.xyw + cb6[30].xyz;
  r8.xyz = r7.xyw * r5.yzw;
  r5.yzw = -r5.yzw * r7.xyw + cb6[33].xyz;
  r5.yzw = cb6[66].zzz * r5.yzw + r8.xyz;
  r7.xyw = saturate(cb6[35].xyz * r13.xyz);
  r4.x = saturate(cb6[67].w * r3.w);
  r3.w = 1 + -r3.w;
  r3.w = saturate(cb6[68].z * r3.w);
  r3.w = r4.x * r3.w;
  r4.x = r5.x + -r7.z;
  r4.x = r4.x * cb6[46].y + v2.x;
  r4.x = r4.x * 2 + -1;
  r4.x = 1 + -abs(r4.x);
  r4.x = r4.x * cb6[69].x + -cb6[69].x;
  r4.x = saturate(cb6[69].z + r4.x);
  r4.x = cb6[69].w * r4.x;
  r5.x = cb0[142].z * cb6[71].x + v2.x;
  r6.x = cb6[72].y * r5.x;
  r5.x = cb0[142].z * cb6[72].z + v2.y;
  r6.y = cb6[72].w * r5.x;
  r6.xy = r4.ww * cb6[73].yy + r6.xy;
  r5.x = t21.SampleBias(s13_s, r6.xy, cb0[143].y).x;
  r6.x = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = cb6[73].z * r5.x;
  r5.x = exp2(r5.x);
  r5.x = r6.x ? 0 : r5.x;
  r6.x = cb0[142].z * cb6[74].w + v2.x;
  r6.x = cb6[76].x * r6.x;
  r7.z = cb0[142].z * cb6[76].y + v2.y;
  r6.y = cb6[76].z * r7.z;
  r6.xy = r4.ww * cb6[56].yy + r6.xy;
  r4.w = t17.SampleBias(s9_s, r6.xy, cb0[143].y).x;
  r6.x = -0.100000001 + v2.x;
  r6.y = 0.899999976 + -v2.x;
  r6.x = min(r6.x, r6.y);
  r4.w = r6.x * 5 + r4.w;
  r4.w = r5.x * r4.w;
  r4.w = r4.w * cb6[69].x + -cb6[69].x;
  r4.w = saturate(cb6[69].z + r4.w);
  r4.x = r4.x * r4.w;
  r8.w = saturate(r4.x * r3.w);
  r3.w = saturate(cb6[65].x);
  r4.x = saturate(cb6[66].w);
  r4.w = saturate(cb6[67].x);
  r4.w = r4.w * cb0[139].y + cb0[139].x;
  r5.x = cmp(0 < cb0[215].x);
  r4.y = t2[r4.y].val[8/4];
  r4.y = cmp(0 < r4.y);
  if (r4.y != 0) {
    r9.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r9.xyz = max(float3(0,0,0), r9.xyz);
    r9.xyz = min(float3(0.99000001,0.99000001,0.99000001), r9.xyz);
    r9.xyz = cb0[213].xyz * r9.xyz;
    r11.xyz = (int3)r9.xyz;
    r11.w = 0;
    r11.xyzw = t0.Load(r11.xyzw).xyzw;
    r11.xyzw = (uint4)r11.xyzw;
    r4.y = 1 + cb0[213].w;
    r9.xyz = r9.xyz / r11.www;
    r9.xyz = frac(r9.xyz);
    r9.xyz = cb0[213].www * r9.xyz;
    r9.xyz = r11.xyz * r4.yyy + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) + r9.xyz;
    r9.xyz = cb0[214].xyz * r9.xyz;
    r6.z = t1.SampleLevel(s0_s, r9.xyz, 0).x;
  } else {
    r4.y = mad((int)v3.x, 36, 18);
    r4.y = t2[r4.y].val[12/4];
    r4.y = cmp(0 < r4.y);
    r4.y = r5.x ? r4.y : 0;
    r6.z = r4.y ? cb2[5].x : 1;
  }
  r4.y = 0.0799999982 * r4.x;
  r9.xyz = -r4.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyw;
  r9.xyz = r3.www * r9.xyz + r4.yyy;
  r11.xyz = -r7.xyw * r3.www + r7.xyw;
  r11.xyz = r11.xyz * cb0[136].www + cb0[136].xyz;
  r9.xyz = r9.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r12.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r12.w = 0;
  r11.w = r9.x;
  r11.xyzw = r3.wwww ? r12.xyzw : r11.xyzw;
  r9.yz = r3.ww ? float2(0,0) : r9.yz;
  r12.xyz = r10.zwz * r10.zwy;
  r13.yw = r10.ww * r10.zy;
  r3.w = r10.y * r10.y + -r12.x;
  r14.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r10.zwy;
  r13.xz = r12.zy * float2(1,3) + float2(0,-1);
  r12.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r13.xyzw;
  r3.w = 0.429042608 * r3.w;
  r14.x = 0.886227548;
  r4.x = dot(cb2[6].xyzw, r14.xyzw);
  r4.y = dot(cb2[9].xyzw, r12.xyzw);
  r4.x = r4.x + r4.y;
  r13.x = cb2[12].x * r3.w + r4.x;
  r4.x = dot(cb2[7].xyzw, r14.xyzw);
  r4.y = dot(cb2[10].xyzw, r12.xyzw);
  r4.x = r4.x + r4.y;
  r13.y = cb2[12].y * r3.w + r4.x;
  r4.x = dot(cb2[8].xyzw, r14.xyzw);
  r4.y = dot(cb2[11].xyzw, r12.xyzw);
  r4.x = r4.x + r4.y;
  r13.z = cb2[12].z * r3.w + r4.x;
  r12.xyz = max(float3(0,0,0), r13.xyz);
  r12.xyz = r5.xxx ? r12.xyz : 0;
  r3.w = cmp(cb0[186].y != 0.000000);
  if (r3.w != 0) {
    r10.x = 1;
    r13.xyzw = r5.xxxx ? cb2[4].wxyz : r10.xyzw;
    r3.w = 1 + -r13.x;
    r3.w = -r3.w * r3.w + 1;
    r0.xyz = r0.xyz * r0.www + -r13.yzw;
    r0.xyz = r3.www * r0.xyz + r13.yzw;
    r4.x = saturate(dot(r13.yzw, r10.yzw));
    r4.y = 1 + -r4.x;
    r13.y = r3.w * r4.y + r4.x;
  } else {
    r0.xyz = r10.yzw;
    r13.xy = float2(1,1);
  }
  r14.x = t3[0].val[0/4];
  r14.y = t3[0].val[0/4+1];
  r14.z = t3[0].val[0/4+2];
  r14.w = t3[0].val[0/4+3];
  r0.w = 1;
  r14.x = dot(r14.xyzw, r0.xyzw);
  r15.x = t3[1].val[0/4];
  r15.y = t3[1].val[0/4+1];
  r15.z = t3[1].val[0/4+2];
  r15.w = t3[1].val[0/4+3];
  r14.y = dot(r15.xyzw, r0.xyzw);
  r15.x = t3[2].val[0/4];
  r15.y = t3[2].val[0/4+1];
  r15.z = t3[2].val[0/4+2];
  r15.w = t3[2].val[0/4+3];
  r14.z = dot(r15.xyzw, r0.xyzw);
  r15.xyzw = r0.xyzz * r0.yzzx;
  r16.x = t3[3].val[0/4];
  r16.y = t3[3].val[0/4+1];
  r16.z = t3[3].val[0/4+2];
  r16.w = t3[3].val[0/4+3];
  r16.x = dot(r16.xyzw, r15.xyzw);
  r17.x = t3[4].val[0/4];
  r17.y = t3[4].val[0/4+1];
  r17.z = t3[4].val[0/4+2];
  r17.w = t3[4].val[0/4+3];
  r16.y = dot(r17.xyzw, r15.xyzw);
  r17.x = t3[5].val[0/4];
  r17.y = t3[5].val[0/4+1];
  r17.z = t3[5].val[0/4+2];
  r17.w = t3[5].val[0/4+3];
  r16.z = dot(r17.xyzw, r15.xyzw);
  r0.y = r0.y * r0.y;
  r0.x = r0.x * r0.x + -r0.y;
  r0.y = t3[6].val[0/4];
  r0.z = t3[6].val[0/4+1];
  r0.w = t3[6].val[0/4+2];
  r14.xyz = r16.xyz + r14.xyz;
  r0.xyz = r0.yzw * r0.xxx + r14.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb0[187].xyz * r0.xyz;
  r0.w = r13.x * r13.y;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = r12.xyz * cb0[157].xyz + r0.xyz;
  r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xyz = r0.xyz * r11.xyz;
  r12.xyz = r7.xyw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r12.xyz = r7.xyw * float3(-4.79510021,-4.79510021,-4.79510021) + r12.xyz;
  r7.xyz = r7.xyw * float3(2.75519991,2.75519991,2.75519991) + r12.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r4.xy = -cb0[129].xy + v4.xy;
  r4.xy = cb0[131].zw * r4.xy;
  r4.xy = (uint2)r4.xy;
  r3.w = v4.w * cb1[3].x + cb1[3].y;
  r3.w = log2(r3.w);
  r3.w = cb1[3].z * r3.w;
  r3.w = max(0, r3.w);
  r3.w = (uint)r3.w;
  r5.x = asint(cb1[1].z) + -1;
  r3.w = min((uint)r5.x, (uint)r3.w);
  r4.xy = (uint2)r4.xy >> asuint(cb1[2].xx);
  r3.w = mad((int)r3.w, asint(cb1[1].y), (int)r4.y);
  r3.w = mad((int)r3.w, asint(cb1[1].x), (int)r4.x);
  r4.x = t2[r4.z].val[12/4];
  if (cb1[0].z != 0) {
    r12.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r12.yzw = r12.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r13.xyzw = cb1[51].xyzw * r2.yyyy;
      r13.xyzw = r2.xxxx * cb1[50].xyzw + r13.xyzw;
      r13.xyzw = r2.zzzz * cb1[52].xyzw + r13.xyzw;
      r13.xyzw = cb1[53].xyzw + r13.xyzw;
      r4.yz = r13.xy / r13.ww;
      r6.xy = cmp(r4.yz >= float2(0,0));
      r13.xy = cmp(float2(1,1) >= r4.yz);
      r6.xy = r6.xy ? r13.xy : 0;
      r5.x = r6.y ? r6.x : 0;
      if (r5.x != 0) {
        r4.y = t6.SampleLevel(s3_s, r4.yz, 0).x;
        r4.z = cmp(r13.z < r4.y);
        r4.y = cmp(0.99000001 < r4.y);
        r4.y = (int)r4.y | (int)r4.z;
        r13.x = r4.y ? 1.000000 : 0;
      } else {
        r13.x = 1;
      }
    } else {
      r13.x = 1;
    }
    if (cb1[9].z != 0) {
      r4.y = cb1[9].z;
      r4.z = 0;
      while (true) {
        r5.x = cmp((uint)r4.z >= asuint(cb1[9].z));
        if (r5.x != 0) break;
        r5.x = dot(cb1[10].xyzw, icb[r4.z+0].xyzw);
        r5.x = cmp(v4.w < r5.x);
        if (r5.x != 0) {
          r4.y = r4.z;
          break;
        }
        r4.z = (int)r4.z + 1;
      }
      r4.z = cmp((uint)r4.y < asuint(cb1[9].z));
      if (r4.z != 0) {
        r4.z = (uint)r4.y << 2;
        r14.xyzw = cb1[r4.z+12].xyzw * r2.yyyy;
        r14.xyzw = r2.xxxx * cb1[r4.z+11].xyzw + r14.xyzw;
        r14.xyzw = r2.zzzz * cb1[r4.z+13].xyzw + r14.xyzw;
        r14.xyzw = cb1[r4.z+14].xyzw + r14.xyzw;
        r15.xyzw = r14.xyxy / r14.wwww;
        r6.xy = cmp(r15.zw >= cb1[r4.y+27].xy);
        r4.yz = cmp(cb1[r4.y+27].zw >= r15.zw);
        r4.yz = r4.yz ? r6.xy : 0;
        r4.y = r4.z ? r4.y : 0;
        if (r4.y != 0) {
          r15.xyzw = r15.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r4.yz = frac(r15.zw);
          r15.xyzw = floor(r15.xyzw);
          r16.xyzw = float4(0.5,1.5,0.5,0.5) + r15.zwzw;
          r16.xyzw = cb1[31].zwzw * r16.xyzw;
          r17.x = t5.SampleLevel(s2_s, r16.xy, 0).x;
          r15.xyzw = float4(1.5,1.5,1.5,0.5) + r15.xyzw;
          r15.xyzw = cb1[31].zwzw * r15.xyzw;
          r17.y = t5.SampleLevel(s2_s, r15.xy, 0).x;
          r17.z = t5.SampleLevel(s2_s, r15.zw, 0).x;
          r17.w = t5.SampleLevel(s2_s, r16.zw, 0).x;
          r5.x = r14.z * 4000 + -1;
          r14.xyzw = saturate(r17.xyzw * float4(4000,4000,4000,4000) + -r5.xxxx);
          r6.xy = r14.zy + -r14.wx;
          r6.xy = r4.yy * r6.xy + r14.wx;
          r4.y = r6.y + -r6.x;
          r4.y = r4.z * r4.y + r6.x;
        } else {
          r4.y = 1;
        }
      } else {
        r4.y = 1;
      }
    } else {
      r4.y = 1;
    }
    r12.x = 1;
    r4.z = dot(float4(1,1,1,1), r12.xyzw);
    r13.yzw = r12.yzw;
    r5.x = dot(r13.xyzw, float4(1,1,1,1));
    r5.x = -1 + r5.x;
    r4.z = r4.z * r5.x + 1;
    r5.x = saturate(v4.w * cb1[9].x + cb1[9].y);
    r5.x = r5.x * r5.x;
    r4.z = r4.z + -r4.y;
    r4.y = r5.x * r4.z + r4.y;
    r4.z = min(1, r4.y);
    r4.z = r4.y + r4.z;
    r4.z = cmp(0 < r4.z);
    if (r4.z != 0) {
      r4.z = dot(cb1[4].xyz, cb1[4].xyz);
      r4.z = rsqrt(r4.z);
      r12.xyz = cb1[4].xyz * r4.zzz;
      r4.z = dot(r10.yzw, r12.xyz);
      r5.x = saturate(r4.z);
      r6.x = max(cb0[226].y, r4.w);
      r6.y = dot(r10.yzw, r3.xyz);
      r7.w = dot(r3.xyz, r12.xyz);
      r10.x = r7.w * 2 + 2;
      r10.x = rsqrt(r10.x);
      r4.z = r6.y + r4.z;
      r4.z = saturate(r4.z * r10.x);
      r7.w = saturate(r10.x * r7.w + r10.x);
      r6.y = 9.99999975e-006 + abs(r6.y);
      r6.y = min(1, r6.y);
      r12.xyz = r11.xyz * r5.xxx;
      r12.xyz = float3(0.318309873,0.318309873,0.318309873) * r12.xyz;
      r10.x = r6.x * r6.x;
      r12.w = r10.x * r10.x;
      r13.y = r4.z * r12.w + -r4.z;
      r4.z = r13.y * r4.z + 1;
      r4.z = r4.z * r4.z;
      r4.z = 3.14159274 * r4.z;
      r4.z = r12.w / r4.z;
      r6.x = -r6.x * r6.x + 1;
      r12.w = r6.y * r6.x + r10.x;
      r6.x = r5.x * r6.x + r10.x;
      r6.x = r6.y * r6.x;
      r6.x = r5.x * r12.w + r6.x;
      r6.x = rcp(r6.x);
      r4.z = r6.x * r4.z;
      r6.x = 1 + -r7.w;
      r6.y = r6.x * r6.x;
      r6.y = r6.y * r6.y;
      r7.w = r6.y * r6.x;
      r10.x = saturate(50 * r9.y);
      r6.x = -r6.y * r6.x + 1;
      r9.x = r11.w;
      r13.yzw = r6.xxx * r9.xyz;
      r13.yzw = r10.xxx * r7.www + r13.yzw;
      r4.z = 0.5 * r4.z;
      r13.yzw = r4.zzz * r13.yzw;
      r13.yzw = r13.yzw * r5.xxx;
      r14.xyz = cb1[5].xyz * r4.yyy;
      r12.xyz = r14.xyz * r12.xyz;
      r13.yzw = r14.yzx * r13.zwy;
      r12.w = r13.w;
    } else {
      r13.yz = float2(0,0);
      r12.xyzw = float4(0,0,0,0);
    }
    r4.y = asuint(cb1[8].z) >> 8;
    r4.y = (int)r4.x & (int)r4.y;
    r12.xyzw = r4.yyyy ? r12.xyzw : float4(0,0,0,0);
    r4.yz = r4.yy ? r13.yz : float2(0,0);
    r6.z = r13.x;
  } else {
    r12.xyzw = float4(0,0,0,0);
    r4.yz = float2(0,0);
  }
  r5.x = (uint)r3.w << 1;
  r5.x = t8.Load(r5.x).x;
  r5.x = min(asuint(cb1[0].x), (uint)r5.x);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r6.x = (((uint)r3.w << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r6.x = t8.Load(r6.x).x;
  r5.x = min(asuint(cb1[0].x), (uint)r5.x);
  r6.y = dot(-r3.xyz, r10.yzw);
  r6.y = r6.y + r6.y;
  r13.xyz = r10.yzw * -r6.yyy + -r3.xyz;
  r6.y = max(cb0[226].y, r4.w);
  r7.w = r6.y * r6.y;
  r6.y = -r6.y * r6.y + 1;
  r10.x = dot(r10.yzw, r3.xyz);
  r13.w = r10.x + r10.x;
  r14.x = r13.w * r10.x + -1;
  r14.y = 9.99999975e-006 + abs(r10.x);
  r14.y = min(1, r14.y);
  r15.xyz = float3(0.318309873,0.318309873,0.318309873) * r11.xyz;
  r14.z = r7.w * r7.w;
  r14.w = saturate(50 * r9.y);
  r16.y = 1;
  r9.w = r11.w;
  r17.xyz = r12.xyz;
  r18.x = r12.w;
  r18.yz = r4.yz;
  r11.w = 0;
  while (true) {
    r15.w = cmp((uint)r11.w >= (uint)r5.x);
    if (r15.w != 0) break;
    r15.w = (int)r6.x + (int)r11.w;
    r15.w = t9.Load(r15.w).x;
    r16.z = (int)r15.w * 6;
    r19.xyzw = t7.Load(r16.z).xyzw;
    r16.z = mad((int)r15.w, 6, 1);
    r20.xyzw = t7.Load(r16.z).xyzw;
    r16.zw = mad((int2)r15.ww, int2(6,6), int2(2,3));
    r21.xyzw = t7.Load(r16.z).xyzw;
    r22.xyzw = t7.Load(r16.w).xyzw;
    r16.z = cmp(r20.w == 0.000000);
    r16.w = cmp(-2 < r22.x);
    r19.xyz = r19.xyz + -r2.xyz;
    r17.w = dot(r19.xyz, r19.xyz);
    r18.w = rsqrt(r17.w);
    r23.xyz = r19.xyz * r18.www;
    r18.w = r19.w * r19.w;
    r17.w = r18.w * r17.w;
    r17.w = -r17.w * r17.w + 1;
    r17.w = max(0, r17.w);
    r17.w = r17.w * r17.w;
    r24.xyz = r19.xyz * r19.www;
    r18.w = dot(r24.xyz, r24.xyz);
    r18.w = min(1, r18.w);
    r18.w = 1 + -r18.w;
    r18.w = log2(r18.w);
    r18.w = r20.w * r18.w;
    r18.w = exp2(r18.w);
    r17.w = r16.z ? r17.w : r18.w;
    r18.w = dot(r23.xyz, r21.xyz);
    r18.w = r18.w + -r22.x;
    r18.w = saturate(r18.w * r22.y);
    r18.w = r18.w * r18.w;
    r18.w = r18.w * r17.w;
    r16.w = r16.w ? r18.w : r17.w;
    r17.w = cmp(0 < r16.w);
    if (r17.w != 0) {
      r17.w = (int)r21.w & 255;
      r17.w = r17.w ? 1 : 0;
      if (r17.w != 0) {
        r23.xyzw = (int4)r21.wwww & int4(1,2,4,8);
        r23.xyzw = r23.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r17.w = (uint)r21.w >> 4;
        if (1 == 0) r18.w = 0; else if (1+4 < 32) {         r18.w = (uint)r21.w << (32-(1 + 4)); r18.w = (uint)r18.w >> (32-1);        } else r18.w = (uint)r21.w >> 4;
        r24.x = r18.w ? 1 : 0;
        r21.xyz = (int3)r17.www & int3(2,4,8);
        r24.yzw = r21.xyz ? float3(1,1,1) : float3(0,0,0);
        r17.w = dot(r24.xyzw, float4(1,1,1,1));
        r18.w = dot(r23.xyzw, float4(1,1,1,1));
        r19.w = dot(r6.zwww, r23.xyzw);
        r19.w = -1 + r19.w;
        r18.w = r18.w * r19.w + 1;
        r21.xy = r18.ww * r17.ww;
      } else {
        r21.xy = float2(1,1);
      }
      r17.w = r21.x + r21.y;
      r17.w = cmp(0 < r17.w);
      if (r17.w != 0) {
        r15.w = mad((int)r15.w, 6, 4);
        r23.xyzw = t7.Load(r15.w).xyzw;
        r15.w = f16tof32(r22.w);
        r17.w = 0.5 * r15.w;
        r22.xyw = -r17.www * r23.xyz + r19.xyz;
        r19.xyz = r17.www * r23.xyz + r19.xyz;
        r17.w = cmp(0 < r15.w);
        if (r17.w != 0) {
          r18.w = dot(r22.xyw, r22.xyw);
          r19.w = dot(r19.xyz, r19.xyz);
          r18.w = rsqrt(r18.w);
          r19.w = rsqrt(r19.w);
          r20.w = r19.w * r18.w;
          r21.y = dot(r22.xyw, r19.xyz);
          r21.y = r21.y * r20.w;
          r21.z = r21.y * 0.5 + r20.w;
          r21.z = 0.5 + r21.z;
          r23.y = r20.w / r21.z;
          r20.w = dot(r10.yzw, r22.xyw);
          r21.z = dot(r10.yzw, r19.xyz);
          r19.w = r21.z * r19.w;
          r18.w = r20.w * r18.w + r19.w;
          r23.x = 0.5 * r18.w;
        } else {
          r18.w = dot(r22.xyw, r22.xyw);
          r19.w = 1 + r18.w;
          r23.y = rcp(r19.w);
          r18.w = rsqrt(r18.w);
          r24.xyz = r22.xyw * r18.www;
          r23.x = dot(r10.yzw, r24.xyz);
          r21.y = 1;
        }
        r18.w = cmp(0 < r22.z);
        r19.w = r22.z * r22.z;
        r19.w = saturate(r19.w * r23.y);
        r19.w = sqrt(r19.w);
        r20.w = cmp(r23.x < r19.w);
        r21.z = max(r23.x, -r19.w);
        r21.z = r21.z + r19.w;
        r21.z = r21.z * r21.z;
        r19.w = 4 * r19.w;
        r19.w = r21.z / r19.w;
        r19.w = r20.w ? r19.w : r23.x;
        r18.w = saturate(r18.w ? r19.w : r23.x);
        r16.z = r16.z ? r23.y : 1;
        r19.xyz = r19.xyz + -r22.xyw;
        r19.w = dot(r13.xyz, r19.xyz);
        r23.xyz = r19.www * r13.xyz + -r19.xyz;
        r20.w = dot(r22.xyw, r23.xyz);
        r19.w = r19.w * r19.w;
        r15.w = r15.w * r15.w + -r19.w;
        r15.w = saturate(r20.w / r15.w);
        r19.xyz = r15.www * r19.xyz + r22.xyw;
        r19.xyz = r17.www ? r19.xyz : r22.xyw;
        r15.w = dot(r19.xyz, r19.xyz);
        r15.w = rsqrt(r15.w);
        r19.xyz = r19.xyz * r15.www;
        r17.w = r22.z * r15.w;
        r17.w = saturate(r17.w * r6.y);
        r15.w = saturate(r23.w * r15.w);
        r19.w = dot(r10.yzw, r19.xyz);
        r19.x = dot(r3.xyz, r19.xyz);
        r19.y = r19.x * 2 + 2;
        r19.y = rsqrt(r19.y);
        r19.z = r19.w + r10.x;
        r19.z = saturate(r19.z * r19.y);
        r19.y = saturate(r19.y * r19.x + r19.y);
        r20.w = cmp(0 < r17.w);
        if (r20.w != 0) {
          r21.z = -r17.w * r17.w + 1;
          r21.z = sqrt(r21.z);
          r22.x = dot(r10.xx, r19.ww);
          r22.y = r22.x + -r19.x;
          r22.z = cmp(r22.y >= r21.z);
          if (r22.z != 0) {
            r19.z = 1;
            r19.y = abs(r10.x);
          } else {
            r22.z = -r22.y * r22.y + 1;
            r22.z = rsqrt(r22.z);
            r22.z = r22.z * r17.w;
            r22.w = -r22.y * r19.w + r10.x;
            r23.x = r22.z * r22.w;
            r22.y = -r22.y * r19.x + r14.x;
            r23.y = r19.w * r19.w;
            r23.y = -r10.x * r10.x + -r23.y;
            r23.y = 1 + r23.y;
            r23.y = -r19.x * r19.x + r23.y;
            r22.x = saturate(r22.x * r19.x + r23.y);
            r22.x = sqrt(r22.x);
            r22.xy = r22.zz * r22.xy;
            r23.y = r22.x * r10.x;
            r23.z = r23.y + r23.y;
            r23.w = r19.w * r21.z + r10.x;
            r22.z = r22.z * r22.w + r23.w;
            r22.w = r19.x * r21.z + r22.y;
            r22.w = 1 + r22.w;
            r24.xy = r22.xz * r22.ww;
            r24.z = r23.z * r22.z;
            r23.y = r22.z * r23.y;
            r23.y = 0.5 * r23.y;
            r23.y = r24.x * -0.5 + r23.y;
            r23.y = r24.y * r23.y;
            r24.w = -r24.x * 2 + r24.z;
            r24.z = r24.z * r24.w;
            r24.x = r24.x * r24.x + r24.z;
            r24.z = r22.w * r22.w;
            r22.w = r19.x * r21.z + r22.w;
            r22.w = r22.w * -0.5 + -0.5;
            r22.w = r24.y * r22.w;
            r22.w = r23.w * r24.z + r22.w;
            r22.z = r22.z * r22.w + r24.x;
            r22.w = r23.y + r23.y;
            r23.w = r23.y * r23.y;
            r23.w = r22.z * r22.z + r23.w;
            r22.w = r22.w / r23.w;
            r22.z = r22.w * r22.z;
            r22.w = -r22.w * r23.y + 1;
            r22.x = r22.z * r22.x;
            r22.x = r22.w * r23.x + r22.x;
            r22.z = r22.z * r23.z;
            r22.y = r22.w * r22.y + r22.z;
            r19.w = r19.w * r21.z + r22.x;
            r19.x = r19.x * r21.z + r22.y;
            r21.z = r19.x * 2 + 2;
            r21.z = rsqrt(r21.z);
            r19.w = r19.w + r10.x;
            r19.z = saturate(r19.w * r21.z);
            r19.y = saturate(r21.z * r19.x + r21.z);
          }
        }
        r16.z = r16.z * r18.w;
        r22.xyz = r16.zzz * r15.xyz;
        r19.x = cmp(0 < r15.w);
        r15.w = r15.w * r15.w;
        r19.w = r19.y * 3.5999999 + 0.400000006;
        r15.w = r15.w / r19.w;
        r15.w = r7.w * r7.w + r15.w;
        r15.w = min(1, r15.w);
        r16.x = r19.x ? r15.w : r14.z;
        r15.w = 0.25 * r17.w;
        r19.x = (uint)r16.x >> 1;
        r19.x = (int)r19.x + 0x1fbd1df5;
        r17.w = r19.x * 3 + r17.w;
        r15.w = r17.w * r15.w;
        r17.w = 0.00100000005 + r19.y;
        r15.w = r15.w / r17.w;
        r23.x = r16.x + r15.w;
        r23.y = r16.x / r23.x;
        r19.xw = r20.ww ? r23.xy : r16.xy;
        r15.w = cmp(r21.y < 1);
        r20.w = 1.00010002 + -r21.y;
        r21.y = 1 + r21.y;
        r20.w = r20.w / r21.y;
        r20.w = sqrt(r20.w);
        r21.y = 0.25 * r20.w;
        r21.z = (uint)r19.x >> 1;
        r21.z = (int)r21.z + 0x1fbd1df5;
        r20.w = r21.z * 3 + r20.w;
        r20.w = r21.y * r20.w;
        r17.w = r20.w / r17.w;
        r17.w = r19.x + r17.w;
        r17.w = r19.x / r17.w;
        r17.w = sqrt(r17.w);
        r17.w = r19.w * r17.w;
        r15.w = r15.w ? r17.w : r19.w;
        r17.w = r19.z * r16.x + -r19.z;
        r17.w = r17.w * r19.z + 1;
        r17.w = r17.w * r17.w;
        r17.w = 3.14159274 * r17.w;
        r17.w = r16.x / r17.w;
        r15.w = r17.w * r15.w;
        r16.x = sqrt(r16.x);
        r17.w = 1 + -r16.x;
        r19.x = r14.y * r17.w + r16.x;
        r16.x = r18.w * r17.w + r16.x;
        r16.x = r16.x * r14.y;
        r16.x = r18.w * r19.x + r16.x;
        r16.x = rcp(r16.x);
        r15.w = r16.x * r15.w;
        r16.x = 1 + -r19.y;
        r17.w = r16.x * r16.x;
        r17.w = r17.w * r17.w;
        r18.w = r17.w * r16.x;
        r16.x = -r17.w * r16.x + 1;
        r19.xyz = r16.xxx * r9.wyz;
        r19.xyz = r14.www * r18.www + r19.xyz;
        r15.w = 0.5 * r15.w;
        r19.xyz = r15.www * r19.xyz;
        r19.xyz = r19.xyz * r16.zzz;
        r16.xzw = r20.xyz * r16.www;
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
    r15.w = (uint)r21.w >> 8;
    r15.w = (int)r4.x & (int)r15.w;
    r19.xyz = r20.xyz + r17.xyz;
    r16.xzw = r18.xyz + r16.xzw;
    r17.xyz = r15.www ? r19.xyz : r17.xyz;
    r18.xyz = r15.www ? r16.xzw : r18.xyz;
    r11.w = (int)r11.w + 1;
  }
  r4.xyz = r18.xyz + r17.xyz;
  r6.yzw = r13.www * r10.yzw + -r3.xyz;
  r10.x = saturate(r10.x);
  r3.x = (int)r3.w + asint(cb1[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t8.Load(r3.y).x;
  r3.y = min(asuint(cb1[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t8.Load(r3.x).x;
  r3.z = max(0.00100000005, r4.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.w = r3.w + -r3.z;
  r6.x = 0;
  r5.x = 1;
  r7.w = 0;
  r11.w = 1;
  r12.xyzw = float4(0,0,0,0);
  while (true) {
    r13.x = cmp((uint)r12.w >= (uint)r3.y);
    if (r13.x != 0) break;
    r13.x = cmp(r5.x < 0.00100000005);
    if (r13.x != 0) {
      break;
    }
    r13.x = (int)r3.x + (int)r12.w;
    r13.x = t9.Load(r13.x).x;
    r13.yzw = -cb3[r13.x+0].xyz + r2.xyz;
    r14.x = dot(r13.yzw, r13.yzw);
    r14.y = sqrt(r14.x);
    r14.z = cmp(r14.y < cb3[r13.x+0].w);
    if (r14.z != 0) {
      r14.z = cmp(0 < cb3[r13.x+341].z);
      if (r14.z != 0) {
        r14.z = (uint)r13.x << 2;
        r15.xyz = cb3[r14.z+1024].xyz * r2.yyy;
        r15.xyz = r2.xxx * cb3[r14.z+1023].xyz + r15.xyz;
        r15.xyz = r2.zzz * cb3[r14.z+1025].xyz + r15.xyz;
        r15.xyz = cb3[r14.z+1026].xyz + r15.xyz;
        r16.xyz = cb3[r14.z+1024].xyz * r6.zzz;
        r16.xyz = r6.yyy * cb3[r14.z+1023].xyz + r16.xyz;
        r16.xyz = r6.www * cb3[r14.z+1025].xyz + r16.xyz;
        r16.xyz = rcp(r16.xyz);
        r17.xyz = -r15.xyz * r16.xyz + -r16.xyz;
        r16.xyz = -r15.xyz * r16.xyz + r16.xyz;
        r16.xyz = max(r17.xyz, r16.xyz);
        r14.z = min(r16.y, r16.z);
        r14.z = min(r16.x, r14.z);
        r16.xyz = r14.zzz * r6.yzw + r2.xyz;
        r17.xyz = cb3[r13.x+682].xyz + cb3[r13.x+0].xyz;
        r16.xyz = -r17.xyz + r16.xyz;
        r14.z = cb3[r13.x+2387].w * 0.699999988;
        r17.xyz = -cb3[r13.x+2387].www * float3(0.5,0.5,0.5) + cb3[r13.x+2387].xyz;
        r18.xyz = cb3[r13.x+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb3[r13.x+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb3[r13.x+2387].xyz + -r17.xyz;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r15.w = dot(r19.xyz, float3(1,1,1));
        r15.x = dot(r15.xyz, float3(1,1,1));
        r15.x = r15.w + r15.x;
        r14.z = 1 / r14.z;
        r14.z = saturate(r15.x * r14.z);
        r15.x = r14.z * -2 + 3;
        r14.z = r14.z * r14.z;
        r15.x = -r15.x * r14.z + 1;
      } else {
        r14.y = saturate(r14.y / cb3[r13.x+0].w);
        r14.z = dot(r6.yzw, r13.yzw);
        r14.x = -cb3[r13.x+0].w * cb3[r13.x+0].w + r14.x;
        r14.x = r14.z * r14.z + -r14.x;
        r17.x = cmp(r14.x >= 0);
        r14.x = sqrt(r14.x);
        r14.x = r14.x + -r14.z;
        r13.yzw = r14.xxx * r6.yzw + r13.yzw;
        r18.yzw = -cb3[r13.x+682].xyz + r13.yzw;
        r13.y = r14.y * 2.5 + -1.5;
        r13.y = max(0, r13.y);
        r13.z = r13.y * r13.y;
        r13.y = -r13.y * 2 + 3;
        r18.x = -r13.z * r13.y + 1;
        r15.xyzw = r17.xxxx ? r18.xyzw : r6.xyzw;
        r16.xyz = r15.yzw;
      }
      r16.w = cb3[r13.x+341].y;
      r16.xyzw = t11.SampleLevel(s5_s, r16.xyzw, r3.w).xyzw;
      r13.yzw = cb3[r13.x+341].xxx * r16.xyz;
      r13.yzw = r13.yzw * r15.xxx;
      r12.xyz = r13.yzw * r5.xxx + r12.xyz;
      r13.y = -r16.w * r15.x + 1;
      r5.x = r13.y * r5.x;
      r13.x = cb3[r13.x+682].w * r15.x;
      r7.w = r13.x * r11.w + r7.w;
      r13.x = 1 + -r15.x;
      r11.w = r13.x * r11.w;
    }
    r12.w = (int)r12.w + 1;
  }
  r12.xyz = cb0[157].xyz * r12.xyz;
  r3.x = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r12.w = r7.w * r3.x;
  r3.x = cmp(0 < cb1[116].y);
  if (r3.x != 0) {
    r3.x = cb1[116].x + -r3.z;
    r3.x = -1 + r3.x;
    r3.xyz = t10.SampleLevel(s4_s, r6.yzw, r3.x).xyz;
    r3.w = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
    r3.w = cb1[117].x * r3.w;
    r3.xyz = cb0[187].xyz * r3.xyz;
    r6.x = cmp(cb1[116].z < 1);
    r13.xyz = r5.xxx * r3.xyz + r12.xyz;
    r13.w = r3.w * r11.w + r12.w;
    r3.xyz = r6.xxx ? float3(0,0,0) : r3.xyz;
    r12.xyzw = r6.xxxx ? r13.xyzw : r12.xyzw;
  } else {
    r3.xyz = float3(0,0,0);
  }
  r3.w = saturate(r4.w * cb0[197].x + cb0[197].y);
  r6.x = r3.w * -2 + 3;
  r3.w = r3.w * r3.w;
  r3.w = r6.x * r3.w;
  r6.x = max(9.99999975e-005, r12.w);
  r0.w = r0.w / r6.x;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r3.w * r0.w + 1;
  r3.xyz = r5.xxx * r3.xyz;
  r3.xyz = r12.xyz * r0.www + r3.xyz;
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
    r6.xyz = r6.yzw * v4.www + r1.xyz;
    r13.xyzw = cb0[1].xyzw * r6.yyyy;
    r13.xyzw = r6.xxxx * cb0[0].xyzw + r13.xyzw;
    r6.xyzw = r6.zzzz * cb0[2].xyzw + r13.xyzw;
    r6.xyzw = cb0[3].xyzw + r6.xyzw;
    r3.w = rcp(r12.w);
    r13.xyz = r12.xyz * r3.www;
    r3.w = rcp(r6.w);
    r12.xy = v4.ww * cb0[30].zw + r12.zw;
    r5.x = rcp(r12.y);
    r6.xyz = r6.xyz * r3.www + -r13.xyz;
    r3.w = dot(r6.xy, r6.xy);
    r3.w = sqrt(r3.w);
    r6.w = 0.5 * r3.w;
    r12.yz = r13.xy * r6.ww + r6.xy;
    r12.yz = -r3.ww * float2(0.5,0.5) + abs(r12.yz);
    r12.yz = max(float2(0,0), r12.yz);
    r12.yz = r12.yz / abs(r6.xy);
    r12.yz = float2(1,1) + -r12.yz;
    r3.w = min(r12.y, r12.z);
    r3.w = r3.w / r6.w;
    r6.xyz = r6.xyz * r3.www;
    r3.w = -r12.x * r5.x + r13.z;
    r3.w = 4 * r3.w;
    r3.w = max(abs(r6.z), r3.w);
    r12.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb1[176].xy * r12.xy;
    r6.xy = cb1[176].xy * r6.xy;
    r5.x = 0.0833333358 * r3.w;
    r6.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r6.xyz;
    r12.xyz = r6.xyz * r0.www + r13.xyz;
    r0.w = 1;
    r14.x = 0;
    r13.xyz = float3(0,0,0);
    r6.w = 0;
    r7.w = 0;
    r11.w = 0;
    r12.w = 0;
    r15.xw = float2(0,0);
    while (true) {
      r16.x = cmp((uint)r15.w >= 12);
      if (r16.x != 0) break;
      r16.x = (uint)r15.w;
      r16.xyzw = float4(1,2,3,4) + r16.xxxx;
      r17.xyzw = r16.xxxy * r6.xyzz + r12.xyzz;
      r18.xyzw = r16.yyzz * r6.xyxy + r12.xyxy;
      r16.xyzw = r16.wwzw * r6.xyzz + r12.xyzz;
      r19.x = r4.w * 0.666666687 + r0.w;
      r19.y = r4.w * 0.666666687 + r19.x;
      r20.x = t15.SampleLevel(s7_s, r17.xy, r0.w).x;
      r20.y = t15.SampleLevel(s7_s, r18.xy, r0.w).x;
      r20.z = t15.SampleLevel(s7_s, r18.zw, r19.x).x;
      r20.w = t15.SampleLevel(s7_s, r16.xy, r19.x).x;
      r16.xy = r17.zw;
      r16.xyzw = r16.xyzw + -r20.xyzw;
      r17.xyzw = r3.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r16.xyzw;
      r17.xyzw = cmp(abs(r17.xyzw) < r5.xxxx);
      r18.xy = (int2)r17.zw | (int2)r17.xy;
      r17.w = (int)r18.y | (int)r18.x;
      if (r17.w != 0) {
        r15.x = r16.x;
        r13.xyz = r16.yzw;
        r6.w = r17.x;
        r7.w = r17.y;
        r11.w = r17.z;
        r12.w = -1;
        break;
      }
      r14.x = r16.w;
      r15.w = (int)r15.w + 4;
      r0.w = r19.y;
      r15.x = r16.x;
      r13.xyz = r16.yzw;
      r6.w = r17.x;
      r7.w = r17.y;
      r11.w = r17.z;
      r12.w = r17.w;
    }
    if (r12.w != 0) {
      r13.w = 2;
      r16.xy = r13.yz;
      r16.z = 3;
      r13.yzw = r11.www ? r13.xyw : r16.xyz;
      r15.y = r13.x;
      r15.z = 1;
      r13.xyz = r7.www ? r15.xyz : r13.yzw;
      r14.y = r15.x;
      r14.z = 0;
      r13.xyz = r6.www ? r14.xyz : r13.xyz;
      r0.w = (uint)r15.w;
      r0.w = r13.z + r0.w;
      r3.w = r13.x + -r13.y;
      r3.w = saturate(r13.x / r3.w);
      r0.w = r3.w + r0.w;
      r6.xyz = r6.xyz * r0.www + r12.xyz;
      r6.xy = cb1[176].zw * r6.xy;
      r6.xy = r6.xy * float2(2,-2) + float2(-1,1);
      r6.xy = cb0[66].xy * r6.xy;
      r6.xy = r6.xy / cb0[66].xy;
      r12.xyz = cb0[123].xyw * r6.yyy;
      r12.xyz = r6.xxx * cb0[122].xyw + r12.xyz;
      r12.xyz = r6.zzz * cb0[124].xyw + r12.xyz;
      r12.xyz = cb0[125].xyw + r12.xyz;
      r6.zw = r12.xy / r12.zz;
      r12.xy = r6.zw * cb1[177].xy + cb1[177].zw;
      r6.xy = saturate(abs(r6.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r6.xy, r6.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r6.xy = saturate(abs(r6.zw) * float2(5,5) + float2(-4,-4));
      r3.w = dot(r6.xy, r6.xy);
      r3.w = 1 + -r3.w;
      r3.w = max(0, r3.w);
      r0.w = min(r3.w, r0.w);
      r6.xyz = t16.SampleLevel(s8_s, r12.xy, 0).xyz;
      r6.xyz = min(float3(0,0,0), -r6.xyz);
      r3.w = saturate(-r4.w * 6.5999999 + 2);
      r0.w = r3.w * r0.w;
      r3.w = 1;
      r6.xyz = -r6.xyz * r0.www;
      r6.xyz = cb1[178].xxx * r6.xyz;
      r0.w = -r3.w * r0.w + 1;
      r3.xyz = r3.xyz * r0.www + r6.xyz;
    }
  }
  r6.xyzw = r4.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r6.x * r6.x;
  r3.w = -9.27999973 * r10.x;
  r3.w = exp2(r3.w);
  r0.w = min(r3.w, r0.w);
  r0.w = r0.w * r6.x + r6.y;
  r6.xy = r0.ww * float2(-1.03999996,1.03999996) + r6.zw;
  r9.xyz = r9.wyz;
  r0.w = r14.w * r6.y;
  r6.xyz = r9.xyz * r6.xxx + r0.www;
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
    r2.w = dot(cb1[122].xyz, r10.yzw);
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
      r13.xyz = cb1[127].xyz * r10.zzz;
      r10.xyz = r10.yyy * cb1[126].xyz + r13.xyz;
      r10.xyz = r10.www * cb1[128].xyz + r10.xyz;
      r2.w = dot(r12.xyz, r10.xyz);
      r2.w = r2.w + r2.w;
      r10.xyz = r10.xyz * -r2.www + r12.xyz;
      r10.xyz = r10.xyz * cb1[129].zzz + r2.xyz;
      r10.xyz = cb0[70].xyz + r10.xyz;
      r12.xyz = cb0[13].xyz * r10.yyy;
      r10.xyw = r10.xxx * cb0[12].xyz + r12.xyz;
      r10.xyz = r10.zzz * cb0[14].xyz + r10.xyw;
      r10.xyz = cb0[15].xyz + r10.xyz;
      r2.w = asuint(cb0[197].w) << 2;
      r12.xyz = cb1[r2.w+132].xyw * r10.yyy;
      r10.xyw = r10.xxx * cb1[r2.w+131].xyw + r12.xyz;
      r10.xyz = r10.zzz * cb1[r2.w+133].xyw + r10.xyw;
      r10.xyz = cb1[r2.w+134].xyw + r10.xyz;
      r2.w = cb1[141].z ? cb0[197].w : 0;
      r10.xy = r10.xy / r10.zz;
      r10.xy = max(-cb1[141].xy, r10.xy);
      r10.xy = min(cb1[141].xy, r10.xy);
      r10.xy = r10.xy * cb1[r2.w+139].xy + cb1[r2.w+139].zw;
      r10.xyzw = t12.SampleLevel(s5_s, r10.xy, 0).xyzw;
      r0.w = r10.w * r0.w;
    } else {
      r10.xyz = float3(0,0,0);
      r0.w = 0;
    }
    r0.w = 1 + -r0.w;
    r3.xyz = r0.www * r3.xyz + r10.xyz;
  }
  r3.xyz = r3.xyz * r6.xyz;
  r6.xyz = r9.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r6.xyz = r9.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r6.xyz;
  r6.xyz = r9.xyz * float3(2.75519991,2.75519991,2.75519991) + r6.xyz;
  r6.xyz = float3(1.33200002,1.33200002,1.33200002) + r6.xyz;
  r6.xyz = max(float3(1,1,1), r6.xyz);
  r3.xyz = r3.xyz * r6.xyz + r4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r2.w = sqrt(r0.w);
  r3.w = dot(r1.xyz, cb0[60].xyz);
  r2.w = r2.w / r3.w;
  r2.w = cb0[210].z * r2.w;
  r2.w = max(0, r2.w);
  r3.w = min(cb1[143].z, cb0[67].z);
  r4.x = cb0[67].z + -r3.w;
  r1.w = r4.x + r1.z;
  r4.x = dot(r1.xyw, r1.xyw);
  r4.y = rsqrt(r4.x);
  r4.x = r4.x * r4.y;
  r2.w = max(cb1[143].w, r2.w);
  r4.z = cmp(0 < r2.w);
  r4.w = r2.w * r4.y;
  r3.w = r4.w * r1.w + r3.w;
  r4.w = -r4.w * r1.w + r1.w;
  r2.w = -r2.w * r4.y + 1;
  r2.w = r2.w * r4.x;
  r5.x = -cb1[146].y + r3.w;
  r5.x = cb1[143].y * r5.x;
  r5.x = max(-127, r5.x);
  r5.x = exp2(-r5.x);
  r5.x = cb1[146].x * r5.x;
  r3.w = -cb1[144].w + r3.w;
  r3.w = cb1[144].y * r3.w;
  r3.w = max(-127, r3.w);
  r3.w = exp2(-r3.w);
  r3.w = cb1[144].z * r3.w;
  r5.x = r4.z ? r5.x : cb1[143].x;
  r3.w = r4.z ? r3.w : cb1[144].x;
  r2.w = r4.z ? r2.w : r4.x;
  r4.z = r4.z ? r4.w : r1.w;
  r4.w = cb1[143].y * r4.z;
  r4.w = max(-127, r4.w);
  r6.x = exp2(-r4.w);
  r6.x = 1 + -r6.x;
  r6.x = r6.x / r4.w;
  r6.y = -r4.w * 0.240226507 + 0.693147182;
  r4.w = cmp(0.00999999978 < abs(r4.w));
  r4.w = r4.w ? r6.x : r6.y;
  r4.z = cb1[144].y * r4.z;
  r4.z = max(-127, r4.z);
  r6.x = exp2(-r4.z);
  r6.x = 1 + -r6.x;
  r6.x = r6.x / r4.z;
  r6.y = -r4.z * 0.240226507 + 0.693147182;
  r4.z = cmp(0.00999999978 < abs(r4.z));
  r4.z = r4.z ? r6.x : r6.y;
  r3.w = r4.z * r3.w;
  r3.w = r5.x * r4.w + r3.w;
  r4.z = r3.w * r2.w;
  r6.xy = cmp(float2(0,0) < cb1[146].zw);
  if (r6.x != 0) {
    r4.w = saturate(r4.x * cb1[150].x + cb1[150].y);
    r6.xz = float2(1,-1) * cb1[149].yx;
    r10.x = dot(r1.xy, r6.xz);
    r10.y = dot(r1.xy, cb1[149].xy);
    r10.z = r1.w;
    r6.xzw = t13.SampleLevel(s6_s, r10.xyz, 0).xyz;
    r10.xyz = t13.SampleLevel(s6_s, r10.xyz, cb1[150].z).xyz;
    r6.xzw = -r10.xyz + r6.xzw;
    r6.xzw = r4.www * r6.xzw + r10.xyz;
    r6.xzw = cb1[145].xyz * r6.xzw;
  } else {
    r6.xzw = cb1[145].xyz;
  }
  r4.w = cmp(cb1[147].w >= 0);
  r5.x = cmp(cb1[146].z == 0.000000);
  r4.w = r4.w ? r5.x : 0;
  if (r4.w != 0) {
    r10.xyz = r4.yyy * r1.xyw;
    r1.w = saturate(dot(r10.xyz, cb1[147].xyz));
    r1.w = log2(r1.w);
    r1.w = cb1[148].w * r1.w;
    r1.w = exp2(r1.w);
    r10.xyz = cb1[148].xyz * r1.www;
    r1.w = -cb1[147].w + r2.w;
    r1.w = max(0, r1.w);
    r1.w = r3.w * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r10.xyz = r10.xyz * r1.www;
  } else {
    r10.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r4.z);
  r1.w = min(1, r1.w);
  r10.w = max(cb1[145].w, r1.w);
  r1.w = cmp(cb1[146].w < r4.x);
  r1.w = r1.w ? r6.y : 0;
  r4.xyzw = r1.wwww ? float4(1,0,0,0) : r10.wxyz;
  r1.w = 1 + -r4.x;
  r4.yzw = r6.xzw * r1.www + r4.yzw;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r2.yyy;
    r6.xyz = r2.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r2.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r6.xy = r6.xy / r6.zz;
    r10.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r6.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r10.z = cb0[208].z * r1.w;
    r6.xyzw = t14.SampleLevel(s0_s, r10.xyz, 0).xyzw;
    r4.yzw = r4.yzw * r6.www + r6.xyz;
    r4.x = r6.w * r4.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r2.yyy;
    r6.xyz = r2.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r2.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r1.w = cmp(0 != cb0[184].x);
    r10.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r6.xy = r6.xy / r6.zz;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r10.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r10.xyz;
    r2.w = dot(r10.xyz, r10.xyz);
    r3.w = sqrt(r2.w);
    r3.w = -cb0[181].x + r3.w;
    r3.w = max(0, r3.w);
    r3.w = cb0[182].x * r3.w;
    r3.w = cb0[181].z * r3.w;
    r12.z = sqrt(r3.w);
    r3.w = cb0[181].y * r12.z;
    r5.x = cmp(r3.w < 0.707106769);
    r3.w = dot(r3.ww, r3.ww);
    r3.w = min(1, r3.w);
    r3.w = r5.x ? r3.w : 1;
    r2.w = rsqrt(r2.w);
    r10.xyz = r10.xyz * r2.www;
    r2.w = -r10.z * r10.z + 1;
    r2.w = sqrt(r2.w);
    r13.y = r10.z * 0.5 + 0.5;
    r6.zw = r10.xy / r2.ww;
    r2.w = 1 + -abs(r6.z);
    r2.w = sqrt(r2.w);
    r5.x = abs(r6.z) * -0.0187292993 + 0.0742610022;
    r5.x = r5.x * abs(r6.z) + -0.212114394;
    r5.x = r5.x * abs(r6.z) + 1.57072878;
    r7.w = r5.x * r2.w;
    r7.w = r7.w * -2 + 3.14159274;
    r6.z = cmp(r6.z < -r6.z);
    r6.z = r6.z ? r7.w : 0;
    r2.w = r5.x * r2.w + r6.z;
    r5.x = cmp(r6.w < 0);
    r6.z = 6.28318548 + -r2.w;
    r2.w = r5.x ? r6.z : r2.w;
    r13.x = 0.159154937 * r2.w;
    r6.zw = cb0[180].zw * float2(0.5,0.5) + r13.xy;
    r10.xy = float2(1,1) + cb0[180].xy;
    r10.xy = cb0[180].xy / r10.xy;
    r6.zw = r10.xy * r6.zw;
    r12.xy = r1.ww ? r6.zw : r6.xy;
    r6.xyzw = t4.SampleLevel(s1_s, r12.xyz, 0).xyzw;
    r6.xyz = r6.xyz * r3.www;
    r1.w = 1 + -r6.w;
    r1.w = -r3.w * r1.w + 1;
    r6.xyz = cb0[135].zzz * r6.xyz;
    r4.yzw = r6.xyz * r4.xxx + r4.yzw;
    r4.x = r4.x * r1.w;
  }
  r6.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r11.xyz;
  r6.xyz = r6.xyz + -r3.xyz;
  r3.xyz = cb0[145].yyy * r6.xyz + r3.xyz;
  r8.xyz = max(float3(0,0,0), r5.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xy = mad((int2)v3.xx, int2(36,36), int2(5,19));
    r5.x = t2[r5.x].val[0/4];
    r5.z = t2[r5.x].val[0/4+1];
    r5.w = t2[r5.x].val[0/4+2];
    r5.xzw = -r5.xzw + r2.xyz;
    r6.x = t2[r5.y].val[0/4];
    r6.y = t2[r5.y].val[0/4+1];
    r6.z = t2[r5.y].val[0/4+2];
    r6.xyz = float3(1,1,1) + r6.xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xzw));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
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
  r0.xyz = r0.xyz * r7.xyz + r3.xyz;
  r0.xyz = r0.xyz + r8.xyz;
  r0.xyz = r0.xyz * r4.xxx + r4.yzw;
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