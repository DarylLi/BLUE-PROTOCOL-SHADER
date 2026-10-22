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
  float4 v0 : TEXCOORD0,
  float3 v1 : PARTICLE_LIGHTING_OFFSET0,
  float4 v2 : TANGENTX0,
  float4 v3 : TANGENTZ0,
  float4 v4 : SV_Position0,
  uint v5 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v3.zxy * v2.yzx;
  r0.xyz = v3.yzx * v2.zxy + -r0.xyz;
  r0.xyz = v3.www * r0.xyz;
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
  r3.w = cb6[42].x * v0.y + cb6[42].y;
  r4.x = -cb6[42].z * r3.w + 1;
  r4.y = -cb6[42].w + r2.z;
  r4.y = abs(r4.y) / cb6[43].x;
  r4.y = -r4.y * cb6[43].y + 1;
  r4.y = -r4.x * r4.y + 1;
  r4.x = v0.x;
  r4.zw = r4.xy * cb6[2].xy + float2(0.200000003,0.200000003);
  r5.x = cb4[2].x * cb0[142].z;
  r5.x = cb6[44].x * r5.x;
  r5.xy = cb6[3].xy * r5.xx;
  r4.zw = r5.xy * float2(0.699999988,0.699999988) + r4.zw;
  r6.y = t14.SampleBias(s8_s, r4.zw, cb0[143].y).x;
  r6.xw = float2(0,1);
  r5.zw = cb6[45].xx * r6.xy;
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
  r9.xyz = cb6[45].yyy * r7.xzw + r8.xyz;
  r4.w = 1 + r9.z;
  r4.xy = r4.xy * cb6[1].xy + r5.xy;
  r5.xy = r5.zw * r6.xx + r4.xy;
  r10.xyz = t14.SampleBias(s8_s, r5.xy, cb0[143].y).xyz;
  r4.xy = r5.zw * r6.yy + r4.xy;
  r5.xyz = t14.SampleBias(s8_s, r4.xy, cb0[143].y).xyz;
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
  r5.w = cb6[6].y + v0.y;
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
  r0.xyz = r4.yyy * v2.xyz + r0.xyz;
  r0.xyz = r4.www * v3.xyz + r0.xyz;
  r4.y = dot(r0.xyz, r0.xyz);
  r4.y = rsqrt(r4.y);
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r0.w = cb0[142].z * cb6[51].x + v0.x;
  r6.x = cb6[52].y * r0.w;
  r0.w = cb0[142].z * cb6[52].z + v0.y;
  r6.y = cb6[52].w * r0.w;
  r0.w = cb0[142].z * cb6[54].x + v0.x;
  r9.x = cb6[55].y * r0.w;
  r0.w = cb0[142].z * cb6[55].z + v0.y;
  r9.y = cb6[55].w * r0.w;
  r0.w = t15.SampleBias(s9_s, r9.xy, cb0[143].y).z;
  r0.w = -0.5 + r0.w;
  r0.w = r0.w + r0.w;
  r4.yz = r0.ww * cb6[56].yy + r6.xy;
  r4.y = t16.SampleBias(s10_s, r4.yz, cb0[143].y).x;
  r4.z = cmp(0 >= r4.y);
  r4.y = log2(r4.y);
  r4.y = cb6[56].z * r4.y;
  r4.y = exp2(r4.y);
  r9.xyz = cb6[14].xyz * r4.yyy;
  r4.yzw = r4.zzz ? float3(0,0,0) : r9.xyz;
  r9.xyz = cb5[6].xyz * cb6[58].yyy + cb6[18].xyz;
  r6.x = dot(cb5[7].xyz, r0.xyz);
  r6.y = saturate(r6.x);
  r6.y = 1 + -r6.y;
  r8.w = cb0[142].z * cb6[59].z + v0.x;
  r11.x = cb6[60].w * r8.w;
  r8.w = cb0[142].z * cb6[61].x + v0.y;
  r11.y = cb6[61].y * r8.w;
  r8.w = cb0[142].z * cb6[62].z + v0.x;
  r12.x = cb6[63].w * r8.w;
  r8.w = cb0[142].z * cb6[64].x + v0.y;
  r12.y = cb6[64].y * r8.w;
  r11.zw = t15.SampleBias(s9_s, r12.xy, cb0[143].y).xy;
  r11.zw = float2(-0.5,-0.5) + r11.zw;
  r11.zw = cb6[64].ww * r11.zw;
  r11.xy = r11.zw * float2(2,2) + r11.xy;
  r8.w = t17.SampleBias(s11_s, r11.xy, cb0[143].y).x;
  r11.xyz = -cb6[28].xyz + cb6[27].xyz;
  r11.xyz = r8.www * r11.xyz + cb6[28].xyz;
  r12.xyz = cb6[30].xyz * r11.xyz;
  r11.xyz = r11.xyz * cb6[32].xyz + -r12.xyz;
  r11.xyz = r5.www * r11.xyz + r12.xyz;
  r12.xyz = -r11.xyz * cb6[65].xxx + r11.xyz;
  r12.xyz = cb5[6].xyz * r12.xyz;
  r12.xyz = r12.xyz * r6.xxx;
  r8.xyz = cb6[65].yyy * r7.xzw + r8.xyz;
  r6.x = 1 + r8.z;
  r5.xyz = cb6[65].zzz * r10.xyz + r5.xyz;
  r8.w = 1 + r8.z;
  r5.xyz = float3(-1,-1,1) * r5.xyz;
  r7.x = dot(r8.xyw, r5.xyz);
  r5.xyz = r6.xxx * r5.xyz;
  r5.xyz = r8.xyw * r7.xxx + -r5.xyz;
  r6.x = dot(r5.xyz, r5.xyz);
  r6.x = sqrt(r6.x);
  r5.xyz = r5.xyz / r6.xxx;
  r6.x = saturate(dot(r5.xyz, cb5[7].xyz));
  r7.xzw = cb0[67].xyz + -r2.xyz;
  r8.x = dot(r7.xzw, r7.xzw);
  r8.x = sqrt(r8.x);
  r7.xzw = r7.xzw / r8.xxx;
  r7.xzw = cb5[7].xyz + r7.xzw;
  r8.x = dot(r7.xzw, r7.xzw);
  r8.x = sqrt(r8.x);
  r7.xzw = r7.xzw / r8.xxx;
  r5.x = saturate(dot(r7.xzw, r5.xyz));
  r5.y = 11 * cb6[66].x;
  r5.y = exp2(r5.y);
  r5.z = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = r5.y * r5.x;
  r5.x = exp2(r5.x);
  r5.x = r6.x * r5.x;
  r5.x = cb6[66].y * r5.x;
  r7.xzw = cb5[5].xyz * r5.xxx;
  r5.xyz = r5.zzz ? float3(0,0,0) : r7.xzw;
  r5.xyz = r12.xyz * float3(0.318309844,0.318309844,0.318309844) + r5.xyz;
  r5.xyz = r9.xyz * r6.yyy + r5.xyz;
  r4.yzw = r5.xyz * r4.yzw;
  r5.xyz = cb6[32].xyz + -cb6[30].xyz;
  r5.xyz = r5.www * r5.xyz + cb6[30].xyz;
  r7.xzw = r5.xyz * r4.yzw;
  r4.yzw = -r4.yzw * r5.xyz + cb6[33].xyz;
  r4.yzw = cb6[66].zzz * r4.yzw + r7.xzw;
  r5.xyz = saturate(cb6[35].xyz * r11.xyz);
  r5.w = saturate(cb6[67].w * r3.w);
  r3.w = 1 + -r3.w;
  r3.w = saturate(cb6[68].z * r3.w);
  r3.w = r5.w * r3.w;
  r4.x = r4.x + -r7.y;
  r4.x = r4.x * cb6[46].y + v0.x;
  r4.x = r4.x * 2 + -1;
  r4.x = 1 + -abs(r4.x);
  r4.x = r4.x * cb6[69].x + -cb6[69].x;
  r4.x = saturate(cb6[69].z + r4.x);
  r4.x = cb6[69].w * r4.x;
  r5.w = cb0[142].z * cb6[71].x + v0.x;
  r6.x = cb6[72].y * r5.w;
  r5.w = cb0[142].z * cb6[72].z + v0.y;
  r6.y = cb6[72].w * r5.w;
  r6.xy = r0.ww * cb6[73].yy + r6.xy;
  r5.w = t18.SampleBias(s12_s, r6.xy, cb0[143].y).x;
  r6.x = cmp(0 >= r5.w);
  r5.w = log2(r5.w);
  r5.w = cb6[73].z * r5.w;
  r5.w = exp2(r5.w);
  r5.w = r6.x ? 0 : r5.w;
  r6.x = cb0[142].z * cb6[74].w + v0.x;
  r6.x = cb6[76].x * r6.x;
  r7.x = cb0[142].z * cb6[76].y + v0.y;
  r6.y = cb6[76].z * r7.x;
  r6.xy = r0.ww * cb6[56].yy + r6.xy;
  r0.w = t14.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r6.x = -0.100000001 + v0.x;
  r6.y = 0.899999976 + -v0.x;
  r6.x = min(r6.x, r6.y);
  r0.w = r6.x * 5 + r0.w;
  r0.w = r5.w * r0.w;
  r0.w = r0.w * cb6[69].x + -cb6[69].x;
  r0.w = saturate(cb6[69].z + r0.w);
  r0.w = r4.x * r0.w;
  r7.w = saturate(r3.w * r0.w);
  r0.w = saturate(cb6[65].x);
  r3.w = saturate(cb6[66].w);
  r4.x = saturate(cb6[67].x);
  r4.x = r4.x * cb0[139].y + cb0[139].x;
  r5.w = cmp(0 < cb1[20].z);
  if (r5.w != 0) {
    r8.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = min(float3(0.99000001,0.99000001,0.99000001), r8.xyz);
    r8.xyz = cb0[213].xyz * r8.xyz;
    r9.xyz = (int3)r8.xyz;
    r9.w = 0;
    r9.xyzw = t0.Load(r9.xyzw).xyzw;
    r9.xyzw = (uint4)r9.xyzw;
    r5.w = 1 + cb0[213].w;
    r8.xyz = r8.xyz / r9.www;
    r8.xyz = frac(r8.xyz);
    r8.xyz = cb0[213].www * r8.xyz;
    r8.xyz = r9.xyz * r5.www + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
    r8.xyz = cb0[214].xyz * r8.xyz;
    r6.z = t1.SampleLevel(s0_s, r8.xyz, 0).x;
  } else {
    r6.z = 1;
  }
  r5.w = 0.0799999982 * r3.w;
  r8.xyz = -r3.www * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
  r8.xyz = r0.www * r8.xyz + r5.www;
  r5.xyz = -r5.xyz * r0.www + r5.xyz;
  r5.xyz = r5.xyz * cb0[136].www + cb0[136].xyz;
  r8.xyz = r8.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r9.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r9.w = 0;
  r5.w = r8.x;
  r5.xyzw = r0.wwww ? r9.xyzw : r5.xyzw;
  r8.yz = r0.ww ? float2(0,0) : r8.yz;
  r6.xy = -cb0[129].xy + v4.xy;
  r6.xy = cb0[131].zw * r6.xy;
  r6.xy = (uint2)r6.xy;
  r0.w = v4.w * cb2[3].x + cb2[3].y;
  r0.w = log2(r0.w);
  r0.w = cb2[3].z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = (uint)r0.w;
  r3.w = asint(cb2[1].z) + -1;
  r0.w = min((uint)r3.w, (uint)r0.w);
  r6.xy = (uint2)r6.xy >> asuint(cb2[2].xx);
  r0.w = mad((int)r0.w, asint(cb2[1].y), (int)r6.y);
  r0.w = mad((int)r0.w, asint(cb2[1].x), (int)r6.x);
  if (cb2[0].z != 0) {
    r9.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r9.yzw = r9.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r10.xyzw = cb2[51].xyzw * r2.yyyy;
      r10.xyzw = r2.xxxx * cb2[50].xyzw + r10.xyzw;
      r10.xyzw = r2.zzzz * cb2[52].xyzw + r10.xyzw;
      r10.xyzw = cb2[53].xyzw + r10.xyzw;
      r6.xy = r10.xy / r10.ww;
      r10.xy = cmp(r6.xy >= float2(0,0));
      r11.xy = cmp(float2(1,1) >= r6.xy);
      r10.xy = r10.xy ? r11.xy : 0;
      r3.w = r10.y ? r10.x : 0;
      if (r3.w != 0) {
        r3.w = t4.SampleLevel(s3_s, r6.xy, 0).x;
        r6.x = cmp(r10.z < r3.w);
        r3.w = cmp(0.99000001 < r3.w);
        r3.w = (int)r3.w | (int)r6.x;
        r10.x = r3.w ? 1.000000 : 0;
      } else {
        r10.x = 1;
      }
    } else {
      r10.x = 1;
    }
    if (cb2[9].z != 0) {
      r3.w = cb2[9].z;
      r6.x = 0;
      while (true) {
        r6.y = cmp((uint)r6.x >= asuint(cb2[9].z));
        if (r6.y != 0) break;
        r6.y = dot(cb2[10].xyzw, icb[r6.x+0].xyzw);
        r6.y = cmp(v4.w < r6.y);
        if (r6.y != 0) {
          r3.w = r6.x;
          break;
        }
        r6.x = (int)r6.x + 1;
      }
      r6.x = cmp((uint)r3.w < asuint(cb2[9].z));
      if (r6.x != 0) {
        r6.x = (uint)r3.w << 2;
        r11.xyzw = cb2[r6.x+12].xyzw * r2.yyyy;
        r11.xyzw = r2.xxxx * cb2[r6.x+11].xyzw + r11.xyzw;
        r11.xyzw = r2.zzzz * cb2[r6.x+13].xyzw + r11.xyzw;
        r11.xyzw = cb2[r6.x+14].xyzw + r11.xyzw;
        r12.xyzw = r11.xyxy / r11.wwww;
        r6.xy = cmp(r12.zw >= cb2[r3.w+27].xy);
        r11.xy = cmp(cb2[r3.w+27].zw >= r12.zw);
        r6.xy = r6.xy ? r11.xy : 0;
        r3.w = r6.y ? r6.x : 0;
        if (r3.w != 0) {
          r12.xyzw = r12.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r6.xy = frac(r12.zw);
          r12.xyzw = floor(r12.xyzw);
          r13.xyzw = float4(0.5,1.5,0.5,0.5) + r12.zwzw;
          r13.xyzw = cb2[31].zwzw * r13.xyzw;
          r14.x = t3.SampleLevel(s2_s, r13.xy, 0).x;
          r12.xyzw = float4(1.5,1.5,1.5,0.5) + r12.xyzw;
          r12.xyzw = cb2[31].zwzw * r12.xyzw;
          r14.y = t3.SampleLevel(s2_s, r12.xy, 0).x;
          r14.z = t3.SampleLevel(s2_s, r12.zw, 0).x;
          r14.w = t3.SampleLevel(s2_s, r13.zw, 0).x;
          r3.w = r11.z * 4000 + -1;
          r11.xyzw = saturate(r14.xyzw * float4(4000,4000,4000,4000) + -r3.wwww);
          r11.yz = r11.zy + -r11.wx;
          r11.xy = r6.xx * r11.yz + r11.wx;
          r3.w = r11.y + -r11.x;
          r3.w = r6.y * r3.w + r11.x;
        } else {
          r3.w = 1;
        }
      } else {
        r3.w = 1;
      }
    } else {
      r3.w = 1;
    }
    r9.x = 1;
    r6.x = dot(float4(1,1,1,1), r9.xyzw);
    r10.yzw = r9.yzw;
    r6.y = dot(r10.xyzw, float4(1,1,1,1));
    r6.y = -1 + r6.y;
    r6.x = r6.x * r6.y + 1;
    r6.y = saturate(v4.w * cb2[9].x + cb2[9].y);
    r6.y = r6.y * r6.y;
    r6.x = r6.x + -r3.w;
    r3.w = r6.y * r6.x + r3.w;
    r6.x = min(1, r3.w);
    r6.x = r6.x + r3.w;
    r6.x = cmp(0 < r6.x);
    if (r6.x != 0) {
      r6.x = dot(cb2[4].xyz, cb2[4].xyz);
      r6.x = rsqrt(r6.x);
      r9.xyz = cb2[4].xyz * r6.xxx;
      r6.x = dot(r0.xyz, r9.xyz);
      r6.y = saturate(r6.x);
      r9.w = max(cb0[226].y, r4.x);
      r10.y = dot(r0.xyz, r3.xyz);
      r9.x = dot(r3.xyz, r9.xyz);
      r9.y = r9.x * 2 + 2;
      r9.y = rsqrt(r9.y);
      r6.x = r10.y + r6.x;
      r6.x = saturate(r6.x * r9.y);
      r9.x = saturate(r9.y * r9.x + r9.y);
      r9.y = 9.99999975e-006 + abs(r10.y);
      r9.y = min(1, r9.y);
      r10.yzw = r6.yyy * r5.xyz;
      r10.yzw = float3(0.318309873,0.318309873,0.318309873) * r10.yzw;
      r9.z = r9.w * r9.w;
      r11.x = r9.z * r9.z;
      r11.y = r6.x * r11.x + -r6.x;
      r6.x = r11.y * r6.x + 1;
      r6.x = r6.x * r6.x;
      r6.x = 3.14159274 * r6.x;
      r6.x = r11.x / r6.x;
      r9.w = -r9.w * r9.w + 1;
      r11.x = r9.y * r9.w + r9.z;
      r9.z = r6.y * r9.w + r9.z;
      r9.y = r9.y * r9.z;
      r9.y = r6.y * r11.x + r9.y;
      r9.y = rcp(r9.y);
      r6.x = r9.y * r6.x;
      r9.x = 1 + -r9.x;
      r9.y = r9.x * r9.x;
      r9.y = r9.y * r9.y;
      r9.z = r9.y * r9.x;
      r9.w = saturate(50 * r8.y);
      r9.x = -r9.y * r9.x + 1;
      r8.x = r5.w;
      r11.xyz = r9.xxx * r8.xyz;
      r9.xyz = r9.www * r9.zzz + r11.xyz;
      r6.x = 0.5 * r6.x;
      r9.xyz = r6.xxx * r9.xyz;
      r9.xyz = r9.xyz * r6.yyy;
      r11.xyz = cb2[5].xyz * r3.www;
      r12.xyz = r11.xyz * r10.yzw;
      r9.xyz = r11.yzx * r9.yzx;
      r12.w = r9.z;
    } else {
      r9.xy = float2(0,0);
      r12.xyzw = float4(0,0,0,0);
    }
    r3.w = asuint(cb2[8].z) >> 8;
    r3.w = (int)r3.w & asint(cb1[23].w);
    r11.xyzw = r3.wwww ? r12.xyzw : float4(0,0,0,0);
    r6.xy = r3.ww ? r9.xy : float2(0,0);
    r6.z = r10.x;
  } else {
    r11.xyzw = float4(0,0,0,0);
    r6.xy = float2(0,0);
  }
  r3.w = (uint)r0.w << 1;
  r3.w = t6.Load(r3.w).x;
  r3.w = min(asuint(cb2[0].x), (uint)r3.w);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r9.x = (((uint)r0.w << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r9.x = t6.Load(r9.x).x;
  r3.w = min(asuint(cb2[0].x), (uint)r3.w);
  r9.y = dot(-r3.xyz, r0.xyz);
  r9.y = r9.y + r9.y;
  r9.yzw = r0.xyz * -r9.yyy + -r3.xyz;
  r10.x = max(cb0[226].y, r4.x);
  r10.y = r10.x * r10.x;
  r10.x = -r10.x * r10.x + 1;
  r10.z = dot(r0.xyz, r3.xyz);
  r10.w = r10.z + r10.z;
  r12.x = r10.w * r10.z + -1;
  r12.y = 9.99999975e-006 + abs(r10.z);
  r12.y = min(1, r12.y);
  r13.xyz = float3(0.318309873,0.318309873,0.318309873) * r5.xyz;
  r12.z = r10.y * r10.y;
  r12.w = saturate(50 * r8.y);
  r14.y = 1;
  r8.w = r5.w;
  r15.xyz = r11.xyz;
  r16.x = r11.w;
  r16.yz = r6.xy;
  r5.w = 0;
  while (true) {
    r13.w = cmp((uint)r5.w >= (uint)r3.w);
    if (r13.w != 0) break;
    r13.w = (int)r5.w + (int)r9.x;
    r13.w = t7.Load(r13.w).x;
    r14.z = (int)r13.w * 6;
    r17.xyzw = t5.Load(r14.z).xyzw;
    r14.z = mad((int)r13.w, 6, 1);
    r18.xyzw = t5.Load(r14.z).xyzw;
    r14.zw = mad((int2)r13.ww, int2(6,6), int2(2,3));
    r19.xyzw = t5.Load(r14.z).xyzw;
    r20.xyzw = t5.Load(r14.w).xyzw;
    r14.z = cmp(r18.w == 0.000000);
    r14.w = cmp(-2 < r20.x);
    r17.xyz = r17.xyz + -r2.xyz;
    r15.w = dot(r17.xyz, r17.xyz);
    r16.w = rsqrt(r15.w);
    r21.xyz = r17.xyz * r16.www;
    r16.w = r17.w * r17.w;
    r15.w = r16.w * r15.w;
    r15.w = -r15.w * r15.w + 1;
    r15.w = max(0, r15.w);
    r15.w = r15.w * r15.w;
    r22.xyz = r17.xyz * r17.www;
    r16.w = dot(r22.xyz, r22.xyz);
    r16.w = min(1, r16.w);
    r16.w = 1 + -r16.w;
    r16.w = log2(r16.w);
    r16.w = r18.w * r16.w;
    r16.w = exp2(r16.w);
    r15.w = r14.z ? r15.w : r16.w;
    r16.w = dot(r21.xyz, r19.xyz);
    r16.w = r16.w + -r20.x;
    r16.w = saturate(r16.w * r20.y);
    r16.w = r16.w * r16.w;
    r16.w = r16.w * r15.w;
    r14.w = r14.w ? r16.w : r15.w;
    r15.w = cmp(0 < r14.w);
    if (r15.w != 0) {
      r15.w = (int)r19.w & 255;
      r15.w = r15.w ? 1 : 0;
      if (r15.w != 0) {
        r21.xyzw = (int4)r19.wwww & int4(1,2,4,8);
        r21.xyzw = r21.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r15.w = (uint)r19.w >> 4;
        if (1 == 0) r16.w = 0; else if (1+4 < 32) {         r16.w = (uint)r19.w << (32-(1 + 4)); r16.w = (uint)r16.w >> (32-1);        } else r16.w = (uint)r19.w >> 4;
        r22.x = r16.w ? 1 : 0;
        r19.xyz = (int3)r15.www & int3(2,4,8);
        r22.yzw = r19.xyz ? float3(1,1,1) : float3(0,0,0);
        r15.w = dot(r22.xyzw, float4(1,1,1,1));
        r16.w = dot(r21.xyzw, float4(1,1,1,1));
        r17.w = dot(r6.zwww, r21.xyzw);
        r17.w = -1 + r17.w;
        r16.w = r16.w * r17.w + 1;
        r19.xy = r16.ww * r15.ww;
      } else {
        r19.xy = float2(1,1);
      }
      r15.w = r19.x + r19.y;
      r15.w = cmp(0 < r15.w);
      if (r15.w != 0) {
        r13.w = mad((int)r13.w, 6, 4);
        r21.xyzw = t5.Load(r13.w).xyzw;
        r13.w = f16tof32(r20.w);
        r15.w = 0.5 * r13.w;
        r20.xyw = -r15.www * r21.xyz + r17.xyz;
        r17.xyz = r15.www * r21.xyz + r17.xyz;
        r15.w = cmp(0 < r13.w);
        if (r15.w != 0) {
          r16.w = dot(r20.xyw, r20.xyw);
          r17.w = dot(r17.xyz, r17.xyz);
          r16.w = rsqrt(r16.w);
          r17.w = rsqrt(r17.w);
          r18.w = r17.w * r16.w;
          r19.y = dot(r20.xyw, r17.xyz);
          r19.y = r19.y * r18.w;
          r19.z = r19.y * 0.5 + r18.w;
          r19.z = 0.5 + r19.z;
          r21.y = r18.w / r19.z;
          r18.w = dot(r0.xyz, r20.xyw);
          r19.z = dot(r0.xyz, r17.xyz);
          r17.w = r19.z * r17.w;
          r16.w = r18.w * r16.w + r17.w;
          r21.x = 0.5 * r16.w;
        } else {
          r16.w = dot(r20.xyw, r20.xyw);
          r17.w = 1 + r16.w;
          r21.y = rcp(r17.w);
          r16.w = rsqrt(r16.w);
          r22.xyz = r20.xyw * r16.www;
          r21.x = dot(r0.xyz, r22.xyz);
          r19.y = 1;
        }
        r16.w = cmp(0 < r20.z);
        r17.w = r20.z * r20.z;
        r17.w = saturate(r17.w * r21.y);
        r17.w = sqrt(r17.w);
        r18.w = cmp(r21.x < r17.w);
        r19.z = max(r21.x, -r17.w);
        r19.z = r19.z + r17.w;
        r19.z = r19.z * r19.z;
        r17.w = 4 * r17.w;
        r17.w = r19.z / r17.w;
        r17.w = r18.w ? r17.w : r21.x;
        r16.w = saturate(r16.w ? r17.w : r21.x);
        r14.z = r14.z ? r21.y : 1;
        r17.xyz = r17.xyz + -r20.xyw;
        r17.w = dot(r9.yzw, r17.xyz);
        r21.xyz = r17.www * r9.yzw + -r17.xyz;
        r18.w = dot(r20.xyw, r21.xyz);
        r17.w = r17.w * r17.w;
        r13.w = r13.w * r13.w + -r17.w;
        r13.w = saturate(r18.w / r13.w);
        r17.xyz = r13.www * r17.xyz + r20.xyw;
        r17.xyz = r15.www ? r17.xyz : r20.xyw;
        r13.w = dot(r17.xyz, r17.xyz);
        r13.w = rsqrt(r13.w);
        r17.xyz = r17.xyz * r13.www;
        r15.w = r20.z * r13.w;
        r15.w = saturate(r15.w * r10.x);
        r13.w = saturate(r21.w * r13.w);
        r17.w = dot(r0.xyz, r17.xyz);
        r17.x = dot(r3.xyz, r17.xyz);
        r17.y = r17.x * 2 + 2;
        r17.y = rsqrt(r17.y);
        r17.z = r17.w + r10.z;
        r17.z = saturate(r17.z * r17.y);
        r17.y = saturate(r17.y * r17.x + r17.y);
        r18.w = cmp(0 < r15.w);
        if (r18.w != 0) {
          r19.z = -r15.w * r15.w + 1;
          r19.z = sqrt(r19.z);
          r20.x = dot(r10.zz, r17.ww);
          r20.y = r20.x + -r17.x;
          r20.z = cmp(r20.y >= r19.z);
          if (r20.z != 0) {
            r17.z = 1;
            r17.y = abs(r10.z);
          } else {
            r20.z = -r20.y * r20.y + 1;
            r20.z = rsqrt(r20.z);
            r20.z = r20.z * r15.w;
            r20.w = -r20.y * r17.w + r10.z;
            r21.x = r20.z * r20.w;
            r20.y = -r20.y * r17.x + r12.x;
            r21.y = r17.w * r17.w;
            r21.y = -r10.z * r10.z + -r21.y;
            r21.y = 1 + r21.y;
            r21.y = -r17.x * r17.x + r21.y;
            r20.x = saturate(r20.x * r17.x + r21.y);
            r20.x = sqrt(r20.x);
            r20.xy = r20.zz * r20.xy;
            r21.y = r20.x * r10.z;
            r21.z = r21.y + r21.y;
            r21.w = r17.w * r19.z + r10.z;
            r20.z = r20.z * r20.w + r21.w;
            r20.w = r17.x * r19.z + r20.y;
            r20.w = 1 + r20.w;
            r22.xy = r20.xz * r20.ww;
            r22.z = r21.z * r20.z;
            r21.y = r20.z * r21.y;
            r21.y = 0.5 * r21.y;
            r21.y = r22.x * -0.5 + r21.y;
            r21.y = r22.y * r21.y;
            r22.w = -r22.x * 2 + r22.z;
            r22.z = r22.z * r22.w;
            r22.x = r22.x * r22.x + r22.z;
            r22.z = r20.w * r20.w;
            r20.w = r17.x * r19.z + r20.w;
            r20.w = r20.w * -0.5 + -0.5;
            r20.w = r22.y * r20.w;
            r20.w = r21.w * r22.z + r20.w;
            r20.z = r20.z * r20.w + r22.x;
            r20.w = r21.y + r21.y;
            r21.w = r21.y * r21.y;
            r21.w = r20.z * r20.z + r21.w;
            r20.w = r20.w / r21.w;
            r20.z = r20.w * r20.z;
            r20.w = -r20.w * r21.y + 1;
            r20.x = r20.z * r20.x;
            r20.x = r20.w * r21.x + r20.x;
            r20.z = r20.z * r21.z;
            r20.y = r20.w * r20.y + r20.z;
            r17.w = r17.w * r19.z + r20.x;
            r17.x = r17.x * r19.z + r20.y;
            r19.z = r17.x * 2 + 2;
            r19.z = rsqrt(r19.z);
            r17.w = r17.w + r10.z;
            r17.z = saturate(r17.w * r19.z);
            r17.y = saturate(r19.z * r17.x + r19.z);
          }
        }
        r14.z = r14.z * r16.w;
        r20.xyz = r14.zzz * r13.xyz;
        r17.x = cmp(0 < r13.w);
        r13.w = r13.w * r13.w;
        r17.w = r17.y * 3.5999999 + 0.400000006;
        r13.w = r13.w / r17.w;
        r13.w = r10.y * r10.y + r13.w;
        r13.w = min(1, r13.w);
        r14.x = r17.x ? r13.w : r12.z;
        r13.w = 0.25 * r15.w;
        r17.x = (uint)r14.x >> 1;
        r17.x = (int)r17.x + 0x1fbd1df5;
        r15.w = r17.x * 3 + r15.w;
        r13.w = r15.w * r13.w;
        r15.w = 0.00100000005 + r17.y;
        r13.w = r13.w / r15.w;
        r21.x = r14.x + r13.w;
        r21.y = r14.x / r21.x;
        r17.xw = r18.ww ? r21.xy : r14.xy;
        r13.w = cmp(r19.y < 1);
        r18.w = 1.00010002 + -r19.y;
        r19.y = 1 + r19.y;
        r18.w = r18.w / r19.y;
        r18.w = sqrt(r18.w);
        r19.y = 0.25 * r18.w;
        r19.z = (uint)r17.x >> 1;
        r19.z = (int)r19.z + 0x1fbd1df5;
        r18.w = r19.z * 3 + r18.w;
        r18.w = r19.y * r18.w;
        r15.w = r18.w / r15.w;
        r15.w = r17.x + r15.w;
        r15.w = r17.x / r15.w;
        r15.w = sqrt(r15.w);
        r15.w = r17.w * r15.w;
        r13.w = r13.w ? r15.w : r17.w;
        r15.w = r17.z * r14.x + -r17.z;
        r15.w = r15.w * r17.z + 1;
        r15.w = r15.w * r15.w;
        r15.w = 3.14159274 * r15.w;
        r15.w = r14.x / r15.w;
        r13.w = r15.w * r13.w;
        r14.x = sqrt(r14.x);
        r15.w = 1 + -r14.x;
        r17.x = r12.y * r15.w + r14.x;
        r14.x = r16.w * r15.w + r14.x;
        r14.x = r14.x * r12.y;
        r14.x = r16.w * r17.x + r14.x;
        r14.x = rcp(r14.x);
        r13.w = r14.x * r13.w;
        r14.x = 1 + -r17.y;
        r15.w = r14.x * r14.x;
        r15.w = r15.w * r15.w;
        r16.w = r15.w * r14.x;
        r14.x = -r15.w * r14.x + 1;
        r17.xyz = r14.xxx * r8.wyz;
        r17.xyz = r12.www * r16.www + r17.xyz;
        r13.w = 0.5 * r13.w;
        r17.xyz = r13.www * r17.xyz;
        r17.xyz = r17.xyz * r14.zzz;
        r14.xzw = r18.xyz * r14.www;
        r14.xzw = r14.xzw * r19.xxx;
        r18.xyz = r20.xyz * r14.xzw;
        r14.xzw = r17.xyz * r14.xzw;
      } else {
        r18.xyz = float3(0,0,0);
        r14.xzw = float3(0,0,0);
      }
    } else {
      r18.xyz = float3(0,0,0);
      r14.xzw = float3(0,0,0);
    }
    r13.w = (uint)r19.w >> 8;
    r13.w = (int)r13.w & asint(cb1[23].w);
    r17.xyz = r18.xyz + r15.xyz;
    r14.xzw = r16.xyz + r14.xzw;
    r15.xyz = r13.www ? r17.xyz : r15.xyz;
    r16.xyz = r13.www ? r14.xzw : r16.xyz;
    r5.w = (int)r5.w + 1;
  }
  r6.xyz = r16.xyz + r15.xyz;
  r3.yzw = r10.www * r0.xyz + -r3.xyz;
  r10.z = saturate(r10.z);
  r0.w = (int)r0.w + asint(cb2[0].w);
  r5.w = (uint)r0.w << 1;
  r5.w = t6.Load(r5.w).x;
  r5.w = min(asuint(cb2[0].y), (uint)r5.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = t6.Load(r0.w).x;
  r6.w = max(0.00100000005, r4.x);
  r6.w = log2(r6.w);
  r6.w = -r6.w * 1.20000005 + 1;
  r9.x = -1 + cb0[195].z;
  r6.w = r9.x + -r6.w;
  r3.x = 0;
  r9.xyzw = float4(0,0,0,1);
  r10.x = 0;
  while (true) {
    r10.y = cmp((uint)r10.x >= (uint)r5.w);
    if (r10.y != 0) break;
    r10.y = cmp(r9.w < 0.00100000005);
    if (r10.y != 0) {
      break;
    }
    r10.y = (int)r0.w + (int)r10.x;
    r10.y = t7.Load(r10.y).x;
    r11.xyz = -cb3[r10.y+0].xyz + r2.xyz;
    r10.w = dot(r11.xyz, r11.xyz);
    r11.w = sqrt(r10.w);
    r12.x = cmp(r11.w < cb3[r10.y+0].w);
    if (r12.x != 0) {
      r12.x = cmp(0 < cb3[r10.y+341].z);
      if (r12.x != 0) {
        r12.x = (uint)r10.y << 2;
        r13.xyz = cb3[r12.x+1024].xyz * r2.yyy;
        r13.xyz = r2.xxx * cb3[r12.x+1023].xyz + r13.xyz;
        r13.xyz = r2.zzz * cb3[r12.x+1025].xyz + r13.xyz;
        r13.xyz = cb3[r12.x+1026].xyz + r13.xyz;
        r14.xyz = cb3[r12.x+1024].xyz * r3.zzz;
        r14.xyz = r3.yyy * cb3[r12.x+1023].xyz + r14.xyz;
        r12.xyz = r3.www * cb3[r12.x+1025].xyz + r14.xyz;
        r12.xyz = rcp(r12.xyz);
        r14.xyz = -r13.xyz * r12.xyz + -r12.xyz;
        r12.xyz = -r13.xyz * r12.xyz + r12.xyz;
        r12.xyz = max(r14.xyz, r12.xyz);
        r12.y = min(r12.y, r12.z);
        r12.x = min(r12.x, r12.y);
        r12.xyz = r12.xxx * r3.yzw + r2.xyz;
        r14.xyz = cb3[r10.y+682].xyz + cb3[r10.y+0].xyz;
        r14.xyz = -r14.xyz + r12.xyz;
        r12.x = cb3[r10.y+2387].w * 0.699999988;
        r15.xyz = -cb3[r10.y+2387].www * float3(0.5,0.5,0.5) + cb3[r10.y+2387].xyz;
        r16.xyz = cb3[r10.y+2387].xyz * r13.xyz;
        r17.xyz = cmp(r16.xyz < -r15.xyz);
        r18.xyz = r13.xyz * cb3[r10.y+2387].xyz + r15.xyz;
        r18.xyz = abs(r18.xyz);
        r17.xyz = r17.xyz ? r18.xyz : 0;
        r16.xyz = cmp(r15.xyz < r16.xyz);
        r13.xyz = r13.xyz * cb3[r10.y+2387].xyz + -r15.xyz;
        r13.xyz = abs(r13.xyz);
        r13.xyz = r16.xyz ? r13.xyz : 0;
        r12.y = dot(r17.xyz, float3(1,1,1));
        r12.z = dot(r13.xyz, float3(1,1,1));
        r12.y = r12.y + r12.z;
        r12.x = 1 / r12.x;
        r12.x = saturate(r12.y * r12.x);
        r12.y = r12.x * -2 + 3;
        r12.x = r12.x * r12.x;
        r13.x = -r12.y * r12.x + 1;
      } else {
        r11.w = saturate(r11.w / cb3[r10.y+0].w);
        r12.x = dot(r3.yzw, r11.xyz);
        r10.w = -cb3[r10.y+0].w * cb3[r10.y+0].w + r10.w;
        r10.w = r12.x * r12.x + -r10.w;
        r12.y = cmp(r10.w >= 0);
        r10.w = sqrt(r10.w);
        r10.w = r10.w + -r12.x;
        r11.xyz = r10.www * r3.yzw + r11.xyz;
        r15.yzw = -cb3[r10.y+682].xyz + r11.xyz;
        r10.w = r11.w * 2.5 + -1.5;
        r10.w = max(0, r10.w);
        r11.x = r10.w * r10.w;
        r10.w = -r10.w * 2 + 3;
        r15.x = -r11.x * r10.w + 1;
        r13.xyzw = r12.yyyy ? r15.xyzw : r3.xyzw;
        r14.xyz = r13.yzw;
      }
      r14.w = cb3[r10.y+341].y;
      r11.xyzw = t8.SampleLevel(s4_s, r14.xyzw, r6.w).xyzw;
      r11.xyz = cb3[r10.y+341].xxx * r11.xyz;
      r11.xyz = r11.xyz * r13.xxx;
      r9.xyz = r11.xyz * r9.www + r9.xyz;
      r10.y = -r11.w * r13.x + 1;
      r9.w = r10.y * r9.w;
    }
    r10.x = (int)r10.x + 1;
  }
  r9.xyz = cb0[157].xyz * r9.xyz;
  r0.w = saturate(r4.x * cb0[197].x + cb0[197].y);
  r3.x = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r3.x * r0.w;
  r3.x = min(0, cb0[197].z);
  r3.x = -1 + r3.x;
  r0.w = r0.w * r3.x + 1;
  r9.xyz = r9.xyz * r0.www;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r10.xy = r0.ww * float2(32.6650009,11.8149996) + v4.xy;
    r0.w = dot(r10.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r11.xyzw = cb0[1].xyzw * r1.yyyy;
    r11.xyzw = r1.xxxx * cb0[0].xyzw + r11.xyzw;
    r11.xyzw = r1.zzzz * cb0[2].xyzw + r11.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r3.xyz = r3.yzw * v4.www + r1.xyz;
    r13.xyzw = cb0[1].xyzw * r3.yyyy;
    r13.xyzw = r3.xxxx * cb0[0].xyzw + r13.xyzw;
    r3.xyzw = r3.zzzz * cb0[2].xyzw + r13.xyzw;
    r3.xyzw = cb0[3].xyzw + r3.xyzw;
    r5.w = rcp(r11.w);
    r10.xyw = r11.xyz * r5.www;
    r3.w = rcp(r3.w);
    r11.xy = v4.ww * cb0[30].zw + r11.zw;
    r5.w = rcp(r11.y);
    r3.xyz = r3.xyz * r3.www + -r10.xyw;
    r3.w = dot(r3.xy, r3.xy);
    r3.w = sqrt(r3.w);
    r6.w = 0.5 * r3.w;
    r11.yz = r10.xy * r6.ww + r3.xy;
    r11.yz = -r3.ww * float2(0.5,0.5) + abs(r11.yz);
    r11.yz = max(float2(0,0), r11.yz);
    r11.yz = r11.yz / abs(r3.xy);
    r11.yz = float2(1,1) + -r11.yz;
    r3.w = min(r11.y, r11.z);
    r3.w = r3.w / r6.w;
    r3.xyz = r3.xyz * r3.www;
    r3.w = -r11.x * r5.w + r10.w;
    r3.w = 4 * r3.w;
    r3.w = max(abs(r3.z), r3.w);
    r11.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r10.xy = cb2[176].xy * r11.xy;
    r3.xy = cb2[176].xy * r3.xy;
    r5.w = 0.0833333358 * r3.w;
    r3.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r3.xyz;
    r10.xyw = r3.xyz * r0.www + r10.xyw;
    r0.w = 1;
    r12.x = 0;
    r11.xyz = float3(0,0,0);
    r6.w = 0;
    r9.w = 0;
    r13.xw = float2(0,0);
    r14.xy = float2(0,0);
    while (true) {
      r14.z = cmp((uint)r14.y >= 12);
      if (r14.z != 0) break;
      r14.z = (uint)r14.y;
      r15.xyzw = float4(1,2,3,4) + r14.zzzz;
      r16.xyzw = r15.xxxy * r3.xyzz + r10.xyww;
      r17.xyzw = r15.yyzz * r3.xyxy + r10.xyxy;
      r15.xyzw = r15.wwzw * r3.xyzz + r10.xyww;
      r14.z = r4.x * 0.666666687 + r0.w;
      r14.w = r4.x * 0.666666687 + r14.z;
      r18.x = t12.SampleLevel(s6_s, r16.xy, r0.w).x;
      r18.y = t12.SampleLevel(s6_s, r17.xy, r0.w).x;
      r18.z = t12.SampleLevel(s6_s, r17.zw, r14.z).x;
      r18.w = t12.SampleLevel(s6_s, r15.xy, r14.z).x;
      r15.xy = r16.zw;
      r15.xyzw = r15.xyzw + -r18.xyzw;
      r16.xyzw = r3.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r15.xyzw;
      r16.xyzw = cmp(abs(r16.xyzw) < r5.wwww);
      r17.xy = (int2)r16.zw | (int2)r16.xy;
      r14.z = (int)r17.y | (int)r17.x;
      if (r14.z != 0) {
        r13.x = r15.x;
        r11.xyz = r15.yzw;
        r6.w = r16.x;
        r9.w = r16.y;
        r13.w = r16.z;
        r14.x = -1;
        break;
      }
      r12.x = r15.w;
      r14.y = (int)r14.y + 4;
      r0.w = r14.w;
      r13.x = r15.x;
      r11.xyz = r15.yzw;
      r6.w = r16.x;
      r9.w = r16.y;
      r13.w = r16.z;
      r14.xy = r14.zy;
    }
    if (r14.x != 0) {
      r11.w = 2;
      r15.xy = r11.yz;
      r15.z = 3;
      r11.yzw = r13.www ? r11.xyw : r15.xyz;
      r13.y = r11.x;
      r13.z = 1;
      r11.xyz = r9.www ? r13.xyz : r11.yzw;
      r12.y = r13.x;
      r12.z = 0;
      r11.xyz = r6.www ? r12.xyz : r11.xyz;
      r0.w = (uint)r14.y;
      r0.w = r11.z + r0.w;
      r3.w = r11.x + -r11.y;
      r3.w = saturate(r11.x / r3.w);
      r0.w = r3.w + r0.w;
      r3.xyz = r3.xyz * r0.www + r10.xyw;
      r3.xy = cb2[176].zw * r3.xy;
      r3.xy = r3.xy * float2(2,-2) + float2(-1,1);
      r3.xy = cb0[66].xy * r3.xy;
      r3.xy = r3.xy / cb0[66].xy;
      r10.xyw = cb0[123].xyw * r3.yyy;
      r10.xyw = r3.xxx * cb0[122].xyw + r10.xyw;
      r10.xyw = r3.zzz * cb0[124].xyw + r10.xyw;
      r10.xyw = cb0[125].xyw + r10.xyw;
      r3.zw = r10.xy / r10.ww;
      r10.xy = r3.zw * cb2[177].xy + cb2[177].zw;
      r3.xy = saturate(abs(r3.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r3.xy, r3.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r3.xy = saturate(abs(r3.zw) * float2(5,5) + float2(-4,-4));
      r3.x = dot(r3.xy, r3.xy);
      r3.x = 1 + -r3.x;
      r3.x = max(0, r3.x);
      r0.w = min(r3.x, r0.w);
      r3.xyz = t13.SampleLevel(s7_s, r10.xy, 0).xyz;
      r3.xyz = min(float3(0,0,0), -r3.xyz);
      r3.w = saturate(-r4.x * 6.5999999 + 2);
      r0.w = r3.w * r0.w;
      r3.w = 1;
      r3.xyz = -r3.xyz * r0.www;
      r3.xyz = cb2[178].xxx * r3.xyz;
      r0.w = -r3.w * r0.w + 1;
      r9.xyz = r9.xyz * r0.www + r3.xyz;
    }
  }
  r3.xyzw = r4.xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r3.x * r3.x;
  r5.w = -9.27999973 * r10.z;
  r5.w = exp2(r5.w);
  r0.w = min(r5.w, r0.w);
  r0.w = r0.w * r3.x + r3.y;
  r3.xy = r0.ww * float2(-1.03999996,1.03999996) + r3.zw;
  r8.xyz = r8.wyz;
  r0.w = r12.w * r3.y;
  r3.xyz = r8.xyz * r3.xxx + r0.www;
  r0.w = dot(cb2[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r2.w = -1;
    r0.w = dot(cb2[122].xyzw, r2.xyzw);
    r0.w = saturate(abs(r0.w) * cb2[129].x + cb2[129].y);
    r0.w = 1 + -r0.w;
    r10.xyz = -cb2[123].xyz + r2.xyz;
    r2.w = dot(r10.xyz, cb2[124].xyz);
    r2.w = cb2[124].w + -abs(r2.w);
    r2.w = saturate(cb2[129].x * r2.w);
    r3.w = dot(r10.xyz, cb2[125].xyz);
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
      r10.xyz = -cb0[67].xyz + r2.xyz;
      r2.w = dot(r10.xyz, r10.xyz);
      r2.w = rsqrt(r2.w);
      r10.xyz = r10.xyz * r2.www;
      r2.w = dot(r10.xyz, -cb2[122].xyz);
      r2.w = r2.w + r2.w;
      r10.xyz = cb2[122].xyz * r2.www + r10.xyz;
      r11.xyz = cb2[127].xyz * r0.yyy;
      r11.xyz = r0.xxx * cb2[126].xyz + r11.xyz;
      r0.xyz = r0.zzz * cb2[128].xyz + r11.xyz;
      r2.w = dot(r10.xyz, r0.xyz);
      r2.w = r2.w + r2.w;
      r0.xyz = r0.xyz * -r2.www + r10.xyz;
      r0.xyz = r0.xyz * cb2[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r10.xyz = cb0[13].xyz * r0.yyy;
      r10.xyz = r0.xxx * cb0[12].xyz + r10.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r10.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r2.w = asuint(cb0[197].w) << 2;
      r10.xyz = cb2[r2.w+132].xyw * r0.yyy;
      r10.xyz = r0.xxx * cb2[r2.w+131].xyw + r10.xyz;
      r0.xyz = r0.zzz * cb2[r2.w+133].xyw + r10.xyz;
      r0.xyz = cb2[r2.w+134].xyw + r0.xyz;
      r2.w = cb2[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb2[141].xy, r0.xy);
      r0.xy = min(cb2[141].xy, r0.xy);
      r0.xy = r0.xy * cb2[r2.w+139].xy + cb2[r2.w+139].zw;
      r10.xyzw = t9.SampleLevel(s4_s, r0.xy, 0).xyzw;
      r0.x = r10.w * r0.w;
    } else {
      r10.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r9.xyz = r0.xxx * r9.xyz + r10.xyz;
  }
  r0.xyz = r9.xyz * r3.xyz;
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
    r9.x = dot(r1.xy, r6.xz);
    r9.y = dot(r1.xy, cb2[149].xy);
    r9.z = r1.w;
    r6.xzw = t10.SampleLevel(s5_s, r9.xyz, 0).xyz;
    r9.xyz = t10.SampleLevel(s5_s, r9.xyz, cb2[150].z).xyz;
    r6.xzw = -r9.xyz + r6.xzw;
    r6.xzw = r4.xxx * r6.xzw + r9.xyz;
    r6.xzw = cb2[145].xyz * r6.xzw;
  } else {
    r6.xzw = cb2[145].xyz;
  }
  r4.x = cmp(cb2[147].w >= 0);
  r5.w = cmp(cb2[146].z == 0.000000);
  r4.x = r4.x ? r5.w : 0;
  if (r4.x != 0) {
    r9.xyz = r3.zzz * r1.xyw;
    r1.w = saturate(dot(r9.xyz, cb2[147].xyz));
    r1.w = log2(r1.w);
    r1.w = cb2[148].w * r1.w;
    r1.w = exp2(r1.w);
    r9.xyz = cb2[148].xyz * r1.www;
    r1.w = -cb2[147].w + r2.w;
    r1.w = max(0, r1.w);
    r1.w = r3.x * r1.w;
    r1.w = exp2(-r1.w);
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r9.xyz = r9.xyz * r1.www;
  } else {
    r9.xyz = float3(0,0,0);
  }
  r1.w = exp2(-r3.w);
  r1.w = min(1, r1.w);
  r9.w = max(cb2[145].w, r1.w);
  r1.w = cmp(cb2[146].w < r3.y);
  r1.w = r1.w ? r6.y : 0;
  r3.xyzw = r1.wwww ? float4(1,0,0,0) : r9.wxyz;
  r1.w = 1 + -r3.x;
  r3.yzw = r6.xzw * r1.www + r3.yzw;
  r1.w = cmp(0 < cb2[150].w);
  if (r1.w != 0) {
    r6.xyz = cb0[5].xyw * r2.yyy;
    r6.xyz = r2.xxx * cb0[4].xyw + r6.xyz;
    r6.xyz = r2.zzz * cb0[6].xyw + r6.xyz;
    r6.xyz = cb0[7].xyw + r6.xyz;
    r6.xy = r6.xy / r6.zz;
    r9.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r6.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r9.z = cb0[208].z * r1.w;
    r6.xyzw = t11.SampleLevel(s0_s, r9.xyz, 0).xyzw;
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
    r9.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r6.xy = r6.xy / r6.zz;
    r6.xy = r6.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r9.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r9.xyz;
    r2.w = dot(r9.xyz, r9.xyz);
    r4.x = sqrt(r2.w);
    r4.x = -cb0[181].x + r4.x;
    r4.x = max(0, r4.x);
    r4.x = cb0[182].x * r4.x;
    r4.x = cb0[181].z * r4.x;
    r10.z = sqrt(r4.x);
    r4.x = cb0[181].y * r10.z;
    r5.w = cmp(r4.x < 0.707106769);
    r4.x = dot(r4.xx, r4.xx);
    r4.x = min(1, r4.x);
    r4.x = r5.w ? r4.x : 1;
    r2.w = rsqrt(r2.w);
    r9.xyz = r9.xyz * r2.www;
    r2.w = -r9.z * r9.z + 1;
    r2.w = sqrt(r2.w);
    r11.y = r9.z * 0.5 + 0.5;
    r6.zw = r9.xy / r2.ww;
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
    r11.x = 0.159154937 * r2.w;
    r6.zw = cb0[180].zw * float2(0.5,0.5) + r11.xy;
    r9.xy = float2(1,1) + cb0[180].xy;
    r9.xy = cb0[180].xy / r9.xy;
    r6.zw = r9.xy * r6.zw;
    r10.xy = r1.ww ? r6.zw : r6.xy;
    r6.xyzw = t2.SampleLevel(s1_s, r10.xyz, 0).xyzw;
    r6.xyz = r6.xyz * r4.xxx;
    r1.w = 1 + -r6.w;
    r1.w = -r4.x * r1.w + 1;
    r6.xyz = cb0[135].zzz * r6.xyz;
    r3.yzw = r6.xyz * r3.xxx + r3.yzw;
    r3.x = r3.x * r1.w;
  }
  r5.xyz = r8.xyz * float3(0.449999988,0.449999988,0.449999988) + r5.xyz;
  r5.xyz = r5.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r5.xyz + r0.xyz;
  r7.xyz = max(float3(0,0,0), r4.yzw);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r4.xyz = -cb1[5].xyz + r2.xyz;
    r5.xyz = float3(1,1,1) + cb1[19].xyz;
    r4.xyz = cmp(r5.xyz < abs(r4.xyz));
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
  r0.xyz = r7.xyz + r0.xyz;
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