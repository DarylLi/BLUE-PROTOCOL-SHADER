// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

TextureCubeArray<float4> t5 : register(t5);

Buffer<uint4> t4 : register(t4);

Buffer<uint4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb5[10];
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
  float4 v2 : COLOR1,
  float4 v3 : TEXCOORD0,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD7,
  float4 v6 : SV_Position0,
  uint v7 : SV_IsFrontFace0,
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
  r1.xyzw = cb0[45].xyzw * v6.yyyy;
  r1.xyzw = v6.xxxx * cb0[44].xyzw + r1.xyzw;
  r1.xyzw = v6.zzzz * cb0[46].xyzw + r1.xyzw;
  r1.xyzw = cb0[47].xyzw + r1.xyzw;
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = -cb0[70].xyz + r1.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = -r1.xyz * r0.www;
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.yzx + r0.xyz;
  r0.xyz = r4.zzz * v1.yzx + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.w = dot(r0.zxy, r3.xyz);
  r4.xyz = r1.www * r0.zxy;
  r4.xyz = r4.xyz * float3(2,2,2) + -r3.xyz;
  r5.xyz = t12.SampleBias(s7_s, v3.xy, cb0[143].y).xyz;
  r3.w = dot(float3(0.577350259,0.577350259,0.577350259), r5.xyz);
  r5.xyz = -r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r6.xyz = float3(0.577350259,0.577350259,0.577350259) * r5.zxy;
  r6.xyz = r5.zxy * float3(0.577350259,0.577350259,0.577350259) + -r6.zxy;
  sincos(cb5[6].y, r7.x, r8.x);
  r6.xyz = r7.xxx * r6.xyz;
  r5.xyz = r5.xyz * r8.xxx + r6.xyz;
  r5.xyz = r3.www * float3(0.577350259,0.577350259,0.577350259) + r5.xyz;
  r5.xyz = cb5[2].xyz * r5.xyz;
  r6.xyz = cb5[6].zzz * r5.xyz;
  r5.xyz = -r5.xyz * cb5[6].zzz + cb5[3].xyz;
  r5.xyz = cb5[6].www * r5.xyz + r6.xyz;
  r4.xyz = t14.Sample(s9_s, r4.xyz).xyz;
  r3.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r3.www + -r4.xyz;
  r4.xyz = cb5[7].xxx * r6.xyz + r4.xyz;
  r4.xyz = cb5[7].yyy * r4.xyz;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb5[7].zzz * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz * cb5[7].www + cb5[5].xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r6.xy = cb5[8].zw * v3.xy;
  r3.w = t13.SampleBias(s8_s, r6.xy, cb0[143].y).x;
  r3.w = saturate(cb5[9].x + r3.w);
  r4.w = cmp(0.00100000005 < abs(v2.w));
  r6.xy = floor(v6.xy);
  r5.w = dot(r6.xy, float2(347.834503,3343.28369));
  r5.w = cos(r5.w);
  r5.w = 1000 * r5.w;
  r5.w = frac(r5.w);
  r6.x = cmp(v2.w < 0);
  r6.y = 1 + v2.w;
  r6.y = cmp(r5.w < r6.y);
  r5.w = cmp(v2.w < r5.w);
  r5.w = r6.x ? r6.y : r5.w;
  r5.w = cmp((int)r5.w == 0);
  r4.w = r4.w ? r5.w : 0;
  if (r4.w != 0) discard;
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r6.xy = saturate(cb5[8].xy);
  r3.w = r3.w * cb0[139].y + cb0[139].x;
  r7.w = saturate(cb5[9].y);
  r8.xyzw = t11.Sample(s6_s, v4.zw).xyzw;
  r9.xyzw = cb3[1].xyzw * float4(-0.5,-0.5,-0.5,-0.5) + float4(0.5,0.5,0.5,0.5);
  r8.xyzw = saturate(r8.xyzw * cb3[1].xyzw + r9.xyzw);
  r8.xyzw = r8.xyzw * r8.xyzw;
  r8.xyzw = cb3[0].xyzw * r8.xyzw;
  r4.w = 0.0799999982 * r6.y;
  r6.yzw = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r6.yzw = r6.xxx * r6.yzw + r4.www;
  r9.xyz = -r4.xyz * r6.xxx + r4.xyz;
  r9.xyz = r9.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.yzw * cb0[137].www + cb0[137].xyz;
  r4.w = cmp(0 != cb0[183].w);
  r10.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r10.w = 0;
  r9.w = r6.x;
  r9.xyzw = r4.wwww ? r10.xyzw : r9.xyzw;
  r6.yz = r4.ww ? float2(0,0) : r6.yz;
  r10.xy = float2(1,0.5) * v4.xy;
  r10.zw = v4.xy * float2(1,0.5) + float2(0,0.5);
  r11.xyzw = t10.Sample(s6_s, r10.xy).xyzw;
  r10.xyzw = t10.Sample(s6_s, r10.zw).xyzw;
  r4.w = r10.w * 0.00392156886 + r11.w;
  r4.w = -0.00196078443 + r4.w;
  r4.w = r4.w * cb3[4].w + cb3[6].w;
  r11.xyz = r11.xyz * r11.xyz;
  r11.xyz = r11.xyz * cb3[4].xyz + cb3[6].xyz;
  r4.w = exp2(r4.w);
  r4.w = -0.0185813606 + r4.w;
  r10.xyzw = r10.xyzw * cb3[5].xyzw + cb3[7].xyzw;
  r0.w = 1;
  r0.w = dot(r10.xyzw, r0.xyzw);
  r0.w = max(0, r0.w);
  r0.w = r4.w * r0.w;
  r10.xyz = r0.www * r11.xyz;
  r10.xyz = cb0[157].xyz * r10.xyz;
  r0.w = dot(r10.xyz, float3(0.300000012,0.589999974,0.109999999));
  r10.xyz = r10.xyz * r9.xyz;
  r11.xyz = r4.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r11.xyz = r4.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r11.xyz;
  r4.xyz = r4.xyz * float3(2.75519991,2.75519991,2.75519991) + r11.xyz;
  r4.xyz = float3(1.33200002,1.33200002,1.33200002) + r4.xyz;
  r11.xy = -cb0[129].xy + v6.xy;
  r11.xy = cb0[131].zw * r11.xy;
  r11.xy = (uint2)r11.xy;
  r4.w = v6.w * cb2[3].x + cb2[3].y;
  r4.w = log2(r4.w);
  r4.w = cb2[3].z * r4.w;
  r4.xyzw = max(float4(1,1,1,0), r4.xyzw);
  r4.w = (uint)r4.w;
  r5.w = asint(cb2[1].z) + -1;
  r4.w = min((uint)r5.w, (uint)r4.w);
  r11.xy = (uint2)r11.xy >> asuint(cb2[2].xx);
  r4.w = mad((int)r4.w, asint(cb2[1].y), (int)r11.y);
  r4.w = mad((int)r4.w, asint(cb2[1].x), (int)r11.x);
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
      r5.w = r13.y ? r13.x : 0;
      if (r5.w != 0) {
        r5.w = t1.SampleLevel(s2_s, r12.xy, 0).x;
        r10.w = cmp(r12.z < r5.w);
        r5.w = cmp(0.99000001 < r5.w);
        r5.w = (int)r5.w | (int)r10.w;
        r8.x = r5.w ? 1.000000 : 0;
      } else {
        r8.x = 1;
      }
    } else {
      r8.x = 1;
    }
    if (cb2[9].z != 0) {
      r5.w = cb2[9].z;
      r10.w = 0;
      while (true) {
        r12.x = cmp((uint)r10.w >= asuint(cb2[9].z));
        if (r12.x != 0) break;
        r12.x = dot(cb2[10].xyzw, icb[r10.w+0].xyzw);
        r12.x = cmp(v6.w < r12.x);
        if (r12.x != 0) {
          r5.w = r10.w;
          break;
        }
        r10.w = (int)r10.w + 1;
      }
      r10.w = cmp((uint)r5.w < asuint(cb2[9].z));
      if (r10.w != 0) {
        r10.w = (uint)r5.w << 2;
        r12.xyzw = cb2[r10.w+12].xyzw * r2.yyyy;
        r12.xyzw = r2.xxxx * cb2[r10.w+11].xyzw + r12.xyzw;
        r12.xyzw = r2.zzzz * cb2[r10.w+13].xyzw + r12.xyzw;
        r12.xyzw = cb2[r10.w+14].xyzw + r12.xyzw;
        r13.xyzw = r12.xyxy / r12.wwww;
        r12.xy = cmp(r13.zw >= cb2[r5.w+27].xy);
        r14.xy = cmp(cb2[r5.w+27].zw >= r13.zw);
        r12.xy = r12.xy ? r14.xy : 0;
        r5.w = r12.y ? r12.x : 0;
        if (r5.w != 0) {
          r13.xyzw = r13.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r12.xy = frac(r13.zw);
          r13.xyzw = floor(r13.xyzw);
          r14.xyzw = float4(0.5,1.5,0.5,0.5) + r13.zwzw;
          r14.xyzw = cb2[31].zwzw * r14.xyzw;
          r15.x = t0.SampleLevel(s1_s, r14.xy, 0).x;
          r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
          r13.xyzw = cb2[31].zwzw * r13.xyzw;
          r15.y = t0.SampleLevel(s1_s, r13.xy, 0).x;
          r15.z = t0.SampleLevel(s1_s, r13.zw, 0).x;
          r15.w = t0.SampleLevel(s1_s, r14.zw, 0).x;
          r5.w = r12.z * 4000 + -1;
          r13.xyzw = saturate(r15.xyzw * float4(4000,4000,4000,4000) + -r5.wwww);
          r12.zw = r13.zy + -r13.wx;
          r12.xz = r12.xx * r12.zw + r13.wx;
          r5.w = r12.z + -r12.x;
          r5.w = r12.y * r5.w + r12.x;
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
    r10.w = dot(float4(1,1,1,1), r11.xyzw);
    r11.x = dot(r8.xyzw, r11.xyzw);
    r11.x = -1 + r11.x;
    r10.w = r10.w * r11.x + 1;
    r11.x = saturate(v6.w * cb2[9].x + cb2[9].y);
    r11.x = r11.x * r11.x;
    r10.w = r10.w + -r5.w;
    r5.w = r11.x * r10.w + r5.w;
    r10.w = min(1, r5.w);
    r10.w = r10.w + r5.w;
    r10.w = cmp(0 < r10.w);
    if (r10.w != 0) {
      r10.w = dot(cb2[4].xyz, cb2[4].xyz);
      r10.w = rsqrt(r10.w);
      r11.xyz = cb2[4].xyz * r10.www;
      r10.w = dot(r0.zxy, r11.xyz);
      r11.w = saturate(r10.w);
      r12.x = max(cb0[226].y, r3.w);
      r11.x = dot(r3.xyz, r11.xyz);
      r11.y = r11.x * 2 + 2;
      r11.y = rsqrt(r11.y);
      r10.w = r10.w + r1.w;
      r10.w = saturate(r10.w * r11.y);
      r11.x = saturate(r11.y * r11.x + r11.y);
      r11.y = 9.99999975e-006 + abs(r1.w);
      r11.y = min(1, r11.y);
      r12.yzw = r11.www * r9.xyz;
      r12.yzw = float3(0.318309873,0.318309873,0.318309873) * r12.yzw;
      r11.z = r12.x * r12.x;
      r13.x = r11.z * r11.z;
      r13.y = r10.w * r13.x + -r10.w;
      r10.w = r13.y * r10.w + 1;
      r10.w = r10.w * r10.w;
      r10.w = 3.14159274 * r10.w;
      r10.w = r13.x / r10.w;
      r12.x = -r12.x * r12.x + 1;
      r13.x = r11.y * r12.x + r11.z;
      r11.z = r11.w * r12.x + r11.z;
      r11.y = r11.y * r11.z;
      r11.y = r11.w * r13.x + r11.y;
      r11.y = rcp(r11.y);
      r10.w = r11.y * r10.w;
      r11.x = 1 + -r11.x;
      r11.y = r11.x * r11.x;
      r11.y = r11.y * r11.y;
      r11.z = r11.y * r11.x;
      r12.x = saturate(50 * r6.y);
      r11.x = -r11.y * r11.x + 1;
      r6.x = r9.w;
      r13.xyz = r11.xxx * r6.xyz;
      r11.xyz = r12.xxx * r11.zzz + r13.xyz;
      r10.w = 0.5 * r10.w;
      r11.xyz = r10.www * r11.xyz;
      r11.xyz = r11.www * r11.xyz;
      r13.xyz = cb2[5].xyz * r5.www;
      r12.xyz = r13.xyz * r12.yzw;
      r11.xyz = r13.yzx * r11.yzx;
      r12.w = r11.z;
    } else {
      r11.xy = float2(0,0);
      r12.xyzw = float4(0,0,0,0);
    }
    r5.w = asuint(cb2[8].z) >> 8;
    r5.w = (int)r5.w & asint(cb1[23].w);
    r12.xyzw = r5.wwww ? r12.xyzw : float4(0,0,0,0);
    r11.xy = r5.ww ? r11.xy : float2(0,0);
  } else {
    r12.xyzw = float4(0,0,0,0);
    r11.xy = float2(0,0);
  }
  r5.w = (uint)r4.w << 1;
  r5.w = t3.Load(r5.w).x;
  r5.w = min(asuint(cb2[0].x), (uint)r5.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r10.w = (((uint)r4.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r10.w = t3.Load(r10.w).x;
  r5.w = min(asuint(cb2[0].x), (uint)r5.w);
  r11.z = dot(-r3.yzx, r0.xyz);
  r11.z = r11.z + r11.z;
  r13.xyz = r0.zxy * -r11.zzz + -r3.xyz;
  r11.z = max(cb0[226].y, r3.w);
  r11.w = r11.z * r11.z;
  r11.z = -r11.z * r11.z + 1;
  r13.w = r1.w + r1.w;
  r14.x = r13.w * r1.w + -1;
  r14.y = 9.99999975e-006 + abs(r1.w);
  r14.y = min(1, r14.y);
  r15.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  r14.z = r11.w * r11.w;
  r14.w = saturate(50 * r6.y);
  r16.y = 1;
  r6.w = r9.w;
  r17.xyz = r12.xyz;
  r18.x = r12.w;
  r18.yz = r11.xy;
  r9.w = 0;
  while (true) {
    r15.w = cmp((uint)r9.w >= (uint)r5.w);
    if (r15.w != 0) break;
    r15.w = (int)r9.w + (int)r10.w;
    r15.w = t4.Load(r15.w).x;
    r16.z = (int)r15.w * 6;
    r19.xyzw = t2.Load(r16.z).xyzw;
    r16.z = mad((int)r15.w, 6, 1);
    r20.xyzw = t2.Load(r16.z).xyzw;
    r16.zw = mad((int2)r15.ww, int2(6,6), int2(2,3));
    r21.xyzw = t2.Load(r16.z).xyzw;
    r22.xyzw = t2.Load(r16.w).xyzw;
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
        r19.w = dot(r8.xyzw, r23.xyzw);
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
        r23.xyzw = t2.Load(r15.w).xyzw;
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
          r20.w = dot(r0.zxy, r22.xyw);
          r21.z = dot(r0.zxy, r19.xyz);
          r19.w = r21.z * r19.w;
          r18.w = r20.w * r18.w + r19.w;
          r23.x = 0.5 * r18.w;
        } else {
          r18.w = dot(r22.xyw, r22.xyw);
          r19.w = 1 + r18.w;
          r23.y = rcp(r19.w);
          r18.w = rsqrt(r18.w);
          r24.xyz = r22.xyw * r18.www;
          r23.x = dot(r0.zxy, r24.xyz);
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
        r17.w = saturate(r17.w * r11.z);
        r15.w = saturate(r23.w * r15.w);
        r19.w = dot(r0.zxy, r19.xyz);
        r19.x = dot(r3.xyz, r19.xyz);
        r19.y = r19.x * 2 + 2;
        r19.y = rsqrt(r19.y);
        r19.z = r19.w + r1.w;
        r19.z = saturate(r19.z * r19.y);
        r19.y = saturate(r19.y * r19.x + r19.y);
        r20.w = cmp(0 < r17.w);
        if (r20.w != 0) {
          r21.z = -r17.w * r17.w + 1;
          r21.z = sqrt(r21.z);
          r22.x = dot(r1.ww, r19.ww);
          r22.y = r22.x + -r19.x;
          r22.z = cmp(r22.y >= r21.z);
          if (r22.z != 0) {
            r19.z = 1;
            r19.y = abs(r1.w);
          } else {
            r22.z = -r22.y * r22.y + 1;
            r22.z = rsqrt(r22.z);
            r22.z = r22.z * r17.w;
            r22.w = -r22.y * r19.w + r1.w;
            r23.x = r22.z * r22.w;
            r22.y = -r22.y * r19.x + r14.x;
            r23.y = r19.w * r19.w;
            r23.y = -r1.w * r1.w + -r23.y;
            r23.y = 1 + r23.y;
            r23.y = -r19.x * r19.x + r23.y;
            r22.x = saturate(r22.x * r19.x + r23.y);
            r22.x = sqrt(r22.x);
            r22.xy = r22.zz * r22.xy;
            r23.y = r22.x * r1.w;
            r23.z = r23.y + r23.y;
            r23.w = r19.w * r21.z + r1.w;
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
            r19.w = r19.w + r1.w;
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
        r15.w = r11.w * r11.w + r15.w;
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
        r19.xyz = r16.xxx * r6.wyz;
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
    r15.w = (int)r15.w & asint(cb1[23].w);
    r19.xyz = r20.xyz + r17.xyz;
    r16.xzw = r18.xyz + r16.xzw;
    r17.xyz = r15.www ? r19.xyz : r17.xyz;
    r18.xyz = r15.www ? r16.xzw : r18.xyz;
    r9.w = (int)r9.w + 1;
  }
  r8.xyz = r18.xyz + r17.xyz;
  r11.yzw = r13.www * r0.zxy + -r3.xyz;
  r1.w = saturate(r1.w);
  r3.x = (int)r4.w + asint(cb2[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t3.Load(r3.y).x;
  r3.y = min(asuint(cb2[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t3.Load(r3.x).x;
  r3.z = max(0.00100000005, r3.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r4.w = -1 + cb0[195].z;
  r3.z = r4.w + -r3.z;
  r11.x = 0;
  r12.xyz = float3(0,0,0);
  r4.w = 1;
  r5.w = 0;
  r8.w = 1;
  r9.w = 0;
  while (true) {
    r10.w = cmp((uint)r9.w >= (uint)r3.y);
    if (r10.w != 0) break;
    r10.w = cmp(r4.w < 0.00100000005);
    if (r10.w != 0) {
      break;
    }
    r10.w = (int)r3.x + (int)r9.w;
    r10.w = t4.Load(r10.w).x;
    r13.xyz = -cb4[r10.w+0].xyz + r2.xyz;
    r12.w = dot(r13.xyz, r13.xyz);
    r13.w = sqrt(r12.w);
    r14.x = cmp(r13.w < cb4[r10.w+0].w);
    if (r14.x != 0) {
      r14.x = cmp(0 < cb4[r10.w+341].z);
      if (r14.x != 0) {
        r14.x = (uint)r10.w << 2;
        r15.xyz = cb4[r14.x+1024].xyz * r2.yyy;
        r15.xyz = r2.xxx * cb4[r14.x+1023].xyz + r15.xyz;
        r15.xyz = r2.zzz * cb4[r14.x+1025].xyz + r15.xyz;
        r15.xyz = cb4[r14.x+1026].xyz + r15.xyz;
        r16.xyz = cb4[r14.x+1024].xyz * r11.zzz;
        r16.xyz = r11.yyy * cb4[r14.x+1023].xyz + r16.xyz;
        r14.xyz = r11.www * cb4[r14.x+1025].xyz + r16.xyz;
        r14.xyz = rcp(r14.xyz);
        r16.xyz = -r15.xyz * r14.xyz + -r14.xyz;
        r14.xyz = -r15.xyz * r14.xyz + r14.xyz;
        r14.xyz = max(r16.xyz, r14.xyz);
        r14.y = min(r14.y, r14.z);
        r14.x = min(r14.x, r14.y);
        r14.xyz = r14.xxx * r11.yzw + r2.xyz;
        r16.xyz = cb4[r10.w+682].xyz + cb4[r10.w+0].xyz;
        r16.xyz = -r16.xyz + r14.xyz;
        r14.x = cb4[r10.w+2387].w * 0.699999988;
        r17.xyz = -cb4[r10.w+2387].www * float3(0.5,0.5,0.5) + cb4[r10.w+2387].xyz;
        r18.xyz = cb4[r10.w+2387].xyz * r15.xyz;
        r19.xyz = cmp(r18.xyz < -r17.xyz);
        r20.xyz = r15.xyz * cb4[r10.w+2387].xyz + r17.xyz;
        r20.xyz = abs(r20.xyz);
        r19.xyz = r19.xyz ? r20.xyz : 0;
        r18.xyz = cmp(r17.xyz < r18.xyz);
        r15.xyz = r15.xyz * cb4[r10.w+2387].xyz + -r17.xyz;
        r15.xyz = abs(r15.xyz);
        r15.xyz = r18.xyz ? r15.xyz : 0;
        r14.y = dot(r19.xyz, float3(1,1,1));
        r14.z = dot(r15.xyz, float3(1,1,1));
        r14.y = r14.y + r14.z;
        r14.x = 1 / r14.x;
        r14.x = saturate(r14.y * r14.x);
        r14.y = r14.x * -2 + 3;
        r14.x = r14.x * r14.x;
        r15.x = -r14.y * r14.x + 1;
      } else {
        r13.w = saturate(r13.w / cb4[r10.w+0].w);
        r14.x = dot(r11.yzw, r13.xyz);
        r12.w = -cb4[r10.w+0].w * cb4[r10.w+0].w + r12.w;
        r12.w = r14.x * r14.x + -r12.w;
        r14.y = cmp(r12.w >= 0);
        r12.w = sqrt(r12.w);
        r12.w = r12.w + -r14.x;
        r13.xyz = r12.www * r11.yzw + r13.xyz;
        r17.yzw = -cb4[r10.w+682].xyz + r13.xyz;
        r12.w = r13.w * 2.5 + -1.5;
        r12.w = max(0, r12.w);
        r13.x = r12.w * r12.w;
        r12.w = -r12.w * 2 + 3;
        r17.x = -r13.x * r12.w + 1;
        r15.xyzw = r14.yyyy ? r17.xyzw : r11.xyzw;
        r16.xyz = r15.yzw;
      }
      r16.w = cb4[r10.w+341].y;
      r13.xyzw = t5.SampleLevel(s3_s, r16.xyzw, r3.z).xyzw;
      r13.xyz = cb4[r10.w+341].xxx * r13.xyz;
      r13.xyz = r13.xyz * r15.xxx;
      r12.xyz = r13.xyz * r4.www + r12.xyz;
      r12.w = -r13.w * r15.x + 1;
      r4.w = r12.w * r4.w;
      r10.w = cb4[r10.w+682].w * r15.x;
      r5.w = r10.w * r8.w + r5.w;
      r10.w = 1 + -r15.x;
      r8.w = r10.w * r8.w;
    }
    r9.w = (int)r9.w + 1;
  }
  r3.xyz = cb0[157].xyz * r12.xyz;
  r4.w = dot(cb0[157].xyz, float3(0.300000012,0.589999974,0.109999999));
  r4.w = r5.w * r4.w;
  r5.w = saturate(r3.w * cb0[197].x + cb0[197].y);
  r8.w = r5.w * -2 + 3;
  r5.w = r5.w * r5.w;
  r5.w = r8.w * r5.w;
  r4.w = max(9.99999975e-005, r4.w);
  r0.w = r0.w / r4.w;
  r0.w = min(cb0[197].z, r0.w);
  r0.w = -1 + r0.w;
  r0.w = r5.w * r0.w + 1;
  r3.xyz = r3.xyz * r0.www;
  r0.w = cmp(cb0[145].x == 0.000000);
  if (r0.w != 0) {
    r0.w = asuint(cb0[144].y);
    r12.xy = r0.ww * float2(32.6650009,11.8149996) + v6.xy;
    r0.w = dot(r12.xy, float2(0.0671105608,0.00583714992));
    r0.w = frac(r0.w);
    r0.w = 52.9829178 * r0.w;
    r0.w = frac(r0.w);
    r0.w = -0.5 + r0.w;
    r12.xyzw = cb0[1].xyzw * r1.yyyy;
    r12.xyzw = r1.xxxx * cb0[0].xyzw + r12.xyzw;
    r12.xyzw = r1.zzzz * cb0[2].xyzw + r12.xyzw;
    r12.xyzw = cb0[3].xyzw + r12.xyzw;
    r11.xyz = r11.yzw * v6.www + r1.xyz;
    r13.xyzw = cb0[1].xyzw * r11.yyyy;
    r13.xyzw = r11.xxxx * cb0[0].xyzw + r13.xyzw;
    r11.xyzw = r11.zzzz * cb0[2].xyzw + r13.xyzw;
    r11.xyzw = cb0[3].xyzw + r11.xyzw;
    r4.w = rcp(r12.w);
    r13.xyz = r12.xyz * r4.www;
    r4.w = rcp(r11.w);
    r12.xy = v6.ww * cb0[30].zw + r12.zw;
    r5.w = rcp(r12.y);
    r11.xyz = r11.xyz * r4.www + -r13.xyz;
    r4.w = dot(r11.xy, r11.xy);
    r4.w = sqrt(r4.w);
    r8.w = 0.5 * r4.w;
    r12.yz = r13.xy * r8.ww + r11.xy;
    r12.yz = -r4.ww * float2(0.5,0.5) + abs(r12.yz);
    r12.yz = max(float2(0,0), r12.yz);
    r12.yz = r12.yz / abs(r11.xy);
    r12.yz = float2(1,1) + -r12.yz;
    r4.w = min(r12.y, r12.z);
    r4.w = r4.w / r8.w;
    r11.xyz = r11.xyz * r4.www;
    r4.w = -r12.x * r5.w + r13.z;
    r4.w = 4 * r4.w;
    r4.w = max(abs(r11.z), r4.w);
    r12.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb2[176].xy * r12.xy;
    r11.xy = cb2[176].xy * r11.xy;
    r5.w = 0.0833333358 * r4.w;
    r11.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r11.xyz;
    r12.xyz = r11.xyz * r0.www + r13.xyz;
    r0.w = 1;
    r14.x = 0;
    r15.x = 0;
    r13.xyz = float3(0,0,0);
    r8.w = 0;
    r9.w = 0;
    r10.w = 0;
    r11.w = 0;
    r12.w = 0;
    while (true) {
      r15.w = cmp((uint)r12.w >= 12);
      if (r15.w != 0) break;
      r15.w = (uint)r12.w;
      r16.xyzw = float4(1,2,3,4) + r15.wwww;
      r17.xyzw = r16.xxxy * r11.xyzz + r12.xyzz;
      r18.xyzw = r16.yyzz * r11.xyxy + r12.xyxy;
      r16.xyzw = r16.wwzw * r11.xyzz + r12.xyzz;
      r15.w = r3.w * 0.666666687 + r0.w;
      r19.x = r3.w * 0.666666687 + r15.w;
      r20.x = t8.SampleLevel(s4_s, r17.xy, r0.w).x;
      r20.y = t8.SampleLevel(s4_s, r18.xy, r0.w).x;
      r20.z = t8.SampleLevel(s4_s, r18.zw, r15.w).x;
      r20.w = t8.SampleLevel(s4_s, r16.xy, r15.w).x;
      r16.xy = r17.zw;
      r16.xyzw = r16.xyzw + -r20.xyzw;
      r17.xyzw = r4.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r16.xyzw;
      r17.xyzw = cmp(abs(r17.xyzw) < r5.wwww);
      r18.xy = (int2)r17.zw | (int2)r17.xy;
      r15.w = (int)r18.y | (int)r18.x;
      if (r15.w != 0) {
        r15.x = r16.x;
        r13.xyz = r16.yzw;
        r8.w = r17.x;
        r9.w = r17.y;
        r10.w = r17.z;
        r11.w = -1;
        break;
      }
      r14.x = r16.w;
      r12.w = (int)r12.w + 4;
      r0.w = r19.x;
      r15.x = r16.x;
      r13.xyz = r16.yzw;
      r8.w = r17.x;
      r9.w = r17.y;
      r10.w = r17.z;
      r11.w = r15.w;
    }
    if (r11.w != 0) {
      r13.w = 2;
      r16.xy = r13.yz;
      r16.z = 3;
      r13.yzw = r10.www ? r13.xyw : r16.xyz;
      r15.y = r13.x;
      r15.z = 1;
      r13.xyz = r9.www ? r15.xyz : r13.yzw;
      r14.y = r15.x;
      r14.z = 0;
      r13.xyz = r8.www ? r14.xyz : r13.xyz;
      r0.w = (uint)r12.w;
      r0.w = r13.z + r0.w;
      r4.w = r13.x + -r13.y;
      r4.w = saturate(r13.x / r4.w);
      r0.w = r4.w + r0.w;
      r11.xyz = r11.xyz * r0.www + r12.xyz;
      r11.xy = cb2[176].zw * r11.xy;
      r11.xy = r11.xy * float2(2,-2) + float2(-1,1);
      r11.xy = cb0[66].xy * r11.xy;
      r11.xy = r11.xy / cb0[66].xy;
      r12.xyz = cb0[123].xyw * r11.yyy;
      r12.xyz = r11.xxx * cb0[122].xyw + r12.xyz;
      r12.xyz = r11.zzz * cb0[124].xyw + r12.xyz;
      r12.xyz = cb0[125].xyw + r12.xyz;
      r11.zw = r12.xy / r12.zz;
      r12.xy = r11.zw * cb2[177].xy + cb2[177].zw;
      r11.xy = saturate(abs(r11.xy) * float2(5,5) + float2(-4,-4));
      r0.w = dot(r11.xy, r11.xy);
      r0.w = 1 + -r0.w;
      r0.w = max(0, r0.w);
      r11.xy = saturate(abs(r11.zw) * float2(5,5) + float2(-4,-4));
      r4.w = dot(r11.xy, r11.xy);
      r4.w = 1 + -r4.w;
      r4.w = max(0, r4.w);
      r0.w = min(r4.w, r0.w);
      r11.xyz = t9.SampleLevel(s5_s, r12.xy, 0).xyz;
      r11.xyz = min(float3(0,0,0), -r11.xyz);
      r4.w = saturate(-r3.w * 6.5999999 + 2);
      r0.w = r4.w * r0.w;
      r4.w = 1;
      r11.xyz = -r11.xyz * r0.www;
      r11.xyz = cb2[178].xxx * r11.xyz;
      r0.w = -r4.w * r0.w + 1;
      r3.xyz = r3.xyz * r0.www + r11.xyz;
    }
  }
  r11.xyzw = r3.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r11.x * r11.x;
  r1.w = -9.27999973 * r1.w;
  r1.w = exp2(r1.w);
  r0.w = min(r1.w, r0.w);
  r0.w = r0.w * r11.x + r11.y;
  r11.xy = r0.ww * float2(-1.03999996,1.03999996) + r11.zw;
  r6.xyz = r6.wyz;
  r0.w = r14.w * r11.y;
  r11.xyz = r6.xyz * r11.xxx + r0.www;
  r0.w = dot(cb2[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r2.w = -1;
    r0.w = dot(cb2[122].xyzw, r2.xyzw);
    r0.w = saturate(abs(r0.w) * cb2[129].x + cb2[129].y);
    r0.w = 1 + -r0.w;
    r12.xyz = -cb2[123].xyz + r2.xyz;
    r1.w = dot(r12.xyz, cb2[124].xyz);
    r1.w = cb2[124].w + -abs(r1.w);
    r1.w = saturate(cb2[129].x * r1.w);
    r2.w = dot(r12.xyz, cb2[125].xyz);
    r2.w = cb2[125].w + -abs(r2.w);
    r2.w = saturate(cb2[129].x * r2.w);
    r1.w = r2.w * r1.w;
    r0.w = r1.w * r0.w;
    r1.w = dot(cb2[122].yzx, r0.xyz);
    r1.w = saturate(r1.w * cb2[130].x + cb2[130].y);
    r2.w = -0.200000003 + r3.w;
    r2.w = saturate(10 * r2.w);
    r2.w = 1 + -r2.w;
    r0.w = r1.w * r0.w;
    r0.w = r0.w * r2.w;
    r1.w = cmp(0 < r0.w);
    if (r1.w != 0) {
      r12.xyz = -cb0[67].xyz + r2.xyz;
      r1.w = dot(r12.xyz, r12.xyz);
      r1.w = rsqrt(r1.w);
      r12.xyz = r12.xyz * r1.www;
      r1.w = dot(r12.xyz, -cb2[122].xyz);
      r1.w = r1.w + r1.w;
      r12.xyz = cb2[122].xyz * r1.www + r12.xyz;
      r13.xyz = cb2[127].xyz * r0.xxx;
      r13.xyz = r0.zzz * cb2[126].xyz + r13.xyz;
      r0.xyz = r0.yyy * cb2[128].xyz + r13.xyz;
      r1.w = dot(r12.xyz, r0.xyz);
      r1.w = r1.w + r1.w;
      r0.xyz = r0.xyz * -r1.www + r12.xyz;
      r0.xyz = r0.xyz * cb2[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r12.xyz = cb0[13].xyz * r0.yyy;
      r12.xyz = r0.xxx * cb0[12].xyz + r12.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r12.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r12.xyz = cb2[r1.w+132].xyw * r0.yyy;
      r12.xyz = r0.xxx * cb2[r1.w+131].xyw + r12.xyz;
      r0.xyz = r0.zzz * cb2[r1.w+133].xyw + r12.xyz;
      r0.xyz = cb2[r1.w+134].xyw + r0.xyz;
      r1.w = cb2[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb2[141].xy, r0.xy);
      r0.xy = min(cb2[141].xy, r0.xy);
      r0.xy = r0.xy * cb2[r1.w+139].xy + cb2[r1.w+139].zw;
      r12.xyzw = t6.SampleLevel(s3_s, r0.xy, 0).xyzw;
      r0.x = r12.w * r0.w;
    } else {
      r12.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r3.xyz = r0.xxx * r3.xyz + r12.xyz;
  }
  r0.xyz = r3.xyz * r11.xyz;
  r3.xyz = r6.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r3.xyz = r6.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r3.xyz;
  r3.xyz = r6.xyz * float3(2.75519991,2.75519991,2.75519991) + r3.xyz;
  r3.xyz = float3(1.33200002,1.33200002,1.33200002) + r3.xyz;
  r3.xyz = max(float3(1,1,1), r3.xyz);
  r0.xyz = r0.xyz * r3.xyz + r8.xyz;
  r0.w = cmp(0 < cb2[150].w);
  if (r0.w != 0) {
    r3.xyz = cb0[5].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[4].xyw + r3.xyz;
    r3.xyz = r2.zzz * cb0[6].xyw + r3.xyz;
    r3.xyz = cb0[7].xyw + r3.xyz;
    r3.xy = r3.xy / r3.zz;
    r8.xy = r3.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r3.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r8.z = cb0[208].z * r0.w;
    r3.xyzw = t7.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r8.x = v5.w * r3.w;
    r3.xyz = v5.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v5.xyz;
    r8.x = v5.w;
  }
  r6.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r6.xyz = r6.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r6.xyz + r0.xyz;
  r7.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r5.xyz = -cb1[5].xyz + r2.xyz;
    r6.xyz = float3(1,1,1) + cb1[19].xyz;
    r5.xyz = cmp(r6.xyz < abs(r5.xyz));
    r0.w = (int)r5.y | (int)r5.x;
    r0.w = (int)r5.z | (int)r0.w;
    r1.w = dot(r2.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r2.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r2.x = 1;
    r7.xyzw = r0.wwww ? r2.yzwx : r7.xyzw;
    o0.w = r7.w;
  } else {
    o0.w = r7.w;
  }
  r0.xyz = r10.xyz * r4.xyz + r0.xyz;
  r0.xyz = r0.xyz + r7.xyz;
  r0.xyz = r0.xyz * r8.xxx + r3.xyz;
  r2.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
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