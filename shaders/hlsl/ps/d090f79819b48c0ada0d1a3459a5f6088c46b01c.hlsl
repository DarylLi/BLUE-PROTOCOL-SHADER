// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t20 : register(t20);

Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture3D<float4> t13 : register(t13);

TextureCube<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

TextureCubeArray<float4> t10 : register(t10);

TextureCube<float4> t9 : register(t9);

Buffer<uint4> t8 : register(t8);

Buffer<uint4> t7 : register(t7);

Buffer<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

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
  float4 cb2[179];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[24];
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
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
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
  r1.xyzw = cb0[45].xyzw * v3.yyyy;
  r1.xyzw = v3.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v3.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r0.w = cb1[4].w * cb0[141].w;
  r3.w = v4.x ? 1 : -1;
  r0.w = r3.w * r0.w;
  r3.w = cb6[42].x * v2.y + cb6[42].y;
  r4.x = -cb6[42].z * r3.w + 1;
  r4.y = -cb6[42].w + r2.z;
  r4.y = abs(r4.y) / cb6[43].x;
  r4.y = -r4.y * cb6[43].y + 1;
  r4.y = -r4.x * r4.y + 1;
  r4.x = v2.x;
  r4.zw = r4.xy * cb6[2].xy + float2(0.200000003,0.200000003);
  r5.x = cb4[2].x * cb0[142].z;
  r5.x = cb6[44].x * r5.x;
  r5.xy = cb6[3].xy * r5.xx;
  r4.zw = r5.xy * float2(0.699999988,0.699999988) + r4.zw;
  r6.y = t16.SampleBias(s9_s, r4.zw, cb0[143].y).x;
  r6.xw = float2(0,1);
  r5.zw = cb6[45].xx * r6.xy;
  r6.x = frac(cb0[142].z);
  r7.xy = r5.zw * r6.xx + r4.zw;
  r7.xyz = t16.SampleBias(s9_s, r7.xy, cb0[143].y).xyz;
  r6.y = 0.5 + cb0[142].z;
  r6.y = frac(r6.y);
  r4.zw = r5.zw * r6.yy + r4.zw;
  r8.xyz = t16.SampleBias(s9_s, r4.zw, cb0[143].y).xyz;
  r4.z = r6.y + r6.y;
  r4.w = max(1, r4.z);
  r4.w = -1 + r4.w;
  r4.w = r4.w + r4.w;
  r4.zw = min(float2(1,1), r4.zw);
  r4.w = 1 + -r4.w;
  r4.z = r4.z + r4.z;
  r4.z = min(1, r4.z);
  r4.z = r4.w * r4.z;
  r8.xyz = r8.xyz + -r7.xyz;
  r7.xyz = r4.zzz * r8.xyz + r7.xyz;
  r8.xyz = r7.xyz + r7.xyz;
  r7.xzw = -r7.xyz * float3(2,2,2) + float3(0,0,1);
  r9.xyz = cb6[45].yyy * r7.xzw + r8.xyz;
  r4.w = 1 + r9.z;
  r4.xy = r4.xy * cb6[1].xy + r5.xy;
  r5.xy = r5.zw * r6.xx + r4.xy;
  r10.xyz = t16.SampleBias(s9_s, r5.xy, cb0[143].y).xyz;
  r4.xy = r5.zw * r6.yy + r4.xy;
  r5.xyz = t16.SampleBias(s9_s, r4.xy, cb0[143].y).xyz;
  r5.xyz = r5.xyz + -r10.xyz;
  r4.xyz = r4.zzz * r5.xyz + r10.xyz;
  r5.xyz = r4.xyz + r4.xyz;
  r10.xyz = -r4.xyz * float3(2,2,2) + float3(0,0,1);
  r11.xyz = cb6[45].zzz * r10.xyz + r5.xyz;
  r9.w = 1 + r9.z;
  r11.xyz = float3(-1,-1,1) * r11.xyz;
  r4.y = dot(r9.xyw, r11.xyz);
  r11.xyz = r11.xyz * r4.www;
  r4.yzw = r9.xyw * r4.yyy + -r11.xyz;
  r9.xyz = float3(0,0,1) + -r4.yzw;
  r4.yzw = cb6[45].www * r9.xyz + r4.yzw;
  r5.w = cb6[6].y + v2.y;
  r5.w = r5.w * cb6[47].w + -cb6[47].w;
  r5.w = saturate(cb6[48].z + r5.w);
  r6.x = cb6[49].y * r5.w;
  r5.w = -cb6[49].y * r5.w + 1;
  r5.w = cb6[49].w * r5.w + r6.x;
  r4.yzw = float3(-1,-1,-1) + r4.yzw;
  r4.yzw = r5.www * r4.yzw + float3(1,1,1);
  r4.yzw = r4.yzw * cb0[138].www + cb0[138].xyz;
  r6.x = dot(r4.yzw, r4.yzw);
  r6.x = rsqrt(r6.x);
  r4.yzw = r6.xxx * r4.yzw;
  r0.xyz = r4.zzz * r0.xyz;
  r0.xyz = r4.yyy * v0.xyz + r0.xyz;
  r0.xyz = r4.www * v1.xyz + r0.xyz;
  r4.y = dot(r0.xyz, r0.xyz);
  r4.y = rsqrt(r4.y);
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.y = cb0[142].z * cb6[51].x + v2.x;
  r6.x = cb6[52].y * r4.y;
  r4.y = cb0[142].z * cb6[52].z + v2.y;
  r6.y = cb6[52].w * r4.y;
  r4.y = cb0[142].z * cb6[54].x + v2.x;
  r9.x = cb6[55].y * r4.y;
  r4.y = cb0[142].z * cb6[55].z + v2.y;
  r9.y = cb6[55].w * r4.y;
  r4.y = t17.SampleBias(s10_s, r9.xy, cb0[143].y).z;
  r4.y = -0.5 + r4.y;
  r4.y = r4.y + r4.y;
  r4.zw = r4.yy * cb6[56].yy + r6.xy;
  r4.z = t18.SampleBias(s11_s, r4.zw, cb0[143].y).x;
  r4.w = cmp(0 >= r4.z);
  r4.z = log2(r4.z);
  r4.z = cb6[56].z * r4.z;
  r4.z = exp2(r4.z);
  r9.xyz = cb6[14].xyz * r4.zzz;
  r9.xyz = r4.www ? float3(0,0,0) : r9.xyz;
  r11.xyz = cb5[6].xyz * cb6[58].yyy + cb6[18].xyz;
  r4.z = dot(cb5[7].xyz, r0.xyz);
  r4.w = saturate(r4.z);
  r4.w = 1 + -r4.w;
  r6.x = cb0[142].z * cb6[59].z + v2.x;
  r6.x = cb6[60].w * r6.x;
  r8.w = cb0[142].z * cb6[61].x + v2.y;
  r6.y = cb6[61].y * r8.w;
  r8.w = cb0[142].z * cb6[62].z + v2.x;
  r12.x = cb6[63].w * r8.w;
  r8.w = cb0[142].z * cb6[64].x + v2.y;
  r12.y = cb6[64].y * r8.w;
  r12.xy = t17.SampleBias(s10_s, r12.xy, cb0[143].y).xy;
  r12.xy = float2(-0.5,-0.5) + r12.xy;
  r12.xy = cb6[64].ww * r12.xy;
  r6.xy = r12.xy * float2(2,2) + r6.xy;
  r6.x = t19.SampleBias(s12_s, r6.xy, cb0[143].y).x;
  r12.xyz = -cb6[28].xyz + cb6[27].xyz;
  r12.xyz = r6.xxx * r12.xyz + cb6[28].xyz;
  r13.xyz = cb6[30].xyz * r12.xyz;
  r12.xyz = r12.xyz * cb6[32].xyz + -r13.xyz;
  r12.xyz = r5.www * r12.xyz + r13.xyz;
  r13.xyz = -r12.xyz * cb6[65].xxx + r12.xyz;
  r13.xyz = cb5[6].xyz * r13.xyz;
  r13.xyz = r13.xyz * r4.zzz;
  r8.xyz = cb6[65].yyy * r7.xzw + r8.xyz;
  r4.z = 1 + r8.z;
  r5.xyz = cb6[65].zzz * r10.xyz + r5.xyz;
  r8.w = 1 + r8.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r6.x = dot(r8.xyw, r5.xyz);
  r5.xyz = r5.xyz * r4.zzz;
  r5.xyz = r8.xyw * r6.xxx + -r5.xyz;
  r4.z = dot(r5.xyz, r5.xyz);
  r4.z = sqrt(r4.z);
  r5.xyz = r5.xyz / r4.zzz;
  r4.z = saturate(dot(r5.xyz, cb5[7].xyz));
  r7.xzw = cb0[67].xyz + -r2.xyz;
  r6.x = dot(r7.xzw, r7.xzw);
  r6.x = sqrt(r6.x);
  r7.xzw = r7.xzw / r6.xxx;
  r7.xzw = cb5[7].xyz + r7.xzw;
  r6.x = dot(r7.xzw, r7.xzw);
  r6.x = sqrt(r6.x);
  r7.xzw = r7.xzw / r6.xxx;
  r5.x = saturate(dot(r7.xzw, r5.xyz));
  r5.y = 11 * cb6[66].x;
  r5.y = exp2(r5.y);
  r5.z = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = r5.y * r5.x;
  r5.x = exp2(r5.x);
  r4.z = r5.x * r4.z;
  r4.z = cb6[66].y * r4.z;
  r7.xzw = cb5[5].xyz * r4.zzz;
  r5.xyz = r5.zzz ? float3(0,0,0) : r7.xzw;
  r5.xyz = r13.xyz * float3(0.318309844,0.318309844,0.318309844) + r5.xyz;
  r5.xyz = r11.xyz * r4.www + r5.xyz;
  r5.xyz = r9.xyz * r5.xyz;
  r7.xzw = cb6[32].xyz + -cb6[30].xyz;
  r7.xzw = r5.www * r7.xzw + cb6[30].xyz;
  r8.xyz = r7.xzw * r5.xyz;
  r5.xyz = -r5.xyz * r7.xzw + cb6[33].xyz;
  r5.xyz = cb6[66].zzz * r5.xyz + r8.xyz;
  r7.xzw = saturate(cb6[35].xyz * r12.xyz);
  r4.z = saturate(cb6[67].w * r3.w);
  r3.w = 1 + -r3.w;
  r3.w = saturate(cb6[68].z * r3.w);
  r3.w = r4.z * r3.w;
  r4.x = r4.x + -r7.y;
  r4.x = r4.x * cb6[46].y + v2.x;
  r4.x = r4.x * 2 + -1;
  r4.x = 1 + -abs(r4.x);
  r4.x = r4.x * cb6[69].x + -cb6[69].x;
  r4.x = saturate(cb6[69].z + r4.x);
  r4.x = cb6[69].w * r4.x;
  r4.z = cb0[142].z * cb6[71].x + v2.x;
  r6.x = cb6[72].y * r4.z;
  r4.z = cb0[142].z * cb6[72].z + v2.y;
  r6.y = cb6[72].w * r4.z;
  r4.zw = r4.yy * cb6[73].yy + r6.xy;
  r4.z = t20.SampleBias(s13_s, r4.zw, cb0[143].y).x;
  r4.w = cmp(0 >= r4.z);
  r4.z = log2(r4.z);
  r4.z = cb6[73].z * r4.z;
  r4.z = exp2(r4.z);
  r4.z = r4.w ? 0 : r4.z;
  r4.w = cb0[142].z * cb6[74].w + v2.x;
  r6.x = cb6[76].x * r4.w;
  r4.w = cb0[142].z * cb6[76].y + v2.y;
  r6.y = cb6[76].z * r4.w;
  r4.yw = r4.yy * cb6[56].yy + r6.xy;
  r4.y = t16.SampleBias(s9_s, r4.yw, cb0[143].y).x;
  r4.w = -0.100000001 + v2.x;
  r5.w = 0.899999976 + -v2.x;
  r4.w = min(r5.w, r4.w);
  r4.y = r4.w * 5 + r4.y;
  r4.y = r4.z * r4.y;
  r4.y = r4.y * cb6[69].x + -cb6[69].x;
  r4.y = saturate(cb6[69].z + r4.y);
  r4.x = r4.x * r4.y;
  r4.w = saturate(r4.x * r3.w);
  r3.w = saturate(cb6[65].x);
  r5.w = saturate(cb6[66].w);
  r6.x = saturate(cb6[67].x);
  r6.x = r6.x * cb0[139].y + cb0[139].x;
  r6.y = cmp(0 < cb1[20].z);
  if (r6.y != 0) {
    r8.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = min(float3(0.99000001,0.99000001,0.99000001), r8.xyz);
    r8.xyz = cb0[213].xyz * r8.xyz;
    r9.xyz = (int3)r8.xyz;
    r9.w = 0;
    r9.xyzw = t0.Load(r9.xyzw).xyzw;
    r9.xyzw = (uint4)r9.xyzw;
    r6.y = 1 + cb0[213].w;
    r8.xyz = r8.xyz / r9.www;
    r8.xyz = frac(r8.xyz);
    r8.xyz = cb0[213].www * r8.xyz;
    r8.xyz = r9.xyz * r6.yyy + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
    r8.xyz = cb0[214].xyz * r8.xyz;
    r6.z = t1.SampleLevel(s0_s, r8.xyz, 0).x;
  } else {
    r6.z = 1;
  }
  r6.y = 0.0799999982 * r5.w;
  r8.xyz = -r5.www * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xzw;
  r8.xyz = r3.www * r8.xyz + r6.yyy;
  r9.xyz = -r7.xzw * r3.www + r7.xzw;
  r9.xyz = r9.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = r8.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r10.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r10.w = 0;
  r9.w = r8.x;
  r9.xyzw = r3.wwww ? r10.xyzw : r9.xyzw;
  r8.yz = r3.ww ? float2(0,0) : r8.yz;
  r10.x = t2[0].val[0/4];
  r10.y = t2[0].val[0/4+1];
  r10.z = t2[0].val[0/4+2];
  r10.w = t2[0].val[0/4+3];
  r0.w = 1;
  r10.x = dot(r10.xyzw, r0.xyzw);
  r11.x = t2[1].val[0/4];
  r11.y = t2[1].val[0/4+1];
  r11.z = t2[1].val[0/4+2];
  r11.w = t2[1].val[0/4+3];
  r10.y = dot(r11.xyzw, r0.xyzw);
  r11.x = t2[2].val[0/4];
  r11.y = t2[2].val[0/4+1];
  r11.z = t2[2].val[0/4+2];
  r11.w = t2[2].val[0/4+3];
  r10.z = dot(r11.xyzw, r0.xyzw);
  r11.xyzw = r0.xyzz * r0.yzzx;
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
  r0.w = r0.y * r0.y;
  r0.w = r0.x * r0.x + -r0.w;
  r11.x = t2[6].val[0/4];
  r11.y = t2[6].val[0/4+1];
  r11.z = t2[6].val[0/4+2];
  r10.xyz = r12.xyz + r10.xyz;
  r10.xyz = r11.xyz * r0.www + r10.xyz;
  r10.xyz = max(float3(0,0,0), r10.xyz);
  r10.xyz = cb0[187].xyz * r10.xyz;
  r10.xyz = r10.xyz * r9.xyz;
  r11.xyz = r7.xzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r11.xyz = r7.xzw * float3(-4.79510021,-4.79510021,-4.79510021) + r11.xyz;
  r7.xyz = r7.xzw * float3(2.75519991,2.75519991,2.75519991) + r11.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r11.xy = -cb0[129].xy + v3.xy;
  r11.xy = cb0[131].zw * r11.xy;
  r11.xy = (uint2)r11.xy;
  r0.w = v3.w * cb2[3].x + cb2[3].y;
  r0.w = log2(r0.w);
  r0.w = cb2[3].z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = (uint)r0.w;
  r3.w = asint(cb2[1].z) + -1;
  r0.w = min((uint)r3.w, (uint)r0.w);
  r11.xy = (uint2)r11.xy >> asuint(cb2[2].xx);
  r0.w = mad((int)r0.w, asint(cb2[1].y), (int)r11.y);
  r0.w = mad((int)r0.w, asint(cb2[1].x), (int)r11.x);
  if (cb2[0].z != 0) {
    r11.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r11.yzw = r11.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r12.xyzw = cb2[51].xyzw * r2.yyyy;
      r12.xyzw = r2.xxxx * cb2[50].xyzw + r12.xyzw;
      r12.xyzw = r2.zzzz * cb2[52].xyzw + r12.xyzw;
      r12.xyzw = cb2[53].xyzw + r12.xyzw;
      r12.xy = r12.xy / r12.ww;
      r13.xy = cmp(r12.xy >= float2(0,0));
      r13.zw = cmp(float2(1,1) >= r12.xy);
      r13.xy = r13.zw ? r13.xy : 0;
      r3.w = r13.y ? r13.x : 0;
      if (r3.w != 0) {
        r3.w = t5.SampleLevel(s3_s, r12.xy, 0).x;
        r5.w = cmp(r12.z < r3.w);
        r3.w = cmp(0.99000001 < r3.w);
        r3.w = (int)r3.w | (int)r5.w;
        r12.x = r3.w ? 1.000000 : 0;
      } else {
        r12.x = 1;
      }
    } else {
      r12.x = 1;
    }
    if (cb2[9].z != 0) {
      r3.w = cb2[9].z;
      r5.w = 0;
      while (true) {
        r6.y = cmp((uint)r5.w >= asuint(cb2[9].z));
        if (r6.y != 0) break;
        r6.y = dot(cb2[10].xyzw, icb[r5.w+0].xyzw);
        r6.y = cmp(v3.w < r6.y);
        if (r6.y != 0) {
          r3.w = r5.w;
          break;
        }
        r5.w = (int)r5.w + 1;
      }
      r5.w = cmp((uint)r3.w < asuint(cb2[9].z));
      if (r5.w != 0) {
        r5.w = (uint)r3.w << 2;
        r13.xyzw = cb2[r5.w+12].xyzw * r2.yyyy;
        r13.xyzw = r2.xxxx * cb2[r5.w+11].xyzw + r13.xyzw;
        r13.xyzw = r2.zzzz * cb2[r5.w+13].xyzw + r13.xyzw;
        r13.xyzw = cb2[r5.w+14].xyzw + r13.xyzw;
        r14.xyzw = r13.xyxy / r13.wwww;
        r13.xy = cmp(r14.zw >= cb2[r3.w+27].xy);
        r15.xy = cmp(cb2[r3.w+27].zw >= r14.zw);
        r13.xy = r13.xy ? r15.xy : 0;
        r3.w = r13.y ? r13.x : 0;
        if (r3.w != 0) {
          r14.xyzw = r14.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r13.xy = frac(r14.zw);
          r14.xyzw = floor(r14.xyzw);
          r15.xyzw = float4(0.5,1.5,0.5,0.5) + r14.zwzw;
          r15.xyzw = cb2[31].zwzw * r15.xyzw;
          r16.x = t4.SampleLevel(s2_s, r15.xy, 0).x;
          r14.xyzw = float4(1.5,1.5,1.5,0.5) + r14.xyzw;
          r14.xyzw = cb2[31].zwzw * r14.xyzw;
          r16.y = t4.SampleLevel(s2_s, r14.xy, 0).x;
          r16.z = t4.SampleLevel(s2_s, r14.zw, 0).x;
          r16.w = t4.SampleLevel(s2_s, r15.zw, 0).x;
          r3.w = r13.z * 4000 + -1;
          r14.xyzw = saturate(r16.xyzw * float4(4000,4000,4000,4000) + -r3.wwww);
          r13.zw = r14.zy + -r14.wx;
          r13.xz = r13.xx * r13.zw + r14.wx;
          r3.w = r13.z + -r13.x;
          r3.w = r13.y * r3.w + r13.x;
        } else {
          r3.w = 1;
        }
      } else {
        r3.w = 1;
      }
    } else {
      r3.w = 1;
    }
    r11.x = 1;
    r5.w = dot(float4(1,1,1,1), r11.xyzw);
    r12.yzw = r11.yzw;
    r6.y = dot(r12.xyzw, float4(1,1,1,1));
    r6.y = -1 + r6.y;
    r5.w = r5.w * r6.y + 1;
    r6.y = saturate(v3.w * cb2[9].x + cb2[9].y);
    r6.y = r6.y * r6.y;
    r5.w = r5.w + -r3.w;
    r3.w = r6.y * r5.w + r3.w;
    r5.w = min(1, r3.w);
    r5.w = r5.w + r3.w;
    r5.w = cmp(0 < r5.w);
    if (r5.w != 0) {
      r5.w = dot(cb2[4].xyz, cb2[4].xyz);
      r5.w = rsqrt(r5.w);
      r11.xyz = cb2[4].xyz * r5.www;
      r5.w = dot(r0.xyz, r11.xyz);
      r6.y = saturate(r5.w);
      r7.w = max(cb0[226].y, r6.x);
      r10.w = dot(r0.xyz, r3.xyz);
      r11.x = dot(r3.xyz, r11.xyz);
      r11.y = r11.x * 2 + 2;
      r11.y = rsqrt(r11.y);
      r5.w = r10.w + r5.w;
      r5.w = saturate(r5.w * r11.y);
      r11.x = saturate(r11.y * r11.x + r11.y);
      r10.w = 9.99999975e-006 + abs(r10.w);
      r10.w = min(1, r10.w);
      r11.yzw = r9.xyz * r6.yyy;
      r11.yzw = float3(0.318309873,0.318309873,0.318309873) * r11.yzw;
      r12.y = r7.w * r7.w;
      r12.z = r12.y * r12.y;
      r12.w = r5.w * r12.z + -r5.w;
      r5.w = r12.w * r5.w + 1;
      r5.w = r5.w * r5.w;
      r5.w = 3.14159274 * r5.w;
      r5.w = r12.z / r5.w;
      r7.w = -r7.w * r7.w + 1;
      r12.z = r10.w * r7.w + r12.y;
      r7.w = r6.y * r7.w + r12.y;
      r7.w = r10.w * r7.w;
      r7.w = r6.y * r12.z + r7.w;
      r7.w = rcp(r7.w);
      r5.w = r7.w * r5.w;
      r7.w = 1 + -r11.x;
      r10.w = r7.w * r7.w;
      r10.w = r10.w * r10.w;
      r11.x = r10.w * r7.w;
      r12.y = saturate(50 * r8.y);
      r7.w = -r10.w * r7.w + 1;
      r8.x = r9.w;
      r13.xyz = r7.www * r8.xyz;
      r12.yzw = r12.yyy * r11.xxx + r13.xyz;
      r5.w = 0.5 * r5.w;
      r12.yzw = r5.www * r12.yzw;
      r12.yzw = r12.yzw * r6.yyy;
      r13.xyz = cb2[5].xyz * r3.www;
      r11.xyz = r13.xyz * r11.yzw;
      r12.yzw = r13.yzx * r12.zwy;
      r11.w = r12.w;
    } else {
      r12.yz = float2(0,0);
      r11.xyzw = float4(0,0,0,0);
    }
    r3.w = asuint(cb2[8].z) >> 8;
    r3.w = (int)r3.w & asint(cb1[23].w);
    r11.xyzw = r3.wwww ? r11.xyzw : float4(0,0,0,0);
    r12.yz = r3.ww ? r12.yz : float2(0,0);
    r6.z = r12.x;
  } else {
    r11.xyzw = float4(0,0,0,0);
    r12.yz = float2(0,0);
  }
  r3.w = (uint)r0.w << 1;
  r3.w = t7.Load(r3.w).x;
  r3.w = min(asuint(cb2[0].x), (uint)r3.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r5.w = t7.Load(r5.w).x;
  r3.w = min(asuint(cb2[0].x), (uint)r3.w);
  r6.y = dot(-r3.xyz, r0.xyz);
  r6.y = r6.y + r6.y;
  r13.xyz = r0.xyz * -r6.yyy + -r3.xyz;
  r6.y = max(cb0[226].y, r6.x);
  r7.w = r6.y * r6.y;
  r6.y = -r6.y * r6.y + 1;
  r10.w = dot(r0.xyz, r3.xyz);
  r12.x = r10.w + r10.w;
  r12.w = r12.x * r10.w + -1;
  r13.w = 9.99999975e-006 + abs(r10.w);
  r13.w = min(1, r13.w);
  r14.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  r14.w = r7.w * r7.w;
  r15.x = saturate(50 * r8.y);
  r16.y = 1;
  r8.w = r9.w;
  r15.yzw = r11.xyz;
  r17.x = r11.w;
  r17.yz = r12.yz;
  r9.w = 0;
  while (true) {
    r16.z = cmp((uint)r9.w >= (uint)r3.w);
    if (r16.z != 0) break;
    r16.z = (int)r5.w + (int)r9.w;
    r16.z = t8.Load(r16.z).x;
    r16.w = (int)r16.z * 6;
    r18.xyzw = t6.Load(r16.w).xyzw;
    r16.w = mad((int)r16.z, 6, 1);
    r19.xyzw = t6.Load(r16.w).xyzw;
    r20.xy = mad((int2)r16.zz, int2(6,6), int2(2,3));
    r21.xyzw = t6.Load(r20.x).xyzw;
    r20.xyzw = t6.Load(r20.y).xyzw;
    r16.w = cmp(r19.w == 0.000000);
    r17.w = cmp(-2 < r20.x);
    r18.xyz = r18.xyz + -r2.xyz;
    r22.x = dot(r18.xyz, r18.xyz);
    r22.y = rsqrt(r22.x);
    r22.yzw = r22.yyy * r18.xyz;
    r23.x = r18.w * r18.w;
    r22.x = r23.x * r22.x;
    r22.x = -r22.x * r22.x + 1;
    r22.x = max(0, r22.x);
    r22.x = r22.x * r22.x;
    r23.xyz = r18.xyz * r18.www;
    r18.w = dot(r23.xyz, r23.xyz);
    r18.w = min(1, r18.w);
    r18.w = 1 + -r18.w;
    r18.w = log2(r18.w);
    r18.w = r19.w * r18.w;
    r18.w = exp2(r18.w);
    r18.w = r16.w ? r22.x : r18.w;
    r19.w = dot(r22.yzw, r21.xyz);
    r19.w = r19.w + -r20.x;
    r19.w = saturate(r19.w * r20.y);
    r19.w = r19.w * r19.w;
    r19.w = r19.w * r18.w;
    r17.w = r17.w ? r19.w : r18.w;
    r18.w = cmp(0 < r17.w);
    if (r18.w != 0) {
      r18.w = (int)r21.w & 255;
      r18.w = r18.w ? 1 : 0;
      if (r18.w != 0) {
        r22.xyzw = (int4)r21.wwww & int4(1,2,4,8);
        r22.xyzw = r22.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r18.w = (uint)r21.w >> 4;
        if (1 == 0) r19.w = 0; else if (1+4 < 32) {         r19.w = (uint)r21.w << (32-(1 + 4)); r19.w = (uint)r19.w >> (32-1);        } else r19.w = (uint)r21.w >> 4;
        r23.x = r19.w ? 1 : 0;
        r21.xyz = (int3)r18.www & int3(2,4,8);
        r23.yzw = r21.xyz ? float3(1,1,1) : float3(0,0,0);
        r18.w = dot(r23.xyzw, float4(1,1,1,1));
        r19.w = dot(r22.xyzw, float4(1,1,1,1));
        r20.x = dot(r6.zwww, r22.xyzw);
        r20.x = -1 + r20.x;
        r19.w = r19.w * r20.x + 1;
        r20.xy = r19.ww * r18.ww;
      } else {
        r20.xy = float2(1,1);
      }
      r18.w = r20.x + r20.y;
      r18.w = cmp(0 < r18.w);
      if (r18.w != 0) {
        r16.z = mad((int)r16.z, 6, 4);
        r22.xyzw = t6.Load(r16.z).xyzw;
        r16.z = f16tof32(r20.w);
        r18.w = 0.5 * r16.z;
        r21.xyz = -r18.www * r22.xyz + r18.xyz;
        r18.xyz = r18.www * r22.xyz + r18.xyz;
        r18.w = cmp(0 < r16.z);
        if (r18.w != 0) {
          r19.w = dot(r21.xyz, r21.xyz);
          r20.y = dot(r18.xyz, r18.xyz);
          r19.w = rsqrt(r19.w);
          r20.y = rsqrt(r20.y);
          r20.w = r20.y * r19.w;
          r22.x = dot(r21.xyz, r18.xyz);
          r22.x = r22.x * r20.w;
          r22.y = r22.x * 0.5 + r20.w;
          r22.y = 0.5 + r22.y;
          r23.y = r20.w / r22.y;
          r20.w = dot(r0.xyz, r21.xyz);
          r22.y = dot(r0.xyz, r18.xyz);
          r20.y = r22.y * r20.y;
          r19.w = r20.w * r19.w + r20.y;
          r23.x = 0.5 * r19.w;
        } else {
          r19.w = dot(r21.xyz, r21.xyz);
          r20.y = 1 + r19.w;
          r23.y = rcp(r20.y);
          r19.w = rsqrt(r19.w);
          r24.xyz = r21.xyz * r19.www;
          r23.x = dot(r0.xyz, r24.xyz);
          r22.x = 1;
        }
        r19.w = cmp(0 < r20.z);
        r20.y = r20.z * r20.z;
        r20.y = saturate(r20.y * r23.y);
        r20.y = sqrt(r20.y);
        r20.w = cmp(r23.x < r20.y);
        r22.y = max(r23.x, -r20.y);
        r22.y = r22.y + r20.y;
        r22.y = r22.y * r22.y;
        r20.y = 4 * r20.y;
        r20.y = r22.y / r20.y;
        r20.y = r20.w ? r20.y : r23.x;
        r19.w = saturate(r19.w ? r20.y : r23.x);
        r16.w = r16.w ? r23.y : 1;
        r18.xyz = r18.xyz + -r21.xyz;
        r20.y = dot(r13.xyz, r18.xyz);
        r23.xyz = r20.yyy * r13.xyz + -r18.xyz;
        r20.w = dot(r21.xyz, r23.xyz);
        r20.y = r20.y * r20.y;
        r16.z = r16.z * r16.z + -r20.y;
        r16.z = saturate(r20.w / r16.z);
        r18.xyz = r16.zzz * r18.xyz + r21.xyz;
        r18.xyz = r18.www ? r18.xyz : r21.xyz;
        r16.z = dot(r18.xyz, r18.xyz);
        r16.z = rsqrt(r16.z);
        r18.xyz = r18.xyz * r16.zzz;
        r18.w = r20.z * r16.z;
        r18.w = saturate(r18.w * r6.y);
        r16.z = saturate(r22.w * r16.z);
        r20.y = dot(r0.xyz, r18.xyz);
        r18.x = dot(r3.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r20.y + r10.w;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r20.z = cmp(0 < r18.w);
        if (r20.z != 0) {
          r20.w = -r18.w * r18.w + 1;
          r20.w = sqrt(r20.w);
          r21.x = dot(r10.ww, r20.yy);
          r21.y = r21.x + -r18.x;
          r21.z = cmp(r21.y >= r20.w);
          if (r21.z != 0) {
            r18.z = 1;
            r18.y = abs(r10.w);
          } else {
            r21.z = -r21.y * r21.y + 1;
            r21.z = rsqrt(r21.z);
            r21.z = r21.z * r18.w;
            r22.y = -r21.y * r20.y + r10.w;
            r22.z = r22.y * r21.z;
            r21.y = -r21.y * r18.x + r12.w;
            r22.w = r20.y * r20.y;
            r22.w = -r10.w * r10.w + -r22.w;
            r22.w = 1 + r22.w;
            r22.w = -r18.x * r18.x + r22.w;
            r21.x = saturate(r21.x * r18.x + r22.w);
            r21.x = sqrt(r21.x);
            r21.xy = r21.zz * r21.xy;
            r22.w = r21.x * r10.w;
            r23.x = r22.w + r22.w;
            r23.y = r20.y * r20.w + r10.w;
            r21.z = r21.z * r22.y + r23.y;
            r22.y = r18.x * r20.w + r21.y;
            r22.y = 1 + r22.y;
            r23.zw = r22.yy * r21.xz;
            r24.x = r23.x * r21.z;
            r22.w = r21.z * r22.w;
            r22.w = 0.5 * r22.w;
            r22.w = r23.z * -0.5 + r22.w;
            r24.y = -r23.z * 2 + r24.x;
            r24.x = r24.x * r24.y;
            r23.z = r23.z * r23.z + r24.x;
            r24.x = r22.y * r22.y;
            r22.y = r18.x * r20.w + r22.y;
            r22.y = r22.y * -0.5 + -0.5;
            r22.yw = r23.ww * r22.yw;
            r22.y = r23.y * r24.x + r22.y;
            r21.z = r21.z * r22.y + r23.z;
            r22.y = r22.w + r22.w;
            r23.y = r22.w * r22.w;
            r23.y = r21.z * r21.z + r23.y;
            r22.y = r22.y / r23.y;
            r21.z = r22.y * r21.z;
            r22.y = -r22.y * r22.w + 1;
            r21.x = r21.z * r21.x;
            r21.x = r22.y * r22.z + r21.x;
            r21.z = r21.z * r23.x;
            r21.y = r22.y * r21.y + r21.z;
            r20.y = r20.y * r20.w + r21.x;
            r18.x = r18.x * r20.w + r21.y;
            r20.w = r18.x * 2 + 2;
            r20.w = rsqrt(r20.w);
            r20.y = r20.y + r10.w;
            r18.z = saturate(r20.y * r20.w);
            r18.y = saturate(r20.w * r18.x + r20.w);
          }
        }
        r16.w = r16.w * r19.w;
        r21.xyz = r16.www * r14.xyz;
        r18.x = cmp(0 < r16.z);
        r16.z = r16.z * r16.z;
        r20.y = r18.y * 3.5999999 + 0.400000006;
        r16.z = r16.z / r20.y;
        r16.z = r7.w * r7.w + r16.z;
        r16.z = min(1, r16.z);
        r16.x = r18.x ? r16.z : r14.w;
        r16.z = 0.25 * r18.w;
        r18.x = (uint)r16.x >> 1;
        r18.x = (int)r18.x + 0x1fbd1df5;
        r18.x = r18.x * 3 + r18.w;
        r16.z = r18.x * r16.z;
        r18.x = 0.00100000005 + r18.y;
        r16.z = r16.z / r18.x;
        r23.x = r16.x + r16.z;
        r23.y = r16.x / r23.x;
        r20.yz = r20.zz ? r23.xy : r16.xy;
        r16.z = cmp(r22.x < 1);
        r18.w = 1.00010002 + -r22.x;
        r20.w = 1 + r22.x;
        r18.w = r18.w / r20.w;
        r18.w = sqrt(r18.w);
        r20.w = 0.25 * r18.w;
        r22.x = (uint)r20.y >> 1;
        r22.x = (int)r22.x + 0x1fbd1df5;
        r18.w = r22.x * 3 + r18.w;
        r18.w = r20.w * r18.w;
        r18.x = r18.w / r18.x;
        r18.x = r20.y + r18.x;
        r18.x = r20.y / r18.x;
        r18.x = sqrt(r18.x);
        r18.x = r20.z * r18.x;
        r16.z = r16.z ? r18.x : r20.z;
        r18.x = r18.z * r16.x + -r18.z;
        r18.x = r18.x * r18.z + 1;
        r18.x = r18.x * r18.x;
        r18.x = 3.14159274 * r18.x;
        r18.x = r16.x / r18.x;
        r16.z = r18.x * r16.z;
        r16.x = sqrt(r16.x);
        r18.x = 1 + -r16.x;
        r18.z = r13.w * r18.x + r16.x;
        r16.x = r19.w * r18.x + r16.x;
        r16.x = r16.x * r13.w;
        r16.x = r19.w * r18.z + r16.x;
        r16.x = rcp(r16.x);
        r16.x = r16.z * r16.x;
        r16.z = 1 + -r18.y;
        r18.x = r16.z * r16.z;
        r18.x = r18.x * r18.x;
        r18.y = r18.x * r16.z;
        r16.z = -r18.x * r16.z + 1;
        r18.xzw = r16.zzz * r8.wyz;
        r18.xyz = r15.xxx * r18.yyy + r18.xzw;
        r16.x = 0.5 * r16.x;
        r18.xyz = r16.xxx * r18.xyz;
        r16.xzw = r18.xyz * r16.www;
        r18.xyz = r19.xyz * r17.www;
        r18.xyz = r18.xyz * r20.xxx;
        r19.xyz = r21.xyz * r18.xyz;
        r16.xzw = r18.xyz * r16.xzw;
      } else {
        r19.xyz = float3(0,0,0);
        r16.xzw = float3(0,0,0);
      }
    } else {
      r19.xyz = float3(0,0,0);
      r16.xzw = float3(0,0,0);
    }
    r17.w = (uint)r21.w >> 8;
    r17.w = (int)r17.w & asint(cb1[23].w);
    r18.xyz = r19.xyz + r15.yzw;
    r16.xzw = r17.xyz + r16.xzw;
    r15.yzw = r17.www ? r18.xyz : r15.yzw;
    r17.xyz = r17.www ? r16.xzw : r17.xyz;
    r9.w = (int)r9.w + 1;
  }
  r6.yzw = r17.xyz + r15.yzw;
  r3.yzw = r12.xxx * r0.xyz + -r3.xyz;
  r10.w = saturate(r10.w);
  r0.w = (int)r0.w + asint(cb2[0].w);
  r5.w = (uint)r0.w << 1;
  r5.w = t7.Load(r5.w).x;
  r5.w = min(asuint(cb2[0].y), (uint)r5.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = t7.Load(r0.w).x;
  r7.w = max(0.00100000005, r6.x);
  r7.w = log2(r7.w);
  r7.w = -r7.w * 1.20000005 + 1;
  r9.w = -1 + cb0[195].z;
  r9.w = r9.w + -r7.w;
  r3.x = 0;
  r11.xyzw = float4(0,0,0,1);
  r12.x = 0;
  while (true) {
    r12.y = cmp((uint)r12.x >= (uint)r5.w);
    if (r12.y != 0) break;
    r12.y = cmp(r11.w < 0.00100000005);
    if (r12.y != 0) {
      break;
    }
    r12.y = (int)r0.w + (int)r12.x;
    r12.y = t8.Load(r12.y).x;
    r13.xyz = -cb3[r12.y+0].xyz + r2.xyz;
    r12.z = dot(r13.xyz, r13.xyz);
    r12.w = sqrt(r12.z);
    r13.w = cmp(r12.w < cb3[r12.y+0].w);
    if (r13.w != 0) {
      r13.w = cmp(0 < cb3[r12.y+341].z);
      if (r13.w != 0) {
        r13.w = (uint)r12.y << 2;
        r14.xyz = cb3[r13.w+1024].xyz * r2.yyy;
        r14.xyz = r2.xxx * cb3[r13.w+1023].xyz + r14.xyz;
        r14.xyz = r2.zzz * cb3[r13.w+1025].xyz + r14.xyz;
        r14.xyz = cb3[r13.w+1026].xyz + r14.xyz;
        r15.yzw = cb3[r13.w+1024].xyz * r3.zzz;
        r15.yzw = r3.yyy * cb3[r13.w+1023].xyz + r15.yzw;
        r15.yzw = r3.www * cb3[r13.w+1025].xyz + r15.yzw;
        r15.yzw = rcp(r15.yzw);
        r16.xyz = -r14.xyz * r15.yzw + -r15.yzw;
        r15.yzw = -r14.xyz * r15.yzw + r15.yzw;
        r15.yzw = max(r16.xyz, r15.yzw);
        r13.w = min(r15.z, r15.w);
        r13.w = min(r15.y, r13.w);
        r15.yzw = r13.www * r3.yzw + r2.xyz;
        r16.xyz = cb3[r12.y+682].xyz + cb3[r12.y+0].xyz;
        r16.xyz = -r16.xyz + r15.yzw;
        r13.w = cb3[r12.y+2387].w * 0.699999988;
        r15.yzw = -cb3[r12.y+2387].www * float3(0.5,0.5,0.5) + cb3[r12.y+2387].xyz;
        r17.xyz = cb3[r12.y+2387].xyz * r14.xyz;
        r18.xyz = cmp(r17.xyz < -r15.yzw);
        r19.xyz = r14.xyz * cb3[r12.y+2387].xyz + r15.yzw;
        r19.xyz = abs(r19.xyz);
        r18.xyz = r18.xyz ? r19.xyz : 0;
        r17.xyz = cmp(r15.yzw < r17.xyz);
        r14.xyz = r14.xyz * cb3[r12.y+2387].xyz + -r15.yzw;
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
        r12.w = saturate(r12.w / cb3[r12.y+0].w);
        r13.w = dot(r3.yzw, r13.xyz);
        r12.z = -cb3[r12.y+0].w * cb3[r12.y+0].w + r12.z;
        r12.z = r13.w * r13.w + -r12.z;
        r15.y = cmp(r12.z >= 0);
        r12.z = sqrt(r12.z);
        r12.z = r12.z + -r13.w;
        r13.xyz = r12.zzz * r3.yzw + r13.xyz;
        r13.yzw = -cb3[r12.y+682].xyz + r13.xyz;
        r12.z = r12.w * 2.5 + -1.5;
        r12.z = max(0, r12.z);
        r12.w = r12.z * r12.z;
        r12.z = -r12.z * 2 + 3;
        r13.x = -r12.w * r12.z + 1;
        r14.xyzw = r15.yyyy ? r13.xyzw : r3.xyzw;
        r16.xyz = r14.yzw;
      }
      r16.w = cb3[r12.y+341].y;
      r13.xyzw = t10.SampleLevel(s5_s, r16.xyzw, r9.w).xyzw;
      r12.yzw = cb3[r12.y+341].xxx * r13.xyz;
      r12.yzw = r12.yzw * r14.xxx;
      r11.xyz = r12.yzw * r11.www + r11.xyz;
      r12.y = -r13.w * r14.x + 1;
      r11.w = r12.y * r11.w;
    }
    r12.x = (int)r12.x + 1;
  }
  r11.xyz = cb0[157].xyz * r11.xyz;
  r0.w = cmp(0 < cb2[116].y);
  if (r0.w != 0) {
    r0.w = cb2[116].x + -r7.w;
    r0.w = -1 + r0.w;
    r12.xyz = t9.SampleLevel(s4_s, r3.yzw, r0.w).xyz;
    r12.xyz = cb0[187].xyz * r12.xyz;
    r0.w = cmp(cb2[116].z < 1);
    r13.xyz = r11.www * r12.xyz + r11.xyz;
    r12.xyz = r0.www ? float3(0,0,0) : r12.xyz;
    r11.xyz = r0.www ? r13.xyz : r11.xyz;
  } else {
    r12.xyz = float3(0,0,0);
  }
  r0.w = saturate(r6.x * cb0[197].x + cb0[197].y);
  r3.x = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r3.x * r0.w;
  r3.x = min(0, cb0[197].z);
  r3.x = -1 + r3.x;
  r0.w = r0.w * r3.x + 1;
  r12.xyz = r12.xyz * r11.www;
  r11.xyz = r11.xyz * r0.www + r12.xyz;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r12.xy = r0.ww * float2(32.6650009,11.8149996) + v3.xy;
    r0.w = dot(r12.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r12.xyzw = cb0[1].xyzw * r1.yyyy;
    r12.xyzw = r1.xxxx * cb0[0].xyzw + r12.xyzw;
    r12.xyzw = r1.zzzz * cb0[2].xyzw + r12.xyzw;
    r12.xyzw = cb0[3].xyzw + r12.xyzw;
    r3.xyz = r3.yzw * v3.www + r1.xyz;
    r13.xyzw = cb0[1].xyzw * r3.yyyy;
    r13.xyzw = r3.xxxx * cb0[0].xyzw + r13.xyzw;
    r3.xyzw = r3.zzzz * cb0[2].xyzw + r13.xyzw;
    r3.xyzw = cb0[3].xyzw + r3.xyzw;
    r5.w = rcp(r12.w);
    r13.xyz = r12.xyz * r5.www;
    r3.w = rcp(r3.w);
    r12.xy = v3.ww * cb0[30].zw + r12.zw;
    r5.w = rcp(r12.y);
    r3.xyz = r3.xyz * r3.www + -r13.xyz;
    r3.w = dot(r3.xy, r3.xy);
    r3.w = sqrt(r3.w);
    r7.w = 0.5 * r3.w;
    r12.yz = r13.xy * r7.ww + r3.xy;
    r12.yz = -r3.ww * float2(0.5,0.5) + abs(r12.yz);
    r12.yz = max(float2(0,0), r12.yz);
    r12.yz = r12.yz / abs(r3.xy);
    r12.yz = float2(1,1) + -r12.yz;
    r3.w = min(r12.y, r12.z);
    r3.w = r3.w / r7.w;
    r3.xyz = r3.xyz * r3.www;
    r3.w = -r12.x * r5.w + r13.z;
    r3.w = 4 * r3.w;
    r3.w = max(abs(r3.z), r3.w);
    r12.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb2[176].xy * r12.xy;
    r3.xy = cb2[176].xy * r3.xy;
    r5.w = 0.0833333358 * r3.w;
    r3.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r3.xyz;
    r12.xyz = r3.xyz * r0.www + r13.xyz;
    r0.w = 1;
    r16.x = 0;
    r13.xyz = float3(0,0,0);
    r7.w = 0;
    r9.w = 0;
    r11.w = 0;
    r12.w = 0;
    r14.xw = float2(0,0);
    while (true) {
      r15.y = cmp((uint)r14.w >= 12);
      if (r15.y != 0) break;
      r15.y = (uint)r14.w;
      r17.xyzw = float4(1,2,3,4) + r15.yyyy;
      r18.xyzw = r17.xxxy * r3.xyzz + r12.xyzz;
      r19.xyzw = r17.yyzz * r3.xyxy + r12.xyxy;
      r17.xyzw = r17.wwzw * r3.xyzz + r12.xyzz;
      r15.y = r6.x * 0.666666687 + r0.w;
      r15.z = r6.x * 0.666666687 + r15.y;
      r20.x = t14.SampleLevel(s7_s, r18.xy, r0.w).x;
      r20.y = t14.SampleLevel(s7_s, r19.xy, r0.w).x;
      r20.z = t14.SampleLevel(s7_s, r19.zw, r15.y).x;
      r20.w = t14.SampleLevel(s7_s, r17.xy, r15.y).x;
      r17.xy = r18.zw;
      r17.xyzw = r17.xyzw + -r20.xyzw;
      r18.xyzw = r3.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r17.xyzw;
      r18.xyzw = cmp(abs(r18.xyzw) < r5.wwww);
      r15.yw = (int2)r18.zw | (int2)r18.xy;
      r15.y = (int)r15.w | (int)r15.y;
      if (r15.y != 0) {
        r16.x = r17.x;
        r13.xyz = r17.yzw;
        r7.w = r18.x;
        r9.w = r18.y;
        r11.w = r18.z;
        r12.w = -1;
        break;
      }
      r14.x = r17.w;
      r14.w = (int)r14.w + 4;
      r0.w = r15.z;
      r16.x = r17.x;
      r13.xyz = r17.yzw;
      r7.w = r18.x;
      r9.w = r18.y;
      r11.w = r18.z;
      r12.w = r15.y;
    }
    if (r12.w != 0) {
      r13.w = 2;
      r17.xy = r13.yz;
      r17.z = 3;
      r13.yzw = r11.www ? r13.xyw : r17.xyz;
      r16.y = r13.x;
      r16.z = 1;
      r13.xyz = r9.www ? r16.xyz : r13.yzw;
      r14.y = r16.x;
      r14.z = 0;
      r13.xyz = r7.www ? r14.xyz : r13.xyz;
      r0.w = (uint)r14.w;
      r0.w = r13.z + r0.w;
      r3.w = r13.x + -r13.y;
      r3.w = saturate(r13.x / r3.w);
      r0.w = r3.w + r0.w;
      r3.xyz = r3.xyz * r0.www + r12.xyz;
      r3.xy = cb2[176].zw * r3.xy;
      r3.xy = r3.xy * float2(2,-2) + float2(-1,1);
      r3.xy = cb0[66].xy * r3.xy;
      r3.xy = r3.xy / cb0[66].xy;
      r12.xyz = cb0[123].xyw * r3.yyy;
      r12.xyz = r3.xxx * cb0[122].xyw + r12.xyz;
      r12.xyz = r3.zzz * cb0[124].xyw + r12.xyz;
      r12.xyz = cb0[125].xyw + r12.xyz;
      r3.zw = r12.xy / r12.zz;
      r12.xy = r3.zw * cb2[177].xy + cb2[177].zw;
      r3.xy = saturate(abs(r3.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r3.xy, r3.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r3.xy = saturate(abs(r3.zw) * float2(5,5) + float2(-4,-4));
      r3.x = dot(r3.xy, r3.xy);
      r3.x = 1 + -r3.x;
      r3.x = max(0, r3.x);
      r0.w = min(r3.x, r0.w);
      r3.xyz = t15.SampleLevel(s8_s, r12.xy, 0).xyz;
      r3.xyz = min(float3(0,0,0), -r3.xyz);
      r3.w = saturate(-r6.x * 6.5999999 + 2);
      r0.w = r3.w * r0.w;
      r3.w = 1;
      r3.xyz = -r3.xyz * r0.www;
      r3.xyz = cb2[178].xxx * r3.xyz;
      r0.w = -r3.w * r0.w + 1;
      r11.xyz = r11.xyz * r0.www + r3.xyz;
    }
  }
  r3.xyzw = r6.xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r3.x * r3.x;
  r5.w = -9.27999973 * r10.w;
  r5.w = exp2(r5.w);
  r0.w = min(r5.w, r0.w);
  r0.w = r0.w * r3.x + r3.y;
  r3.xy = r0.ww * float2(-1.03999996,1.03999996) + r3.zw;
  r8.xyz = r8.wyz;
  r0.w = r15.x * r3.y;
  r3.xyz = r8.xyz * r3.xxx + r0.www;
  r0.w = dot(cb2[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r2.w = -1;
    r0.w = dot(cb2[122].xyzw, r2.xyzw);
    r0.w = saturate(abs(r0.w) * cb2[129].x + cb2[129].y);
    r0.w = 1 + -r0.w;
    r12.xyz = -cb2[123].xyz + r2.xyz;
    r2.w = dot(r12.xyz, cb2[124].xyz);
    r2.w = cb2[124].w + -abs(r2.w);
    r2.w = saturate(cb2[129].x * r2.w);
    r3.w = dot(r12.xyz, cb2[125].xyz);
    r3.w = cb2[125].w + -abs(r3.w);
    r3.w = saturate(cb2[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb2[122].xyz, r0.xyz);
    r2.w = saturate(r2.w * cb2[130].x + cb2[130].y);
    r3.w = -0.200000003 + r6.x;
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
      r2.w = dot(r12.xyz, -cb2[122].xyz);
      r2.w = r2.w + r2.w;
      r12.xyz = cb2[122].xyz * r2.www + r12.xyz;
      r13.xyz = cb2[127].xyz * r0.yyy;
      r13.xyz = r0.xxx * cb2[126].xyz + r13.xyz;
      r0.xyz = r0.zzz * cb2[128].xyz + r13.xyz;
      r2.w = dot(r12.xyz, r0.xyz);
      r2.w = r2.w + r2.w;
      r0.xyz = r0.xyz * -r2.www + r12.xyz;
      r0.xyz = r0.xyz * cb2[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r12.xyz = cb0[13].xyz * r0.yyy;
      r12.xyz = r0.xxx * cb0[12].xyz + r12.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r12.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r2.w = asuint(cb0[197].w) << 2;
      r12.xyz = cb2[r2.w+132].xyw * r0.yyy;
      r12.xyz = r0.xxx * cb2[r2.w+131].xyw + r12.xyz;
      r0.xyz = r0.zzz * cb2[r2.w+133].xyw + r12.xyz;
      r0.xyz = cb2[r2.w+134].xyw + r0.xyz;
      r2.w = cb2[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb2[141].xy, r0.xy);
      r0.xy = min(cb2[141].xy, r0.xy);
      r0.xy = r0.xy * cb2[r2.w+139].xy + cb2[r2.w+139].zw;
      r12.xyzw = t11.SampleLevel(s5_s, r0.xy, 0).xyzw;
      r0.x = r12.w * r0.w;
    } else {
      r12.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r11.xyz = r0.xxx * r11.xyz + r12.xyz;
  }
  r0.xyz = r11.xyz * r3.xyz;
  r3.xyz = r8.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r8.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r8.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r0.xyz * r3.xyz + r6.yzw;
  r0.w = dot(r1.xyz, r1.xyz);
  r2.w = sqrt(r0.w);
  r3.x = dot(r1.xyz, cb0[60].xyz);
  r2.w = r2.w / r3.x;
  r2.w = cb0[210].z * r2.w;
  r2.w = max(0, r2.w);
  r3.x = min(cb2[143].z, cb0[67].z);
  r3.y = cb0[67].z + -r3.x;
  r1.w = r3.y + r1.z;
  r3.y = dot(r1.xyw, r1.xyw);
  r3.z = rsqrt(r3.y);
  r3.y = r3.y * r3.z;
  r2.w = max(cb2[143].w, r2.w);
  r3.w = cmp(0 < r2.w);
  r5.w = r2.w * r3.z;
  r3.x = r5.w * r1.w + r3.x;
  r5.w = -r5.w * r1.w + r1.w;
  r2.w = -r2.w * r3.z + 1;
  r2.w = r2.w * r3.y;
  r6.x = -cb2[146].y + r3.x;
  r6.x = cb2[143].y * r6.x;
  r6.x = max(-127, r6.x);
  r6.x = exp2(-r6.x);
  r6.x = cb2[146].x * r6.x;
  r3.x = -cb2[144].w + r3.x;
  r3.x = cb2[144].y * r3.x;
  r3.x = max(-127, r3.x);
  r3.x = exp2(-r3.x);
  r3.x = cb2[144].z * r3.x;
  r6.x = r3.w ? r6.x : cb2[143].x;
  r3.x = r3.w ? r3.x : cb2[144].x;
  r2.w = r3.w ? r2.w : r3.y;
  r3.w = r3.w ? r5.w : r1.w;
  r5.w = cb2[143].y * r3.w;
  r5.w = max(-127, r5.w);
  r6.y = exp2(-r5.w);
  r6.y = 1 + -r6.y;
  r6.y = r6.y / r5.w;
  r6.z = -r5.w * 0.240226507 + 0.693147182;
  r5.w = cmp(0.00999999978 < abs(r5.w));
  r5.w = r5.w ? r6.y : r6.z;
  r3.w = cb2[144].y * r3.w;
  r3.w = max(-127, r3.w);
  r6.y = exp2(-r3.w);
  r6.y = 1 + -r6.y;
  r6.y = r6.y / r3.w;
  r6.z = -r3.w * 0.240226507 + 0.693147182;
  r3.w = cmp(0.00999999978 < abs(r3.w));
  r3.w = r3.w ? r6.y : r6.z;
  r3.x = r3.x * r3.w;
  r3.x = r6.x * r5.w + r3.x;
  r3.w = r3.x * r2.w;
  r6.xy = cmp(float2(0,0) < cb2[146].zw);
  if (r6.x != 0) {
    r5.w = saturate(r3.y * cb2[150].x + cb2[150].y);
    r6.xz = float2(1,-1) * cb2[149].yx;
    r11.x = dot(r1.xy, r6.xz);
    r11.y = dot(r1.xy, cb2[149].xy);
    r11.z = r1.w;
    r6.xzw = t12.SampleLevel(s6_s, r11.xyz, 0).xyz;
    r11.xyz = t12.SampleLevel(s6_s, r11.xyz, cb2[150].z).xyz;
    r6.xzw = -r11.xyz + r6.xzw;
    r6.xzw = r5.www * r6.xzw + r11.xyz;
    r6.xzw = cb2[145].xyz * r6.xzw;
  } else {
    r6.xzw = cb2[145].xyz;
  }
  r5.w = cmp(cb2[147].w >= 0);
  r7.w = cmp(cb2[146].z == 0.000000);
  r5.w = r5.w ? r7.w : 0;
  if (r5.w != 0) {
    r11.xyz = r3.zzz * r1.xyw;
    r1.w = saturate(dot(r11.xyz, cb2[147].xyz));
    r1.w = log2(r1.w);
    r1.w = cb2[148].w * r1.w;
    r1.w = exp2(r1.w);
    r11.xyz = cb2[148].xyz * r1.www;
    r1.w = -cb2[147].w + r2.w;
    r1.w = max(0, r1.w);
    r1.w = r3.x * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r11.xyz = r11.xyz * r1.www;
  } else {
    r11.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r3.w);
  r1.w = min(1, r1.w);
  r11.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r3.y);
  r1.w = r1.w ? r6.y : 0;
  r3.xyzw = r1.wwww ? float4(1,0,0,0) : r11.wxyz;
  r1.w = 1 + -r3.x;
  r3.yzw = r6.xzw * r1.www + r3.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r2.yyy;
    r6.xyz = r2.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r2.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r6.xy = r6.xy / r6.zz;
    r11.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r6.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r11.z = cb0[208].z * r1.w;
    r6.xyzw = t13.SampleLevel(s0_s, r11.xyz, 0).xyzw;
    r3.yzw = r3.yzw * r6.www + r6.xyz;
    r3.x = r6.w * r3.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r2.yyy;
    r6.xyz = r2.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r2.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r1.w = cmp(0 != cb0[184].x);
    r11.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r6.xy = r6.xy / r6.zz;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r11.xyz;
    r2.w = dot(r11.xyz, r11.xyz);
    r5.w = sqrt(r2.w);
    r5.w = -cb0[181].x + r5.w;
    r5.w = max(0, r5.w);
    r5.w = cb0[182].x * r5.w;
    r5.w = cb0[181].z * r5.w;
    r12.z = sqrt(r5.w);
    r5.w = cb0[181].y * r12.z;
    r6.z = cmp(r5.w < 0.707106769);
    r5.w = dot(r5.ww, r5.ww);
    r5.w = min(1, r5.w);
    r5.w = r6.z ? r5.w : 1;
    r2.w = rsqrt(r2.w);
    r11.xyz = r11.xyz * r2.www;
    r2.w = -r11.z * r11.z + 1;
    r2.w = sqrt(r2.w);
    r13.y = r11.z * 0.5 + 0.5;
    r6.zw = r11.xy / r2.ww;
    r2.w = 1 + -abs(r6.z);
    r2.w = sqrt(r2.w);
    r7.w = abs(r6.z) * -0.0187292993 + 0.0742610022;
    r7.w = r7.w * abs(r6.z) + -0.212114394;
    r7.w = r7.w * abs(r6.z) + 1.57072878;
    r8.w = r7.w * r2.w;
    r8.w = r8.w * -2 + 3.14159274;
    r6.z = cmp(r6.z < -r6.z);
    r6.z = r6.z ? r8.w : 0;
    r2.w = r7.w * r2.w + r6.z;
    r6.z = cmp(r6.w < 0);
    r6.w = 6.28318548 + -r2.w;
    r2.w = r6.z ? r6.w : r2.w;
    r13.x = 0.159154937 * r2.w;
    r6.zw = cb0[180].zw * float2(0.5,0.5) + r13.xy;
    r11.xy = float2(1,1) + cb0[180].xy;
    r11.xy = cb0[180].xy / r11.xy;
    r6.zw = r11.xy * r6.zw;
    r12.xy = r1.ww ? r6.zw : r6.xy;
    r6.xyzw = t3.SampleLevel(s1_s, r12.xyz, 0).xyzw;
    r6.xyz = r6.xyz * r5.www;
    r1.w = 1 + -r6.w;
    r1.w = -r5.w * r1.w + 1;
    r6.xyz = cb0[135].zzz * r6.xyz;
    r3.yzw = r6.xyz * r3.xxx + r3.yzw;
    r3.x = r3.x * r1.w;
  }
  r6.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r6.xyz = r6.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r4.xyz = max(float3(0,0,0), r5.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r1.w = (int)r5.y | (int)r5.x;
    r1.w = (int)r5.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r4.xyzw = r1.wwww ? r2.yzwx : r4.xyzw;
    o0.w = r4.w;
  } else {
    o0.w = r4.w;
  }
  r0.xyz = r10.xyz * r7.xyz + r0.xyz;
  r0.xyz = r0.xyz + r4.xyz;
  r0.xyz = r0.xyz * r3.xxx + r3.yzw;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r1.xyz = r1.xyz * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.x = dot(r1.xyz, cb0[358].xyz);
  r1.x = -1 + r1.x;
  r1.x = -abs(r1.x) * 0.5 + 1;
  r1.x = max(0, r1.x);
  r1.yzw = cb2[166].xyz + -cb2[165].xyz;
  r1.xyz = r1.xxx * r1.yzw + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r1.xyz = -cb2[167].xyz + r1.xyz;
  r1.xyz = r1.www * r1.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r1.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r2.xyz;
  return;
}