// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t19 : register(t19);

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

struct t1_t {
  float val[4];
};
StructuredBuffer<t1_t> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

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
  float4 v3 : TEXCOORD4,
  nointerpolation uint v4 : PRIMITIVE_ID0,
  nointerpolation uint w4 : LIGHTMAP_ID0,
  float4 v5 : SV_Position0,
  uint v6 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.xyz * v0.zxy;
  r0.xyz = v1.zxy * v0.xyz + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xyzw = cb0[45].xyzw * v5.yyyy;
  r1.xyzw = v5.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v5.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r4.xyzw = mad((int4)v4.xyyy, int4(36,15,15,15), int4(4,4,6,5));
  r0.w = t0[r4.x].val[12/4];
  r0.w = cb0[141].w * r0.w;
  r3.w = v6.x ? 1 : -1;
  r0.w = r3.w * r0.w;
  r3.w = cb5[42].x * v2.y + cb5[42].y;
  r4.x = -cb5[42].z * r3.w + 1;
  r5.x = -cb5[42].w + r2.z;
  r5.x = abs(r5.x) / cb5[43].x;
  r5.x = -r5.x * cb5[43].y + 1;
  r5.y = -r4.x * r5.x + 1;
  r5.x = v2.x;
  r5.zw = r5.xy * cb5[2].xy + float2(0.200000003,0.200000003);
  r4.x = cb3[2].x * cb0[142].z;
  r4.x = cb5[44].x * r4.x;
  r6.xy = cb5[3].xy * r4.xx;
  r5.zw = r6.xy * float2(0.699999988,0.699999988) + r5.zw;
  r7.y = t15.SampleBias(s9_s, r5.zw, cb0[143].y).x;
  r7.xw = float2(0,1);
  r6.zw = cb5[45].xx * r7.xy;
  r4.x = frac(cb0[142].z);
  r7.xy = r6.zw * r4.xx + r5.zw;
  r8.xyz = t15.SampleBias(s9_s, r7.xy, cb0[143].y).xyz;
  r7.x = 0.5 + cb0[142].z;
  r7.x = frac(r7.x);
  r5.zw = r6.zw * r7.xx + r5.zw;
  r9.xyz = t15.SampleBias(s9_s, r5.zw, cb0[143].y).xyz;
  r5.z = r7.x + r7.x;
  r5.w = max(1, r5.z);
  r5.w = -1 + r5.w;
  r5.w = r5.w + r5.w;
  r5.zw = min(float2(1,1), r5.zw);
  r5.w = 1 + -r5.w;
  r5.z = r5.z + r5.z;
  r5.z = min(1, r5.z);
  r5.z = r5.w * r5.z;
  r9.xyz = r9.xyz + -r8.xyz;
  r8.xyz = r5.zzz * r9.xyz + r8.xyz;
  r9.xyz = r8.xyz + r8.xyz;
  r8.xzw = -r8.xyz * float3(2,2,2) + float3(0,0,1);
  r10.xyz = cb5[45].yyy * r8.xzw + r9.xyz;
  r5.w = 1 + r10.z;
  r5.xy = r5.xy * cb5[1].xy + r6.xy;
  r6.xy = r6.zw * r4.xx + r5.xy;
  r11.xyz = t15.SampleBias(s9_s, r6.xy, cb0[143].y).xyz;
  r5.xy = r6.zw * r7.xx + r5.xy;
  r6.xyz = t15.SampleBias(s9_s, r5.xy, cb0[143].y).xyz;
  r6.xyz = r6.xyz + -r11.xyz;
  r5.xyz = r5.zzz * r6.xyz + r11.xyz;
  r6.xyz = r5.xyz + r5.xyz;
  r11.xyz = -r5.xyz * float3(2,2,2) + float3(0,0,1);
  r12.xyz = cb5[45].zzz * r11.xyz + r6.xyz;
  r10.w = 1 + r10.z;
  r12.xyz = float3(-1,-1,1) * r12.xyz;
  r4.x = dot(r10.xyw, r12.xyz);
  r5.yzw = r12.xyz * r5.www;
  r5.yzw = r10.xyw * r4.xxx + -r5.yzw;
  r10.xyz = float3(0,0,1) + -r5.yzw;
  r5.yzw = cb5[45].www * r10.xyz + r5.yzw;
  r4.x = cb5[6].y + v2.y;
  r4.x = r4.x * cb5[47].w + -cb5[47].w;
  r4.x = saturate(cb5[48].z + r4.x);
  r6.w = cb5[49].y * r4.x;
  r4.x = -cb5[49].y * r4.x + 1;
  r4.x = cb5[49].w * r4.x + r6.w;
  r5.yzw = float3(-1,-1,-1) + r5.yzw;
  r5.yzw = r4.xxx * r5.yzw + float3(1,1,1);
  r5.yzw = r5.yzw * cb0[138].www + cb0[138].xyz;
  r6.w = dot(r5.yzw, r5.yzw);
  r6.w = rsqrt(r6.w);
  r5.yzw = r6.www * r5.yzw;
  r0.xyz = r5.zzz * r0.xyz;
  r0.xyz = r5.yyy * v0.yzx + r0.xyz;
  r0.xyz = r5.www * v1.yzx + r0.xyz;
  r5.y = dot(r0.xyz, r0.xyz);
  r5.y = rsqrt(r5.y);
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r0.xyz * r0.www;
  r5.y = cb0[142].z * cb5[51].x + v2.x;
  r7.x = cb5[52].y * r5.y;
  r5.y = cb0[142].z * cb5[52].z + v2.y;
  r7.y = cb5[52].w * r5.y;
  r5.y = cb0[142].z * cb5[54].x + v2.x;
  r10.x = cb5[55].y * r5.y;
  r5.y = cb0[142].z * cb5[55].z + v2.y;
  r10.y = cb5[55].w * r5.y;
  r5.y = t16.SampleBias(s10_s, r10.xy, cb0[143].y).z;
  r5.y = -0.5 + r5.y;
  r5.y = r5.y + r5.y;
  r5.zw = r5.yy * cb5[56].yy + r7.xy;
  r5.z = t17.SampleBias(s11_s, r5.zw, cb0[143].y).x;
  r5.w = cmp(0 >= r5.z);
  r5.z = log2(r5.z);
  r5.z = cb5[56].z * r5.z;
  r5.z = exp2(r5.z);
  r10.xyz = cb5[14].xyz * r5.zzz;
  r10.xyz = r5.www ? float3(0,0,0) : r10.xyz;
  r12.xyz = cb4[6].xyz * cb5[58].yyy + cb5[18].xyz;
  r5.z = dot(cb4[7].yzx, r0.xyz);
  r5.w = saturate(r5.z);
  r5.w = 1 + -r5.w;
  r6.w = cb0[142].z * cb5[59].z + v2.x;
  r7.x = cb5[60].w * r6.w;
  r6.w = cb0[142].z * cb5[61].x + v2.y;
  r7.y = cb5[61].y * r6.w;
  r6.w = cb0[142].z * cb5[62].z + v2.x;
  r13.x = cb5[63].w * r6.w;
  r6.w = cb0[142].z * cb5[64].x + v2.y;
  r13.y = cb5[64].y * r6.w;
  r13.xy = t16.SampleBias(s10_s, r13.xy, cb0[143].y).xy;
  r13.xy = float2(-0.5,-0.5) + r13.xy;
  r13.xy = cb5[64].ww * r13.xy;
  r7.xy = r13.xy * float2(2,2) + r7.xy;
  r6.w = t18.SampleBias(s12_s, r7.xy, cb0[143].y).x;
  r13.xyz = -cb5[28].xyz + cb5[27].xyz;
  r13.xyz = r6.www * r13.xyz + cb5[28].xyz;
  r14.xyz = cb5[30].xyz * r13.xyz;
  r13.xyz = r13.xyz * cb5[32].xyz + -r14.xyz;
  r13.xyz = r4.xxx * r13.xyz + r14.xyz;
  r14.xyz = -r13.xyz * cb5[65].xxx + r13.xyz;
  r14.xyz = cb4[6].xyz * r14.xyz;
  r14.xyz = r14.xyz * r5.zzz;
  r9.xyz = cb5[65].yyy * r8.xzw + r9.xyz;
  r5.z = 1 + r9.z;
  r6.xyz = cb5[65].zzz * r11.xyz + r6.xyz;
  r9.w = 1 + r9.z;
  r6.xyz = float3(-1,-1,1) * r6.xyz;
  r6.w = dot(r9.xyw, r6.xyz);
  r6.xyz = r6.xyz * r5.zzz;
  r6.xyz = r9.xyw * r6.www + -r6.xyz;
  r5.z = dot(r6.xyz, r6.xyz);
  r5.z = sqrt(r5.z);
  r6.xyz = r6.xyz / r5.zzz;
  r5.z = saturate(dot(r6.xyz, cb4[7].xyz));
  r8.xzw = cb0[67].xyz + -r2.xyz;
  r6.w = dot(r8.xzw, r8.xzw);
  r6.w = sqrt(r6.w);
  r8.xzw = r8.xzw / r6.www;
  r8.xzw = cb4[7].xyz + r8.xzw;
  r6.w = dot(r8.xzw, r8.xzw);
  r6.w = sqrt(r6.w);
  r8.xzw = r8.xzw / r6.www;
  r6.x = saturate(dot(r8.xzw, r6.xyz));
  r6.y = 11 * cb5[66].x;
  r6.y = exp2(r6.y);
  r6.z = cmp(0 >= r6.x);
  r6.x = log2(r6.x);
  r6.x = r6.y * r6.x;
  r6.x = exp2(r6.x);
  r5.z = r6.x * r5.z;
  r5.z = cb5[66].y * r5.z;
  r6.xyw = cb4[5].xyz * r5.zzz;
  r6.xyz = r6.zzz ? float3(0,0,0) : r6.xyw;
  r6.xyz = r14.xyz * float3(0.318309844,0.318309844,0.318309844) + r6.xyz;
  r6.xyz = r12.xyz * r5.www + r6.xyz;
  r6.xyz = r10.xyz * r6.xyz;
  r8.xzw = cb5[32].xyz + -cb5[30].xyz;
  r8.xzw = r4.xxx * r8.xzw + cb5[30].xyz;
  r9.xyz = r8.xzw * r6.xyz;
  r6.xyz = -r6.xyz * r8.xzw + cb5[33].xyz;
  r6.xyz = cb5[66].zzz * r6.xyz + r9.xyz;
  r8.xzw = saturate(cb5[35].xyz * r13.xyz);
  r4.x = saturate(cb5[67].w * r3.w);
  r3.w = 1 + -r3.w;
  r3.w = saturate(cb5[68].z * r3.w);
  r3.w = r4.x * r3.w;
  r4.x = r5.x + -r8.y;
  r4.x = r4.x * cb5[46].y + v2.x;
  r4.x = r4.x * 2 + -1;
  r4.x = 1 + -abs(r4.x);
  r4.x = r4.x * cb5[69].x + -cb5[69].x;
  r4.x = saturate(cb5[69].z + r4.x);
  r4.x = cb5[69].w * r4.x;
  r5.x = cb0[142].z * cb5[71].x + v2.x;
  r7.x = cb5[72].y * r5.x;
  r5.x = cb0[142].z * cb5[72].z + v2.y;
  r7.y = cb5[72].w * r5.x;
  r5.xz = r5.yy * cb5[73].yy + r7.xy;
  r5.x = t19.SampleBias(s13_s, r5.xz, cb0[143].y).x;
  r5.z = cmp(0 >= r5.x);
  r5.x = log2(r5.x);
  r5.x = cb5[73].z * r5.x;
  r5.x = exp2(r5.x);
  r5.x = r5.z ? 0 : r5.x;
  r5.z = cb0[142].z * cb5[74].w + v2.x;
  r7.x = cb5[76].x * r5.z;
  r5.z = cb0[142].z * cb5[76].y + v2.y;
  r7.y = cb5[76].z * r5.z;
  r5.yz = r5.yy * cb5[56].yy + r7.xy;
  r5.y = t15.SampleBias(s9_s, r5.yz, cb0[143].y).x;
  r5.z = -0.100000001 + v2.x;
  r5.w = 0.899999976 + -v2.x;
  r5.z = min(r5.z, r5.w);
  r5.y = r5.z * 5 + r5.y;
  r5.x = r5.x * r5.y;
  r5.x = r5.x * cb5[69].x + -cb5[69].x;
  r5.x = saturate(cb5[69].z + r5.x);
  r4.x = r5.x * r4.x;
  r5.w = saturate(r4.x * r3.w);
  r3.w = saturate(cb5[65].x);
  r4.x = saturate(cb5[66].w);
  r6.w = saturate(cb5[67].x);
  r6.w = r6.w * cb0[139].y + cb0[139].x;
  r7.x = 0.0799999982 * r4.x;
  r9.xyz = -r4.xxx * float3(0.0799999982,0.0799999982,0.0799999982) + r8.xzw;
  r9.xyz = r3.www * r9.xyz + r7.xxx;
  r10.xyz = -r8.xzw * r3.www + r8.xzw;
  r10.xyz = r10.xyz * cb0[136].www + cb0[136].xyz;
  r9.xyz = r9.xyz * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r11.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r11.w = 0;
  r10.w = r9.x;
  r10.xyzw = r3.wwww ? r11.xyzw : r10.xyzw;
  r9.yz = r3.ww ? float2(0,0) : r9.yz;
  r7.xy = float2(1,0.5) * v3.xy;
  r11.xy = v3.xy * float2(1,0.5) + float2(0,0.5);
  r12.xyzw = t14.Sample(s8_s, r7.xy).xyzw;
  r11.xyzw = t14.Sample(s8_s, r11.xy).xyzw;
  r3.w = r11.w * 0.00392156886 + r12.w;
  r3.w = -0.00196078443 + r3.w;
  r13.x = t1[r4.y].val[0/4];
  r13.y = t1[r4.y].val[0/4+1];
  r13.z = t1[r4.y].val[0/4+2];
  r13.w = t1[r4.y].val[0/4+3];
  r14.x = t1[r4.z].val[0/4];
  r14.y = t1[r4.z].val[0/4+1];
  r14.z = t1[r4.z].val[0/4+2];
  r14.w = t1[r4.z].val[0/4+3];
  r3.w = r3.w * r13.w + r14.w;
  r4.xyz = r12.xyz * r12.xyz;
  r4.xyz = r4.xyz * r13.xyz + r14.xyz;
  r3.w = exp2(r3.w);
  r3.w = -0.0185813606 + r3.w;
  r12.x = t1[r4.w].val[0/4];
  r12.y = t1[r4.w].val[0/4+1];
  r12.z = t1[r4.w].val[0/4+2];
  r12.w = t1[r4.w].val[0/4+3];
  r7.xy = mad((int2)w4.xx, int2(15,36), int2(7,23));
  r13.x = t1[r7.x].val[0/4];
  r13.y = t1[r7.x].val[0/4+1];
  r13.z = t1[r7.x].val[0/4+2];
  r13.w = t1[r7.x].val[0/4+3];
  r11.xyzw = r11.xyzw * r12.xyzw + r13.xyzw;
  r0.w = 1;
  r0.w = dot(r11.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r3.w * r0.w;
  r4.xyz = r0.www * r4.xyz;
  r4.xyz = cb0[157].xyz * r4.xyz;
  r0.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.xyz = r4.xyz * r10.xyz;
  r11.xyz = r8.xzw * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r11.xyz = r8.xzw * float3(-4.79510021,-4.79510021,-4.79510021) + r11.xyz;
  r8.xyz = r8.xzw * float3(2.75519991,2.75519991,2.75519991) + r11.xyz;
  r8.xyz = float3(1.33200002,1.33200002,1.33200002) + r8.xyz;
  r8.xyz = max(float3(1,1,1), r8.xyz);
  r11.xy = -cb0[129].xy + v5.xy;
  r11.xy = cb0[131].zw * r11.xy;
  r11.xy = (uint2)r11.xy;
  r3.w = v5.w * cb1[3].x + cb1[3].y;
  r3.w = log2(r3.w);
  r3.w = cb1[3].z * r3.w;
  r3.w = max(0, r3.w);
  r3.w = (uint)r3.w;
  r4.w = asint(cb1[1].z) + -1;
  r3.w = min((uint)r4.w, (uint)r3.w);
  r11.xy = (uint2)r11.xy >> asuint(cb1[2].xx);
  r3.w = mad((int)r3.w, asint(cb1[1].y), (int)r11.y);
  r3.w = mad((int)r3.w, asint(cb1[1].x), (int)r11.x);
  r4.w = t0[r7.y].val[12/4];
  if (cb1[0].z != 0) {
    r11.xyz = asint(cb1[8].zzz) & int3(2,4,8);
    r11.yzw = r11.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb1[48].y != 0) {
      r12.xyzw = cb1[51].xyzw * r2.yyyy;
      r12.xyzw = r2.xxxx * cb1[50].xyzw + r12.xyzw;
      r12.xyzw = r2.zzzz * cb1[52].xyzw + r12.xyzw;
      r12.xyzw = cb1[53].xyzw + r12.xyzw;
      r7.xy = r12.xy / r12.ww;
      r12.xy = cmp(r7.xy >= float2(0,0));
      r13.xy = cmp(float2(1,1) >= r7.xy);
      r12.xy = r12.xy ? r13.xy : 0;
      r8.w = r12.y ? r12.x : 0;
      if (r8.w != 0) {
        r7.x = t4.SampleLevel(s3_s, r7.xy, 0).x;
        r7.y = cmp(r12.z < r7.x);
        r7.x = cmp(0.99000001 < r7.x);
        r7.x = (int)r7.x | (int)r7.y;
        r7.x = r7.x ? 1.000000 : 0;
      } else {
        r7.x = 1;
      }
    } else {
      r7.x = 1;
    }
    if (cb1[9].z != 0) {
      r7.y = cb1[9].z;
      r8.w = 0;
      while (true) {
        r12.x = cmp((uint)r8.w >= asuint(cb1[9].z));
        if (r12.x != 0) break;
        r12.x = dot(cb1[10].xyzw, icb[r8.w+0].xyzw);
        r12.x = cmp(v5.w < r12.x);
        if (r12.x != 0) {
          r7.y = r8.w;
          break;
        }
        r8.w = (int)r8.w + 1;
      }
      r8.w = cmp((uint)r7.y < asuint(cb1[9].z));
      if (r8.w != 0) {
        r8.w = (uint)r7.y << 2;
        r12.xyzw = cb1[r8.w+12].xyzw * r2.yyyy;
        r12.xyzw = r2.xxxx * cb1[r8.w+11].xyzw + r12.xyzw;
        r12.xyzw = r2.zzzz * cb1[r8.w+13].xyzw + r12.xyzw;
        r12.xyzw = cb1[r8.w+14].xyzw + r12.xyzw;
        r13.xyzw = r12.xyxy / r12.wwww;
        r12.xy = cmp(r13.zw >= cb1[r7.y+27].xy);
        r14.xy = cmp(cb1[r7.y+27].zw >= r13.zw);
        r12.xy = r12.xy ? r14.xy : 0;
        r7.y = r12.y ? r12.x : 0;
        if (r7.y != 0) {
          r13.xyzw = r13.xyzw * cb1[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r12.xy = frac(r13.zw);
          r13.xyzw = floor(r13.xyzw);
          r14.xyzw = float4(0.5,1.5,0.5,0.5) + r13.zwzw;
          r14.xyzw = cb1[31].zwzw * r14.xyzw;
          r15.x = t3.SampleLevel(s2_s, r14.xy, 0).x;
          r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
          r13.xyzw = cb1[31].zwzw * r13.xyzw;
          r15.y = t3.SampleLevel(s2_s, r13.xy, 0).x;
          r15.z = t3.SampleLevel(s2_s, r13.zw, 0).x;
          r15.w = t3.SampleLevel(s2_s, r14.zw, 0).x;
          r7.y = r12.z * 4000 + -1;
          r13.xyzw = saturate(r15.xyzw * float4(4000,4000,4000,4000) + -r7.yyyy);
          r12.zw = r13.zy + -r13.wx;
          r12.xz = r12.xx * r12.zw + r13.wx;
          r7.y = r12.z + -r12.x;
          r7.y = r12.y * r7.y + r12.x;
        } else {
          r7.y = 1;
        }
      } else {
        r7.y = 1;
      }
    } else {
      r7.y = 1;
    }
    r11.x = 1;
    r8.w = dot(float4(1,1,1,1), r11.xyzw);
    r11.x = -1 + r7.x;
    r8.w = r8.w * r11.x + 1;
    r11.x = saturate(v5.w * cb1[9].x + cb1[9].y);
    r11.x = r11.x * r11.x;
    r8.w = r8.w + -r7.y;
    r7.y = r11.x * r8.w + r7.y;
    r8.w = min(1, r7.y);
    r8.w = r8.w + r7.y;
    r8.w = cmp(0 < r8.w);
    if (r8.w != 0) {
      r8.w = dot(cb1[4].xyz, cb1[4].xyz);
      r8.w = rsqrt(r8.w);
      r11.xyz = cb1[4].xyz * r8.www;
      r8.w = dot(r0.zxy, r11.xyz);
      r11.w = saturate(r8.w);
      r12.x = max(cb0[226].y, r6.w);
      r12.y = dot(r0.zxy, r3.xyz);
      r11.x = dot(r3.xyz, r11.xyz);
      r11.y = r11.x * 2 + 2;
      r11.y = rsqrt(r11.y);
      r8.w = r12.y + r8.w;
      r8.w = saturate(r8.w * r11.y);
      r11.x = saturate(r11.y * r11.x + r11.y);
      r11.y = 9.99999975e-006 + abs(r12.y);
      r11.y = min(1, r11.y);
      r12.yzw = r11.www * r10.xyz;
      r12.yzw = float3(0.318309873,0.318309873,0.318309873) * r12.yzw;
      r11.z = r12.x * r12.x;
      r13.x = r11.z * r11.z;
      r13.y = r8.w * r13.x + -r8.w;
      r8.w = r13.y * r8.w + 1;
      r8.w = r8.w * r8.w;
      r8.w = 3.14159274 * r8.w;
      r8.w = r13.x / r8.w;
      r12.x = -r12.x * r12.x + 1;
      r13.x = r11.y * r12.x + r11.z;
      r11.z = r11.w * r12.x + r11.z;
      r11.y = r11.y * r11.z;
      r11.y = r11.w * r13.x + r11.y;
      r11.y = rcp(r11.y);
      r8.w = r11.y * r8.w;
      r11.x = 1 + -r11.x;
      r11.y = r11.x * r11.x;
      r11.y = r11.y * r11.y;
      r11.z = r11.y * r11.x;
      r12.x = saturate(50 * r9.y);
      r11.x = -r11.y * r11.x + 1;
      r9.x = r10.w;
      r13.xyz = r11.xxx * r9.xyz;
      r11.xyz = r12.xxx * r11.zzz + r13.xyz;
      r8.w = 0.5 * r8.w;
      r11.xyz = r8.www * r11.xyz;
      r11.xyz = r11.www * r11.xyz;
      r13.xyz = cb1[5].xyz * r7.yyy;
      r12.xyz = r13.xyz * r12.yzw;
      r11.xyz = r13.yzx * r11.yzx;
      r12.w = r11.z;
    } else {
      r11.xy = float2(0,0);
      r12.xyzw = float4(0,0,0,0);
    }
    r7.y = asuint(cb1[8].z) >> 8;
    r7.y = (int)r4.w & (int)r7.y;
    r12.xyzw = r7.yyyy ? r12.xyzw : float4(0,0,0,0);
    r11.xy = r7.yy ? r11.xy : float2(0,0);
  } else {
    r12.xyzw = float4(0,0,0,0);
    r11.xy = float2(0,0);
    r7.x = 0;
  }
  r7.y = (uint)r3.w << 1;
  r7.y = t6.Load(r7.y).x;
  r7.y = min(asuint(cb1[0].x), (uint)r7.y);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r8.w = (((uint)r3.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r8.w = t6.Load(r8.w).x;
  r7.y = min(asuint(cb1[0].x), (uint)r7.y);
  r11.z = dot(-r3.yzx, r0.xyz);
  r11.z = r11.z + r11.z;
  r13.xyz = r0.zxy * -r11.zzz + -r3.xyz;
  r11.z = max(cb0[226].y, r6.w);
  r11.w = r11.z * r11.z;
  r11.z = -r11.z * r11.z + 1;
  r13.w = dot(r0.zxy, r3.xyz);
  r14.x = r13.w + r13.w;
  r14.y = r14.x * r13.w + -1;
  r14.z = 9.99999975e-006 + abs(r13.w);
  r14.z = min(1, r14.z);
  r15.xyz = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
  r14.w = r11.w * r11.w;
  r15.w = saturate(50 * r9.y);
  r9.w = r10.w;
  r16.xyz = r12.xyz;
  r17.x = r12.w;
  r17.yz = r11.xy;
  r10.w = 0;
  while (true) {
    r16.w = cmp((uint)r10.w >= (uint)r7.y);
    if (r16.w != 0) break;
    r16.w = (int)r8.w + (int)r10.w;
    r16.w = t7.Load(r16.w).x;
    r17.w = (int)r16.w * 6;
    r18.xyzw = t5.Load(r17.w).xyzw;
    r17.w = mad((int)r16.w, 6, 1);
    r19.xyzw = t5.Load(r17.w).xyzw;
    r20.xy = mad((int2)r16.ww, int2(6,6), int2(2,3));
    r21.xyzw = t5.Load(r20.x).xyzw;
    r20.xyzw = t5.Load(r20.y).xyzw;
    r17.w = cmp(r19.w == 0.000000);
    r22.x = cmp(-2 < r20.x);
    r18.xyz = r18.xyz + -r2.xyz;
    r22.y = dot(r18.xyz, r18.xyz);
    r22.z = rsqrt(r22.y);
    r23.xyz = r22.zzz * r18.xyz;
    r22.z = r18.w * r18.w;
    r22.y = r22.y * r22.z;
    r22.y = -r22.y * r22.y + 1;
    r22.y = max(0, r22.y);
    r22.y = r22.y * r22.y;
    r24.xyz = r18.xyz * r18.www;
    r18.w = dot(r24.xyz, r24.xyz);
    r18.w = min(1, r18.w);
    r18.w = 1 + -r18.w;
    r18.w = log2(r18.w);
    r18.w = r19.w * r18.w;
    r18.w = exp2(r18.w);
    r18.w = r17.w ? r22.y : r18.w;
    r19.w = dot(r23.xyz, r21.xyz);
    r19.w = r19.w + -r20.x;
    r19.w = saturate(r19.w * r20.y);
    r19.w = r19.w * r19.w;
    r19.w = r19.w * r18.w;
    r18.w = r22.x ? r19.w : r18.w;
    r19.w = cmp(0 < r18.w);
    if (r19.w != 0) {
      r19.w = (int)r21.w & 255;
      r19.w = r19.w ? 1 : 0;
      if (r19.w != 0) {
        r22.xyzw = (int4)r21.wwww & int4(1,2,4,8);
        r22.xyzw = r22.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r19.w = (uint)r21.w >> 4;
        if (1 == 0) r20.x = 0; else if (1+4 < 32) {         r20.x = (uint)r21.w << (32-(1 + 4)); r20.x = (uint)r20.x >> (32-1);        } else r20.x = (uint)r21.w >> 4;
        r23.x = r20.x ? 1 : 0;
        r21.xyz = (int3)r19.www & int3(2,4,8);
        r23.yzw = r21.xyz ? float3(1,1,1) : float3(0,0,0);
        r19.w = dot(r23.xyzw, float4(1,1,1,1));
        r20.x = dot(r22.xyzw, float4(1,1,1,1));
        r20.y = r7.x * r22.x + -1;
        r20.x = r20.x * r20.y + 1;
        r20.xy = r20.xx * r19.ww;
      } else {
        r20.xy = float2(1,1);
      }
      r19.w = r20.x + r20.y;
      r19.w = cmp(0 < r19.w);
      if (r19.w != 0) {
        r16.w = mad((int)r16.w, 6, 4);
        r22.xyzw = t5.Load(r16.w).xyzw;
        r16.w = f16tof32(r20.w);
        r19.w = 0.5 * r16.w;
        r21.xyz = -r19.www * r22.xyz + r18.xyz;
        r18.xyz = r19.www * r22.xyz + r18.xyz;
        r19.w = cmp(0 < r16.w);
        if (r19.w != 0) {
          r20.y = dot(r21.xyz, r21.xyz);
          r20.w = dot(r18.xyz, r18.xyz);
          r20.y = rsqrt(r20.y);
          r20.w = rsqrt(r20.w);
          r22.x = r20.y * r20.w;
          r22.y = dot(r21.xyz, r18.xyz);
          r22.y = r22.y * r22.x;
          r22.z = r22.y * 0.5 + r22.x;
          r22.z = 0.5 + r22.z;
          r23.y = r22.x / r22.z;
          r22.x = dot(r0.zxy, r21.xyz);
          r22.z = dot(r0.zxy, r18.xyz);
          r20.w = r22.z * r20.w;
          r20.y = r22.x * r20.y + r20.w;
          r23.x = 0.5 * r20.y;
        } else {
          r20.y = dot(r21.xyz, r21.xyz);
          r20.w = 1 + r20.y;
          r23.y = rcp(r20.w);
          r20.y = rsqrt(r20.y);
          r24.xyz = r21.xyz * r20.yyy;
          r23.x = dot(r0.zxy, r24.xyz);
          r22.y = 1;
        }
        r20.y = cmp(0 < r20.z);
        r20.w = r20.z * r20.z;
        r20.w = saturate(r20.w * r23.y);
        r20.w = sqrt(r20.w);
        r22.x = cmp(r23.x < r20.w);
        r22.z = max(r23.x, -r20.w);
        r22.z = r22.z + r20.w;
        r22.z = r22.z * r22.z;
        r20.w = 4 * r20.w;
        r20.w = r22.z / r20.w;
        r20.w = r22.x ? r20.w : r23.x;
        r20.y = saturate(r20.y ? r20.w : r23.x);
        r17.w = r17.w ? r23.y : 1;
        r18.xyz = r18.xyz + -r21.xyz;
        r20.w = dot(r13.xyz, r18.xyz);
        r23.xyz = r20.www * r13.xyz + -r18.xyz;
        r22.x = dot(r21.xyz, r23.xyz);
        r20.w = r20.w * r20.w;
        r16.w = r16.w * r16.w + -r20.w;
        r16.w = saturate(r22.x / r16.w);
        r18.xyz = r16.www * r18.xyz + r21.xyz;
        r18.xyz = r19.www ? r18.xyz : r21.xyz;
        r16.w = dot(r18.xyz, r18.xyz);
        r16.w = rsqrt(r16.w);
        r18.xyz = r18.xyz * r16.www;
        r19.w = r20.z * r16.w;
        r19.w = saturate(r19.w * r11.z);
        r16.w = saturate(r22.w * r16.w);
        r20.z = dot(r0.zxy, r18.xyz);
        r18.x = dot(r3.xyz, r18.xyz);
        r18.y = r18.x * 2 + 2;
        r18.y = rsqrt(r18.y);
        r18.z = r20.z + r13.w;
        r18.z = saturate(r18.z * r18.y);
        r18.y = saturate(r18.y * r18.x + r18.y);
        r20.w = cmp(0 < r19.w);
        if (r20.w != 0) {
          r21.x = -r19.w * r19.w + 1;
          r21.x = sqrt(r21.x);
          r21.y = dot(r13.ww, r20.zz);
          r21.z = r21.y + -r18.x;
          r22.x = cmp(r21.z >= r21.x);
          if (r22.x != 0) {
            r18.z = 1;
            r18.y = abs(r13.w);
          } else {
            r22.x = -r21.z * r21.z + 1;
            r22.x = rsqrt(r22.x);
            r22.x = r22.x * r19.w;
            r22.z = -r21.z * r20.z + r13.w;
            r22.w = r22.x * r22.z;
            r21.z = -r21.z * r18.x + r14.y;
            r23.x = r20.z * r20.z;
            r23.x = -r13.w * r13.w + -r23.x;
            r23.x = 1 + r23.x;
            r23.x = -r18.x * r18.x + r23.x;
            r21.y = saturate(r21.y * r18.x + r23.x);
            r21.y = sqrt(r21.y);
            r21.yz = r22.xx * r21.yz;
            r23.x = r21.y * r13.w;
            r23.y = r23.x + r23.x;
            r23.z = r20.z * r21.x + r13.w;
            r22.x = r22.x * r22.z + r23.z;
            r22.z = r18.x * r21.x + r21.z;
            r22.z = 1 + r22.z;
            r23.w = r22.z * r21.y;
            r24.x = r22.x * r22.z;
            r24.y = r23.y * r22.x;
            r23.x = r22.x * r23.x;
            r23.x = 0.5 * r23.x;
            r23.x = r23.w * -0.5 + r23.x;
            r23.x = r24.x * r23.x;
            r24.z = -r23.w * 2 + r24.y;
            r24.y = r24.y * r24.z;
            r23.w = r23.w * r23.w + r24.y;
            r24.y = r22.z * r22.z;
            r22.z = r18.x * r21.x + r22.z;
            r22.z = r22.z * -0.5 + -0.5;
            r22.z = r24.x * r22.z;
            r22.z = r23.z * r24.y + r22.z;
            r22.x = r22.x * r22.z + r23.w;
            r22.z = r23.x + r23.x;
            r23.z = r23.x * r23.x;
            r23.z = r22.x * r22.x + r23.z;
            r22.z = r22.z / r23.z;
            r22.x = r22.z * r22.x;
            r22.z = -r22.z * r23.x + 1;
            r21.y = r22.x * r21.y;
            r21.y = r22.z * r22.w + r21.y;
            r22.x = r22.x * r23.y;
            r21.z = r22.z * r21.z + r22.x;
            r20.z = r20.z * r21.x + r21.y;
            r18.x = r18.x * r21.x + r21.z;
            r21.x = r18.x * 2 + 2;
            r21.x = rsqrt(r21.x);
            r20.z = r20.z + r13.w;
            r18.z = saturate(r20.z * r21.x);
            r18.y = saturate(r21.x * r18.x + r21.x);
          }
        }
        r17.w = r17.w * r20.y;
        r21.xyz = r17.www * r15.xyz;
        r18.x = cmp(0 < r16.w);
        r16.w = r16.w * r16.w;
        r20.z = r18.y * 3.5999999 + 0.400000006;
        r16.w = r16.w / r20.z;
        r16.w = r11.w * r11.w + r16.w;
        r16.w = min(1, r16.w);
        r7.z = r18.x ? r16.w : r14.w;
        r16.w = 0.25 * r19.w;
        r18.x = (uint)r7.z >> 1;
        r18.x = (int)r18.x + 0x1fbd1df5;
        r18.x = r18.x * 3 + r19.w;
        r16.w = r18.x * r16.w;
        r18.x = 0.00100000005 + r18.y;
        r16.w = r16.w / r18.x;
        r23.x = r16.w + r7.z;
        r23.y = r7.z / r23.x;
        r20.zw = r20.ww ? r23.xy : r7.zw;
        r16.w = cmp(r22.y < 1);
        r19.w = 1.00010002 + -r22.y;
        r22.x = 1 + r22.y;
        r19.w = r19.w / r22.x;
        r19.w = sqrt(r19.w);
        r22.x = 0.25 * r19.w;
        r22.y = (uint)r20.z >> 1;
        r22.y = (int)r22.y + 0x1fbd1df5;
        r19.w = r22.y * 3 + r19.w;
        r19.w = r22.x * r19.w;
        r18.x = r19.w / r18.x;
        r18.x = r20.z + r18.x;
        r18.x = r20.z / r18.x;
        r18.x = sqrt(r18.x);
        r18.x = r20.w * r18.x;
        r16.w = r16.w ? r18.x : r20.w;
        r18.x = r18.z * r7.z + -r18.z;
        r18.x = r18.x * r18.z + 1;
        r18.x = r18.x * r18.x;
        r18.x = 3.14159274 * r18.x;
        r18.x = r7.z / r18.x;
        r16.w = r18.x * r16.w;
        r7.z = sqrt(r7.z);
        r18.x = 1 + -r7.z;
        r18.z = r14.z * r18.x + r7.z;
        r7.z = r20.y * r18.x + r7.z;
        r7.z = r14.z * r7.z;
        r7.z = r20.y * r18.z + r7.z;
        r7.z = rcp(r7.z);
        r7.z = r16.w * r7.z;
        r16.w = 1 + -r18.y;
        r18.x = r16.w * r16.w;
        r18.x = r18.x * r18.x;
        r18.y = r18.x * r16.w;
        r16.w = -r18.x * r16.w + 1;
        r20.yzw = r16.www * r9.wyz;
        r18.xyz = r15.www * r18.yyy + r20.yzw;
        r7.z = 0.5 * r7.z;
        r18.xyz = r7.zzz * r18.xyz;
        r18.xyz = r18.xyz * r17.www;
        r19.xyz = r19.xyz * r18.www;
        r19.xyz = r19.xyz * r20.xxx;
        r20.xyz = r21.xyz * r19.xyz;
        r18.xyz = r19.xyz * r18.xyz;
      } else {
        r20.xyz = float3(0,0,0);
        r18.xyz = float3(0,0,0);
      }
    } else {
      r20.xyz = float3(0,0,0);
      r18.xyz = float3(0,0,0);
    }
    r7.z = (uint)r21.w >> 8;
    r7.z = (int)r4.w & (int)r7.z;
    r19.xyz = r20.xyz + r16.xyz;
    r18.xyz = r18.xyz + r17.xyz;
    r16.xyz = r7.zzz ? r19.xyz : r16.xyz;
    r17.xyz = r7.zzz ? r18.xyz : r17.xyz;
    r10.w = (int)r10.w + 1;
  }
  r7.xyz = r17.xyz + r16.xyz;
  r11.yzw = r14.xxx * r0.zxy + -r3.xyz;
  r13.w = saturate(r13.w);
  r3.x = (int)r3.w + asint(cb1[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t6.Load(r3.y).x;
  r3.y = min(asuint(cb1[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t6.Load(r3.x).x;
  r3.z = max(0.00100000005, r6.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.z = r3.w + -r3.z;
  r11.x = 0;
  r12.xyz = float3(0,0,0);
  r3.w = 1;
  r4.w = 0;
  r7.w = 1;
  r8.w = 0;
  while (true) {
    r10.w = cmp((uint)r8.w >= (uint)r3.y);
    if (r10.w != 0) break;
    r10.w = cmp(r3.w < 0.00100000005);
    if (r10.w != 0) {
      break;
    }
    r10.w = (int)r3.x + (int)r8.w;
    r10.w = t7.Load(r10.w).x;
    r13.xyz = -cb2[r10.w+0].xyz + r2.xyz;
    r12.w = dot(r13.xyz, r13.xyz);
    r14.x = sqrt(r12.w);
    r14.y = cmp(r14.x < cb2[r10.w+0].w);
    if (r14.y != 0) {
      r14.y = cmp(0 < cb2[r10.w+341].z);
      if (r14.y != 0) {
        r14.y = (uint)r10.w << 2;
        r15.xyz = cb2[r14.y+1024].xyz * r2.yyy;
        r15.xyz = r2.xxx * cb2[r14.y+1023].xyz + r15.xyz;
        r15.xyz = r2.zzz * cb2[r14.y+1025].xyz + r15.xyz;
        r15.xyz = cb2[r14.y+1026].xyz + r15.xyz;
        r16.xyz = cb2[r14.y+1024].xyz * r11.zzz;
        r16.xyz = r11.yyy * cb2[r14.y+1023].xyz + r16.xyz;
        r14.yzw = r11.www * cb2[r14.y+1025].xyz + r16.xyz;
        r14.yzw = rcp(r14.yzw);
        r16.xyz = -r15.xyz * r14.yzw + -r14.yzw;
        r14.yzw = -r15.xyz * r14.yzw + r14.yzw;
        r14.yzw = max(r16.xyz, r14.yzw);
        r14.z = min(r14.z, r14.w);
        r14.y = min(r14.y, r14.z);
        r14.yzw = r14.yyy * r11.yzw + r2.xyz;
        r16.xyz = cb2[r10.w+682].xyz + cb2[r10.w+0].xyz;
        r16.xyz = -r16.xyz + r14.yzw;
        r14.y = cb2[r10.w+2387].w * 0.699999988;
        r17.xyz = -cb2[r10.w+2387].www * float3(0.5,0.5,0.5) + cb2[r10.w+2387].xyz;
        r18.xyz = cb2[r10.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb2[r10.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb2[r10.w+2387].xyz + -r17.xyz;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r14.z = dot(r19.xyz, float3(1,1,1));
        r14.w = dot(r15.xyz, float3(1,1,1));
        r14.z = r14.z + r14.w;
        r14.y = 1 / r14.y;
        r14.y = saturate(r14.z * r14.y);
        r14.z = r14.y * -2 + 3;
        r14.y = r14.y * r14.y;
        r17.x = -r14.z * r14.y + 1;
      } else {
        r14.x = saturate(r14.x / cb2[r10.w+0].w);
        r14.y = dot(r11.yzw, r13.xyz);
        r12.w = -cb2[r10.w+0].w * cb2[r10.w+0].w + r12.w;
        r12.w = r14.y * r14.y + -r12.w;
        r14.z = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r12.w = r12.w + -r14.y;
        r13.xyz = r12.www * r11.yzw + r13.xyz;
        r18.yzw = -cb2[r10.w+682].xyz + r13.xyz;
        r12.w = r14.x * 2.5 + -1.5;
        r12.w = max(0, r12.w);
        r13.x = r12.w * r12.w;
        r12.w = -r12.w * 2 + 3;
        r18.x = -r13.x * r12.w + 1;
        r17.xyzw = r14.zzzz ? r18.xyzw : r11.xyzw;
        r16.xyz = r17.yzw;
      }
      r16.w = cb2[r10.w+341].y;
      r14.xyzw = t8.SampleLevel(s4_s, r16.xyzw, r3.z).xyzw;
      r13.xyz = cb2[r10.w+341].xxx * r14.xyz;
      r13.xyz = r13.xyz * r17.xxx;
      r12.xyz = r13.xyz * r3.www + r12.xyz;
      r12.w = -r14.w * r17.x + 1;
      r3.w = r12.w * r3.w;
      r10.w = cb2[r10.w+682].w * r17.x;
      r4.w = r10.w * r7.w + r4.w;
      r10.w = 1 + -r17.x;
      r7.w = r10.w * r7.w;
    }
    r8.w = (int)r8.w + 1;
  }
  r3.xyz = cb0[157].xyz * r12.xyz;
  r3.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.w = r4.w * r3.w;
  r4.w = saturate(r6.w * cb0[197].x + cb0[197].y);
  r7.w = r4.w * -2 + 3;
  r4.w = r4.w * r4.w;
  r4.w = r7.w * r4.w;
  r3.w = max(9.99999975e-005, r3.w);
  r0.w = r0.w / r3.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r4.w * r0.w + 1;
  r3.xyz = r3.xyz * r0.www;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r12.xy = r0.ww * float2(32.6650009,11.8149996) + v5.xy;
    r0.w = dot(r12.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r12.xyzw = cb0[1].xyzw * r1.yyyy;
    r12.xyzw = r1.xxxx * cb0[0].xyzw + r12.xyzw;
    r12.xyzw = r1.zzzz * cb0[2].xyzw + r12.xyzw;
    r12.xyzw = cb0[3].xyzw + r12.xyzw;
    r11.xyz = r11.yzw * v5.www + r1.xyz;
    r14.xyzw = cb0[1].xyzw * r11.yyyy;
    r14.xyzw = r11.xxxx * cb0[0].xyzw + r14.xyzw;
    r11.xyzw = r11.zzzz * cb0[2].xyzw + r14.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r3.w = rcp(r12.w);
    r13.xyz = r12.xyz * r3.www;
    r3.w = rcp(r11.w);
    r12.xy = v5.ww * cb0[30].zw + r12.zw;
    r4.w = rcp(r12.y);
    r11.xyz = r11.xyz * r3.www + -r13.xyz;
    r3.w = dot(r11.xy, r11.xy);
    r3.w = sqrt(r3.w);
    r7.w = 0.5 * r3.w;
    r12.yz = r13.xy * r7.ww + r11.xy;
    r12.yz = -r3.ww * float2(0.5,0.5) + abs(r12.yz);
    r12.yz = max(float2(0,0), r12.yz);
    r12.yz = r12.yz / abs(r11.xy);
    r12.yz = float2(1,1) + -r12.yz;
    r3.w = min(r12.y, r12.z);
    r3.w = r3.w / r7.w;
    r11.xyz = r11.xyz * r3.www;
    r3.w = -r12.x * r4.w + r13.z;
    r3.w = 4 * r3.w;
    r3.w = max(abs(r11.z), r3.w);
    r12.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb1[176].xy * r12.xy;
    r11.xy = cb1[176].xy * r11.xy;
    r4.w = 0.0833333358 * r3.w;
    r11.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r11.xyz;
    r12.xyz = r11.xyz * r0.www + r13.xyz;
    r0.w = 1;
    r13.x = 0;
    r15.x = 0;
    r14.xyz = float3(0,0,0);
    r7.w = 0;
    r8.w = 0;
    r10.w = 0;
    r11.w = 0;
    r12.w = 0;
    while (true) {
      r16.x = cmp((uint)r12.w >= 12);
      if (r16.x != 0) break;
      r16.x = (uint)r12.w;
      r16.xyzw = float4(1,2,3,4) + r16.xxxx;
      r17.xyzw = r16.xxxy * r11.xyzz + r12.xyzz;
      r18.xyzw = r16.yyzz * r11.xyxy + r12.xyxy;
      r16.xyzw = r16.wwzw * r11.xyzz + r12.xyzz;
      r19.x = r6.w * 0.666666687 + r0.w;
      r19.y = r6.w * 0.666666687 + r19.x;
      r20.x = t12.SampleLevel(s6_s, r17.xy, r0.w).x;
      r20.y = t12.SampleLevel(s6_s, r18.xy, r0.w).x;
      r20.z = t12.SampleLevel(s6_s, r18.zw, r19.x).x;
      r20.w = t12.SampleLevel(s6_s, r16.xy, r19.x).x;
      r16.xy = r17.zw;
      r16.xyzw = r16.xyzw + -r20.xyzw;
      r17.xyzw = r3.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r16.xyzw;
      r17.xyzw = cmp(abs(r17.xyzw) < r4.wwww);
      r18.xy = (int2)r17.zw | (int2)r17.xy;
      r17.w = (int)r18.y | (int)r18.x;
      if (r17.w != 0) {
        r15.x = r16.x;
        r14.xyz = r16.yzw;
        r7.w = r17.x;
        r8.w = r17.y;
        r10.w = r17.z;
        r11.w = -1;
        break;
      }
      r13.x = r16.w;
      r12.w = (int)r12.w + 4;
      r0.w = r19.y;
      r15.x = r16.x;
      r14.xyz = r16.yzw;
      r7.w = r17.x;
      r8.w = r17.y;
      r10.w = r17.z;
      r11.w = r17.w;
    }
    if (r11.w != 0) {
      r14.w = 2;
      r16.xy = r14.yz;
      r16.z = 3;
      r14.yzw = r10.www ? r14.xyw : r16.xyz;
      r15.y = r14.x;
      r15.z = 1;
      r14.xyz = r8.www ? r15.xyz : r14.yzw;
      r13.y = r15.x;
      r13.z = 0;
      r13.xyz = r7.www ? r13.xyz : r14.xyz;
      r0.w = (uint)r12.w;
      r0.w = r13.z + r0.w;
      r3.w = r13.x + -r13.y;
      r3.w = saturate(r13.x / r3.w);
      r0.w = r3.w + r0.w;
      r11.xyz = r11.xyz * r0.www + r12.xyz;
      r11.xy = cb1[176].zw * r11.xy;
      r11.xy = r11.xy * float2(2,-2) + float2(-1,1);
      r11.xy = cb0[66].xy * r11.xy;
      r11.xy = r11.xy / cb0[66].xy;
      r12.xyz = cb0[123].xyw * r11.yyy;
      r12.xyz = r11.xxx * cb0[122].xyw + r12.xyz;
      r12.xyz = r11.zzz * cb0[124].xyw + r12.xyz;
      r12.xyz = cb0[125].xyw + r12.xyz;
      r11.zw = r12.xy / r12.zz;
      r12.xy = r11.zw * cb1[177].xy + cb1[177].zw;
      r11.xy = saturate(abs(r11.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r11.xy, r11.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r11.xy = saturate(abs(r11.zw) * float2(5,5) + float2(-4,-4));
      r3.w = dot(r11.xy, r11.xy);
      r3.w = 1 + -r3.w;
      r3.w = max(0, r3.w);
      r0.w = min(r3.w, r0.w);
      r11.xyz = t13.SampleLevel(s7_s, r12.xy, 0).xyz;
      r11.xyz = min(float3(0,0,0), -r11.xyz);
      r3.w = saturate(-r6.w * 6.5999999 + 2);
      r0.w = r3.w * r0.w;
      r3.w = 1;
      r11.xyz = -r11.xyz * r0.www;
      r11.xyz = cb1[178].xxx * r11.xyz;
      r0.w = -r3.w * r0.w + 1;
      r3.xyz = r3.xyz * r0.www + r11.xyz;
    }
  }
  r11.xyzw = r6.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r11.x * r11.x;
  r3.w = -9.27999973 * r13.w;
  r3.w = exp2(r3.w);
  r0.w = min(r3.w, r0.w);
  r0.w = r0.w * r11.x + r11.y;
  r11.xy = r0.ww * float2(-1.03999996,1.03999996) + r11.zw;
  r9.xyz = r9.wyz;
  r0.w = r15.w * r11.y;
  r11.xyz = r9.xyz * r11.xxx + r0.www;
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
    r2.w = dot(cb1[122].yzx, r0.xyz);
    r2.w = saturate(r2.w * cb1[130].x + cb1[130].y);
    r3.w = -0.200000003 + r6.w;
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
      r13.xyz = cb1[127].xyz * r0.xxx;
      r13.xyz = r0.zzz * cb1[126].xyz + r13.xyz;
      r0.xyz = r0.yyy * cb1[128].xyz + r13.xyz;
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
  r3.xyz = r9.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r9.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r9.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r0.xyz * r3.xyz + r7.xyz;
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
  r4.w = r2.w * r3.z;
  r3.x = r4.w * r1.w + r3.x;
  r4.w = -r4.w * r1.w + r1.w;
  r2.w = -r2.w * r3.z + 1;
  r2.w = r2.w * r3.y;
  r6.w = -cb1[146].y + r3.x;
  r6.w = cb1[143].y * r6.w;
  r6.w = max(-127, r6.w);
  r6.w = exp2(-r6.w);
  r6.w = cb1[146].x * r6.w;
  r3.x = -cb1[144].w + r3.x;
  r3.x = cb1[144].y * r3.x;
  r3.x = max(-127, r3.x);
  r3.x = exp2(-r3.x);
  r3.x = cb1[144].z * r3.x;
  r6.w = r3.w ? r6.w : cb1[143].x;
  r3.x = r3.w ? r3.x : cb1[144].x;
  r2.w = r3.w ? r2.w : r3.y;
  r3.w = r3.w ? r4.w : r1.w;
  r4.w = cb1[143].y * r3.w;
  r4.w = max(-127, r4.w);
  r7.x = exp2(-r4.w);
  r7.x = 1 + -r7.x;
  r7.x = r7.x / r4.w;
  r7.y = -r4.w * 0.240226507 + 0.693147182;
  r4.w = cmp(0.00999999978 < abs(r4.w));
  r4.w = r4.w ? r7.x : r7.y;
  r3.w = cb1[144].y * r3.w;
  r3.w = max(-127, r3.w);
  r7.x = exp2(-r3.w);
  r7.x = 1 + -r7.x;
  r7.x = r7.x / r3.w;
  r7.y = -r3.w * 0.240226507 + 0.693147182;
  r3.w = cmp(0.00999999978 < abs(r3.w));
  r3.w = r3.w ? r7.x : r7.y;
  r3.x = r3.x * r3.w;
  r3.x = r6.w * r4.w + r3.x;
  r3.w = r3.x * r2.w;
  r7.xy = cmp(float2(0,0) < cb1[146].zw);
  if (r7.x != 0) {
    r4.w = saturate(r3.y * cb1[150].x + cb1[150].y);
    r7.xz = float2(1,-1) * cb1[149].yx;
    r11.x = dot(r1.xy, r7.xz);
    r11.y = dot(r1.xy, cb1[149].xy);
    r11.z = r1.w;
    r7.xzw = t10.SampleLevel(s5_s, r11.xyz, 0).xyz;
    r11.xyz = t10.SampleLevel(s5_s, r11.xyz, cb1[150].z).xyz;
    r7.xzw = -r11.xyz + r7.xzw;
    r7.xzw = r4.www * r7.xzw + r11.xyz;
    r7.xzw = cb1[145].xyz * r7.xzw;
  } else {
    r7.xzw = cb1[145].xyz;
  }
  r4.w = cmp(cb1[147].w >= 0);
  r6.w = cmp(cb1[146].z == 0.000000);
  r4.w = r4.w ? r6.w : 0;
  if (r4.w != 0) {
    r11.xyz = r3.zzz * r1.xyw;
    r1.w = saturate(dot(r11.xyz, cb1[147].xyz));
    r1.w = log2(r1.w);
    r1.w = cb1[148].w * r1.w;
    r1.w = exp2(r1.w);
    r11.xyz = cb1[148].xyz * r1.www;
    r1.w = -cb1[147].w + r2.w;
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
  r11.w = max(cb1[145].w, r1.w);
  r1.w = cmp(cb1[146].w < r3.y);
  r1.w = r1.w ? r7.y : 0;
  r3.xyzw = r1.wwww ? float4(1,0,0,0) : r11.wxyz;
  r1.w = 1 + -r3.x;
  r3.yzw = r7.xzw * r1.www + r3.yzw;
  r1.w = cmp(0 < cb1[150].w);
  if (r1.w != 0) {
    r7.xyz = cb0[5].xyw * r2.yyy;
    r7.xyz = r2.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r2.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r7.xy = r7.xy / r7.zz;
    r11.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.w = r7.z * cb0[209].x + cb0[209].y;
    r1.w = log2(r1.w);
    r1.w = cb0[209].z * r1.w;
    r11.z = cb0[208].z * r1.w;
    r7.xyzw = t11.SampleLevel(s0_s, r11.xyz, 0).xyzw;
    r3.yzw = r3.yzw * r7.www + r7.xyz;
    r3.x = r7.w * r3.x;
  }
  r1.w = cmp(0 < cb0[182].y);
  if (r1.w != 0) {
    r7.xyz = cb0[5].xyw * r2.yyy;
    r7.xyz = r2.xxx * cb0[4].xyw + r7.xyz;
    r7.xyz = r2.zzz * cb0[6].xyw + r7.xyz;
    r7.xyz = cb0[7].xyw + r7.xyz;
    r1.w = cmp(0 != cb0[184].x);
    r11.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * cb0[67].xyz;
    r7.xy = r7.xy / r7.zz;
    r7.xy = r7.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xyz = r2.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r11.xyz;
    r2.w = dot(r11.xyz, r11.xyz);
    r4.w = sqrt(r2.w);
    r4.w = -cb0[181].x + r4.w;
    r4.w = max(0, r4.w);
    r4.w = cb0[182].x * r4.w;
    r4.w = cb0[181].z * r4.w;
    r12.z = sqrt(r4.w);
    r4.w = cb0[181].y * r12.z;
    r6.w = cmp(r4.w < 0.707106769);
    r4.w = dot(r4.ww, r4.ww);
    r4.w = min(1, r4.w);
    r4.w = r6.w ? r4.w : 1;
    r2.w = rsqrt(r2.w);
    r11.xyz = r11.xyz * r2.www;
    r2.w = -r11.z * r11.z + 1;
    r2.w = sqrt(r2.w);
    r13.y = r11.z * 0.5 + 0.5;
    r7.zw = r11.xy / r2.ww;
    r2.w = 1 + -abs(r7.z);
    r2.w = sqrt(r2.w);
    r6.w = abs(r7.z) * -0.0187292993 + 0.0742610022;
    r6.w = r6.w * abs(r7.z) + -0.212114394;
    r6.w = r6.w * abs(r7.z) + 1.57072878;
    r8.w = r6.w * r2.w;
    r8.w = r8.w * -2 + 3.14159274;
    r7.z = cmp(r7.z < -r7.z);
    r7.z = r7.z ? r8.w : 0;
    r2.w = r6.w * r2.w + r7.z;
    r6.w = cmp(r7.w < 0);
    r7.z = 6.28318548 + -r2.w;
    r2.w = r6.w ? r7.z : r2.w;
    r13.x = 0.159154937 * r2.w;
    r7.zw = cb0[180].zw * float2(0.5,0.5) + r13.xy;
    r11.xy = float2(1,1) + cb0[180].xy;
    r11.xy = cb0[180].xy / r11.xy;
    r7.zw = r11.xy * r7.zw;
    r12.xy = r1.ww ? r7.zw : r7.xy;
    r7.xyzw = t2.SampleLevel(s1_s, r12.xyz, 0).xyzw;
    r7.xyz = r7.xyz * r4.www;
    r1.w = 1 + -r7.w;
    r1.w = -r4.w * r1.w + 1;
    r7.xyz = cb0[135].zzz * r7.xyz;
    r3.yzw = r7.xyz * r3.xxx + r3.yzw;
    r3.x = r3.x * r1.w;
  }
  r7.xyz = r9.xyz * float3(0.449999988,0.449999988,0.449999988) + r10.xyz;
  r7.xyz = r7.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r7.xyz + r0.xyz;
  r5.xyz = max(float3(0,0,0), r6.xyz);
  r1.w = cmp(0 < cb0[140].x);
  if (r1.w != 0) {
    r6.xy = mad((int2)v4.xx, int2(36,36), int2(5,19));
    r6.x = t0[r6.x].val[0/4];
    r6.z = t0[r6.x].val[0/4+1];
    r6.w = t0[r6.x].val[0/4+2];
    r6.xzw = -r6.xzw + r2.xyz;
    r7.x = t0[r6.y].val[0/4];
    r7.y = t0[r6.y].val[0/4+1];
    r7.z = t0[r6.y].val[0/4+2];
    r7.xyz = float3(1,1,1) + r7.xyz;
    r6.xyz = cmp(r7.xyz < abs(r6.xzw));
    r1.w = (int)r6.y | (int)r6.x;
    r1.w = (int)r6.z | (int)r1.w;
    r2.x = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r2.x = 0.00200000009 * r2.x;
    r2.x = frac(r2.x);
    r2.x = cmp(0.5 < r2.x);
    r2.yzw = r2.xxx ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r5.xyzw = r1.wwww ? r2.yzwx : r5.xyzw;
    o0.w = r5.w;
  } else {
    o0.w = r5.w;
  }
  r0.xyz = r4.xyz * r8.xyz + r0.xyz;
  r0.xyz = r0.xyz + r5.xyz;
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