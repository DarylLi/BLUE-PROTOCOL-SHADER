// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture3D<float4> t11 : register(t11);

TextureCube<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

TextureCubeArray<float4> t8 : register(t8);

Buffer<uint4> t7 : register(t7);

Buffer<uint4> t6 : register(t6);

Buffer<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

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

cbuffer cb7 : register(b7)
{
  float4 cb7[77];
}

cbuffer cb6 : register(b6)
{
  float4 cb6[8];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[3];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[2728];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[13];
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
  r3.w = cb7[42].x * v2.y + cb7[42].y;
  r4.x = -cb7[42].z * r3.w + 1;
  r4.y = -cb7[42].w + r2.z;
  r4.y = abs(r4.y) / cb7[43].x;
  r4.y = -r4.y * cb7[43].y + 1;
  r4.y = -r4.x * r4.y + 1;
  r4.x = v2.x;
  r4.zw = r4.xy * cb7[2].xy + float2(0.200000003,0.200000003);
  r5.x = cb5[2].x * cb0[142].z;
  r5.x = cb7[44].x * r5.x;
  r5.xy = cb7[3].xy * r5.xx;
  r4.zw = r5.xy * float2(0.699999988,0.699999988) + r4.zw;
  r6.y = t14.SampleBias(s8_s, r4.zw, cb0[143].y).x;
  r6.xw = float2(0,1);
  r5.zw = cb7[45].xx * r6.xy;
  r6.x = frac(cb0[142].z);
  r7.xy = r5.zw * r6.xx + r4.zw;
  r7.xyz = t14.SampleBias(s8_s, r7.xy, cb0[143].y).xyz;
  r6.y = 0.5 + cb0[142].z;
  r6.y = frac(r6.y);
  r4.zw = r5.zw * r6.yy + r4.zw;
  r8.xyz = t14.SampleBias(s8_s, r4.zw, cb0[143].y).xyz;
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
  r9.xyz = cb7[45].yyy * r7.xzw + r8.xyz;
  r4.w = 1 + r9.z;
  r4.xy = r4.xy * cb7[1].xy + r5.xy;
  r5.xy = r5.zw * r6.xx + r4.xy;
  r10.xyz = t14.SampleBias(s8_s, r5.xy, cb0[143].y).xyz;
  r4.xy = r5.zw * r6.yy + r4.xy;
  r5.xyz = t14.SampleBias(s8_s, r4.xy, cb0[143].y).xyz;
  r5.xyz = r5.xyz + -r10.xyz;
  r4.xyz = r4.zzz * r5.xyz + r10.xyz;
  r5.xyz = r4.xyz + r4.xyz;
  r10.xyz = -r4.xyz * float3(2,2,2) + float3(0,0,1);
  r11.xyz = cb7[45].zzz * r10.xyz + r5.xyz;
  r9.w = 1 + r9.z;
  r11.xyz = float3(-1,-1,1) * r11.xyz;
  r4.y = dot(r9.xyw, r11.xyz);
  r11.xyz = r11.xyz * r4.www;
  r4.yzw = r9.xyw * r4.yyy + -r11.xyz;
  r9.xyz = float3(0,0,1) + -r4.yzw;
  r4.yzw = cb7[45].www * r9.xyz + r4.yzw;
  r5.w = cb7[6].y + v2.y;
  r5.w = r5.w * cb7[47].w + -cb7[47].w;
  r5.w = saturate(cb7[48].z + r5.w);
  r6.x = cb7[49].y * r5.w;
  r5.w = -cb7[49].y * r5.w + 1;
  r5.w = cb7[49].w * r5.w + r6.x;
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
  r0.w = cb0[142].z * cb7[51].x + v2.x;
  r6.x = cb7[52].y * r0.w;
  r0.w = cb0[142].z * cb7[52].z + v2.y;
  r6.y = cb7[52].w * r0.w;
  r0.w = cb0[142].z * cb7[54].x + v2.x;
  r9.x = cb7[55].y * r0.w;
  r0.w = cb0[142].z * cb7[55].z + v2.y;
  r9.y = cb7[55].w * r0.w;
  r0.w = t15.SampleBias(s9_s, r9.xy, cb0[143].y).z;
  r0.w = -0.5 + r0.w;
  r0.w = r0.w + r0.w;
  r4.yz = r0.ww * cb7[56].yy + r6.xy;
  r4.y = t16.SampleBias(s10_s, r4.yz, cb0[143].y).x;
  r4.z = cmp(0 >= r4.y);
  r4.y = log2(r4.y);
  r4.y = cb7[56].z * r4.y;
  r4.y = exp2(r4.y);
  r9.xyz = cb7[14].xyz * r4.yyy;
  r4.yzw = r4.zzz ? float3(0,0,0) : r9.xyz;
  r9.xyz = cb6[6].xyz * cb7[58].yyy + cb7[18].xyz;
  r6.x = dot(cb6[7].xyz, r0.xyz);
  r6.y = saturate(r6.x);
  r6.y = 1 + -r6.y;
  r8.w = cb0[142].z * cb7[59].z + v2.x;
  r11.x = cb7[60].w * r8.w;
  r8.w = cb0[142].z * cb7[61].x + v2.y;
  r11.y = cb7[61].y * r8.w;
  r8.w = cb0[142].z * cb7[62].z + v2.x;
  r12.x = cb7[63].w * r8.w;
  r8.w = cb0[142].z * cb7[64].x + v2.y;
  r12.y = cb7[64].y * r8.w;
  r11.zw = t15.SampleBias(s9_s, r12.xy, cb0[143].y).xy;
  r11.zw = float2(-0.5,-0.5) + r11.zw;
  r11.zw = cb7[64].ww * r11.zw;
  r11.xy = r11.zw * float2(2,2) + r11.xy;
  r8.w = t17.SampleBias(s11_s, r11.xy, cb0[143].y).x;
  r11.xyz = -cb7[28].xyz + cb7[27].xyz;
  r11.xyz = r8.www * r11.xyz + cb7[28].xyz;
  r12.xyz = cb7[30].xyz * r11.xyz;
  r11.xyz = r11.xyz * cb7[32].xyz + -r12.xyz;
  r11.xyz = r5.www * r11.xyz + r12.xyz;
  r12.xyz = -r11.xyz * cb7[65].xxx + r11.xyz;
  r12.xyz = cb6[6].xyz * r12.xyz;
  r12.xyz = r12.xyz * r6.xxx;
  r8.xyz = cb7[65].yyy * r7.xzw + r8.xyz;
  r6.x = 1 + r8.z;
  r5.xyz = cb7[65].zzz * r10.xyz + r5.xyz;
  r8.w = 1 + r8.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r7.x = dot(r8.xyw, r5.xyz);
  r5.xyz = r6.xxx * r5.xyz;
  r5.xyz = r8.xyw * r7.xxx + -r5.xyz;
  r6.x = dot(r5.xyz, r5.xyz);
  r6.x = sqrt(r6.x);
  r5.xyz = r5.xyz / r6.xxx;
  r6.x = saturate(dot(r5.xyz, cb6[7].xyz));
  r7.xzw = cb0[67].xyz + -r2.xyz;
  r8.x = dot(r7.xzw, r7.xzw);
  r8.x = sqrt(r8.x);
  r7.xzw = r7.xzw / r8.xxx;
  r7.xzw = cb6[7].xyz + r7.xzw;
  r8.x = dot(r7.xzw, r7.xzw);
  r8.x = sqrt(r8.x);
  r7.xzw = r7.xzw / r8.xxx;
  r5.x = saturate(dot(r7.xzw, r5.xyz));
  r5.y = 11 * cb7[66].x;
  r5.y = exp2(r5.y);
  r5.z = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = r5.y * r5.x;
  r5.x = exp2(r5.x);
  r5.x = r6.x * r5.x;
  r5.x = cb7[66].y * r5.x;
  r7.xzw = cb6[5].xyz * r5.xxx;
  r5.xyz = r5.zzz ? float3(0,0,0) : r7.xzw;
  r5.xyz = r12.xyz * float3(0.318309844,0.318309844,0.318309844) + r5.xyz;
  r5.xyz = r9.xyz * r6.yyy + r5.xyz;
  r4.yzw = r5.xyz * r4.yzw;
  r5.xyz = cb7[32].xyz + -cb7[30].xyz;
  r5.xyz = r5.www * r5.xyz + cb7[30].xyz;
  r7.xzw = r5.xyz * r4.yzw;
  r4.yzw = -r4.yzw * r5.xyz + cb7[33].xyz;
  r4.yzw = cb7[66].zzz * r4.yzw + r7.xzw;
  r5.xyz = saturate(cb7[35].xyz * r11.xyz);
  r5.w = saturate(cb7[67].w * r3.w);
  r3.w = 1 + -r3.w;
  r3.w = saturate(cb7[68].z * r3.w);
  r3.w = r5.w * r3.w;
  r4.x = r4.x + -r7.y;
  r4.x = r4.x * cb7[46].y + v2.x;
  r4.x = r4.x * 2 + -1;
  r4.x = 1 + -abs(r4.x);
  r4.x = r4.x * cb7[69].x + -cb7[69].x;
  r4.x = saturate(cb7[69].z + r4.x);
  r4.x = cb7[69].w * r4.x;
  r5.w = cb0[142].z * cb7[71].x + v2.x;
  r6.x = cb7[72].y * r5.w;
  r5.w = cb0[142].z * cb7[72].z + v2.y;
  r6.y = cb7[72].w * r5.w;
  r6.xy = r0.ww * cb7[73].yy + r6.xy;
  r5.w = t18.SampleBias(s12_s, r6.xy, cb0[143].y).x;
  r6.x = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb7[73].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = r6.x ? 0 : r5.w;
  r6.x = cb0[142].z * cb7[74].w + v2.x;
  r6.x = cb7[76].x * r6.x;
  r7.x = cb0[142].z * cb7[76].y + v2.y;
  r6.y = cb7[76].z * r7.x;
  r6.xy = r0.ww * cb7[56].yy + r6.xy;
  r0.w = t14.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r6.x = -0.100000001 + v2.x;
  r6.y = 0.899999976 + -v2.x;
  r6.x = min(r6.x, r6.y);
  r0.w = r6.x * 5 + r0.w;
  r0.w = r5.w * r0.w;
  r0.w = r0.w * cb7[69].x + -cb7[69].x;
  r0.w = saturate(cb7[69].z + r0.w);
  r0.w = r4.x * r0.w;
  r7.w = saturate(r3.w * r0.w);
  r0.w = saturate(cb7[65].x);
  r3.w = saturate(cb7[66].w);
  r4.x = saturate(cb7[67].x);
  r4.x = r4.x * cb0[139].y + cb0[139].x;
  r5.w = cmp(0 < cb0[215].x);
  r6.x = cmp(0 < cb1[20].z);
  if (r6.x != 0) {
    r8.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = min(float3(0.99000001,0.99000001,0.99000001), r8.xyz);
    r8.xyz = cb0[213].xyz * r8.xyz;
    r9.xyz = (int3)r8.xyz;
    r9.w = 0;
    r9.xyzw = t0.Load(r9.xyzw).xyzw;
    r9.xyzw = (uint4)r9.xyzw;
    r6.x = 1 + cb0[213].w;
    r8.xyz = r8.xyz / r9.www;
    r8.xyz = frac(r8.xyz);
    r8.xyz = cb0[213].www * r8.xyz;
    r8.xyz = r9.xyz * r6.xxx + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
    r8.xyz = cb0[214].xyz * r8.xyz;
    r6.z = t1.SampleLevel(s0_s, r8.xyz, 0).x;
  } else {
    r6.x = cmp(0 < cb1[18].w);
    r6.x = r5.w ? r6.x : 0;
    r6.z = r6.x ? cb3[5].x : 1;
  }
  r6.x = 0.0799999982 * r3.w;
  r8.xyz = -r3.www * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r8.xyz = r0.www * r8.xyz + r6.xxx;
  r9.xyz = -r5.xyz * r0.www + r5.xyz;
  r9.xyz = r9.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = r8.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r10.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r10.w = 0;
  r9.w = r8.x;
  r9.xyzw = r0.wwww ? r10.xyzw : r9.xyzw;
  r8.yz = r0.ww ? float2(0,0) : r8.yz;
  r10.xyz = r0.yzy * r0.yzx;
  r11.yw = r0.zz * r0.yx;
  r0.w = r0.x * r0.x + -r10.x;
  r12.yzw = float3(-1.02332771,1.02332771,-1.02332771) * r0.yzx;
  r11.xz = r10.zy * float2(1,3) + float2(0,-1);
  r10.xyzw = float4(0.858085215,-0.858085215,0.247708291,-0.858085215) * r11.xyzw;
  r0.w = 0.429042608 * r0.w;
  r12.x = 0.886227548;
  r3.w = dot(cb3[6].xyzw, r12.xyzw);
  r6.x = dot(cb3[9].xyzw, r10.xyzw);
  r3.w = r6.x + r3.w;
  r11.x = cb3[12].x * r0.w + r3.w;
  r3.w = dot(cb3[7].xyzw, r12.xyzw);
  r6.x = dot(cb3[10].xyzw, r10.xyzw);
  r3.w = r6.x + r3.w;
  r11.y = cb3[12].y * r0.w + r3.w;
  r3.w = dot(cb3[8].xyzw, r12.xyzw);
  r6.x = dot(cb3[11].xyzw, r10.xyzw);
  r3.w = r6.x + r3.w;
  r11.z = cb3[12].z * r0.w + r3.w;
  r10.xyz = max(float3(0,0,0), r11.xyz);
  r10.xyz = r5.www ? r10.xyz : 0;
  r10.xyz = cb0[157].xyz * r10.xyz;
  r0.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r10.xyz * r9.xyz;
  r11.xyz = r5.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r11.xyz = r5.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r11.xyz;
  r5.xyz = r5.xyz * float3(2.75519991,2.75519991,2.75519991) + r11.xyz;
  r5.xyz = float3(1.33200002,1.33200002,1.33200002) + r5.xyz;
  r5.xyz = max(float3(1,1,1), r5.xyz);
  r6.xy = -cb0[129].xy + v3.xy;
  r6.xy = cb0[131].zw * r6.xy;
  r6.xy = (uint2)r6.xy;
  r3.w = v3.w * cb2[3].x + cb2[3].y;
  r3.w = log2(r3.w);
  r3.w = cb2[3].z * r3.w;
  r3.w = max(0, r3.w);
  r3.w = (uint)r3.w;
  r5.w = asint(cb2[1].z) + -1;
  r3.w = min((uint)r5.w, (uint)r3.w);
  r6.xy = (uint2)r6.xy >> asuint(cb2[2].xx);
  r3.w = mad((int)r3.w, asint(cb2[1].y), (int)r6.y);
  r3.w = mad((int)r3.w, asint(cb2[1].x), (int)r6.x);
  if (cb2[0].z != 0) {
    r11.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r11.yzw = r11.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r12.xyzw = cb2[51].xyzw * r2.yyyy;
      r12.xyzw = r2.xxxx * cb2[50].xyzw + r12.xyzw;
      r12.xyzw = r2.zzzz * cb2[52].xyzw + r12.xyzw;
      r12.xyzw = cb2[53].xyzw + r12.xyzw;
      r6.xy = r12.xy / r12.ww;
      r12.xy = cmp(r6.xy >= float2(0,0));
      r13.xy = cmp(float2(1,1) >= r6.xy);
      r12.xy = r12.xy ? r13.xy : 0;
      r5.w = r12.y ? r12.x : 0;
      if (r5.w != 0) {
        r5.w = t4.SampleLevel(s3_s, r6.xy, 0).x;
        r6.x = cmp(r12.z < r5.w);
        r5.w = cmp(0.99000001 < r5.w);
        r5.w = (int)r5.w | (int)r6.x;
        r12.x = r5.w ? 1.000000 : 0;
      } else {
        r12.x = 1;
      }
    } else {
      r12.x = 1;
    }
    if (cb2[9].z != 0) {
      r5.w = cb2[9].z;
      r6.x = 0;
      while (true) {
        r6.y = cmp((uint)r6.x >= asuint(cb2[9].z));
        if (r6.y != 0) break;
        r6.y = dot(cb2[10].xyzw, icb[r6.x+0].xyzw);
        r6.y = cmp(v3.w < r6.y);
        if (r6.y != 0) {
          r5.w = r6.x;
          break;
        }
        r6.x = (int)r6.x + 1;
      }
      r6.x = cmp((uint)r5.w < asuint(cb2[9].z));
      if (r6.x != 0) {
        r6.x = (uint)r5.w << 2;
        r13.xyzw = cb2[r6.x+12].xyzw * r2.yyyy;
        r13.xyzw = r2.xxxx * cb2[r6.x+11].xyzw + r13.xyzw;
        r13.xyzw = r2.zzzz * cb2[r6.x+13].xyzw + r13.xyzw;
        r13.xyzw = cb2[r6.x+14].xyzw + r13.xyzw;
        r14.xyzw = r13.xyxy / r13.wwww;
        r6.xy = cmp(r14.zw >= cb2[r5.w+27].xy);
        r13.xy = cmp(cb2[r5.w+27].zw >= r14.zw);
        r6.xy = r6.xy ? r13.xy : 0;
        r5.w = r6.y ? r6.x : 0;
        if (r5.w != 0) {
          r14.xyzw = r14.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r6.xy = frac(r14.zw);
          r14.xyzw = floor(r14.xyzw);
          r15.xyzw = float4(0.5,1.5,0.5,0.5) + r14.zwzw;
          r15.xyzw = cb2[31].zwzw * r15.xyzw;
          r16.x = t3.SampleLevel(s2_s, r15.xy, 0).x;
          r14.xyzw = float4(1.5,1.5,1.5,0.5) + r14.xyzw;
          r14.xyzw = cb2[31].zwzw * r14.xyzw;
          r16.y = t3.SampleLevel(s2_s, r14.xy, 0).x;
          r16.z = t3.SampleLevel(s2_s, r14.zw, 0).x;
          r16.w = t3.SampleLevel(s2_s, r15.zw, 0).x;
          r5.w = r13.z * 4000 + -1;
          r13.xyzw = saturate(r16.xyzw * float4(4000,4000,4000,4000) + -r5.wwww);
          r13.yz = r13.zy + -r13.wx;
          r13.xy = r6.xx * r13.yz + r13.wx;
          r5.w = r13.y + -r13.x;
          r5.w = r6.y * r5.w + r13.x;
        } else {
          r5.w = 1;
        }
      } else {
        r5.w = 1;
      }
    } else {
      r5.w = 1;
    }
    r11.x = 1;
    r6.x = dot(float4(1,1,1,1), r11.xyzw);
    r12.yzw = r11.yzw;
    r6.y = dot(r12.xyzw, float4(1,1,1,1));
    r6.y = -1 + r6.y;
    r6.x = r6.x * r6.y + 1;
    r6.y = saturate(v3.w * cb2[9].x + cb2[9].y);
    r6.y = r6.y * r6.y;
    r6.x = r6.x + -r5.w;
    r5.w = r6.y * r6.x + r5.w;
    r6.x = min(1, r5.w);
    r6.x = r6.x + r5.w;
    r6.x = cmp(0 < r6.x);
    if (r6.x != 0) {
      r6.x = dot(cb2[4].xyz, cb2[4].xyz);
      r6.x = rsqrt(r6.x);
      r11.xyz = cb2[4].xyz * r6.xxx;
      r6.x = dot(r0.xyz, r11.xyz);
      r6.y = saturate(r6.x);
      r10.w = max(cb0[226].y, r4.x);
      r11.w = dot(r0.xyz, r3.xyz);
      r11.x = dot(r3.xyz, r11.xyz);
      r11.y = r11.x * 2 + 2;
      r11.y = rsqrt(r11.y);
      r6.x = r11.w + r6.x;
      r6.x = saturate(r6.x * r11.y);
      r11.x = saturate(r11.y * r11.x + r11.y);
      r11.y = 9.99999975e-006 + abs(r11.w);
      r11.y = min(1, r11.y);
      r12.yzw = r9.xyz * r6.yyy;
      r12.yzw = float3(0.318309873,0.318309873,0.318309873) * r12.yzw;
      r11.z = r10.w * r10.w;
      r11.w = r11.z * r11.z;
      r13.x = r6.x * r11.w + -r6.x;
      r6.x = r13.x * r6.x + 1;
      r6.x = r6.x * r6.x;
      r6.x = 3.14159274 * r6.x;
      r6.x = r11.w / r6.x;
      r10.w = -r10.w * r10.w + 1;
      r11.w = r11.y * r10.w + r11.z;
      r10.w = r6.y * r10.w + r11.z;
      r10.w = r11.y * r10.w;
      r10.w = r6.y * r11.w + r10.w;
      r10.w = rcp(r10.w);
      r6.x = r10.w * r6.x;
      r10.w = 1 + -r11.x;
      r11.x = r10.w * r10.w;
      r11.x = r11.x * r11.x;
      r11.y = r11.x * r10.w;
      r11.z = saturate(50 * r8.y);
      r10.w = -r11.x * r10.w + 1;
      r8.x = r9.w;
      r13.xyz = r10.www * r8.xyz;
      r11.xyz = r11.zzz * r11.yyy + r13.xyz;
      r6.x = 0.5 * r6.x;
      r11.xyz = r6.xxx * r11.xyz;
      r11.xyz = r11.xyz * r6.yyy;
      r13.xyz = cb2[5].xyz * r5.www;
      r14.xyz = r13.xyz * r12.yzw;
      r11.xyz = r13.yzx * r11.yzx;
      r14.w = r11.z;
    } else {
      r11.xy = float2(0,0);
      r14.xyzw = float4(0,0,0,0);
    }
    r5.w = asuint(cb2[8].z) >> 8;
    r5.w = (int)r5.w & asint(cb1[23].w);
    r13.xyzw = r5.wwww ? r14.xyzw : float4(0,0,0,0);
    r6.xy = r5.ww ? r11.xy : float2(0,0);
    r6.z = r12.x;
  } else {
    r13.xyzw = float4(0,0,0,0);
    r6.xy = float2(0,0);
  }
  r5.w = (uint)r3.w << 1;
  r5.w = t6.Load(r5.w).x;
  r5.w = min(asuint(cb2[0].x), (uint)r5.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r10.w = (((uint)r3.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r10.w = t6.Load(r10.w).x;
  r5.w = min(asuint(cb2[0].x), (uint)r5.w);
  r11.x = dot(-r3.xyz, r0.xyz);
  r11.x = r11.x + r11.x;
  r11.xyz = r0.xyz * -r11.xxx + -r3.xyz;
  r11.w = max(cb0[226].y, r4.x);
  r12.x = r11.w * r11.w;
  r11.w = -r11.w * r11.w + 1;
  r12.y = dot(r0.xyz, r3.xyz);
  r12.z = r12.y + r12.y;
  r12.w = r12.z * r12.y + -1;
  r14.x = 9.99999975e-006 + abs(r12.y);
  r14.x = min(1, r14.x);
  r14.yzw = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  r15.x = r12.x * r12.x;
  r15.y = saturate(50 * r8.y);
  r16.y = 1;
  r8.w = r9.w;
  r17.xyz = r13.xyz;
  r18.x = r13.w;
  r18.yz = r6.xy;
  r9.w = 0;
  while (true) {
    r15.z = cmp((uint)r9.w >= (uint)r5.w);
    if (r15.z != 0) break;
    r15.z = (int)r9.w + (int)r10.w;
    r15.z = t7.Load(r15.z).x;
    r15.w = (int)r15.z * 6;
    r19.xyzw = t5.Load(r15.w).xyzw;
    r15.w = mad((int)r15.z, 6, 1);
    r20.xyzw = t5.Load(r15.w).xyzw;
    r16.zw = mad((int2)r15.zz, int2(6,6), int2(2,3));
    r21.xyzw = t5.Load(r16.z).xyzw;
    r22.xyzw = t5.Load(r16.w).xyzw;
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
        r23.xyzw = t5.Load(r15.z).xyzw;
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
        r18.w = dot(r11.xyz, r19.xyz);
        r23.xyz = r18.www * r11.xyz + -r19.xyz;
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
        r16.w = saturate(r16.w * r11.w);
        r15.z = saturate(r23.w * r15.z);
        r18.w = dot(r0.xyz, r19.xyz);
        r19.x = dot(r3.xyz, r19.xyz);
        r19.y = r19.x * 2 + 2;
        r19.y = rsqrt(r19.y);
        r19.z = r18.w + r12.y;
        r19.z = saturate(r19.z * r19.y);
        r19.y = saturate(r19.y * r19.x + r19.y);
        r19.w = cmp(0 < r16.w);
        if (r19.w != 0) {
          r21.y = -r16.w * r16.w + 1;
          r21.y = sqrt(r21.y);
          r21.z = dot(r12.yy, r18.ww);
          r22.x = r21.z + -r19.x;
          r22.y = cmp(r22.x >= r21.y);
          if (r22.y != 0) {
            r19.z = 1;
            r19.y = abs(r12.y);
          } else {
            r22.y = -r22.x * r22.x + 1;
            r22.y = rsqrt(r22.y);
            r22.y = r22.y * r16.w;
            r22.z = -r22.x * r18.w + r12.y;
            r22.x = -r22.x * r19.x + r12.w;
            r22.xw = r22.yy * r22.xz;
            r23.x = r18.w * r18.w;
            r23.x = -r12.y * r12.y + -r23.x;
            r23.x = 1 + r23.x;
            r23.x = -r19.x * r19.x + r23.x;
            r21.z = saturate(r21.z * r19.x + r23.x);
            r21.z = sqrt(r21.z);
            r21.z = r22.y * r21.z;
            r23.x = r21.z * r12.y;
            r23.y = r23.x + r23.x;
            r23.z = r18.w * r21.y + r12.y;
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
            r18.w = r18.w + r12.y;
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
        r15.z = r12.x * r12.x + r15.z;
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
        r19.xyz = r16.xxx * r8.wyz;
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
    r15.z = (int)r15.z & asint(cb1[23].w);
    r19.xyz = r20.xyz + r17.xyz;
    r16.xzw = r18.xyz + r16.xzw;
    r17.xyz = r15.zzz ? r19.xyz : r17.xyz;
    r18.xyz = r15.zzz ? r16.xzw : r18.xyz;
    r9.w = (int)r9.w + 1;
  }
  r6.xyz = r18.xyz + r17.xyz;
  r11.yzw = r12.zzz * r0.xyz + -r3.xyz;
  r12.y = saturate(r12.y);
  r3.x = (int)r3.w + asint(cb2[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t6.Load(r3.y).x;
  r3.y = min(asuint(cb2[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t6.Load(r3.x).x;
  r3.z = max(0.00100000005, r4.x);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.z = r3.w + -r3.z;
  r11.x = 0;
  r12.xzw = float3(0,0,0);
  r3.w = 1;
  r5.w = 0;
  r6.w = 1;
  r9.w = 0;
  while (true) {
    r10.w = cmp((uint)r9.w >= (uint)r3.y);
    if (r10.w != 0) break;
    r10.w = cmp(r3.w < 0.00100000005);
    if (r10.w != 0) {
      break;
    }
    r10.w = (int)r3.x + (int)r9.w;
    r10.w = t7.Load(r10.w).x;
    r13.xyz = -cb4[r10.w+0].xyz + r2.xyz;
    r13.w = dot(r13.xyz, r13.xyz);
    r14.x = sqrt(r13.w);
    r14.y = cmp(r14.x < cb4[r10.w+0].w);
    if (r14.y != 0) {
      r14.y = cmp(0 < cb4[r10.w+341].z);
      if (r14.y != 0) {
        r14.y = (uint)r10.w << 2;
        r15.xzw = cb4[r14.y+1024].xyz * r2.yyy;
        r15.xzw = r2.xxx * cb4[r14.y+1023].xyz + r15.xzw;
        r15.xzw = r2.zzz * cb4[r14.y+1025].xyz + r15.xzw;
        r15.xzw = cb4[r14.y+1026].xyz + r15.xzw;
        r16.xyz = cb4[r14.y+1024].xyz * r11.zzz;
        r16.xyz = r11.yyy * cb4[r14.y+1023].xyz + r16.xyz;
        r14.yzw = r11.www * cb4[r14.y+1025].xyz + r16.xyz;
        r14.yzw = rcp(r14.yzw);
        r16.xyz = -r15.xzw * r14.yzw + -r14.yzw;
        r14.yzw = -r15.xzw * r14.yzw + r14.yzw;
        r14.yzw = max(r16.xyz, r14.yzw);
        r14.z = min(r14.z, r14.w);
        r14.y = min(r14.y, r14.z);
        r14.yzw = r14.yyy * r11.yzw + r2.xyz;
        r16.xyz = cb4[r10.w+682].xyz + cb4[r10.w+0].xyz;
        r16.xyz = -r16.xyz + r14.yzw;
        r14.y = cb4[r10.w+2387].w * 0.699999988;
        r17.xyz = -cb4[r10.w+2387].www * float3(0.5,0.5,0.5) + cb4[r10.w+2387].xyz;
        r18.xyz = cb4[r10.w+2387].xyz * r15.xzw;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xzw * cb4[r10.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xzw = r15.xzw * cb4[r10.w+2387].xyz + -r17.xyz;
        r15.xzw = abs(r15.xzw);
        r15.xzw = r18.xyz ? r15.xzw : 0;
        r14.z = dot(r19.xyz, float3(1,1,1));
        r14.w = dot(r15.xzw, float3(1,1,1));
        r14.z = r14.z + r14.w;
        r14.y = 1 / r14.y;
        r14.y = saturate(r14.z * r14.y);
        r14.z = r14.y * -2 + 3;
        r14.y = r14.y * r14.y;
        r17.x = -r14.z * r14.y + 1;
      } else {
        r14.x = saturate(r14.x / cb4[r10.w+0].w);
        r14.y = dot(r11.yzw, r13.xyz);
        r13.w = -cb4[r10.w+0].w * cb4[r10.w+0].w + r13.w;
        r13.w = r14.y * r14.y + -r13.w;
        r14.z = cmp(r13.w >= 0);
        r13.w = sqrt(r13.w);
        r13.w = r13.w + -r14.y;
        r13.xyz = r13.www * r11.yzw + r13.xyz;
        r13.yzw = -cb4[r10.w+682].xyz + r13.xyz;
        r14.x = r14.x * 2.5 + -1.5;
        r14.x = max(0, r14.x);
        r14.y = r14.x * r14.x;
        r14.x = -r14.x * 2 + 3;
        r13.x = -r14.y * r14.x + 1;
        r17.xyzw = r14.zzzz ? r13.xyzw : r11.xyzw;
        r16.xyz = r17.yzw;
      }
      r16.w = cb4[r10.w+341].y;
      r13.xyzw = t8.SampleLevel(s4_s, r16.xyzw, r3.z).xyzw;
      r13.xyz = cb4[r10.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r17.xxx;
      r12.xzw = r13.xyz * r3.www + r12.xzw;
      r13.x = -r13.w * r17.x + 1;
      r3.w = r13.x * r3.w;
      r10.w = cb4[r10.w+682].w * r17.x;
      r5.w = r10.w * r6.w + r5.w;
      r10.w = 1 + -r17.x;
      r6.w = r10.w * r6.w;
    }
    r9.w = (int)r9.w + 1;
  }
  r3.xyz = cb0[157].xyz * r12.xzw;
  r3.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r5.w * r3.w;
  r5.w = saturate(r4.x * cb0[197].x + cb0[197].y);
  r6.w = r5.w * -2 + 3;
  r5.w = r5.w * r5.w;
  r5.w = r6.w * r5.w;
  r3.w = max(9.99999975e-005, r3.w);
  r0.w = r0.w / r3.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r5.w * r0.w + 1;
  r3.xyz = r3.xyz * r0.www;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r12.xz = r0.ww * float2(32.6650009,11.8149996) + v3.xy;
    r0.w = dot(r12.xz, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r13.xyzw = cb0[1].xyzw * r1.yyyy;
    r13.xyzw = r1.xxxx * cb0[0].xyzw + r13.xyzw;
    r13.xyzw = r1.zzzz * cb0[2].xyzw + r13.xyzw;
    r13.xyzw = cb0[3].xyzw + r13.xyzw;
    r11.xyz = r11.yzw * v3.www + r1.xyz;
    r14.xyzw = cb0[1].xyzw * r11.yyyy;
    r14.xyzw = r11.xxxx * cb0[0].xyzw + r14.xyzw;
    r11.xyzw = r11.zzzz * cb0[2].xyzw + r14.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r3.w = rcp(r13.w);
    r12.xzw = r13.xyz * r3.www;
    r3.w = rcp(r11.w);
    r13.xy = v3.ww * cb0[30].zw + r13.zw;
    r5.w = rcp(r13.y);
    r11.xyz = r11.xyz * r3.www + -r12.xzw;
    r3.w = dot(r11.xy, r11.xy);
    r3.w = sqrt(r3.w);
    r6.w = 0.5 * r3.w;
    r13.yz = r12.xz * r6.ww + r11.xy;
    r13.yz = -r3.ww * float2(0.5,0.5) + abs(r13.yz);
    r13.yz = max(float2(0,0), r13.yz);
    r13.yz = r13.yz / abs(r11.xy);
    r13.yz = float2(1,1) + -r13.yz;
    r3.w = min(r13.y, r13.z);
    r3.w = r3.w / r6.w;
    r11.xyz = r11.xyz * r3.www;
    r3.w = -r13.x * r5.w + r12.w;
    r3.w = 4 * r3.w;
    r3.w = max(abs(r11.z), r3.w);
    r13.xy = r12.xz * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.xz = cb2[176].xy * r13.xy;
    r11.xy = cb2[176].xy * r11.xy;
    r5.w = 0.0833333358 * r3.w;
    r11.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r11.xyz;
    r12.xzw = r11.xyz * r0.www + r12.xzw;
    r0.w = 1;
    r16.x = 0;
    r13.xyz = float3(0,0,0);
    r6.w = 0;
    r9.w = 0;
    r10.w = 0;
    r11.w = 0;
    r14.xw = float2(0,0);
    while (true) {
      r15.x = cmp((uint)r14.w >= 12);
      if (r15.x != 0) break;
      r15.x = (uint)r14.w;
      r17.xyzw = float4(1,2,3,4) + r15.xxxx;
      r18.xyzw = r17.xxxy * r11.xyzz + r12.xzww;
      r19.xyzw = r17.yyzz * r11.xyxy + r12.xzxz;
      r17.xyzw = r17.wwzw * r11.xyzz + r12.xzww;
      r15.x = r4.x * 0.666666687 + r0.w;
      r15.z = r4.x * 0.666666687 + r15.x;
      r20.x = t12.SampleLevel(s6_s, r18.xy, r0.w).x;
      r20.y = t12.SampleLevel(s6_s, r19.xy, r0.w).x;
      r20.z = t12.SampleLevel(s6_s, r19.zw, r15.x).x;
      r20.w = t12.SampleLevel(s6_s, r17.xy, r15.x).x;
      r17.xy = r18.zw;
      r17.xyzw = r17.xyzw + -r20.xyzw;
      r18.xyzw = r3.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r17.xyzw;
      r18.xyzw = cmp(abs(r18.xyzw) < r5.wwww);
      r15.xw = (int2)r18.zw | (int2)r18.xy;
      r15.x = (int)r15.w | (int)r15.x;
      if (r15.x != 0) {
        r16.x = r17.x;
        r13.xyz = r17.yzw;
        r6.w = r18.x;
        r9.w = r18.y;
        r10.w = r18.z;
        r11.w = -1;
        break;
      }
      r14.x = r17.w;
      r14.w = (int)r14.w + 4;
      r0.w = r15.z;
      r16.x = r17.x;
      r13.xyz = r17.yzw;
      r6.w = r18.x;
      r9.w = r18.y;
      r10.w = r18.z;
      r11.w = r15.x;
    }
    if (r11.w != 0) {
      r13.w = 2;
      r17.xy = r13.yz;
      r17.z = 3;
      r13.yzw = r10.www ? r13.xyw : r17.xyz;
      r16.y = r13.x;
      r16.z = 1;
      r13.xyz = r9.www ? r16.xyz : r13.yzw;
      r14.y = r16.x;
      r14.z = 0;
      r13.xyz = r6.www ? r14.xyz : r13.xyz;
      r0.w = (uint)r14.w;
      r0.w = r13.z + r0.w;
      r3.w = r13.x + -r13.y;
      r3.w = saturate(r13.x / r3.w);
      r0.w = r3.w + r0.w;
      r11.xyz = r11.xyz * r0.www + r12.xzw;
      r11.xy = cb2[176].zw * r11.xy;
      r11.xy = r11.xy * float2(2,-2) + float2(-1,1);
      r11.xy = cb0[66].xy * r11.xy;
      r11.xy = r11.xy / cb0[66].xy;
      r12.xzw = cb0[123].xyw * r11.yyy;
      r12.xzw = r11.xxx * cb0[122].xyw + r12.xzw;
      r12.xzw = r11.zzz * cb0[124].xyw + r12.xzw;
      r12.xzw = cb0[125].xyw + r12.xzw;
      r11.zw = r12.xz / r12.ww;
      r12.xz = r11.zw * cb2[177].xy + cb2[177].zw;
      r11.xy = saturate(abs(r11.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r11.xy, r11.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r11.xy = saturate(abs(r11.zw) * float2(5,5) + float2(-4,-4));
      r3.w = dot(r11.xy, r11.xy);
      r3.w = 1 + -r3.w;
      r3.w = max(0, r3.w);
      r0.w = min(r3.w, r0.w);
      r11.xyz = t13.SampleLevel(s7_s, r12.xz, 0).xyz;
      r11.xyz = min(float3(0,0,0), -r11.xyz);
      r3.w = saturate(-r4.x * 6.5999999 + 2);
      r0.w = r3.w * r0.w;
      r3.w = 1;
      r11.xyz = -r11.xyz * r0.www;
      r11.xyz = cb2[178].xxx * r11.xyz;
      r0.w = -r3.w * r0.w + 1;
      r3.xyz = r3.xyz * r0.www + r11.xyz;
    }
  }
  r11.xyzw = r4.xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r11.x * r11.x;
  r3.w = -9.27999973 * r12.y;
  r3.w = exp2(r3.w);
  r0.w = min(r3.w, r0.w);
  r0.w = r0.w * r11.x + r11.y;
  r11.xy = r0.ww * float2(-1.03999996,1.03999996) + r11.zw;
  r8.xyz = r8.wyz;
  r0.w = r15.y * r11.y;
  r11.xyz = r8.xyz * r11.xxx + r0.www;
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
    r3.w = -0.200000003 + r4.x;
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
      r12.xyzw = t9.SampleLevel(s4_s, r0.xy, 0).xyzw;
      r0.x = r12.w * r0.w;
    } else {
      r12.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r3.xyz = r0.xxx * r3.xyz + r12.xyz;
  }
  r0.xyz = r3.xyz * r11.xyz;
  r3.xyz = r8.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r8.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r8.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r0.xyz * r3.xyz + r6.xyz;
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
  r4.x = r2.w * r3.z;
  r3.x = r4.x * r1.w + r3.x;
  r4.x = -r4.x * r1.w + r1.w;
  r2.w = -r2.w * r3.z + 1;
  r2.w = r2.w * r3.y;
  r5.w = -cb2[146].y + r3.x;
  r5.w = cb2[143].y * r5.w;
  r5.w = max(-127, r5.w);
  r5.w = exp2(-r5.w);
  r5.w = cb2[146].x * r5.w;
  r3.x = -cb2[144].w + r3.x;
  r3.x = cb2[144].y * r3.x;
  r3.x = max(-127, r3.x);
  r3.x = exp2(-r3.x);
  r3.x = cb2[144].z * r3.x;
  r5.w = r3.w ? r5.w : cb2[143].x;
  r3.x = r3.w ? r3.x : cb2[144].x;
  r2.w = r3.w ? r2.w : r3.y;
  r3.w = r3.w ? r4.x : r1.w;
  r4.x = cb2[143].y * r3.w;
  r4.x = max(-127, r4.x);
  r6.x = exp2(-r4.x);
  r6.x = 1 + -r6.x;
  r6.x = r6.x / r4.x;
  r6.y = -r4.x * 0.240226507 + 0.693147182;
  r4.x = cmp(0.00999999978 < abs(r4.x));
  r4.x = r4.x ? r6.x : r6.y;
  r3.w = cb2[144].y * r3.w;
  r3.w = max(-127, r3.w);
  r6.x = exp2(-r3.w);
  r6.x = 1 + -r6.x;
  r6.x = r6.x / r3.w;
  r6.y = -r3.w * 0.240226507 + 0.693147182;
  r3.w = cmp(0.00999999978 < abs(r3.w));
  r3.w = r3.w ? r6.x : r6.y;
  r3.x = r3.x * r3.w;
  r3.x = r5.w * r4.x + r3.x;
  r3.w = r3.x * r2.w;
  r6.xy = cmp(float2(0,0) < cb2[146].zw);
  if (r6.x != 0) {
    r4.x = saturate(r3.y * cb2[150].x + cb2[150].y);
    r6.xz = float2(1,-1) * cb2[149].yx;
    r11.x = dot(r1.xy, r6.xz);
    r11.y = dot(r1.xy, cb2[149].xy);
    r11.z = r1.w;
    r6.xzw = t10.SampleLevel(s5_s, r11.xyz, 0).xyz;
    r11.xyz = t10.SampleLevel(s5_s, r11.xyz, cb2[150].z).xyz;
    r6.xzw = -r11.xyz + r6.xzw;
    r6.xzw = r4.xxx * r6.xzw + r11.xyz;
    r6.xzw = cb2[145].xyz * r6.xzw;
  } else {
    r6.xzw = cb2[145].xyz;
  }
  r4.x = cmp(cb2[147].w >= 0);
  r5.w = cmp(cb2[146].z == 0.000000);
  r4.x = r4.x ? r5.w : 0;
  if (r4.x != 0) {
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
    r6.xyzw = t11.SampleLevel(s0_s, r11.xyz, 0).xyzw;
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
    r4.x = sqrt(r2.w);
    r4.x = -cb0[181].x + r4.x;
    r4.x = max(0, r4.x);
    r4.x = cb0[182].x * r4.x;
    r4.x = cb0[181].z * r4.x;
    r12.z = sqrt(r4.x);
    r4.x = cb0[181].y * r12.z;
    r5.w = cmp(r4.x < 0.707106769);
    r4.x = dot(r4.xx, r4.xx);
    r4.x = min(1, r4.x);
    r4.x = r5.w ? r4.x : 1;
    r2.w = rsqrt(r2.w);
    r11.xyz = r11.xyz * r2.www;
    r2.w = -r11.z * r11.z + 1;
    r2.w = sqrt(r2.w);
    r13.y = r11.z * 0.5 + 0.5;
    r6.zw = r11.xy / r2.ww;
    r2.w = 1 + -abs(r6.z);
    r2.w = sqrt(r2.w);
    r5.w = abs(r6.z) * -0.0187292993 + 0.0742610022;
    r5.w = r5.w * abs(r6.z) + -0.212114394;
    r5.w = r5.w * abs(r6.z) + 1.57072878;
    r8.w = r5.w * r2.w;
    r8.w = r8.w * -2 + 3.14159274;
    r6.z = cmp(r6.z < -r6.z);
    r6.z = r6.z ? r8.w : 0;
    r2.w = r5.w * r2.w + r6.z;
    r5.w = cmp(r6.w < 0);
    r6.z = 6.28318548 + -r2.w;
    r2.w = r5.w ? r6.z : r2.w;
    r13.x = 0.159154937 * r2.w;
    r6.zw = cb0[180].zw * float2(0.5,0.5) + r13.xy;
    r11.xy = float2(1,1) + cb0[180].xy;
    r11.xy = cb0[180].xy / r11.xy;
    r6.zw = r11.xy * r6.zw;
    r12.xy = r1.ww ? r6.zw : r6.xy;
    r6.xyzw = t2.SampleLevel(s1_s, r12.xyz, 0).xyzw;
    r6.xyz = r6.xyz * r4.xxx;
    r1.w = 1 + -r6.w;
    r1.w = -r4.x * r1.w + 1;
    r6.xyz = cb0[135].zzz * r6.xyz;
    r3.yzw = r6.xyz * r3.xxx + r3.yzw;
    r3.x = r3.x * r1.w;
  }
  r6.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r6.xyz = r6.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r7.xyz = max(float3(0,0,0), r4.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r4.xyz = -cb1[5].xyz + r2.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r4.xyz = cmp(r6.xyz < abs(r4.xyz));
    r1.w = (int)r4.y | (int)r4.x;
    r1.w = (int)r4.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r7.xyzw = r1.wwww ? r2.yzwx : r7.xyzw;
    o0.w = r7.w;
  } else {
    o0.w = r7.w;
  }
  r0.xyz = r10.xyz * r5.xyz + r0.xyz;
  r0.xyz = r0.xyz + r7.xyz;
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