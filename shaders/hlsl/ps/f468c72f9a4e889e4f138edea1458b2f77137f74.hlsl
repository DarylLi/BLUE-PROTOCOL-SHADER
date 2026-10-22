// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

TextureCube<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

TextureCubeArray<float4> t6 : register(t6);

Buffer<uint4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

Buffer<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

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
  float4 cb3[8];
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
  float4 v3 : TEXCOORD4,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
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
  r0.w = cb1[4].w * cb0[141].w;
  r3.w = v5.x ? 1 : -1;
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
  r6.y = t14.SampleBias(s9_s, r4.zw, cb0[143].y).x;
  r6.xw = float2(0,1);
  r5.zw = cb7[45].xx * r6.xy;
  r6.x = frac(cb0[142].z);
  r7.xy = r5.zw * r6.xx + r4.zw;
  r7.xyz = t14.SampleBias(s9_s, r7.xy, cb0[143].y).xyz;
  r6.y = 0.5 + cb0[142].z;
  r6.y = frac(r6.y);
  r4.zw = r5.zw * r6.yy + r4.zw;
  r8.xyz = t14.SampleBias(s9_s, r4.zw, cb0[143].y).xyz;
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
  r10.xyz = t14.SampleBias(s9_s, r5.xy, cb0[143].y).xyz;
  r4.xy = r5.zw * r6.yy + r4.xy;
  r5.xyz = t14.SampleBias(s9_s, r4.xy, cb0[143].y).xyz;
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
  r0.xyz = r4.yyy * v0.yzx + r0.xyz;
  r0.xyz = r4.www * v1.yzx + r0.xyz;
  r4.y = dot(r0.xyz, r0.xyz);
  r4.y = rsqrt(r4.y);
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r4.y = cb0[142].z * cb7[51].x + v2.x;
  r6.x = cb7[52].y * r4.y;
  r4.y = cb0[142].z * cb7[52].z + v2.y;
  r6.y = cb7[52].w * r4.y;
  r4.y = cb0[142].z * cb7[54].x + v2.x;
  r9.x = cb7[55].y * r4.y;
  r4.y = cb0[142].z * cb7[55].z + v2.y;
  r9.y = cb7[55].w * r4.y;
  r4.y = t15.SampleBias(s10_s, r9.xy, cb0[143].y).z;
  r4.y = -0.5 + r4.y;
  r4.y = r4.y + r4.y;
  r4.zw = r4.yy * cb7[56].yy + r6.xy;
  r4.z = t16.SampleBias(s11_s, r4.zw, cb0[143].y).x;
  r4.w = cmp(0 >= r4.z);
  r4.z = log2(r4.z);
  r4.z = cb7[56].z * r4.z;
  r4.z = exp2(r4.z);
  r9.xyz = cb7[14].xyz * r4.zzz;
  r9.xyz = r4.www ? float3(0,0,0) : r9.xyz;
  r11.xyz = cb6[6].xyz * cb7[58].yyy + cb7[18].xyz;
  r4.z = dot(cb6[7].yzx, r0.xyz);
  r4.w = saturate(r4.z);
  r4.w = 1 + -r4.w;
  r6.x = cb0[142].z * cb7[59].z + v2.x;
  r6.x = cb7[60].w * r6.x;
  r8.w = cb0[142].z * cb7[61].x + v2.y;
  r6.y = cb7[61].y * r8.w;
  r8.w = cb0[142].z * cb7[62].z + v2.x;
  r12.x = cb7[63].w * r8.w;
  r8.w = cb0[142].z * cb7[64].x + v2.y;
  r12.y = cb7[64].y * r8.w;
  r12.xy = t15.SampleBias(s10_s, r12.xy, cb0[143].y).xy;
  r12.xy = float2(-0.5,-0.5) + r12.xy;
  r12.xy = cb7[64].ww * r12.xy;
  r6.xy = r12.xy * float2(2,2) + r6.xy;
  r6.x = t17.SampleBias(s12_s, r6.xy, cb0[143].y).x;
  r12.xyz = -cb7[28].xyz + cb7[27].xyz;
  r12.xyz = r6.xxx * r12.xyz + cb7[28].xyz;
  r13.xyz = cb7[30].xyz * r12.xyz;
  r12.xyz = r12.xyz * cb7[32].xyz + -r13.xyz;
  r12.xyz = r5.www * r12.xyz + r13.xyz;
  r13.xyz = -r12.xyz * cb7[65].xxx + r12.xyz;
  r13.xyz = cb6[6].xyz * r13.xyz;
  r13.xyz = r13.xyz * r4.zzz;
  r8.xyz = cb7[65].yyy * r7.xzw + r8.xyz;
  r4.z = 1 + r8.z;
  r5.xyz = cb7[65].zzz * r10.xyz + r5.xyz;
  r8.w = 1 + r8.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r6.x = dot(r8.xyw, r5.xyz);
  r5.xyz = r5.xyz * r4.zzz;
  r5.xyz = r8.xyw * r6.xxx + -r5.xyz;
  r4.z = dot(r5.xyz, r5.xyz);
  r4.z = sqrt(r4.z);
  r5.xyz = r5.xyz / r4.zzz;
  r4.z = saturate(dot(r5.xyz, cb6[7].xyz));
  r7.xzw = cb0[67].xyz + -r2.xyz;
  r6.x = dot(r7.xzw, r7.xzw);
  r6.x = sqrt(r6.x);
  r7.xzw = r7.xzw / r6.xxx;
  r7.xzw = cb6[7].xyz + r7.xzw;
  r6.x = dot(r7.xzw, r7.xzw);
  r6.x = sqrt(r6.x);
  r7.xzw = r7.xzw / r6.xxx;
  r5.x = saturate(dot(r7.xzw, r5.xyz));
  r5.y = 11 * cb7[66].x;
  r5.y = exp2(r5.y);
  r5.z = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = r5.y * r5.x;
  r5.x = exp2(r5.x);
  r4.z = r5.x * r4.z;
  r4.z = cb7[66].y * r4.z;
  r7.xzw = cb6[5].xyz * r4.zzz;
  r5.xyz = r5.zzz ? float3(0,0,0) : r7.xzw;
  r5.xyz = r13.xyz * float3(0.318309844,0.318309844,0.318309844) + r5.xyz;
  r5.xyz = r11.xyz * r4.www + r5.xyz;
  r5.xyz = r9.xyz * r5.xyz;
  r7.xzw = cb7[32].xyz + -cb7[30].xyz;
  r7.xzw = r5.www * r7.xzw + cb7[30].xyz;
  r8.xyz = r7.xzw * r5.xyz;
  r5.xyz = -r5.xyz * r7.xzw + cb7[33].xyz;
  r5.xyz = cb7[66].zzz * r5.xyz + r8.xyz;
  r7.xzw = saturate(cb7[35].xyz * r12.xyz);
  r4.z = saturate(cb7[67].w * r3.w);
  r3.w = 1 + -r3.w;
  r3.w = saturate(cb7[68].z * r3.w);
  r3.w = r4.z * r3.w;
  r4.x = r4.x + -r7.y;
  r4.x = r4.x * cb7[46].y + v2.x;
  r4.x = r4.x * 2 + -1;
  r4.x = 1 + -abs(r4.x);
  r4.x = r4.x * cb7[69].x + -cb7[69].x;
  r4.x = saturate(cb7[69].z + r4.x);
  r4.x = cb7[69].w * r4.x;
  r4.z = cb0[142].z * cb7[71].x + v2.x;
  r6.x = cb7[72].y * r4.z;
  r4.z = cb0[142].z * cb7[72].z + v2.y;
  r6.y = cb7[72].w * r4.z;
  r4.zw = r4.yy * cb7[73].yy + r6.xy;
  r4.z = t18.SampleBias(s13_s, r4.zw, cb0[143].y).x;
  r4.w = cmp(0 >= r4.z);
  r4.z = log2(r4.z);
  r4.z = cb7[73].z * r4.z;
  r4.z = exp2(r4.z);
  r4.z = r4.w ? 0 : r4.z;
  r4.w = cb0[142].z * cb7[74].w + v2.x;
  r6.x = cb7[76].x * r4.w;
  r4.w = cb0[142].z * cb7[76].y + v2.y;
  r6.y = cb7[76].z * r4.w;
  r4.yw = r4.yy * cb7[56].yy + r6.xy;
  r4.y = t14.SampleBias(s9_s, r4.yw, cb0[143].y).x;
  r4.w = -0.100000001 + v2.x;
  r5.w = 0.899999976 + -v2.x;
  r4.w = min(r5.w, r4.w);
  r4.y = r4.w * 5 + r4.y;
  r4.y = r4.z * r4.y;
  r4.y = r4.y * cb7[69].x + -cb7[69].x;
  r4.y = saturate(cb7[69].z + r4.y);
  r4.x = r4.x * r4.y;
  r4.w = saturate(r4.x * r3.w);
  r3.w = saturate(cb7[65].x);
  r5.w = saturate(cb7[66].w);
  r6.x = saturate(cb7[67].x);
  r6.x = r6.x * cb0[139].y + cb0[139].x;
  r8.xyzw = t13.Sample(s8_s, v3.zw).xyzw;
  r9.xyzw = cb3[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r8.xyzw = saturate(r8.xyzw * cb3[1].xyzw + r9.xyzw);
  r8.xyzw = r8.xyzw * r8.xyzw;
  r8.xyzw = cb3[0].xyzw * r8.xyzw;
  r6.y = 0.0799999982 * r5.w;
  r9.xyz = -r5.www * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xzw;
  r9.xyz = r3.www * r9.xyz + r6.yyy;
  r10.xyz = -r7.xzw * r3.www + r7.xzw;
  r10.xyz = r10.xyz * cb0[136].www + cb0[136].xyz;
  r9.xyz = r9.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r11.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r11.w = 0;
  r10.w = r9.x;
  r10.xyzw = r3.wwww ? r11.xyzw : r10.xyzw;
  r9.yz = r3.ww ? float2(0,0) : r9.yz;
  r11.xy = float2(1,0.5) * v3.xy;
  r11.zw = v3.xy * float2(1,0.5) + float2(0,0.5);
  r12.xyzw = t12.Sample(s8_s, r11.xy).xyzw;
  r11.xyzw = t12.Sample(s8_s, r11.zw).xyzw;
  r3.w = r11.w * 0.00392156886 + r12.w;
  r3.w = -0.00196078443 + r3.w;
  r3.w = r3.w * cb3[4].w + cb3[6].w;
  r12.xyz = r12.xyz * r12.xyz;
  r12.xyz = r12.xyz * cb3[4].xyz + cb3[6].xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r11.xyzw = r11.xyzw * cb3[5].xyzw + cb3[7].xyzw;
  r0.w = 1;
  r0.w = dot(r11.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r3.w * r0.w;
  r11.xyz = r0.www * r12.xyz;
  r11.xyz = cb0[157].xyz * r11.xyz;
  r0.w = dot(r11.xyz, float3(0.300000012,0.589999974,0.109999999));
  r11.xyz = r11.xyz * r10.xyz;
  r12.xyz = r7.xzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r12.xyz = r7.xzw * float3(-4.79510021,-4.79510021,-4.79510021) + r12.xyz;
  r7.xyz = r7.xzw * float3(2.75519991,2.75519991,2.75519991) + r12.xyz;
  r7.xyz = float3(1.33200002,1.33200002,1.33200002) + r7.xyz;
  r7.xyz = max(float3(1,1,1), r7.xyz);
  r12.xy = -cb0[129].xy + v4.xy;
  r12.xy = cb0[131].zw * r12.xy;
  r12.xy = (uint2)r12.xy;
  r3.w = v4.w * cb2[3].x + cb2[3].y;
  r3.w = log2(r3.w);
  r3.w = cb2[3].z * r3.w;
  r3.w = max(0, r3.w);
  r3.w = (uint)r3.w;
  r5.w = asint(cb2[1].z) + -1;
  r3.w = min((uint)r5.w, (uint)r3.w);
  r12.xy = (uint2)r12.xy >> asuint(cb2[2].xx);
  r3.w = mad((int)r3.w, asint(cb2[1].y), (int)r12.y);
  r3.w = mad((int)r3.w, asint(cb2[1].x), (int)r12.x);
  if (cb2[0].z != 0) {
    r12.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r12.yzw = r12.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r13.xyzw = cb2[51].xyzw * r2.yyyy;
      r13.xyzw = r2.xxxx * cb2[50].xyzw + r13.xyzw;
      r13.xyzw = r2.zzzz * cb2[52].xyzw + r13.xyzw;
      r13.xyzw = cb2[53].xyzw + r13.xyzw;
      r13.xy = r13.xy / r13.ww;
      r14.xy = cmp(r13.xy >= float2(0,0));
      r14.zw = cmp(float2(1,1) >= r13.xy);
      r14.xy = r14.zw ? r14.xy : 0;
      r5.w = r14.y ? r14.x : 0;
      if (r5.w != 0) {
        r5.w = t2.SampleLevel(s3_s, r13.xy, 0).x;
        r6.y = cmp(r13.z < r5.w);
        r5.w = cmp(0.99000001 < r5.w);
        r5.w = (int)r5.w | (int)r6.y;
        r8.x = r5.w ? 1.000000 : 0;
      } else {
        r8.x = 1;
      }
    } else {
      r8.x = 1;
    }
    if (cb2[9].z != 0) {
      r5.w = cb2[9].z;
      r6.y = 0;
      while (true) {
        r7.w = cmp((uint)r6.y >= asuint(cb2[9].z));
        if (r7.w != 0) break;
        r7.w = dot(cb2[10].xyzw, icb[r6.y+0].xyzw);
        r7.w = cmp(v4.w < r7.w);
        if (r7.w != 0) {
          r5.w = r6.y;
          break;
        }
        r6.y = (int)r6.y + 1;
      }
      r6.y = cmp((uint)r5.w < asuint(cb2[9].z));
      if (r6.y != 0) {
        r6.y = (uint)r5.w << 2;
        r13.xyzw = cb2[r6.y+12].xyzw * r2.yyyy;
        r13.xyzw = r2.xxxx * cb2[r6.y+11].xyzw + r13.xyzw;
        r13.xyzw = r2.zzzz * cb2[r6.y+13].xyzw + r13.xyzw;
        r13.xyzw = cb2[r6.y+14].xyzw + r13.xyzw;
        r14.xyzw = r13.xyxy / r13.wwww;
        r13.xy = cmp(r14.zw >= cb2[r5.w+27].xy);
        r15.xy = cmp(cb2[r5.w+27].zw >= r14.zw);
        r13.xy = r13.xy ? r15.xy : 0;
        r5.w = r13.y ? r13.x : 0;
        if (r5.w != 0) {
          r14.xyzw = r14.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r13.xy = frac(r14.zw);
          r14.xyzw = floor(r14.xyzw);
          r15.xyzw = float4(0.5,1.5,0.5,0.5) + r14.zwzw;
          r15.xyzw = cb2[31].zwzw * r15.xyzw;
          r16.x = t1.SampleLevel(s2_s, r15.xy, 0).x;
          r14.xyzw = float4(1.5,1.5,1.5,0.5) + r14.xyzw;
          r14.xyzw = cb2[31].zwzw * r14.xyzw;
          r16.y = t1.SampleLevel(s2_s, r14.xy, 0).x;
          r16.z = t1.SampleLevel(s2_s, r14.zw, 0).x;
          r16.w = t1.SampleLevel(s2_s, r15.zw, 0).x;
          r5.w = r13.z * 4000 + -1;
          r14.xyzw = saturate(r16.xyzw * float4(4000,4000,4000,4000) + -r5.wwww);
          r13.zw = r14.zy + -r14.wx;
          r13.xz = r13.xx * r13.zw + r14.wx;
          r5.w = r13.z + -r13.x;
          r5.w = r13.y * r5.w + r13.x;
        } else {
          r5.w = 1;
        }
      } else {
        r5.w = 1;
      }
    } else {
      r5.w = 1;
    }
    r12.x = 1;
    r6.y = dot(float4(1,1,1,1), r12.xyzw);
    r7.w = dot(r8.xyzw, r12.xyzw);
    r7.w = -1 + r7.w;
    r6.y = r6.y * r7.w + 1;
    r7.w = saturate(v4.w * cb2[9].x + cb2[9].y);
    r7.w = r7.w * r7.w;
    r6.y = r6.y + -r5.w;
    r5.w = r7.w * r6.y + r5.w;
    r6.y = min(1, r5.w);
    r6.y = r6.y + r5.w;
    r6.y = cmp(0 < r6.y);
    if (r6.y != 0) {
      r6.y = dot(cb2[4].xyz, cb2[4].xyz);
      r6.y = rsqrt(r6.y);
      r12.xyz = cb2[4].xyz * r6.yyy;
      r6.y = dot(r0.zxy, r12.xyz);
      r7.w = saturate(r6.y);
      r11.w = max(cb0[226].y, r6.x);
      r12.w = dot(r0.zxy, r3.xyz);
      r12.x = dot(r3.xyz, r12.xyz);
      r12.y = r12.x * 2 + 2;
      r12.y = rsqrt(r12.y);
      r6.y = r12.w + r6.y;
      r6.y = saturate(r6.y * r12.y);
      r12.x = saturate(r12.y * r12.x + r12.y);
      r12.y = 9.99999975e-006 + abs(r12.w);
      r12.y = min(1, r12.y);
      r13.xyz = r10.xyz * r7.www;
      r13.xyz = float3(0.318309873,0.318309873,0.318309873) * r13.xyz;
      r12.z = r11.w * r11.w;
      r12.w = r12.z * r12.z;
      r13.w = r6.y * r12.w + -r6.y;
      r6.y = r13.w * r6.y + 1;
      r6.y = r6.y * r6.y;
      r6.y = 3.14159274 * r6.y;
      r6.y = r12.w / r6.y;
      r11.w = -r11.w * r11.w + 1;
      r12.w = r12.y * r11.w + r12.z;
      r11.w = r7.w * r11.w + r12.z;
      r11.w = r12.y * r11.w;
      r11.w = r7.w * r12.w + r11.w;
      r11.w = rcp(r11.w);
      r6.y = r11.w * r6.y;
      r11.w = 1 + -r12.x;
      r12.x = r11.w * r11.w;
      r12.x = r12.x * r12.x;
      r12.y = r12.x * r11.w;
      r12.z = saturate(50 * r9.y);
      r11.w = -r12.x * r11.w + 1;
      r9.x = r10.w;
      r14.xyz = r11.www * r9.xyz;
      r12.xyz = r12.zzz * r12.yyy + r14.xyz;
      r6.y = 0.5 * r6.y;
      r12.xyz = r6.yyy * r12.xyz;
      r12.xyz = r12.xyz * r7.www;
      r14.xyz = cb2[5].xyz * r5.www;
      r13.xyz = r14.xyz * r13.xyz;
      r12.xyz = r14.yzx * r12.yzx;
      r13.w = r12.z;
    } else {
      r12.xy = float2(0,0);
      r13.xyzw = float4(0,0,0,0);
    }
    r5.w = asuint(cb2[8].z) >> 8;
    r5.w = (int)r5.w & asint(cb1[23].w);
    r13.xyzw = r5.wwww ? r13.xyzw : float4(0,0,0,0);
    r12.xy = r5.ww ? r12.xy : float2(0,0);
  } else {
    r13.xyzw = float4(0,0,0,0);
    r12.xy = float2(0,0);
  }
  r5.w = (uint)r3.w << 1;
  r5.w = t4.Load(r5.w).x;
  r5.w = min(asuint(cb2[0].x), (uint)r5.w);
  bitmask.y = ((~(-1 << 31)) << 1) & 0xffffffff;  r6.y = (((uint)r3.w << 1) & bitmask.y) | ((uint)1 & ~bitmask.y);
  r6.y = t4.Load(r6.y).x;
  r5.w = min(asuint(cb2[0].x), (uint)r5.w);
  r7.w = dot(-r3.yzx, r0.xyz);
  r7.w = r7.w + r7.w;
  r14.xyz = r0.zxy * -r7.www + -r3.xyz;
  r7.w = max(cb0[226].y, r6.x);
  r11.w = r7.w * r7.w;
  r7.w = -r7.w * r7.w + 1;
  r12.z = dot(r0.zxy, r3.xyz);
  r12.w = r12.z + r12.z;
  r14.w = r12.w * r12.z + -1;
  r15.x = 9.99999975e-006 + abs(r12.z);
  r15.x = min(1, r15.x);
  r15.yzw = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
  r16.x = r11.w * r11.w;
  r16.y = saturate(50 * r9.y);
  r9.w = r10.w;
  r17.xyz = r13.xyz;
  r18.x = r13.w;
  r18.yz = r12.xy;
  r10.w = 0;
  while (true) {
    r16.z = cmp((uint)r10.w >= (uint)r5.w);
    if (r16.z != 0) break;
    r16.z = (int)r6.y + (int)r10.w;
    r16.z = t5.Load(r16.z).x;
    r16.w = (int)r16.z * 6;
    r19.xyzw = t3.Load(r16.w).xyzw;
    r16.w = mad((int)r16.z, 6, 1);
    r20.xyzw = t3.Load(r16.w).xyzw;
    r21.xy = mad((int2)r16.zz, int2(6,6), int2(2,3));
    r22.xyzw = t3.Load(r21.x).xyzw;
    r21.xyzw = t3.Load(r21.y).xyzw;
    r16.w = cmp(r20.w == 0.000000);
    r17.w = cmp(-2 < r21.x);
    r19.xyz = r19.xyz + -r2.xyz;
    r18.w = dot(r19.xyz, r19.xyz);
    r23.x = rsqrt(r18.w);
    r23.xyz = r23.xxx * r19.xyz;
    r23.w = r19.w * r19.w;
    r18.w = r23.w * r18.w;
    r18.w = -r18.w * r18.w + 1;
    r18.w = max(0, r18.w);
    r18.w = r18.w * r18.w;
    r24.xyz = r19.xyz * r19.www;
    r19.w = dot(r24.xyz, r24.xyz);
    r19.w = min(1, r19.w);
    r19.w = 1 + -r19.w;
    r19.w = log2(r19.w);
    r19.w = r20.w * r19.w;
    r19.w = exp2(r19.w);
    r18.w = r16.w ? r18.w : r19.w;
    r19.w = dot(r23.xyz, r22.xyz);
    r19.w = r19.w + -r21.x;
    r19.w = saturate(r19.w * r21.y);
    r19.w = r19.w * r19.w;
    r19.w = r19.w * r18.w;
    r17.w = r17.w ? r19.w : r18.w;
    r18.w = cmp(0 < r17.w);
    if (r18.w != 0) {
      r18.w = (int)r22.w & 255;
      r18.w = r18.w ? 1 : 0;
      if (r18.w != 0) {
        r23.xyzw = (int4)r22.wwww & int4(1,2,4,8);
        r23.xyzw = r23.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r18.w = (uint)r22.w >> 4;
        if (1 == 0) r19.w = 0; else if (1+4 < 32) {         r19.w = (uint)r22.w << (32-(1 + 4)); r19.w = (uint)r19.w >> (32-1);        } else r19.w = (uint)r22.w >> 4;
        r24.x = r19.w ? 1 : 0;
        r22.xyz = (int3)r18.www & int3(2,4,8);
        r24.yzw = r22.xyz ? float3(1,1,1) : float3(0,0,0);
        r18.w = dot(r24.xyzw, float4(1,1,1,1));
        r19.w = dot(r23.xyzw, float4(1,1,1,1));
        r20.w = dot(r8.xyzw, r23.xyzw);
        r20.w = -1 + r20.w;
        r19.w = r19.w * r20.w + 1;
        r21.xy = r19.ww * r18.ww;
      } else {
        r21.xy = float2(1,1);
      }
      r18.w = r21.x + r21.y;
      r18.w = cmp(0 < r18.w);
      if (r18.w != 0) {
        r16.z = mad((int)r16.z, 6, 4);
        r23.xyzw = t3.Load(r16.z).xyzw;
        r16.z = f16tof32(r21.w);
        r18.w = 0.5 * r16.z;
        r22.xyz = -r18.www * r23.xyz + r19.xyz;
        r19.xyz = r18.www * r23.xyz + r19.xyz;
        r18.w = cmp(0 < r16.z);
        if (r18.w != 0) {
          r19.w = dot(r22.xyz, r22.xyz);
          r20.w = dot(r19.xyz, r19.xyz);
          r19.w = rsqrt(r19.w);
          r20.w = rsqrt(r20.w);
          r21.y = r20.w * r19.w;
          r21.w = dot(r22.xyz, r19.xyz);
          r21.w = r21.w * r21.y;
          r23.x = r21.w * 0.5 + r21.y;
          r23.x = 0.5 + r23.x;
          r23.y = r21.y / r23.x;
          r21.y = dot(r0.zxy, r22.xyz);
          r23.z = dot(r0.zxy, r19.xyz);
          r20.w = r23.z * r20.w;
          r19.w = r21.y * r19.w + r20.w;
          r23.x = 0.5 * r19.w;
        } else {
          r19.w = dot(r22.xyz, r22.xyz);
          r20.w = 1 + r19.w;
          r23.y = rcp(r20.w);
          r19.w = rsqrt(r19.w);
          r24.xyz = r22.xyz * r19.www;
          r23.x = dot(r0.zxy, r24.xyz);
          r21.w = 1;
        }
        r19.w = cmp(0 < r21.z);
        r20.w = r21.z * r21.z;
        r20.w = saturate(r20.w * r23.y);
        r20.w = sqrt(r20.w);
        r21.y = cmp(r23.x < r20.w);
        r23.z = max(r23.x, -r20.w);
        r23.z = r23.z + r20.w;
        r23.z = r23.z * r23.z;
        r20.w = 4 * r20.w;
        r20.w = r23.z / r20.w;
        r20.w = r21.y ? r20.w : r23.x;
        r19.w = saturate(r19.w ? r20.w : r23.x);
        r16.w = r16.w ? r23.y : 1;
        r19.xyz = r19.xyz + -r22.xyz;
        r20.w = dot(r14.xyz, r19.xyz);
        r23.xyz = r20.www * r14.xyz + -r19.xyz;
        r21.y = dot(r22.xyz, r23.xyz);
        r20.w = r20.w * r20.w;
        r16.z = r16.z * r16.z + -r20.w;
        r16.z = saturate(r21.y / r16.z);
        r19.xyz = r16.zzz * r19.xyz + r22.xyz;
        r19.xyz = r18.www ? r19.xyz : r22.xyz;
        r16.z = dot(r19.xyz, r19.xyz);
        r16.z = rsqrt(r16.z);
        r19.xyz = r19.xyz * r16.zzz;
        r18.w = r21.z * r16.z;
        r18.w = saturate(r18.w * r7.w);
        r16.z = saturate(r23.w * r16.z);
        r20.w = dot(r0.zxy, r19.xyz);
        r19.x = dot(r3.xyz, r19.xyz);
        r19.y = r19.x * 2 + 2;
        r19.y = rsqrt(r19.y);
        r19.z = r20.w + r12.z;
        r19.z = saturate(r19.z * r19.y);
        r19.y = saturate(r19.y * r19.x + r19.y);
        r21.y = cmp(0 < r18.w);
        if (r21.y != 0) {
          r21.z = -r18.w * r18.w + 1;
          r21.z = sqrt(r21.z);
          r22.x = dot(r12.zz, r20.ww);
          r22.y = r22.x + -r19.x;
          r22.z = cmp(r22.y >= r21.z);
          if (r22.z != 0) {
            r19.z = 1;
            r19.y = abs(r12.z);
          } else {
            r22.z = -r22.y * r22.y + 1;
            r22.z = rsqrt(r22.z);
            r22.z = r22.z * r18.w;
            r23.x = -r22.y * r20.w + r12.z;
            r23.y = r23.x * r22.z;
            r22.y = -r22.y * r19.x + r14.w;
            r23.z = r20.w * r20.w;
            r23.z = -r12.z * r12.z + -r23.z;
            r23.z = 1 + r23.z;
            r23.z = -r19.x * r19.x + r23.z;
            r22.x = saturate(r22.x * r19.x + r23.z);
            r22.x = sqrt(r22.x);
            r22.xy = r22.zz * r22.xy;
            r23.z = r22.x * r12.z;
            r23.w = r23.z + r23.z;
            r24.x = r20.w * r21.z + r12.z;
            r22.z = r22.z * r23.x + r24.x;
            r23.x = r19.x * r21.z + r22.y;
            r23.x = 1 + r23.x;
            r24.yz = r23.xx * r22.xz;
            r24.w = r23.w * r22.z;
            r23.z = r22.z * r23.z;
            r23.z = 0.5 * r23.z;
            r23.z = r24.y * -0.5 + r23.z;
            r25.x = -r24.y * 2 + r24.w;
            r24.w = r25.x * r24.w;
            r24.y = r24.y * r24.y + r24.w;
            r24.w = r23.x * r23.x;
            r23.x = r19.x * r21.z + r23.x;
            r23.x = r23.x * -0.5 + -0.5;
            r23.xz = r24.zz * r23.xz;
            r23.x = r24.x * r24.w + r23.x;
            r22.z = r22.z * r23.x + r24.y;
            r23.x = r23.z + r23.z;
            r24.x = r23.z * r23.z;
            r24.x = r22.z * r22.z + r24.x;
            r23.x = r23.x / r24.x;
            r22.z = r23.x * r22.z;
            r23.x = -r23.x * r23.z + 1;
            r22.x = r22.z * r22.x;
            r22.x = r23.x * r23.y + r22.x;
            r22.z = r22.z * r23.w;
            r22.y = r23.x * r22.y + r22.z;
            r20.w = r20.w * r21.z + r22.x;
            r19.x = r19.x * r21.z + r22.y;
            r21.z = r19.x * 2 + 2;
            r21.z = rsqrt(r21.z);
            r20.w = r20.w + r12.z;
            r19.z = saturate(r20.w * r21.z);
            r19.y = saturate(r21.z * r19.x + r21.z);
          }
        }
        r16.w = r16.w * r19.w;
        r22.xyz = r16.www * r15.yzw;
        r19.x = cmp(0 < r16.z);
        r16.z = r16.z * r16.z;
        r20.w = r19.y * 3.5999999 + 0.400000006;
        r16.z = r16.z / r20.w;
        r16.z = r11.w * r11.w + r16.z;
        r16.z = min(1, r16.z);
        r6.z = r19.x ? r16.z : r16.x;
        r16.z = 0.25 * r18.w;
        r19.x = (uint)r6.z >> 1;
        r19.x = (int)r19.x + 0x1fbd1df5;
        r18.w = r19.x * 3 + r18.w;
        r16.z = r18.w * r16.z;
        r18.w = 0.00100000005 + r19.y;
        r16.z = r16.z / r18.w;
        r23.x = r16.z + r6.z;
        r23.y = r6.z / r23.x;
        r21.yz = r21.yy ? r23.xy : r6.zw;
        r16.z = cmp(r21.w < 1);
        r19.x = 1.00010002 + -r21.w;
        r20.w = 1 + r21.w;
        r19.x = r19.x / r20.w;
        r19.x = sqrt(r19.x);
        r20.w = 0.25 * r19.x;
        r21.w = (uint)r21.y >> 1;
        r21.w = (int)r21.w + 0x1fbd1df5;
        r19.x = r21.w * 3 + r19.x;
        r19.x = r20.w * r19.x;
        r18.w = r19.x / r18.w;
        r18.w = r21.y + r18.w;
        r18.w = r21.y / r18.w;
        r18.w = sqrt(r18.w);
        r18.w = r21.z * r18.w;
        r16.z = r16.z ? r18.w : r21.z;
        r18.w = r19.z * r6.z + -r19.z;
        r18.w = r18.w * r19.z + 1;
        r18.w = r18.w * r18.w;
        r18.w = 3.14159274 * r18.w;
        r18.w = r6.z / r18.w;
        r16.z = r18.w * r16.z;
        r6.z = sqrt(r6.z);
        r18.w = 1 + -r6.z;
        r19.x = r15.x * r18.w + r6.z;
        r6.z = r19.w * r18.w + r6.z;
        r6.z = r15.x * r6.z;
        r6.z = r19.w * r19.x + r6.z;
        r6.z = rcp(r6.z);
        r6.z = r16.z * r6.z;
        r16.z = 1 + -r19.y;
        r18.w = r16.z * r16.z;
        r18.w = r18.w * r18.w;
        r19.x = r18.w * r16.z;
        r16.z = -r18.w * r16.z + 1;
        r19.yzw = r16.zzz * r9.wyz;
        r19.xyz = r16.yyy * r19.xxx + r19.yzw;
        r6.z = 0.5 * r6.z;
        r19.xyz = r6.zzz * r19.xyz;
        r19.xyz = r19.xyz * r16.www;
        r20.xyz = r20.xyz * r17.www;
        r20.xyz = r20.xyz * r21.xxx;
        r21.xyz = r22.xyz * r20.xyz;
        r19.xyz = r20.xyz * r19.xyz;
      } else {
        r21.xyz = float3(0,0,0);
        r19.xyz = float3(0,0,0);
      }
    } else {
      r21.xyz = float3(0,0,0);
      r19.xyz = float3(0,0,0);
    }
    r6.z = (uint)r22.w >> 8;
    r6.z = (int)r6.z & asint(cb1[23].w);
    r20.xyz = r21.xyz + r17.xyz;
    r19.xyz = r19.xyz + r18.xyz;
    r17.xyz = r6.zzz ? r20.xyz : r17.xyz;
    r18.xyz = r6.zzz ? r19.xyz : r18.xyz;
    r10.w = (int)r10.w + 1;
  }
  r6.yzw = r18.xyz + r17.xyz;
  r8.yzw = r12.www * r0.zxy + -r3.xyz;
  r12.z = saturate(r12.z);
  r3.x = (int)r3.w + asint(cb2[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t4.Load(r3.y).x;
  r3.y = min(asuint(cb2[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t4.Load(r3.x).x;
  r3.z = max(0.00100000005, r6.x);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.z = r3.w + -r3.z;
  r8.x = 0;
  r12.xyw = float3(0,0,0);
  r3.w = 1;
  r5.w = 0;
  r7.w = 1;
  r10.w = 0;
  while (true) {
    r11.w = cmp((uint)r10.w >= (uint)r3.y);
    if (r11.w != 0) break;
    r11.w = cmp(r3.w < 0.00100000005);
    if (r11.w != 0) {
      break;
    }
    r11.w = (int)r3.x + (int)r10.w;
    r11.w = t5.Load(r11.w).x;
    r13.xyz = -cb4[r11.w+0].xyz + r2.xyz;
    r13.w = dot(r13.xyz, r13.xyz);
    r14.x = sqrt(r13.w);
    r14.y = cmp(r14.x < cb4[r11.w+0].w);
    if (r14.y != 0) {
      r14.y = cmp(0 < cb4[r11.w+341].z);
      if (r14.y != 0) {
        r14.y = (uint)r11.w << 2;
        r15.xyz = cb4[r14.y+1024].xyz * r2.yyy;
        r15.xyz = r2.xxx * cb4[r14.y+1023].xyz + r15.xyz;
        r15.xyz = r2.zzz * cb4[r14.y+1025].xyz + r15.xyz;
        r15.xyz = cb4[r14.y+1026].xyz + r15.xyz;
        r16.xzw = cb4[r14.y+1024].xyz * r8.zzz;
        r16.xzw = r8.yyy * cb4[r14.y+1023].xyz + r16.xzw;
        r14.yzw = r8.www * cb4[r14.y+1025].xyz + r16.xzw;
        r14.yzw = rcp(r14.yzw);
        r16.xzw = -r15.xyz * r14.yzw + -r14.yzw;
        r14.yzw = -r15.xyz * r14.yzw + r14.yzw;
        r14.yzw = max(r16.xzw, r14.yzw);
        r14.z = min(r14.z, r14.w);
        r14.y = min(r14.y, r14.z);
        r14.yzw = r14.yyy * r8.yzw + r2.xyz;
        r16.xzw = cb4[r11.w+682].xyz + cb4[r11.w+0].xyz;
        r17.xyz = -r16.xzw + r14.yzw;
        r14.y = cb4[r11.w+2387].w * 0.699999988;
        r16.xzw = -cb4[r11.w+2387].www * float3(0.5,0.5,0.5) + cb4[r11.w+2387].xyz;
        r18.xyz = cb4[r11.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r16.xzw);
        r20.xyz = r15.xyz * cb4[r11.w+2387].xyz + r16.xzw;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r16.xzw < r18.xyz);
        r15.xyz = r15.xyz * cb4[r11.w+2387].xyz + -r16.xzw;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r14.z = dot(r19.xyz, float3(1,1,1));
        r14.w = dot(r15.xyz, float3(1,1,1));
        r14.z = r14.z + r14.w;
        r14.y = 1 / r14.y;
        r14.y = saturate(r14.z * r14.y);
        r14.z = r14.y * -2 + 3;
        r14.y = r14.y * r14.y;
        r15.x = -r14.z * r14.y + 1;
      } else {
        r14.x = saturate(r14.x / cb4[r11.w+0].w);
        r14.y = dot(r8.yzw, r13.xyz);
        r13.w = -cb4[r11.w+0].w * cb4[r11.w+0].w + r13.w;
        r13.w = r14.y * r14.y + -r13.w;
        r14.z = cmp(r13.w >= 0);
        r13.w = sqrt(r13.w);
        r13.w = r13.w + -r14.y;
        r13.xyz = r13.www * r8.yzw + r13.xyz;
        r13.yzw = -cb4[r11.w+682].xyz + r13.xyz;
        r14.x = r14.x * 2.5 + -1.5;
        r14.x = max(0, r14.x);
        r14.y = r14.x * r14.x;
        r14.x = -r14.x * 2 + 3;
        r13.x = -r14.y * r14.x + 1;
        r15.xyzw = r14.zzzz ? r13.xyzw : r8.xyzw;
        r17.xyz = r15.yzw;
      }
      r17.w = cb4[r11.w+341].y;
      r13.xyzw = t6.SampleLevel(s4_s, r17.xyzw, r3.z).xyzw;
      r13.xyz = cb4[r11.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r15.xxx;
      r12.xyw = r13.xyz * r3.www + r12.xyw;
      r13.x = -r13.w * r15.x + 1;
      r3.w = r13.x * r3.w;
      r11.w = cb4[r11.w+682].w * r15.x;
      r5.w = r11.w * r7.w + r5.w;
      r11.w = 1 + -r15.x;
      r7.w = r11.w * r7.w;
    }
    r10.w = (int)r10.w + 1;
  }
  r3.xyz = cb0[157].xyz * r12.xyw;
  r3.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r5.w * r3.w;
  r5.w = saturate(r6.x * cb0[197].x + cb0[197].y);
  r7.w = r5.w * -2 + 3;
  r5.w = r5.w * r5.w;
  r5.w = r7.w * r5.w;
  r3.w = max(9.99999975e-005, r3.w);
  r0.w = r0.w / r3.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r5.w * r0.w + 1;
  r3.xyz = r3.xyz * r0.www;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r12.xy = r0.ww * float2(32.6650009,11.8149996) + v4.xy;
    r0.w = dot(r12.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r13.xyzw = cb0[1].xyzw * r1.yyyy;
    r13.xyzw = r1.xxxx * cb0[0].xyzw + r13.xyzw;
    r13.xyzw = r1.zzzz * cb0[2].xyzw + r13.xyzw;
    r13.xyzw = cb0[3].xyzw + r13.xyzw;
    r8.xyz = r8.yzw * v4.www + r1.xyz;
    r14.xyzw = cb0[1].xyzw * r8.yyyy;
    r14.xyzw = r8.xxxx * cb0[0].xyzw + r14.xyzw;
    r8.xyzw = r8.zzzz * cb0[2].xyzw + r14.xyzw;
    r8.xyzw = cb0[3].xyzw + r8.xyzw;
    r3.w = rcp(r13.w);
    r12.xyw = r13.xyz * r3.www;
    r3.w = rcp(r8.w);
    r13.xy = v4.ww * cb0[30].zw + r13.zw;
    r5.w = rcp(r13.y);
    r8.xyz = r8.xyz * r3.www + -r12.xyw;
    r3.w = dot(r8.xy, r8.xy);
    r3.w = sqrt(r3.w);
    r7.w = 0.5 * r3.w;
    r13.yz = r12.xy * r7.ww + r8.xy;
    r13.yz = -r3.ww * float2(0.5,0.5) + abs(r13.yz);
    r13.yz = max(float2(0,0), r13.yz);
    r13.yz = r13.yz / abs(r8.xy);
    r13.yz = float2(1,1) + -r13.yz;
    r3.w = min(r13.y, r13.z);
    r3.w = r3.w / r7.w;
    r8.xyz = r8.xyz * r3.www;
    r3.w = -r13.x * r5.w + r12.w;
    r3.w = 4 * r3.w;
    r3.w = max(abs(r8.z), r3.w);
    r13.xy = r12.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.xy = cb2[176].xy * r13.xy;
    r8.xy = cb2[176].xy * r8.xy;
    r5.w = 0.0833333358 * r3.w;
    r8.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r8.xyz;
    r12.xyw = r8.xyz * r0.www + r12.xyw;
    r0.w = 1;
    r15.x = 0;
    r13.xyz = float3(0,0,0);
    r7.w = 0;
    r8.w = 0;
    r10.w = 0;
    r11.w = 0;
    r14.xw = float2(0,0);
    while (true) {
      r15.w = cmp((uint)r14.w >= 12);
      if (r15.w != 0) break;
      r15.w = (uint)r14.w;
      r17.xyzw = float4(1,2,3,4) + r15.wwww;
      r18.xyzw = r17.xxxy * r8.xyzz + r12.xyww;
      r19.xyzw = r17.yyzz * r8.xyxy + r12.xyxy;
      r17.xyzw = r17.wwzw * r8.xyzz + r12.xyww;
      r15.w = r6.x * 0.666666687 + r0.w;
      r16.x = r6.x * 0.666666687 + r15.w;
      r20.x = t10.SampleLevel(s6_s, r18.xy, r0.w).x;
      r20.y = t10.SampleLevel(s6_s, r19.xy, r0.w).x;
      r20.z = t10.SampleLevel(s6_s, r19.zw, r15.w).x;
      r20.w = t10.SampleLevel(s6_s, r17.xy, r15.w).x;
      r17.xy = r18.zw;
      r17.xyzw = r17.xyzw + -r20.xyzw;
      r18.xyzw = r3.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r17.xyzw;
      r18.xyzw = cmp(abs(r18.xyzw) < r5.wwww);
      r16.zw = (int2)r18.zw | (int2)r18.xy;
      r15.w = (int)r16.w | (int)r16.z;
      if (r15.w != 0) {
        r15.x = r17.x;
        r13.xyz = r17.yzw;
        r7.w = r18.x;
        r8.w = r18.y;
        r10.w = r18.z;
        r11.w = -1;
        break;
      }
      r14.x = r17.w;
      r14.w = (int)r14.w + 4;
      r0.w = r16.x;
      r15.x = r17.x;
      r13.xyz = r17.yzw;
      r7.w = r18.x;
      r8.w = r18.y;
      r10.w = r18.z;
      r11.w = r15.w;
    }
    if (r11.w != 0) {
      r13.w = 2;
      r17.xy = r13.yz;
      r17.z = 3;
      r13.yzw = r10.www ? r13.xyw : r17.xyz;
      r15.y = r13.x;
      r15.z = 1;
      r13.xyz = r8.www ? r15.xyz : r13.yzw;
      r14.y = r15.x;
      r14.z = 0;
      r13.xyz = r7.www ? r14.xyz : r13.xyz;
      r0.w = (uint)r14.w;
      r0.w = r13.z + r0.w;
      r3.w = r13.x + -r13.y;
      r3.w = saturate(r13.x / r3.w);
      r0.w = r3.w + r0.w;
      r8.xyz = r8.xyz * r0.www + r12.xyw;
      r8.xy = cb2[176].zw * r8.xy;
      r8.xy = r8.xy * float2(2,-2) + float2(-1,1);
      r8.xy = cb0[66].xy * r8.xy;
      r8.xy = r8.xy / cb0[66].xy;
      r12.xyw = cb0[123].xyw * r8.yyy;
      r12.xyw = r8.xxx * cb0[122].xyw + r12.xyw;
      r12.xyw = r8.zzz * cb0[124].xyw + r12.xyw;
      r12.xyw = cb0[125].xyw + r12.xyw;
      r8.zw = r12.xy / r12.ww;
      r12.xy = r8.zw * cb2[177].xy + cb2[177].zw;
      r8.xy = saturate(abs(r8.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r8.xy, r8.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r8.xy = saturate(abs(r8.zw) * float2(5,5) + float2(-4,-4));
      r3.w = dot(r8.xy, r8.xy);
      r3.w = 1 + -r3.w;
      r3.w = max(0, r3.w);
      r0.w = min(r3.w, r0.w);
      r8.xyz = t11.SampleLevel(s7_s, r12.xy, 0).xyz;
      r8.xyz = min(float3(0,0,0), -r8.xyz);
      r3.w = saturate(-r6.x * 6.5999999 + 2);
      r0.w = r3.w * r0.w;
      r3.w = 1;
      r8.xyz = -r8.xyz * r0.www;
      r8.xyz = cb2[178].xxx * r8.xyz;
      r0.w = -r3.w * r0.w + 1;
      r3.xyz = r3.xyz * r0.www + r8.xyz;
    }
  }
  r8.xyzw = r6.xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r8.x * r8.x;
  r3.w = -9.27999973 * r12.z;
  r3.w = exp2(r3.w);
  r0.w = min(r3.w, r0.w);
  r0.w = r0.w * r8.x + r8.y;
  r8.xy = r0.ww * float2(-1.03999996,1.03999996) + r8.zw;
  r9.xyz = r9.wyz;
  r0.w = r16.y * r8.y;
  r8.xyz = r9.xyz * r8.xxx + r0.www;
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
    r2.w = dot(cb2[122].yzx, r0.xyz);
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
      r13.xyz = cb2[127].xyz * r0.xxx;
      r13.xyz = r0.zzz * cb2[126].xyz + r13.xyz;
      r0.xyz = r0.yyy * cb2[128].xyz + r13.xyz;
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
      r12.xyzw = t7.SampleLevel(s4_s, r0.xy, 0).xyzw;
      r0.x = r12.w * r0.w;
    } else {
      r12.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r3.xyz = r0.xxx * r3.xyz + r12.xyz;
  }
  r0.xyz = r3.xyz * r8.xyz;
  r3.xyz = r9.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r9.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r9.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
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
    r8.x = dot(r1.xy, r6.xz);
    r8.y = dot(r1.xy, cb2[149].xy);
    r8.z = r1.w;
    r6.xzw = t8.SampleLevel(s5_s, r8.xyz, 0).xyz;
    r8.xyz = t8.SampleLevel(s5_s, r8.xyz, cb2[150].z).xyz;
    r6.xzw = -r8.xyz + r6.xzw;
    r6.xzw = r5.www * r6.xzw + r8.xyz;
    r6.xzw = cb2[145].xyz * r6.xzw;
  } else {
    r6.xzw = cb2[145].xyz;
  }
  r5.w = cmp(cb2[147].w >= 0);
  r7.w = cmp(cb2[146].z == 0.000000);
  r5.w = r5.w ? r7.w : 0;
  if (r5.w != 0) {
    r8.xyz = r3.zzz * r1.xyw;
    r1.w = saturate(dot(r8.xyz, cb2[147].xyz));
    r1.w = log2(r1.w);
    r1.w = cb2[148].w * r1.w;
    r1.w = exp2(r1.w);
    r8.xyz = cb2[148].xyz * r1.www;
    r1.w = -cb2[147].w + r2.w;
    r1.w = max(0, r1.w);
    r1.w = r3.x * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r8.xyz = r8.xyz * r1.www;
  } else {
    r8.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r3.w);
  r1.w = min(1, r1.w);
  r8.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r3.y);
  r1.w = r1.w ? r6.y : 0;
  r3.xyzw = r1.wwww ? float4(1,0,0,0) : r8.wxyz;
  r1.w = 1 + -r3.x;
  r3.yzw = r6.xzw * r1.www + r3.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r2.yyy;
    r6.xyz = r2.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r2.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r6.xy = r6.xy / r6.zz;
    r8.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r6.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r8.z = cb0[208].z * r1.w;
    r6.xyzw = t9.SampleLevel(s0_s, r8.xyz, 0).xyzw;
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
    r8.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r6.xy = r6.xy / r6.zz;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r8.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r8.xyz;
    r2.w = dot(r8.xyz, r8.xyz);
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
    r8.xyz = r8.xyz * r2.www;
    r2.w = -r8.z * r8.z + 1;
    r2.w = sqrt(r2.w);
    r13.y = r8.z * 0.5 + 0.5;
    r6.zw = r8.xy / r2.ww;
    r2.w = 1 + -abs(r6.z);
    r2.w = sqrt(r2.w);
    r7.w = abs(r6.z) * -0.0187292993 + 0.0742610022;
    r7.w = r7.w * abs(r6.z) + -0.212114394;
    r7.w = r7.w * abs(r6.z) + 1.57072878;
    r8.x = r7.w * r2.w;
    r8.x = r8.x * -2 + 3.14159274;
    r6.z = cmp(r6.z < -r6.z);
    r6.z = r6.z ? r8.x : 0;
    r2.w = r7.w * r2.w + r6.z;
    r6.z = cmp(r6.w < 0);
    r6.w = 6.28318548 + -r2.w;
    r2.w = r6.z ? r6.w : r2.w;
    r13.x = 0.159154937 * r2.w;
    r6.zw = cb0[180].zw * float2(0.5,0.5) + r13.xy;
    r8.xy = float2(1,1) + cb0[180].xy;
    r8.xy = cb0[180].xy / r8.xy;
    r6.zw = r8.xy * r6.zw;
    r12.xy = r1.ww ? r6.zw : r6.xy;
    r6.xyzw = t0.SampleLevel(s1_s, r12.xyz, 0).xyzw;
    r6.xyz = r6.xyz * r5.www;
    r1.w = 1 + -r6.w;
    r1.w = -r5.w * r1.w + 1;
    r6.xyz = cb0[135].zzz * r6.xyz;
    r3.yzw = r6.xyz * r3.xxx + r3.yzw;
    r3.x = r3.x * r1.w;
  }
  r6.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
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
  r0.xyz = r11.xyz * r7.xyz + r0.xyz;
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