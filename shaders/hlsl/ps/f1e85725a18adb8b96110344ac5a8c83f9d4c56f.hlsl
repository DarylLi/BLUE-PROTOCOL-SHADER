// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t19 : register(t19);

Texture2D<float4> t18 : register(t18);

Texture2D<float4> t17 : register(t17);

Texture2D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture3D<float4> t12 : register(t12);

TextureCube<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

TextureCubeArray<float4> t9 : register(t9);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
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
  r6.y = t15.SampleBias(s8_s, r4.xw, cb0[143].y).x;
  r6.xw = float2(0,1);
  r6.xy = cb5[45].xx * r6.xy;
  r7.x = frac(cb0[142].z);
  r7.yz = r6.xy * r7.xx + r4.xw;
  r7.yzw = t15.SampleBias(s8_s, r7.yz, cb0[143].y).xyz;
  r8.x = 0.5 + cb0[142].z;
  r8.x = frac(r8.x);
  r4.xw = r6.xy * r8.xx + r4.xw;
  r8.yzw = t15.SampleBias(s8_s, r4.xw, cb0[143].y).xyz;
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
  r7.xyw = t15.SampleBias(s8_s, r5.zw, cb0[143].y).xyz;
  r5.xy = r6.xy * r8.xx + r5.xy;
  r5.xyz = t15.SampleBias(s8_s, r5.xy, cb0[143].y).xyz;
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
  r0.w = cb0[142].z * cb5[51].x + v2.x;
  r6.x = cb5[52].y * r0.w;
  r0.w = cb0[142].z * cb5[52].z + v2.y;
  r6.y = cb5[52].w * r0.w;
  r0.w = cb0[142].z * cb5[54].x + v2.x;
  r10.x = cb5[55].y * r0.w;
  r0.w = cb0[142].z * cb5[55].z + v2.y;
  r10.y = cb5[55].w * r0.w;
  r0.w = t16.SampleBias(s9_s, r10.xy, cb0[143].y).z;
  r0.w = -0.5 + r0.w;
  r0.w = r0.w + r0.w;
  r6.xy = r0.ww * cb5[56].yy + r6.xy;
  r4.w = t17.SampleBias(s10_s, r6.xy, cb0[143].y).x;
  r6.x = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb5[56].z * r4.w;
  r4.w = exp2(r4.w);
  r10.xyz = cb5[14].xyz * r4.www;
  r10.xyz = r6.xxx ? float3(0,0,0) : r10.xyz;
  r11.xyz = cb4[6].xyz * cb5[58].yyy + cb5[18].xyz;
  r4.w = dot(cb4[7].xyz, r0.xyz);
  r6.x = saturate(r4.w);
  r6.x = 1 + -r6.x;
  r6.y = cb0[142].z * cb5[59].z + v2.x;
  r12.x = cb5[60].w * r6.y;
  r6.y = cb0[142].z * cb5[61].x + v2.y;
  r12.y = cb5[61].y * r6.y;
  r6.y = cb0[142].z * cb5[62].z + v2.x;
  r13.x = cb5[63].w * r6.y;
  r6.y = cb0[142].z * cb5[64].x + v2.y;
  r13.y = cb5[64].y * r6.y;
  r12.zw = t16.SampleBias(s9_s, r13.xy, cb0[143].y).xy;
  r12.zw = float2(-0.5,-0.5) + r12.zw;
  r12.zw = cb5[64].ww * r12.zw;
  r12.xy = r12.zw * float2(2,2) + r12.xy;
  r6.y = t18.SampleBias(s11_s, r12.xy, cb0[143].y).x;
  r12.xyz = -cb5[28].xyz + cb5[27].xyz;
  r12.xyz = r6.yyy * r12.xyz + cb5[28].xyz;
  r13.xyz = cb5[30].xyz * r12.xyz;
  r12.xyz = r12.xyz * cb5[32].xyz + -r13.xyz;
  r12.xyz = r4.xxx * r12.xyz + r13.xyz;
  r13.xyz = -r12.xyz * cb5[65].xxx + r12.xyz;
  r13.xyz = cb4[6].xyz * r13.xyz;
  r13.xyz = r13.xyz * r4.www;
  r8.xyz = cb5[65].yyy * r9.xyz + r8.yzw;
  r4.w = 1 + r8.z;
  r5.yzw = cb5[65].zzz * r5.yzw + r7.xyw;
  r8.w = 1 + r8.z;
  r5.yzw = float3(-1,-1,1) * r5.yzw;
  r6.y = dot(r8.xyw, r5.yzw);
  r5.yzw = r5.yzw * r4.www;
  r5.yzw = r8.xyw * r6.yyy + -r5.yzw;
  r4.w = dot(r5.yzw, r5.yzw);
  r4.w = sqrt(r4.w);
  r5.yzw = r5.yzw / r4.www;
  r4.w = saturate(dot(r5.yzw, cb4[7].xyz));
  r7.xyw = cb0[67].xyz + -r2.xyz;
  r6.y = dot(r7.xyw, r7.xyw);
  r6.y = sqrt(r6.y);
  r7.xyw = r7.xyw / r6.yyy;
  r7.xyw = cb4[7].xyz + r7.xyw;
  r6.y = dot(r7.xyw, r7.xyw);
  r6.y = sqrt(r6.y);
  r7.xyw = r7.xyw / r6.yyy;
  r5.y = saturate(dot(r7.xyw, r5.yzw));
  r5.z = 11 * cb5[66].x;
  r5.z = exp2(r5.z);
  r5.w = cmp(0 >= r5.y);
  r5.y = log2(r5.y);
  r5.y = r5.z * r5.y;
  r5.y = exp2(r5.y);
  r4.w = r5.y * r4.w;
  r4.w = cb5[66].y * r4.w;
  r7.xyw = cb4[5].xyz * r4.www;
  r5.yzw = r5.www ? float3(0,0,0) : r7.xyw;
  r5.yzw = r13.xyz * float3(0.318309844,0.318309844,0.318309844) + r5.yzw;
  r5.yzw = r11.xyz * r6.xxx + r5.yzw;
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
  r4.w = cb0[142].z * cb5[71].x + v2.x;
  r6.x = cb5[72].y * r4.w;
  r4.w = cb0[142].z * cb5[72].z + v2.y;
  r6.y = cb5[72].w * r4.w;
  r6.xy = r0.ww * cb5[73].yy + r6.xy;
  r4.w = t19.SampleBias(s12_s, r6.xy, cb0[143].y).x;
  r5.x = cmp(0 >= r4.w);
  r4.w = log2(r4.w);
  r4.w = cb5[73].z * r4.w;
  r4.w = exp2(r4.w);
  r4.w = r5.x ? 0 : r4.w;
  r5.x = cb0[142].z * cb5[74].w + v2.x;
  r6.x = cb5[76].x * r5.x;
  r5.x = cb0[142].z * cb5[76].y + v2.y;
  r6.y = cb5[76].z * r5.x;
  r6.xy = r0.ww * cb5[56].yy + r6.xy;
  r0.w = t15.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r5.x = -0.100000001 + v2.x;
  r6.x = 0.899999976 + -v2.x;
  r5.x = min(r6.x, r5.x);
  r0.w = r5.x * 5 + r0.w;
  r0.w = r4.w * r0.w;
  r0.w = r0.w * cb5[69].x + -cb5[69].x;
  r0.w = saturate(cb5[69].z + r0.w);
  r0.w = r4.x * r0.w;
  r8.w = saturate(r3.w * r0.w);
  r0.w = saturate(cb5[65].x);
  r3.w = saturate(cb5[66].w);
  r4.x = saturate(cb5[67].x);
  r4.x = r4.x * cb0[139].y + cb0[139].x;
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
  r4.y = 0.0799999982 * r3.w;
  r9.xyz = -r3.www * float3(0.0799999982,0.0799999982,0.0799999982) + r7.xyw;
  r9.xyz = r0.www * r9.xyz + r4.yyy;
  r7.xyz = -r7.xyw * r0.www + r7.xyw;
  r7.xyz = r7.xyz * cb0[136].www + cb0[136].xyz;
  r9.xyz = r9.xyz * cb0[137].www + cb0[137].xyz;
  r0.w = cmp(0 != cb0[183].w);
  r10.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
  r10.w = 0;
  r7.w = r9.x;
  r7.xyzw = r0.wwww ? r10.xyzw : r7.xyzw;
  r9.yz = r0.ww ? float2(0,0) : r9.yz;
  r4.yw = -cb0[129].xy + v4.xy;
  r4.yw = cb0[131].zw * r4.yw;
  r4.yw = (uint2)r4.yw;
  r0.w = v4.w * cb1[3].x + cb1[3].y;
  r0.w = log2(r0.w);
  r0.w = cb1[3].z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = (uint)r0.w;
  r3.w = asint(cb1[1].z) + -1;
  r0.w = min((uint)r3.w, (uint)r0.w);
  r4.yw = (uint2)r4.yw >> asuint(cb1[2].xx);
  r0.w = mad((int)r0.w, asint(cb1[1].y), (int)r4.w);
  r0.w = mad((int)r0.w, asint(cb1[1].x), (int)r4.y);
  r3.w = t2[r4.z].val[12/4];
  if (cb1[0].z != 0) {
    r4.yzw = asint(cb1[8].zzz) & int3(2,4,8);
    r10.yzw = r4.yzw ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r11.xyzw = cb1[51].xyzw * r2.yyyy;
      r11.xyzw = r2.xxxx * cb1[50].xyzw + r11.xyzw;
      r11.xyzw = r2.zzzz * cb1[52].xyzw + r11.xyzw;
      r11.xyzw = cb1[53].xyzw + r11.xyzw;
      r4.yz = r11.xy / r11.ww;
      r6.xy = cmp(r4.yz >= float2(0,0));
      r11.xy = cmp(float2(1,1) >= r4.yz);
      r6.xy = r6.xy ? r11.xy : 0;
      r4.w = r6.y ? r6.x : 0;
      if (r4.w != 0) {
        r4.y = t5.SampleLevel(s3_s, r4.yz, 0).x;
        r4.z = cmp(r11.z < r4.y);
        r4.y = cmp(0.99000001 < r4.y);
        r4.y = (int)r4.y | (int)r4.z;
        r11.x = r4.y ? 1.000000 : 0;
      } else {
        r11.x = 1;
      }
    } else {
      r11.x = 1;
    }
    if (cb1[9].z != 0) {
      r4.y = cb1[9].z;
      r4.z = 0;
      while (true) {
        r4.w = cmp((uint)r4.z >= asuint(cb1[9].z));
        if (r4.w != 0) break;
        r4.w = dot(cb1[10].xyzw, icb[r4.z+0].xyzw);
        r4.w = cmp(v4.w < r4.w);
        if (r4.w != 0) {
          r4.y = r4.z;
          break;
        }
        r4.z = (int)r4.z + 1;
      }
      r4.z = cmp((uint)r4.y < asuint(cb1[9].z));
      if (r4.z != 0) {
        r4.z = (uint)r4.y << 2;
        r12.xyzw = cb1[r4.z+12].xyzw * r2.yyyy;
        r12.xyzw = r2.xxxx * cb1[r4.z+11].xyzw + r12.xyzw;
        r12.xyzw = r2.zzzz * cb1[r4.z+13].xyzw + r12.xyzw;
        r12.xyzw = cb1[r4.z+14].xyzw + r12.xyzw;
        r13.xyzw = r12.xyxy / r12.wwww;
        r4.zw = cmp(r13.zw >= cb1[r4.y+27].xy);
        r6.xy = cmp(cb1[r4.y+27].zw >= r13.zw);
        r4.yz = r4.zw ? r6.xy : 0;
        r4.y = r4.z ? r4.y : 0;
        if (r4.y != 0) {
          r13.xyzw = r13.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r4.yz = frac(r13.zw);
          r13.xyzw = floor(r13.xyzw);
          r14.xyzw = float4(0.5,1.5,0.5,0.5) + r13.zwzw;
          r14.xyzw = cb1[31].zwzw * r14.xyzw;
          r15.x = t4.SampleLevel(s2_s, r14.xy, 0).x;
          r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
          r13.xyzw = cb1[31].zwzw * r13.xyzw;
          r15.y = t4.SampleLevel(s2_s, r13.xy, 0).x;
          r15.z = t4.SampleLevel(s2_s, r13.zw, 0).x;
          r15.w = t4.SampleLevel(s2_s, r14.zw, 0).x;
          r4.w = r12.z * 4000 + -1;
          r12.xyzw = saturate(r15.xyzw * float4(4000,4000,4000,4000) + -r4.wwww);
          r6.xy = r12.zy + -r12.wx;
          r4.yw = r4.yy * r6.xy + r12.wx;
          r4.w = r4.w + -r4.y;
          r4.y = r4.z * r4.w + r4.y;
        } else {
          r4.y = 1;
        }
      } else {
        r4.y = 1;
      }
    } else {
      r4.y = 1;
    }
    r10.x = 1;
    r4.z = dot(float4(1,1,1,1), r10.xyzw);
    r11.yzw = r10.yzw;
    r4.w = dot(r11.xyzw, float4(1,1,1,1));
    r4.w = -1 + r4.w;
    r4.z = r4.z * r4.w + 1;
    r4.w = saturate(v4.w * cb1[9].x + cb1[9].y);
    r4.w = r4.w * r4.w;
    r4.z = r4.z + -r4.y;
    r4.y = r4.w * r4.z + r4.y;
    r4.z = min(1, r4.y);
    r4.z = r4.y + r4.z;
    r4.z = cmp(0 < r4.z);
    if (r4.z != 0) {
      r4.z = dot(cb1[4].xyz, cb1[4].xyz);
      r4.z = rsqrt(r4.z);
      r10.xyz = cb1[4].xyz * r4.zzz;
      r4.z = dot(r0.xyz, r10.xyz);
      r4.w = saturate(r4.z);
      r5.x = max(cb0[226].y, r4.x);
      r6.x = dot(r0.xyz, r3.xyz);
      r6.y = dot(r3.xyz, r10.xyz);
      r10.x = r6.y * 2 + 2;
      r10.x = rsqrt(r10.x);
      r4.z = r6.x + r4.z;
      r4.z = saturate(r4.z * r10.x);
      r6.y = saturate(r10.x * r6.y + r10.x);
      r6.x = 9.99999975e-006 + abs(r6.x);
      r6.x = min(1, r6.x);
      r10.xyz = r7.xyz * r4.www;
      r10.xyz = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
      r10.w = r5.x * r5.x;
      r11.y = r10.w * r10.w;
      r11.z = r4.z * r11.y + -r4.z;
      r4.z = r11.z * r4.z + 1;
      r4.z = r4.z * r4.z;
      r4.z = 3.14159274 * r4.z;
      r4.z = r11.y / r4.z;
      r5.x = -r5.x * r5.x + 1;
      r11.y = r6.x * r5.x + r10.w;
      r5.x = r4.w * r5.x + r10.w;
      r5.x = r6.x * r5.x;
      r5.x = r4.w * r11.y + r5.x;
      r5.x = rcp(r5.x);
      r4.z = r5.x * r4.z;
      r5.x = 1 + -r6.y;
      r6.x = r5.x * r5.x;
      r6.x = r6.x * r6.x;
      r6.y = r6.x * r5.x;
      r10.w = saturate(50 * r9.y);
      r5.x = -r6.x * r5.x + 1;
      r9.x = r7.w;
      r11.yzw = r5.xxx * r9.xyz;
      r11.yzw = r10.www * r6.yyy + r11.yzw;
      r4.z = 0.5 * r4.z;
      r11.yzw = r4.zzz * r11.yzw;
      r11.yzw = r11.yzw * r4.www;
      r4.yzw = cb1[5].xyz * r4.yyy;
      r10.xyz = r10.xyz * r4.yzw;
      r4.yzw = r11.zwy * r4.zwy;
      r10.w = r4.w;
    } else {
      r4.yz = float2(0,0);
      r10.xyzw = float4(0,0,0,0);
    }
    r4.w = asuint(cb1[8].z) >> 8;
    r4.w = (int)r3.w & (int)r4.w;
    r10.xyzw = r4.wwww ? r10.xyzw : float4(0,0,0,0);
    r4.yz = r4.ww ? r4.yz : float2(0,0);
    r6.z = r11.x;
  } else {
    r10.xyzw = float4(0,0,0,0);
    r4.yz = float2(0,0);
  }
  r4.w = (uint)r0.w << 1;
  r4.w = t7.Load(r4.w).x;
  r4.w = min(asuint(cb1[0].x), (uint)r4.w);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r5.x = (((uint)r0.w << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r5.x = t7.Load(r5.x).x;
  r4.w = min(asuint(cb1[0].x), (uint)r4.w);
  r6.x = dot(-r3.xyz, r0.xyz);
  r6.x = r6.x + r6.x;
  r11.xyz = r0.xyz * -r6.xxx + -r3.xyz;
  r6.x = max(cb0[226].y, r4.x);
  r6.y = r6.x * r6.x;
  r6.x = -r6.x * r6.x + 1;
  r11.w = dot(r0.xyz, r3.xyz);
  r12.x = r11.w + r11.w;
  r12.y = r12.x * r11.w + -1;
  r12.z = 9.99999975e-006 + abs(r11.w);
  r12.z = min(1, r12.z);
  r13.xyz = float3(0.318309873,0.318309873,0.318309873) * r7.xyz;
  r12.w = r6.y * r6.y;
  r13.w = saturate(50 * r9.y);
  r14.y = 1;
  r9.w = r7.w;
  r15.xyz = r10.xyz;
  r16.x = r10.w;
  r16.yz = r4.yz;
  r7.w = 0;
  while (true) {
    r14.z = cmp((uint)r7.w >= (uint)r4.w);
    if (r14.z != 0) break;
    r14.z = (int)r5.x + (int)r7.w;
    r14.z = t8.Load(r14.z).x;
    r14.w = (int)r14.z * 6;
    r17.xyzw = t6.Load(r14.w).xyzw;
    r14.w = mad((int)r14.z, 6, 1);
    r18.xyzw = t6.Load(r14.w).xyzw;
    r19.xy = mad((int2)r14.zz, int2(6,6), int2(2,3));
    r20.xyzw = t6.Load(r19.x).xyzw;
    r19.xyzw = t6.Load(r19.y).xyzw;
    r14.w = cmp(r18.w == 0.000000);
    r15.w = cmp(-2 < r19.x);
    r17.xyz = r17.xyz + -r2.xyz;
    r16.w = dot(r17.xyz, r17.xyz);
    r21.x = rsqrt(r16.w);
    r21.xyz = r21.xxx * r17.xyz;
    r21.w = r17.w * r17.w;
    r16.w = r21.w * r16.w;
    r16.w = -r16.w * r16.w + 1;
    r16.w = max(0, r16.w);
    r16.w = r16.w * r16.w;
    r22.xyz = r17.xyz * r17.www;
    r17.w = dot(r22.xyz, r22.xyz);
    r17.w = min(1, r17.w);
    r17.w = 1 + -r17.w;
    r17.w = log2(r17.w);
    r17.w = r18.w * r17.w;
    r17.w = exp2(r17.w);
    r16.w = r14.w ? r16.w : r17.w;
    r17.w = dot(r21.xyz, r20.xyz);
    r17.w = r17.w + -r19.x;
    r17.w = saturate(r17.w * r19.y);
    r17.w = r17.w * r17.w;
    r17.w = r17.w * r16.w;
    r15.w = r15.w ? r17.w : r16.w;
    r16.w = cmp(0 < r15.w);
    if (r16.w != 0) {
      r16.w = (int)r20.w & 255;
      r16.w = r16.w ? 1 : 0;
      if (r16.w != 0) {
        r21.xyzw = (int4)r20.wwww & int4(1,2,4,8);
        r21.xyzw = r21.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r16.w = (uint)r20.w >> 4;
        if (1 == 0) r17.w = 0; else if (1+4 < 32) {         r17.w = (uint)r20.w << (32-(1 + 4)); r17.w = (uint)r17.w >> (32-1);        } else r17.w = (uint)r20.w >> 4;
        r22.x = r17.w ? 1 : 0;
        r20.xyz = (int3)r16.www & int3(2,4,8);
        r22.yzw = r20.xyz ? float3(1,1,1) : float3(0,0,0);
        r16.w = dot(r22.xyzw, float4(1,1,1,1));
        r17.w = dot(r21.xyzw, float4(1,1,1,1));
        r18.w = dot(r6.zwww, r21.xyzw);
        r18.w = -1 + r18.w;
        r17.w = r17.w * r18.w + 1;
        r19.xy = r17.ww * r16.ww;
      } else {
        r19.xy = float2(1,1);
      }
      r16.w = r19.x + r19.y;
      r16.w = cmp(0 < r16.w);
      if (r16.w != 0) {
        r14.z = mad((int)r14.z, 6, 4);
        r21.xyzw = t6.Load(r14.z).xyzw;
        r14.z = f16tof32(r19.w);
        r16.w = 0.5 * r14.z;
        r20.xyz = -r16.www * r21.xyz + r17.xyz;
        r17.xyz = r16.www * r21.xyz + r17.xyz;
        r16.w = cmp(0 < r14.z);
        if (r16.w != 0) {
          r17.w = dot(r20.xyz, r20.xyz);
          r18.w = dot(r17.xyz, r17.xyz);
          r17.w = rsqrt(r17.w);
          r18.w = rsqrt(r18.w);
          r19.y = r18.w * r17.w;
          r19.w = dot(r20.xyz, r17.xyz);
          r19.w = r19.w * r19.y;
          r21.x = r19.w * 0.5 + r19.y;
          r21.x = 0.5 + r21.x;
          r21.y = r19.y / r21.x;
          r19.y = dot(r0.xyz, r20.xyz);
          r21.z = dot(r0.xyz, r17.xyz);
          r18.w = r21.z * r18.w;
          r17.w = r19.y * r17.w + r18.w;
          r21.x = 0.5 * r17.w;
        } else {
          r17.w = dot(r20.xyz, r20.xyz);
          r18.w = 1 + r17.w;
          r21.y = rcp(r18.w);
          r17.w = rsqrt(r17.w);
          r22.xyz = r20.xyz * r17.www;
          r21.x = dot(r0.xyz, r22.xyz);
          r19.w = 1;
        }
        r17.w = cmp(0 < r19.z);
        r18.w = r19.z * r19.z;
        r18.w = saturate(r18.w * r21.y);
        r18.w = sqrt(r18.w);
        r19.y = cmp(r21.x < r18.w);
        r21.z = max(r21.x, -r18.w);
        r21.z = r21.z + r18.w;
        r21.z = r21.z * r21.z;
        r18.w = 4 * r18.w;
        r18.w = r21.z / r18.w;
        r18.w = r19.y ? r18.w : r21.x;
        r17.w = saturate(r17.w ? r18.w : r21.x);
        r14.w = r14.w ? r21.y : 1;
        r17.xyz = r17.xyz + -r20.xyz;
        r18.w = dot(r11.xyz, r17.xyz);
        r21.xyz = r18.www * r11.xyz + -r17.xyz;
        r19.y = dot(r20.xyz, r21.xyz);
        r18.w = r18.w * r18.w;
        r14.z = r14.z * r14.z + -r18.w;
        r14.z = saturate(r19.y / r14.z);
        r17.xyz = r14.zzz * r17.xyz + r20.xyz;
        r17.xyz = r16.www ? r17.xyz : r20.xyz;
        r14.z = dot(r17.xyz, r17.xyz);
        r14.z = rsqrt(r14.z);
        r17.xyz = r17.xyz * r14.zzz;
        r16.w = r19.z * r14.z;
        r16.w = saturate(r16.w * r6.x);
        r14.z = saturate(r21.w * r14.z);
        r18.w = dot(r0.xyz, r17.xyz);
        r17.x = dot(r3.xyz, r17.xyz);
        r17.y = r17.x * 2 + 2;
        r17.y = rsqrt(r17.y);
        r17.z = r18.w + r11.w;
        r17.z = saturate(r17.z * r17.y);
        r17.y = saturate(r17.y * r17.x + r17.y);
        r19.y = cmp(0 < r16.w);
        if (r19.y != 0) {
          r19.z = -r16.w * r16.w + 1;
          r19.z = sqrt(r19.z);
          r20.x = dot(r11.ww, r18.ww);
          r20.y = r20.x + -r17.x;
          r20.z = cmp(r20.y >= r19.z);
          if (r20.z != 0) {
            r17.z = 1;
            r17.y = abs(r11.w);
          } else {
            r20.z = -r20.y * r20.y + 1;
            r20.z = rsqrt(r20.z);
            r20.z = r20.z * r16.w;
            r21.x = -r20.y * r18.w + r11.w;
            r21.y = r21.x * r20.z;
            r20.y = -r20.y * r17.x + r12.y;
            r21.z = r18.w * r18.w;
            r21.z = -r11.w * r11.w + -r21.z;
            r21.z = 1 + r21.z;
            r21.z = -r17.x * r17.x + r21.z;
            r20.x = saturate(r20.x * r17.x + r21.z);
            r20.x = sqrt(r20.x);
            r20.xy = r20.zz * r20.xy;
            r21.z = r20.x * r11.w;
            r21.w = r21.z + r21.z;
            r22.x = r18.w * r19.z + r11.w;
            r20.z = r20.z * r21.x + r22.x;
            r21.x = r17.x * r19.z + r20.y;
            r21.x = 1 + r21.x;
            r22.yz = r21.xx * r20.xz;
            r22.w = r21.w * r20.z;
            r21.z = r20.z * r21.z;
            r21.z = 0.5 * r21.z;
            r21.z = r22.y * -0.5 + r21.z;
            r23.x = -r22.y * 2 + r22.w;
            r22.w = r23.x * r22.w;
            r22.y = r22.y * r22.y + r22.w;
            r22.w = r21.x * r21.x;
            r21.x = r17.x * r19.z + r21.x;
            r21.x = r21.x * -0.5 + -0.5;
            r21.xz = r22.zz * r21.xz;
            r21.x = r22.x * r22.w + r21.x;
            r20.z = r20.z * r21.x + r22.y;
            r21.x = r21.z + r21.z;
            r22.x = r21.z * r21.z;
            r22.x = r20.z * r20.z + r22.x;
            r21.x = r21.x / r22.x;
            r20.z = r21.x * r20.z;
            r21.x = -r21.x * r21.z + 1;
            r20.x = r20.z * r20.x;
            r20.x = r21.x * r21.y + r20.x;
            r20.z = r20.z * r21.w;
            r20.y = r21.x * r20.y + r20.z;
            r18.w = r18.w * r19.z + r20.x;
            r17.x = r17.x * r19.z + r20.y;
            r19.z = r17.x * 2 + 2;
            r19.z = rsqrt(r19.z);
            r18.w = r18.w + r11.w;
            r17.z = saturate(r18.w * r19.z);
            r17.y = saturate(r19.z * r17.x + r19.z);
          }
        }
        r14.w = r14.w * r17.w;
        r20.xyz = r14.www * r13.xyz;
        r17.x = cmp(0 < r14.z);
        r14.z = r14.z * r14.z;
        r18.w = r17.y * 3.5999999 + 0.400000006;
        r14.z = r14.z / r18.w;
        r14.z = r6.y * r6.y + r14.z;
        r14.z = min(1, r14.z);
        r14.x = r17.x ? r14.z : r12.w;
        r14.z = 0.25 * r16.w;
        r17.x = (uint)r14.x >> 1;
        r17.x = (int)r17.x + 0x1fbd1df5;
        r16.w = r17.x * 3 + r16.w;
        r14.z = r16.w * r14.z;
        r16.w = 0.00100000005 + r17.y;
        r14.z = r14.z / r16.w;
        r21.x = r14.x + r14.z;
        r21.y = r14.x / r21.x;
        r19.yz = r19.yy ? r21.xy : r14.xy;
        r14.z = cmp(r19.w < 1);
        r17.x = 1.00010002 + -r19.w;
        r18.w = 1 + r19.w;
        r17.x = r17.x / r18.w;
        r17.x = sqrt(r17.x);
        r18.w = 0.25 * r17.x;
        r19.w = (uint)r19.y >> 1;
        r19.w = (int)r19.w + 0x1fbd1df5;
        r17.x = r19.w * 3 + r17.x;
        r17.x = r18.w * r17.x;
        r16.w = r17.x / r16.w;
        r16.w = r19.y + r16.w;
        r16.w = r19.y / r16.w;
        r16.w = sqrt(r16.w);
        r16.w = r19.z * r16.w;
        r14.z = r14.z ? r16.w : r19.z;
        r16.w = r17.z * r14.x + -r17.z;
        r16.w = r16.w * r17.z + 1;
        r16.w = r16.w * r16.w;
        r16.w = 3.14159274 * r16.w;
        r16.w = r14.x / r16.w;
        r14.z = r16.w * r14.z;
        r14.x = sqrt(r14.x);
        r16.w = 1 + -r14.x;
        r17.x = r12.z * r16.w + r14.x;
        r14.x = r17.w * r16.w + r14.x;
        r14.x = r14.x * r12.z;
        r14.x = r17.w * r17.x + r14.x;
        r14.x = rcp(r14.x);
        r14.x = r14.z * r14.x;
        r14.z = 1 + -r17.y;
        r16.w = r14.z * r14.z;
        r16.w = r16.w * r16.w;
        r17.x = r16.w * r14.z;
        r14.z = -r16.w * r14.z + 1;
        r17.yzw = r14.zzz * r9.wyz;
        r17.xyz = r13.www * r17.xxx + r17.yzw;
        r14.x = 0.5 * r14.x;
        r17.xyz = r14.xxx * r17.xyz;
        r14.xzw = r17.xyz * r14.www;
        r17.xyz = r18.xyz * r15.www;
        r17.xyz = r17.xyz * r19.xxx;
        r18.xyz = r20.xyz * r17.xyz;
        r14.xzw = r17.xyz * r14.xzw;
      } else {
        r18.xyz = float3(0,0,0);
        r14.xzw = float3(0,0,0);
      }
    } else {
      r18.xyz = float3(0,0,0);
      r14.xzw = float3(0,0,0);
    }
    r15.w = (uint)r20.w >> 8;
    r15.w = (int)r3.w & (int)r15.w;
    r17.xyz = r18.xyz + r15.xyz;
    r14.xzw = r16.xyz + r14.xzw;
    r15.xyz = r15.www ? r17.xyz : r15.xyz;
    r16.xyz = r15.www ? r14.xzw : r16.xyz;
    r7.w = (int)r7.w + 1;
  }
  r4.yzw = r16.xyz + r15.xyz;
  r3.yzw = r12.xxx * r0.xyz + -r3.xyz;
  r11.w = saturate(r11.w);
  r0.w = (int)r0.w + asint(cb1[0].w);
  r5.x = (uint)r0.w << 1;
  r5.x = t7.Load(r5.x).x;
  r5.x = min(asuint(cb1[0].y), (uint)r5.x);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = t7.Load(r0.w).x;
  r6.x = max(0.00100000005, r4.x);
  r6.x = log2(r6.x);
  r6.x = -r6.x * 1.20000005 + 1;
  r6.y = -1 + cb0[195].z;
  r6.x = r6.y + -r6.x;
  r3.x = 0;
  r6.yzw = float3(0,0,0);
  r7.w = 1;
  r10.x = 0;
  while (true) {
    r10.y = cmp((uint)r10.x >= (uint)r5.x);
    if (r10.y != 0) break;
    r10.y = cmp(r7.w < 0.00100000005);
    if (r10.y != 0) {
      break;
    }
    r10.y = (int)r0.w + (int)r10.x;
    r10.y = t8.Load(r10.y).x;
    r11.xyz = -cb2[r10.y+0].xyz + r2.xyz;
    r10.z = dot(r11.xyz, r11.xyz);
    r10.w = sqrt(r10.z);
    r12.x = cmp(r10.w < cb2[r10.y+0].w);
    if (r12.x != 0) {
      r12.x = cmp(0 < cb2[r10.y+341].z);
      if (r12.x != 0) {
        r12.x = (uint)r10.y << 2;
        r12.yzw = cb2[r12.x+1024].xyz * r2.yyy;
        r12.yzw = r2.xxx * cb2[r12.x+1023].xyz + r12.yzw;
        r12.yzw = r2.zzz * cb2[r12.x+1025].xyz + r12.yzw;
        r12.yzw = cb2[r12.x+1026].xyz + r12.yzw;
        r13.xyz = cb2[r12.x+1024].xyz * r3.zzz;
        r13.xyz = r3.yyy * cb2[r12.x+1023].xyz + r13.xyz;
        r13.xyz = r3.www * cb2[r12.x+1025].xyz + r13.xyz;
        r13.xyz = rcp(r13.xyz);
        r14.xyz = -r12.yzw * r13.xyz + -r13.xyz;
        r13.xyz = -r12.yzw * r13.xyz + r13.xyz;
        r13.xyz = max(r14.xyz, r13.xyz);
        r12.x = min(r13.y, r13.z);
        r12.x = min(r13.x, r12.x);
        r13.xyz = r12.xxx * r3.yzw + r2.xyz;
        r14.xyz = cb2[r10.y+682].xyz + cb2[r10.y+0].xyz;
        r14.xyz = -r14.xyz + r13.xyz;
        r12.x = cb2[r10.y+2387].w * 0.699999988;
        r13.xyz = -cb2[r10.y+2387].www * float3(0.5,0.5,0.5) + cb2[r10.y+2387].xyz;
        r15.xyz = cb2[r10.y+2387].xyz * r12.yzw;
        r16.xyz = cmp(r15.xyz < -r13.xyz);
        r17.xyz = r12.yzw * cb2[r10.y+2387].xyz + r13.xyz;
        r17.xyz = abs(r17.xyz);
        r16.xyz = r16.xyz ? r17.xyz : 0;
        r15.xyz = cmp(r13.xyz < r15.xyz);
        r12.yzw = r12.yzw * cb2[r10.y+2387].xyz + -r13.xyz;
        r12.yzw = abs(r12.yzw);
        r12.yzw = r15.xyz ? r12.yzw : 0;
        r13.x = dot(r16.xyz, float3(1,1,1));
        r12.y = dot(r12.yzw, float3(1,1,1));
        r12.y = r13.x + r12.y;
        r12.x = 1 / r12.x;
        r12.x = saturate(r12.y * r12.x);
        r12.y = r12.x * -2 + 3;
        r12.x = r12.x * r12.x;
        r12.x = -r12.y * r12.x + 1;
      } else {
        r10.w = saturate(r10.w / cb2[r10.y+0].w);
        r13.x = dot(r3.yzw, r11.xyz);
        r10.z = -cb2[r10.y+0].w * cb2[r10.y+0].w + r10.z;
        r10.z = r13.x * r13.x + -r10.z;
        r13.y = cmp(r10.z >= 0);
        r10.z = sqrt(r10.z);
        r10.z = r10.z + -r13.x;
        r11.xyz = r10.zzz * r3.yzw + r11.xyz;
        r15.yzw = -cb2[r10.y+682].xyz + r11.xyz;
        r10.z = r10.w * 2.5 + -1.5;
        r10.z = max(0, r10.z);
        r10.w = r10.z * r10.z;
        r10.z = -r10.z * 2 + 3;
        r15.x = -r10.w * r10.z + 1;
        r12.xyzw = r13.yyyy ? r15.xyzw : r3.xyzw;
        r14.xyz = r12.yzw;
      }
      r14.w = cb2[r10.y+341].y;
      r14.xyzw = t9.SampleLevel(s4_s, r14.xyzw, r6.x).xyzw;
      r10.yzw = cb2[r10.y+341].xxx * r14.xyz;
      r10.yzw = r10.yzw * r12.xxx;
      r6.yzw = r10.yzw * r7.www + r6.yzw;
      r10.y = -r14.w * r12.x + 1;
      r7.w = r10.y * r7.w;
    }
    r10.x = (int)r10.x + 1;
  }
  r6.xyz = cb0[157].xyz * r6.yzw;
  r0.w = saturate(r4.x * cb0[197].x + cb0[197].y);
  r3.x = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r3.x * r0.w;
  r3.x = min(0, cb0[197].z);
  r3.x = -1 + r3.x;
  r0.w = r0.w * r3.x + 1;
  r6.xyz = r6.xyz * r0.www;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r10.xy = r0.ww * float2(32.6650009,11.8149996) + v4.xy;
    r0.w = dot(r10.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r10.xyzw = cb0[1].xyzw * r1.yyyy;
    r10.xyzw = r1.xxxx * cb0[0].xyzw + r10.xyzw;
    r10.xyzw = r1.zzzz * cb0[2].xyzw + r10.xyzw;
    r10.xyzw = cb0[3].xyzw + r10.xyzw;
    r3.xyz = r3.yzw * v4.www + r1.xyz;
    r12.xyzw = cb0[1].xyzw * r3.yyyy;
    r12.xyzw = r3.xxxx * cb0[0].xyzw + r12.xyzw;
    r3.xyzw = r3.zzzz * cb0[2].xyzw + r12.xyzw;
    r3.xyzw = cb0[3].xyzw + r3.xyzw;
    r5.x = rcp(r10.w);
    r11.xyz = r10.xyz * r5.xxx;
    r3.w = rcp(r3.w);
    r10.xy = v4.ww * cb0[30].zw + r10.zw;
    r5.x = rcp(r10.y);
    r3.xyz = r3.xyz * r3.www + -r11.xyz;
    r3.w = dot(r3.xy, r3.xy);
    r3.w = sqrt(r3.w);
    r6.w = 0.5 * r3.w;
    r10.yz = r11.xy * r6.ww + r3.xy;
    r10.yz = -r3.ww * float2(0.5,0.5) + abs(r10.yz);
    r10.yz = max(float2(0,0), r10.yz);
    r10.yz = r10.yz / abs(r3.xy);
    r10.yz = float2(1,1) + -r10.yz;
    r3.w = min(r10.y, r10.z);
    r3.w = r3.w / r6.w;
    r3.xyz = r3.xyz * r3.www;
    r3.w = -r10.x * r5.x + r11.z;
    r3.w = 4 * r3.w;
    r3.w = max(abs(r3.z), r3.w);
    r10.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xy = cb1[176].xy * r10.xy;
    r3.xy = cb1[176].xy * r3.xy;
    r5.x = 0.0833333358 * r3.w;
    r3.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r3.xyz;
    r10.xyz = r3.xyz * r0.www + r11.xyz;
    r0.w = 1;
    r11.x = 0;
    r13.x = 0;
    r12.xyz = float3(0,0,0);
    r6.w = 0;
    r7.w = 0;
    r10.w = 0;
    r14.xy = float2(0,0);
    while (true) {
      r14.z = cmp((uint)r14.y >= 12);
      if (r14.z != 0) break;
      r14.z = (uint)r14.y;
      r15.xyzw = float4(1,2,3,4) + r14.zzzz;
      r16.xyzw = r15.xxxy * r3.xyzz + r10.xyzz;
      r17.xyzw = r15.yyzz * r3.xyxy + r10.xyxy;
      r15.xyzw = r15.wwzw * r3.xyzz + r10.xyzz;
      r14.z = r4.x * 0.666666687 + r0.w;
      r14.w = r4.x * 0.666666687 + r14.z;
      r18.x = t13.SampleLevel(s6_s, r16.xy, r0.w).x;
      r18.y = t13.SampleLevel(s6_s, r17.xy, r0.w).x;
      r18.z = t13.SampleLevel(s6_s, r17.zw, r14.z).x;
      r18.w = t13.SampleLevel(s6_s, r15.xy, r14.z).x;
      r15.xy = r16.zw;
      r15.xyzw = r15.xyzw + -r18.xyzw;
      r16.xyzw = r3.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r15.xyzw;
      r16.xyzw = cmp(abs(r16.xyzw) < r5.xxxx);
      r17.xy = (int2)r16.zw | (int2)r16.xy;
      r14.z = (int)r17.y | (int)r17.x;
      if (r14.z != 0) {
        r13.x = r15.x;
        r12.xyz = r15.yzw;
        r6.w = r16.x;
        r7.w = r16.y;
        r10.w = r16.z;
        r14.x = -1;
        break;
      }
      r11.x = r15.w;
      r14.y = (int)r14.y + 4;
      r0.w = r14.w;
      r13.x = r15.x;
      r12.xyz = r15.yzw;
      r6.w = r16.x;
      r7.w = r16.y;
      r10.w = r16.z;
      r14.xy = r14.zy;
    }
    if (r14.x != 0) {
      r12.w = 2;
      r15.xy = r12.yz;
      r15.z = 3;
      r12.yzw = r10.www ? r12.xyw : r15.xyz;
      r13.y = r12.x;
      r13.z = 1;
      r12.xyz = r7.www ? r13.xyz : r12.yzw;
      r11.y = r13.x;
      r11.z = 0;
      r11.xyz = r6.www ? r11.xyz : r12.xyz;
      r0.w = (uint)r14.y;
      r0.w = r11.z + r0.w;
      r3.w = r11.x + -r11.y;
      r3.w = saturate(r11.x / r3.w);
      r0.w = r3.w + r0.w;
      r3.xyz = r3.xyz * r0.www + r10.xyz;
      r3.xy = cb1[176].zw * r3.xy;
      r3.xy = r3.xy * float2(2,-2) + float2(-1,1);
      r3.xy = cb0[66].xy * r3.xy;
      r3.xy = r3.xy / cb0[66].xy;
      r10.xyz = cb0[123].xyw * r3.yyy;
      r10.xyz = r3.xxx * cb0[122].xyw + r10.xyz;
      r10.xyz = r3.zzz * cb0[124].xyw + r10.xyz;
      r10.xyz = cb0[125].xyw + r10.xyz;
      r3.zw = r10.xy / r10.zz;
      r10.xy = r3.zw * cb1[177].xy + cb1[177].zw;
      r3.xy = saturate(abs(r3.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r3.xy, r3.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r3.xy = saturate(abs(r3.zw) * float2(5,5) + float2(-4,-4));
      r3.x = dot(r3.xy, r3.xy);
      r3.x = 1 + -r3.x;
      r3.x = max(0, r3.x);
      r0.w = min(r3.x, r0.w);
      r3.xyz = t14.SampleLevel(s7_s, r10.xy, 0).xyz;
      r3.xyz = min(float3(0,0,0), -r3.xyz);
      r3.w = saturate(-r4.x * 6.5999999 + 2);
      r0.w = r3.w * r0.w;
      r3.w = 1;
      r3.xyz = -r3.xyz * r0.www;
      r3.xyz = cb1[178].xxx * r3.xyz;
      r0.w = -r3.w * r0.w + 1;
      r6.xyz = r6.xyz * r0.www + r3.xyz;
    }
  }
  r3.xyzw = r4.xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r3.x * r3.x;
  r5.x = -9.27999973 * r11.w;
  r5.x = exp2(r5.x);
  r0.w = min(r5.x, r0.w);
  r0.w = r0.w * r3.x + r3.y;
  r3.xy = r0.ww * float2(-1.03999996,1.03999996) + r3.zw;
  r9.xyz = r9.wyz;
  r0.w = r13.w * r3.y;
  r3.xyz = r9.xyz * r3.xxx + r0.www;
  r0.w = dot(cb1[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r2.w = -1;
    r0.w = dot(cb1[122].xyzw, r2.xyzw);
    r0.w = saturate(abs(r0.w) * cb1[129].x + cb1[129].y);
    r0.w = 1 + -r0.w;
    r10.xyz = -cb1[123].xyz + r2.xyz;
    r2.w = dot(r10.xyz, cb1[124].xyz);
    r2.w = cb1[124].w + -abs(r2.w);
    r2.w = saturate(cb1[129].x * r2.w);
    r3.w = dot(r10.xyz, cb1[125].xyz);
    r3.w = cb1[125].w + -abs(r3.w);
    r3.w = saturate(cb1[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb1[122].xyz, r0.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
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
      r2.w = dot(r10.xyz, -cb1[122].xyz);
      r2.w = r2.w + r2.w;
      r10.xyz = cb1[122].xyz * r2.www + r10.xyz;
      r11.xyz = cb1[127].xyz * r0.yyy;
      r11.xyz = r0.xxx * cb1[126].xyz + r11.xyz;
      r0.xyz = r0.zzz * cb1[128].xyz + r11.xyz;
      r2.w = dot(r10.xyz, r0.xyz);
      r2.w = r2.w + r2.w;
      r0.xyz = r0.xyz * -r2.www + r10.xyz;
      r0.xyz = r0.xyz * cb1[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r10.xyz = cb0[13].xyz * r0.yyy;
      r10.xyz = r0.xxx * cb0[12].xyz + r10.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r10.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r2.w = asuint(cb0[197].w) << 2;
      r10.xyz = cb1[r2.w+132].xyw * r0.yyy;
      r10.xyz = r0.xxx * cb1[r2.w+131].xyw + r10.xyz;
      r0.xyz = r0.zzz * cb1[r2.w+133].xyw + r10.xyz;
      r0.xyz = cb1[r2.w+134].xyw + r0.xyz;
      r2.w = cb1[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb1[141].xy, r0.xy);
      r0.xy = min(cb1[141].xy, r0.xy);
      r0.xy = r0.xy * cb1[r2.w+139].xy + cb1[r2.w+139].zw;
      r10.xyzw = t10.SampleLevel(s4_s, r0.xy, 0).xyzw;
      r0.x = r10.w * r0.w;
    } else {
      r10.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r6.xyz = r0.xxx * r6.xyz + r10.xyz;
  }
  r0.xyz = r6.xyz * r3.xyz;
  r3.xyz = r9.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r9.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r9.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r0.xyz * r3.xyz + r4.yzw;
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
    r10.xyz = t11.SampleLevel(s5_s, r6.xyz, 0).xyz;
    r6.xyz = t11.SampleLevel(s5_s, r6.xyz, cb1[150].z).xyz;
    r10.xyz = r10.xyz + -r6.xyz;
    r4.xzw = r4.xxx * r10.xyz + r6.xyz;
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
    r4.xyzw = t12.SampleLevel(s0_s, r6.xyz, 0).xyzw;
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
    r10.z = sqrt(r4.z);
    r4.z = cb0[181].y * r10.z;
    r4.w = cmp(r4.z < 0.707106769);
    r4.z = dot(r4.zz, r4.zz);
    r4.z = min(1, r4.z);
    r4.z = r4.w ? r4.z : 1;
    r2.w = rsqrt(r2.w);
    r6.xyz = r6.xyz * r2.www;
    r2.w = -r6.z * r6.z + 1;
    r2.w = sqrt(r2.w);
    r11.y = r6.z * 0.5 + 0.5;
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
    r11.x = 0.159154937 * r2.w;
    r6.xy = cb0[180].zw * float2(0.5,0.5) + r11.xy;
    r6.zw = float2(1,1) + cb0[180].xy;
    r6.zw = cb0[180].xy / r6.zw;
    r6.xy = r6.xy * r6.zw;
    r10.xy = r1.ww ? r6.xy : r4.xy;
    r6.xyzw = t3.SampleLevel(s1_s, r10.xyz, 0).xyzw;
    r4.xyw = r6.xyz * r4.zzz;
    r1.w = 1 + -r6.w;
    r1.w = -r4.z * r1.w + 1;
    r4.xyz = cb0[135].zzz * r4.xyw;
    r3.yzw = r4.xyz * r3.xxx + r3.yzw;
    r3.x = r3.x * r1.w;
  }
  r4.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r7.xyz;
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
  r0.xyz = r8.xyz + r0.xyz;
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