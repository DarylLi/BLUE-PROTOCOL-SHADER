// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
TextureCube<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

TextureCubeArray<float4> t7 : register(t7);

Buffer<uint4> t6 : register(t6);

Buffer<uint4> t5 : register(t5);

Buffer<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Texture3D<uint4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[7];
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
  float4 v2 : TEXCOORD7,
  float4 v3 : SV_Position0,
  uint v4 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22;
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
  r4.xyz = cb0[138].www * float3(0,0,1) + cb0[138].xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.xyz = r4.yyy * r0.xyz;
  r0.xyz = r4.xxx * v0.xyz + r0.xyz;
  r0.xyz = r4.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = dot(r0.xyz, r3.xyz);
  r4.xyz = r0.xyz * r0.www;
  r4.xyz = r4.xyz * float3(2,2,2) + -r3.xyz;
  r5.xyz = cb4[4].xxx * cb4[1].xyz;
  r4.xyz = t12.Sample(s6_s, r4.xyz).xyz;
  r1.w = dot(r4.xyz, float3(0.300000012,0.589999974,0.109999999));
  r6.xyz = r1.www + -r4.xyz;
  r4.xyz = cb4[4].yyy * r6.xyz + r4.xyz;
  r4.xyz = cb4[4].zzz * r4.xyz;
  r6.xyz = cmp(float3(0,0,0) >= r4.xyz);
  r4.xyz = log2(r4.xyz);
  r4.xyz = cb4[4].www * r4.xyz;
  r4.xyz = exp2(r4.xyz);
  r4.xyz = r6.xyz ? float3(0,0,0) : r4.xyz;
  r4.xyz = r4.xyz * cb4[5].xxx + cb4[3].xyz;
  r4.xyz = max(float3(0.00999999978,0.00999999978,0.00999999978), r4.xyz);
  r4.xyz = min(float3(1,1,1), r4.xyz);
  r6.xyz = saturate(cb4[5].yzw);
  r1.w = r6.z * cb0[139].y + cb0[139].x;
  r7.w = saturate(cb4[6].x);
  r3.w = cmp(0 < cb1[20].z);
  if (r3.w != 0) {
    r8.xyz = r2.xyz * cb0[211].xyz + cb0[212].xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = min(float3(0.99000001,0.99000001,0.99000001), r8.xyz);
    r8.xyz = cb0[213].xyz * r8.xyz;
    r9.xyz = (int3)r8.xyz;
    r9.w = 0;
    r9.xyzw = t0.Load(r9.xyzw).xyzw;
    r9.xyzw = (uint4)r9.xyzw;
    r3.w = 1 + cb0[213].w;
    r8.xyz = r8.xyz / r9.www;
    r8.xyz = frac(r8.xyz);
    r8.xyz = cb0[213].www * r8.xyz;
    r8.xyz = r9.xyz * r3.www + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
    r8.xyz = cb0[214].xyz * r8.xyz;
    r8.x = t1.SampleLevel(s0_s, r8.xyz, 0).x;
  } else {
    r8.x = 1;
  }
  r3.w = 0.0799999982 * r6.y;
  r6.yzw = -r6.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
  r6.yzw = r6.xxx * r6.yzw + r3.www;
  r4.xyz = -r4.xyz * r6.xxx + r4.xyz;
  r4.xyz = r4.xyz * cb0[136].www + cb0[136].xyz;
  r6.xyz = r6.yzw * cb0[137].www + cb0[137].xyz;
  r3.w = cmp(0 != cb0[183].w);
  r9.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r9.w = 0;
  r4.w = r6.x;
  r4.xyzw = r3.wwww ? r9.xyzw : r4.xyzw;
  r6.yz = r3.ww ? float2(0,0) : r6.yz;
  r9.xy = -cb0[129].xy + v3.xy;
  r9.xy = cb0[131].zw * r9.xy;
  r9.xy = (uint2)r9.xy;
  r3.w = v3.w * cb2[3].x + cb2[3].y;
  r3.w = log2(r3.w);
  r3.w = cb2[3].z * r3.w;
  r3.w = max(0, r3.w);
  r3.w = (uint)r3.w;
  r5.w = asint(cb2[1].z) + -1;
  r3.w = min((uint)r5.w, (uint)r3.w);
  r9.xy = (uint2)r9.xy >> asuint(cb2[2].xx);
  r3.w = mad((int)r3.w, asint(cb2[1].y), (int)r9.y);
  r3.w = mad((int)r3.w, asint(cb2[1].x), (int)r9.x);
  if (cb2[0].z != 0) {
    r9.xyz = asint(cb2[8].zzz) & int3(2,4,8);
    r9.yzw = r9.xyz ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r10.xyzw = cb2[51].xyzw * r2.yyyy;
      r10.xyzw = r2.xxxx * cb2[50].xyzw + r10.xyzw;
      r10.xyzw = r2.zzzz * cb2[52].xyzw + r10.xyzw;
      r10.xyzw = cb2[53].xyzw + r10.xyzw;
      r10.xy = r10.xy / r10.ww;
      r11.xy = cmp(r10.xy >= float2(0,0));
      r11.zw = cmp(float2(1,1) >= r10.xy);
      r11.xy = r11.zw ? r11.xy : 0;
      r5.w = r11.y ? r11.x : 0;
      if (r5.w != 0) {
        r5.w = t3.SampleLevel(s2_s, r10.xy, 0).x;
        r10.x = cmp(r10.z < r5.w);
        r5.w = cmp(0.99000001 < r5.w);
        r5.w = (int)r5.w | (int)r10.x;
        r8.x = r5.w ? 1.000000 : 0;
      } else {
        r8.x = 1;
      }
    } else {
      r8.x = 1;
    }
    if (cb2[9].z != 0) {
      r5.w = cb2[9].z;
      r10.x = 0;
      while (true) {
        r10.y = cmp((uint)r10.x >= asuint(cb2[9].z));
        if (r10.y != 0) break;
        r10.y = dot(cb2[10].xyzw, icb[r10.x+0].xyzw);
        r10.y = cmp(v3.w < r10.y);
        if (r10.y != 0) {
          r5.w = r10.x;
          break;
        }
        r10.x = (int)r10.x + 1;
      }
      r10.x = cmp((uint)r5.w < asuint(cb2[9].z));
      if (r10.x != 0) {
        r10.x = (uint)r5.w << 2;
        r11.xyzw = cb2[r10.x+12].xyzw * r2.yyyy;
        r11.xyzw = r2.xxxx * cb2[r10.x+11].xyzw + r11.xyzw;
        r11.xyzw = r2.zzzz * cb2[r10.x+13].xyzw + r11.xyzw;
        r10.xyzw = cb2[r10.x+14].xyzw + r11.xyzw;
        r11.xyzw = r10.xyxy / r10.wwww;
        r10.xy = cmp(r11.zw >= cb2[r5.w+27].xy);
        r12.xy = cmp(cb2[r5.w+27].zw >= r11.zw);
        r10.xy = r10.xy ? r12.xy : 0;
        r5.w = r10.y ? r10.x : 0;
        if (r5.w != 0) {
          r11.xyzw = r11.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r10.xy = frac(r11.zw);
          r11.xyzw = floor(r11.xyzw);
          r12.xyzw = float4(0.5,1.5,0.5,0.5) + r11.zwzw;
          r12.xyzw = cb2[31].zwzw * r12.xyzw;
          r13.x = t2.SampleLevel(s1_s, r12.xy, 0).x;
          r11.xyzw = float4(1.5,1.5,1.5,0.5) + r11.xyzw;
          r11.xyzw = cb2[31].zwzw * r11.xyzw;
          r13.y = t2.SampleLevel(s1_s, r11.xy, 0).x;
          r13.z = t2.SampleLevel(s1_s, r11.zw, 0).x;
          r13.w = t2.SampleLevel(s1_s, r12.zw, 0).x;
          r5.w = r10.z * 4000 + -1;
          r11.xyzw = saturate(r13.xyzw * float4(4000,4000,4000,4000) + -r5.wwww);
          r10.zw = r11.zy + -r11.wx;
          r10.xz = r10.xx * r10.zw + r11.wx;
          r5.w = r10.z + -r10.x;
          r5.w = r10.y * r5.w + r10.x;
        } else {
          r5.w = 1;
        }
      } else {
        r5.w = 1;
      }
    } else {
      r5.w = 1;
    }
    r9.x = 1;
    r9.x = dot(float4(1,1,1,1), r9.xyzw);
    r8.yzw = r9.yzw;
    r9.y = dot(r8.xyzw, float4(1,1,1,1));
    r9.y = -1 + r9.y;
    r9.x = r9.x * r9.y + 1;
    r9.y = saturate(v3.w * cb2[9].x + cb2[9].y);
    r9.y = r9.y * r9.y;
    r9.x = r9.x + -r5.w;
    r5.w = r9.y * r9.x + r5.w;
    r9.x = min(1, r5.w);
    r9.x = r9.x + r5.w;
    r9.x = cmp(0 < r9.x);
    if (r9.x != 0) {
      r9.x = dot(cb2[4].xyz, cb2[4].xyz);
      r9.x = rsqrt(r9.x);
      r9.xyz = cb2[4].xyz * r9.xxx;
      r9.w = dot(r0.xyz, r9.xyz);
      r10.x = saturate(r9.w);
      r10.y = max(cb0[226].y, r1.w);
      r9.x = dot(r3.xyz, r9.xyz);
      r9.y = r9.x * 2 + 2;
      r9.y = rsqrt(r9.y);
      r9.z = r9.w + r0.w;
      r9.z = saturate(r9.z * r9.y);
      r9.x = saturate(r9.y * r9.x + r9.y);
      r9.y = 9.99999975e-006 + abs(r0.w);
      r9.y = min(1, r9.y);
      r11.xyz = r10.xxx * r4.xyz;
      r11.xyz = float3(0.318309873,0.318309873,0.318309873) * r11.xyz;
      r9.w = r10.y * r10.y;
      r10.z = r9.w * r9.w;
      r10.w = r9.z * r10.z + -r9.z;
      r9.z = r10.w * r9.z + 1;
      r9.z = r9.z * r9.z;
      r9.z = 3.14159274 * r9.z;
      r9.z = r10.z / r9.z;
      r10.y = -r10.y * r10.y + 1;
      r10.z = r9.y * r10.y + r9.w;
      r9.w = r10.x * r10.y + r9.w;
      r9.y = r9.y * r9.w;
      r9.y = r10.x * r10.z + r9.y;
      r9.y = rcp(r9.y);
      r9.y = r9.z * r9.y;
      r9.x = 1 + -r9.x;
      r9.z = r9.x * r9.x;
      r9.z = r9.z * r9.z;
      r9.w = r9.z * r9.x;
      r10.y = saturate(50 * r6.y);
      r9.x = -r9.z * r9.x + 1;
      r6.x = r4.w;
      r12.xyz = r9.xxx * r6.xyz;
      r9.xzw = r10.yyy * r9.www + r12.xyz;
      r9.y = 0.5 * r9.y;
      r9.xyz = r9.yyy * r9.xzw;
      r9.xyz = r10.xxx * r9.xyz;
      r10.xyz = cb2[5].xyz * r5.www;
      r11.xyz = r11.xyz * r10.xyz;
      r9.xyz = r10.yzx * r9.yzx;
      r11.w = r9.z;
    } else {
      r9.xy = float2(0,0);
      r11.xyzw = float4(0,0,0,0);
    }
    r5.w = asuint(cb2[8].z) >> 8;
    r5.w = (int)r5.w & asint(cb1[23].w);
    r10.xyzw = r5.wwww ? r11.xyzw : float4(0,0,0,0);
    r9.xy = r5.ww ? r9.xy : float2(0,0);
  } else {
    r10.xyzw = float4(0,0,0,0);
    r9.xy = float2(0,0);
  }
  r5.w = (uint)r3.w << 1;
  r5.w = t5.Load(r5.w).x;
  r5.w = min(asuint(cb2[0].x), (uint)r5.w);
  bitmask.z = ((~(-1 << 31)) << 1) & 0xffffffff;  r9.z = (((uint)r3.w << 1) & bitmask.z) | ((uint)1 & ~bitmask.z);
  r9.z = t5.Load(r9.z).x;
  r5.w = min(asuint(cb2[0].x), (uint)r5.w);
  r9.w = dot(-r3.xyz, r0.xyz);
  r9.w = r9.w + r9.w;
  r11.xyz = r0.xyz * -r9.www + -r3.xyz;
  r9.w = max(cb0[226].y, r1.w);
  r11.w = r9.w * r9.w;
  r9.w = -r9.w * r9.w + 1;
  r12.x = r0.w + r0.w;
  r12.y = r12.x * r0.w + -1;
  r12.z = 9.99999975e-006 + abs(r0.w);
  r12.z = min(1, r12.z);
  r13.xyz = float3(0.318309873,0.318309873,0.318309873) * r4.xyz;
  r12.w = r11.w * r11.w;
  r13.w = saturate(50 * r6.y);
  r8.yw = float2(1,1);
  r6.w = r4.w;
  r14.xyz = r10.xyz;
  r15.x = r10.w;
  r15.yz = r9.xy;
  r4.w = 0;
  while (true) {
    r14.w = cmp((uint)r4.w >= (uint)r5.w);
    if (r14.w != 0) break;
    r14.w = (int)r4.w + (int)r9.z;
    r14.w = t6.Load(r14.w).x;
    r15.w = (int)r14.w * 6;
    r16.xyzw = t4.Load(r15.w).xyzw;
    r15.w = mad((int)r14.w, 6, 1);
    r17.xyzw = t4.Load(r15.w).xyzw;
    r18.xy = mad((int2)r14.ww, int2(6,6), int2(2,3));
    r19.xyzw = t4.Load(r18.x).xyzw;
    r18.xyzw = t4.Load(r18.y).xyzw;
    r15.w = cmp(r17.w == 0.000000);
    r20.x = cmp(-2 < r18.x);
    r16.xyz = r16.xyz + -r2.xyz;
    r20.y = dot(r16.xyz, r16.xyz);
    r20.z = rsqrt(r20.y);
    r21.xyz = r20.zzz * r16.xyz;
    r20.z = r16.w * r16.w;
    r20.y = r20.y * r20.z;
    r20.y = -r20.y * r20.y + 1;
    r20.y = max(0, r20.y);
    r20.y = r20.y * r20.y;
    r22.xyz = r16.xyz * r16.www;
    r16.w = dot(r22.xyz, r22.xyz);
    r16.w = min(1, r16.w);
    r16.w = 1 + -r16.w;
    r16.w = log2(r16.w);
    r16.w = r17.w * r16.w;
    r16.w = exp2(r16.w);
    r16.w = r15.w ? r20.y : r16.w;
    r17.w = dot(r21.xyz, r19.xyz);
    r17.w = r17.w + -r18.x;
    r17.w = saturate(r17.w * r18.y);
    r17.w = r17.w * r17.w;
    r17.w = r17.w * r16.w;
    r16.w = r20.x ? r17.w : r16.w;
    r17.w = cmp(0 < r16.w);
    if (r17.w != 0) {
      r17.w = (int)r19.w & 255;
      r17.w = r17.w ? 1 : 0;
      if (r17.w != 0) {
        r20.xyzw = (int4)r19.wwww & int4(1,2,4,8);
        r20.xyzw = r20.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r17.w = (uint)r19.w >> 4;
        if (1 == 0) r18.x = 0; else if (1+4 < 32) {         r18.x = (uint)r19.w << (32-(1 + 4)); r18.x = (uint)r18.x >> (32-1);        } else r18.x = (uint)r19.w >> 4;
        r21.x = r18.x ? 1 : 0;
        r19.xyz = (int3)r17.www & int3(2,4,8);
        r21.yzw = r19.xyz ? float3(1,1,1) : float3(0,0,0);
        r17.w = dot(r21.xyzw, float4(1,1,1,1));
        r18.x = dot(r20.xyzw, float4(1,1,1,1));
        r18.y = dot(r8.xyyy, r20.xyzw);
        r18.y = -1 + r18.y;
        r18.x = r18.x * r18.y + 1;
        r18.xy = r18.xx * r17.ww;
      } else {
        r18.xy = float2(1,1);
      }
      r17.w = r18.x + r18.y;
      r17.w = cmp(0 < r17.w);
      if (r17.w != 0) {
        r14.w = mad((int)r14.w, 6, 4);
        r20.xyzw = t4.Load(r14.w).xyzw;
        r14.w = f16tof32(r18.w);
        r17.w = 0.5 * r14.w;
        r19.xyz = -r17.www * r20.xyz + r16.xyz;
        r16.xyz = r17.www * r20.xyz + r16.xyz;
        r17.w = cmp(0 < r14.w);
        if (r17.w != 0) {
          r18.y = dot(r19.xyz, r19.xyz);
          r18.w = dot(r16.xyz, r16.xyz);
          r18.y = rsqrt(r18.y);
          r18.w = rsqrt(r18.w);
          r20.x = r18.y * r18.w;
          r20.y = dot(r19.xyz, r16.xyz);
          r20.y = r20.y * r20.x;
          r20.z = r20.y * 0.5 + r20.x;
          r20.z = 0.5 + r20.z;
          r21.y = r20.x / r20.z;
          r20.x = dot(r0.xyz, r19.xyz);
          r20.z = dot(r0.xyz, r16.xyz);
          r18.w = r20.z * r18.w;
          r18.y = r20.x * r18.y + r18.w;
          r21.x = 0.5 * r18.y;
        } else {
          r18.y = dot(r19.xyz, r19.xyz);
          r18.w = 1 + r18.y;
          r21.y = rcp(r18.w);
          r18.y = rsqrt(r18.y);
          r22.xyz = r19.xyz * r18.yyy;
          r21.x = dot(r0.xyz, r22.xyz);
          r20.y = 1;
        }
        r18.y = cmp(0 < r18.z);
        r18.w = r18.z * r18.z;
        r18.w = saturate(r18.w * r21.y);
        r18.w = sqrt(r18.w);
        r20.x = cmp(r21.x < r18.w);
        r20.z = max(r21.x, -r18.w);
        r20.z = r20.z + r18.w;
        r20.z = r20.z * r20.z;
        r18.w = 4 * r18.w;
        r18.w = r20.z / r18.w;
        r18.w = r20.x ? r18.w : r21.x;
        r18.y = saturate(r18.y ? r18.w : r21.x);
        r15.w = r15.w ? r21.y : 1;
        r16.xyz = r16.xyz + -r19.xyz;
        r18.w = dot(r11.xyz, r16.xyz);
        r21.xyz = r18.www * r11.xyz + -r16.xyz;
        r20.x = dot(r19.xyz, r21.xyz);
        r18.w = r18.w * r18.w;
        r14.w = r14.w * r14.w + -r18.w;
        r14.w = saturate(r20.x / r14.w);
        r16.xyz = r14.www * r16.xyz + r19.xyz;
        r16.xyz = r17.www ? r16.xyz : r19.xyz;
        r14.w = dot(r16.xyz, r16.xyz);
        r14.w = rsqrt(r14.w);
        r16.xyz = r16.xyz * r14.www;
        r17.w = r18.z * r14.w;
        r17.w = saturate(r17.w * r9.w);
        r14.w = saturate(r20.w * r14.w);
        r18.z = dot(r0.xyz, r16.xyz);
        r16.x = dot(r3.xyz, r16.xyz);
        r16.y = r16.x * 2 + 2;
        r16.y = rsqrt(r16.y);
        r16.z = r18.z + r0.w;
        r16.z = saturate(r16.z * r16.y);
        r16.y = saturate(r16.y * r16.x + r16.y);
        r18.w = cmp(0 < r17.w);
        if (r18.w != 0) {
          r19.x = -r17.w * r17.w + 1;
          r19.x = sqrt(r19.x);
          r19.y = dot(r0.ww, r18.zz);
          r19.z = r19.y + -r16.x;
          r20.x = cmp(r19.z >= r19.x);
          if (r20.x != 0) {
            r16.z = 1;
            r16.y = abs(r0.w);
          } else {
            r20.x = -r19.z * r19.z + 1;
            r20.x = rsqrt(r20.x);
            r20.x = r20.x * r17.w;
            r20.z = -r19.z * r18.z + r0.w;
            r20.w = r20.x * r20.z;
            r19.z = -r19.z * r16.x + r12.y;
            r21.x = r18.z * r18.z;
            r21.x = -r0.w * r0.w + -r21.x;
            r21.x = 1 + r21.x;
            r21.x = -r16.x * r16.x + r21.x;
            r19.y = saturate(r19.y * r16.x + r21.x);
            r19.y = sqrt(r19.y);
            r19.yz = r20.xx * r19.yz;
            r21.x = r19.y * r0.w;
            r21.y = r21.x + r21.x;
            r21.z = r18.z * r19.x + r0.w;
            r20.x = r20.x * r20.z + r21.z;
            r20.z = r16.x * r19.x + r19.z;
            r20.z = 1 + r20.z;
            r21.w = r20.z * r19.y;
            r22.x = r20.x * r20.z;
            r22.y = r21.y * r20.x;
            r21.x = r20.x * r21.x;
            r21.x = 0.5 * r21.x;
            r21.x = r21.w * -0.5 + r21.x;
            r21.x = r22.x * r21.x;
            r22.z = -r21.w * 2 + r22.y;
            r22.y = r22.y * r22.z;
            r21.w = r21.w * r21.w + r22.y;
            r22.y = r20.z * r20.z;
            r20.z = r16.x * r19.x + r20.z;
            r20.z = r20.z * -0.5 + -0.5;
            r20.z = r22.x * r20.z;
            r20.z = r21.z * r22.y + r20.z;
            r20.x = r20.x * r20.z + r21.w;
            r20.z = r21.x + r21.x;
            r21.z = r21.x * r21.x;
            r21.z = r20.x * r20.x + r21.z;
            r20.z = r20.z / r21.z;
            r20.x = r20.z * r20.x;
            r20.z = -r20.z * r21.x + 1;
            r19.y = r20.x * r19.y;
            r19.y = r20.z * r20.w + r19.y;
            r20.x = r20.x * r21.y;
            r19.z = r20.z * r19.z + r20.x;
            r18.z = r18.z * r19.x + r19.y;
            r16.x = r16.x * r19.x + r19.z;
            r19.x = r16.x * 2 + 2;
            r19.x = rsqrt(r19.x);
            r18.z = r18.z + r0.w;
            r16.z = saturate(r18.z * r19.x);
            r16.y = saturate(r19.x * r16.x + r19.x);
          }
        }
        r15.w = r15.w * r18.y;
        r19.xyz = r15.www * r13.xyz;
        r16.x = cmp(0 < r14.w);
        r14.w = r14.w * r14.w;
        r18.z = r16.y * 3.5999999 + 0.400000006;
        r14.w = r14.w / r18.z;
        r14.w = r11.w * r11.w + r14.w;
        r14.w = min(1, r14.w);
        r8.z = r16.x ? r14.w : r12.w;
        r14.w = 0.25 * r17.w;
        r16.x = (uint)r8.z >> 1;
        r16.x = (int)r16.x + 0x1fbd1df5;
        r16.x = r16.x * 3 + r17.w;
        r14.w = r16.x * r14.w;
        r16.x = 0.00100000005 + r16.y;
        r14.w = r14.w / r16.x;
        r21.x = r14.w + r8.z;
        r21.y = r8.z / r21.x;
        r18.zw = r18.ww ? r21.xy : r8.zw;
        r14.w = cmp(r20.y < 1);
        r17.w = 1.00010002 + -r20.y;
        r20.x = 1 + r20.y;
        r17.w = r17.w / r20.x;
        r17.w = sqrt(r17.w);
        r20.x = 0.25 * r17.w;
        r20.y = (uint)r18.z >> 1;
        r20.y = (int)r20.y + 0x1fbd1df5;
        r17.w = r20.y * 3 + r17.w;
        r17.w = r20.x * r17.w;
        r16.x = r17.w / r16.x;
        r16.x = r18.z + r16.x;
        r16.x = r18.z / r16.x;
        r16.x = sqrt(r16.x);
        r16.x = r18.w * r16.x;
        r14.w = r14.w ? r16.x : r18.w;
        r16.x = r16.z * r8.z + -r16.z;
        r16.x = r16.x * r16.z + 1;
        r16.x = r16.x * r16.x;
        r16.x = 3.14159274 * r16.x;
        r16.x = r8.z / r16.x;
        r14.w = r16.x * r14.w;
        r8.z = sqrt(r8.z);
        r16.x = 1 + -r8.z;
        r16.z = r12.z * r16.x + r8.z;
        r8.z = r18.y * r16.x + r8.z;
        r8.z = r12.z * r8.z;
        r8.z = r18.y * r16.z + r8.z;
        r8.z = rcp(r8.z);
        r8.z = r14.w * r8.z;
        r14.w = 1 + -r16.y;
        r16.x = r14.w * r14.w;
        r16.x = r16.x * r16.x;
        r16.y = r16.x * r14.w;
        r14.w = -r16.x * r14.w + 1;
        r18.yzw = r14.www * r6.wyz;
        r16.xyz = r13.www * r16.yyy + r18.yzw;
        r8.z = 0.5 * r8.z;
        r16.xyz = r8.zzz * r16.xyz;
        r16.xyz = r16.xyz * r15.www;
        r17.xyz = r17.xyz * r16.www;
        r17.xyz = r17.xyz * r18.xxx;
        r18.xyz = r19.xyz * r17.xyz;
        r16.xyz = r17.xyz * r16.xyz;
      } else {
        r18.xyz = float3(0,0,0);
        r16.xyz = float3(0,0,0);
      }
    } else {
      r18.xyz = float3(0,0,0);
      r16.xyz = float3(0,0,0);
    }
    r8.z = (uint)r19.w >> 8;
    r8.z = (int)r8.z & asint(cb1[23].w);
    r17.xyz = r18.xyz + r14.xyz;
    r16.xyz = r16.xyz + r15.xyz;
    r14.xyz = r8.zzz ? r17.xyz : r14.xyz;
    r15.xyz = r8.zzz ? r16.xyz : r15.xyz;
    r4.w = (int)r4.w + 1;
  }
  r8.xyz = r15.xyz + r14.xyz;
  r9.yzw = r12.xxx * r0.xyz + -r3.xyz;
  r0.w = saturate(r0.w);
  r3.x = (int)r3.w + asint(cb2[0].w);
  r3.y = (uint)r3.x << 1;
  r3.y = t5.Load(r3.y).x;
  r3.y = min(asuint(cb2[0].y), (uint)r3.y);
  bitmask.x = ((~(-1 << 31)) << 1) & 0xffffffff;  r3.x = (((uint)r3.x << 1) & bitmask.x) | ((uint)1 & ~bitmask.x);
  r3.x = t5.Load(r3.x).x;
  r3.z = max(0.00100000005, r1.w);
  r3.z = log2(r3.z);
  r3.z = -r3.z * 1.20000005 + 1;
  r3.w = -1 + cb0[195].z;
  r3.z = r3.w + -r3.z;
  r9.x = 0;
  r10.xyz = float3(0,0,0);
  r3.w = 1;
  r4.w = 0;
  while (true) {
    r5.w = cmp((uint)r4.w >= (uint)r3.y);
    if (r5.w != 0) break;
    r5.w = cmp(r3.w < 0.00100000005);
    if (r5.w != 0) {
      break;
    }
    r5.w = (int)r3.x + (int)r4.w;
    r5.w = t6.Load(r5.w).x;
    r11.xyz = -cb3[r5.w+0].xyz + r2.xyz;
    r8.w = dot(r11.xyz, r11.xyz);
    r10.w = sqrt(r8.w);
    r11.w = cmp(r10.w < cb3[r5.w+0].w);
    if (r11.w != 0) {
      r11.w = cmp(0 < cb3[r5.w+341].z);
      if (r11.w != 0) {
        r11.w = (uint)r5.w << 2;
        r12.xyz = cb3[r11.w+1024].xyz * r2.yyy;
        r12.xyz = r2.xxx * cb3[r11.w+1023].xyz + r12.xyz;
        r12.xyz = r2.zzz * cb3[r11.w+1025].xyz + r12.xyz;
        r12.xyz = cb3[r11.w+1026].xyz + r12.xyz;
        r13.xyz = cb3[r11.w+1024].xyz * r9.zzz;
        r13.xyz = r9.yyy * cb3[r11.w+1023].xyz + r13.xyz;
        r13.xyz = r9.www * cb3[r11.w+1025].xyz + r13.xyz;
        r13.xyz = rcp(r13.xyz);
        r14.xyz = -r12.xyz * r13.xyz + -r13.xyz;
        r13.xyz = -r12.xyz * r13.xyz + r13.xyz;
        r13.xyz = max(r14.xyz, r13.xyz);
        r11.w = min(r13.y, r13.z);
        r11.w = min(r13.x, r11.w);
        r13.xyz = r11.www * r9.yzw + r2.xyz;
        r14.xyz = cb3[r5.w+682].xyz + cb3[r5.w+0].xyz;
        r14.xyz = -r14.xyz + r13.xyz;
        r11.w = cb3[r5.w+2387].w * 0.699999988;
        r13.xyz = -cb3[r5.w+2387].www * float3(0.5,0.5,0.5) + cb3[r5.w+2387].xyz;
        r15.xyz = cb3[r5.w+2387].xyz * r12.xyz;
        r16.xyz = cmp(r15.xyz < -r13.xyz);
        r17.xyz = r12.xyz * cb3[r5.w+2387].xyz + r13.xyz;
        r17.xyz = abs(r17.xyz);
        r16.xyz = r16.xyz ? r17.xyz : 0;
        r15.xyz = cmp(r13.xyz < r15.xyz);
        r12.xyz = r12.xyz * cb3[r5.w+2387].xyz + -r13.xyz;
        r12.xyz = abs(r12.xyz);
        r12.xyz = r15.xyz ? r12.xyz : 0;
        r12.w = dot(r16.xyz, float3(1,1,1));
        r12.x = dot(r12.xyz, float3(1,1,1));
        r12.x = r12.w + r12.x;
        r11.w = 1 / r11.w;
        r11.w = saturate(r12.x * r11.w);
        r12.x = r11.w * -2 + 3;
        r11.w = r11.w * r11.w;
        r12.x = -r12.x * r11.w + 1;
      } else {
        r10.w = saturate(r10.w / cb3[r5.w+0].w);
        r11.w = dot(r9.yzw, r11.xyz);
        r8.w = -cb3[r5.w+0].w * cb3[r5.w+0].w + r8.w;
        r8.w = r11.w * r11.w + -r8.w;
        r13.x = cmp(r8.w >= 0);
        r8.w = sqrt(r8.w);
        r8.w = r8.w + -r11.w;
        r11.xyz = r8.www * r9.yzw + r11.xyz;
        r11.yzw = -cb3[r5.w+682].xyz + r11.xyz;
        r8.w = r10.w * 2.5 + -1.5;
        r8.w = max(0, r8.w);
        r10.w = r8.w * r8.w;
        r8.w = -r8.w * 2 + 3;
        r11.x = -r10.w * r8.w + 1;
        r12.xyzw = r13.xxxx ? r11.xyzw : r9.xyzw;
        r14.xyz = r12.yzw;
      }
      r14.w = cb3[r5.w+341].y;
      r11.xyzw = t7.SampleLevel(s3_s, r14.xyzw, r3.z).xyzw;
      r11.xyz = cb3[r5.w+341].xxx * r11.xyz;
      r11.xyz = r11.xyz * r12.xxx;
      r10.xyz = r11.xyz * r3.www + r10.xyz;
      r5.w = -r11.w * r12.x + 1;
      r3.w = r5.w * r3.w;
    }
    r4.w = (int)r4.w + 1;
  }
  r3.xyz = cb0[157].xyz * r10.xyz;
  r3.w = saturate(r1.w * cb0[197].x + cb0[197].y);
  r4.w = r3.w * -2 + 3;
  r3.w = r3.w * r3.w;
  r3.w = r4.w * r3.w;
  r4.w = min(0, cb0[197].z);
  r4.w = -1 + r4.w;
  r3.w = r3.w * r4.w + 1;
  r3.xyz = r3.xyz * r3.www;
  r3.w = cmp(cb0[145].x == 0.000000);
  if (r3.w != 0) {
    r3.w = asuint(cb0[144].y);
    r10.xy = r3.ww * float2(32.6650009,11.8149996) + v3.xy;
    r3.w = dot(r10.xy, float2(0.0671105608,0.00583714992));
    r3.w = frac(r3.w);
    r3.w = 52.9829178 * r3.w;
    r3.w = frac(r3.w);
    r3.w = -0.5 + r3.w;
    r10.xyzw = cb0[1].xyzw * r1.yyyy;
    r10.xyzw = r1.xxxx * cb0[0].xyzw + r10.xyzw;
    r10.xyzw = r1.zzzz * cb0[2].xyzw + r10.xyzw;
    r10.xyzw = cb0[3].xyzw + r10.xyzw;
    r9.xyz = r9.yzw * v3.www + r1.xyz;
    r11.xyzw = cb0[1].xyzw * r9.yyyy;
    r11.xyzw = r9.xxxx * cb0[0].xyzw + r11.xyzw;
    r9.xyzw = r9.zzzz * cb0[2].xyzw + r11.xyzw;
    r9.xyzw = cb0[3].xyzw + r9.xyzw;
    r4.w = rcp(r10.w);
    r11.xyz = r10.xyz * r4.www;
    r4.w = rcp(r9.w);
    r10.xy = v3.ww * cb0[30].zw + r10.zw;
    r5.w = rcp(r10.y);
    r9.xyz = r9.xyz * r4.www + -r11.xyz;
    r4.w = dot(r9.xy, r9.xy);
    r4.w = sqrt(r4.w);
    r8.w = 0.5 * r4.w;
    r10.yz = r11.xy * r8.ww + r9.xy;
    r10.yz = -r4.ww * float2(0.5,0.5) + abs(r10.yz);
    r10.yz = max(float2(0,0), r10.yz);
    r10.yz = r10.yz / abs(r9.xy);
    r10.yz = float2(1,1) + -r10.yz;
    r4.w = min(r10.y, r10.z);
    r4.w = r4.w / r8.w;
    r9.xyz = r9.xyz * r4.www;
    r4.w = -r10.x * r5.w + r11.z;
    r4.w = 4 * r4.w;
    r4.w = max(abs(r9.z), r4.w);
    r10.xy = r11.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xy = cb2[176].xy * r10.xy;
    r9.xy = cb2[176].xy * r9.xy;
    r5.w = 0.0833333358 * r4.w;
    r9.xyz = float3(0.0416666679,-0.0416666679,0.0833333358) * r9.xyz;
    r10.xyz = r9.xyz * r3.www + r11.xyz;
    r3.w = 1;
    r13.x = 0;
    r11.xyz = float3(0,0,0);
    r8.w = 0;
    r9.w = 0;
    r10.w = 0;
    r12.xw = float2(0,0);
    r14.x = 0;
    while (true) {
      r14.y = cmp((uint)r14.x >= 12);
      if (r14.y != 0) break;
      r14.y = (uint)r14.x;
      r15.xyzw = float4(1,2,3,4) + r14.yyyy;
      r16.xyzw = r15.xxxy * r9.xyzz + r10.xyzz;
      r17.xyzw = r15.yyzz * r9.xyxy + r10.xyxy;
      r15.xyzw = r15.wwzw * r9.xyzz + r10.xyzz;
      r14.y = r1.w * 0.666666687 + r3.w;
      r14.z = r1.w * 0.666666687 + r14.y;
      r18.x = t10.SampleLevel(s4_s, r16.xy, r3.w).x;
      r18.y = t10.SampleLevel(s4_s, r17.xy, r3.w).x;
      r18.z = t10.SampleLevel(s4_s, r17.zw, r14.y).x;
      r18.w = t10.SampleLevel(s4_s, r15.xy, r14.y).x;
      r15.xy = r16.zw;
      r15.xyzw = r15.xyzw + -r18.xyzw;
      r16.xyzw = r4.wwww * float4(0.0833333358,0.0833333358,0.0833333358,0.0833333358) + r15.xyzw;
      r16.xyzw = cmp(abs(r16.xyzw) < r5.wwww);
      r14.yw = (int2)r16.zw | (int2)r16.xy;
      r14.y = (int)r14.w | (int)r14.y;
      if (r14.y != 0) {
        r13.x = r15.x;
        r11.xyz = r15.yzw;
        r8.w = r16.x;
        r9.w = r16.y;
        r10.w = r16.z;
        r12.w = -1;
        break;
      }
      r12.x = r15.w;
      r14.x = (int)r14.x + 4;
      r3.w = r14.z;
      r13.x = r15.x;
      r11.xyz = r15.yzw;
      r8.w = r16.x;
      r9.w = r16.y;
      r10.w = r16.z;
      r12.w = r14.y;
    }
    if (r12.w != 0) {
      r11.w = 2;
      r15.xy = r11.yz;
      r15.z = 3;
      r11.yzw = r10.www ? r11.xyw : r15.xyz;
      r13.y = r11.x;
      r13.z = 1;
      r11.xyz = r9.www ? r13.xyz : r11.yzw;
      r12.y = r13.x;
      r12.z = 0;
      r11.xyz = r8.www ? r12.xyz : r11.xyz;
      r3.w = (uint)r14.x;
      r3.w = r11.z + r3.w;
      r4.w = r11.x + -r11.y;
      r4.w = saturate(r11.x / r4.w);
      r3.w = r4.w + r3.w;
      r9.xyz = r9.xyz * r3.www + r10.xyz;
      r9.xy = cb2[176].zw * r9.xy;
      r9.xy = r9.xy * float2(2,-2) + float2(-1,1);
      r9.xy = cb0[66].xy * r9.xy;
      r9.xy = r9.xy / cb0[66].xy;
      r10.xyz = cb0[123].xyw * r9.yyy;
      r10.xyz = r9.xxx * cb0[122].xyw + r10.xyz;
      r10.xyz = r9.zzz * cb0[124].xyw + r10.xyz;
      r10.xyz = cb0[125].xyw + r10.xyz;
      r9.zw = r10.xy / r10.zz;
      r10.xy = r9.zw * cb2[177].xy + cb2[177].zw;
      r9.xy = saturate(abs(r9.xy) * float2(5,5) + float2(-4,-4));
      r3.w = dot(r9.xy, r9.xy);
      r3.w = 1 + -r3.w;
      r3.w = max(0, r3.w);
      r9.xy = saturate(abs(r9.zw) * float2(5,5) + float2(-4,-4));
      r4.w = dot(r9.xy, r9.xy);
      r4.w = 1 + -r4.w;
      r4.w = max(0, r4.w);
      r3.w = min(r4.w, r3.w);
      r9.xyz = t11.SampleLevel(s5_s, r10.xy, 0).xyz;
      r9.xyz = min(float3(0,0,0), -r9.xyz);
      r4.w = saturate(-r1.w * 6.5999999 + 2);
      r3.w = r4.w * r3.w;
      r4.w = 1;
      r9.xyz = -r9.xyz * r3.www;
      r9.xyz = cb2[178].xxx * r9.xyz;
      r3.w = -r4.w * r3.w + 1;
      r3.xyz = r3.xyz * r3.www + r9.xyz;
    }
  }
  r9.xyzw = r1.wwww * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r3.w = r9.x * r9.x;
  r0.w = -9.27999973 * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(r3.w, r0.w);
  r0.w = r0.w * r9.x + r9.y;
  r9.xy = r0.ww * float2(-1.03999996,1.03999996) + r9.zw;
  r6.xyz = r6.wyz;
  r0.w = r13.w * r9.y;
  r9.xyz = r6.xyz * r9.xxx + r0.www;
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
    r1.w = -0.200000003 + r1.w;
    r1.w = saturate(10 * r1.w);
    r1.w = 1 + -r1.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r1.w;
    r1.w = cmp(0 < r0.w);
    if (r1.w != 0) {
      r10.xyz = -cb0[67].xyz + r2.xyz;
      r1.w = dot(r10.xyz, r10.xyz);
      r1.w = rsqrt(r1.w);
      r10.xyz = r10.xyz * r1.www;
      r1.w = dot(r10.xyz, -cb2[122].xyz);
      r1.w = r1.w + r1.w;
      r10.xyz = cb2[122].xyz * r1.www + r10.xyz;
      r11.xyz = cb2[127].xyz * r0.yyy;
      r11.xyz = r0.xxx * cb2[126].xyz + r11.xyz;
      r0.xyz = r0.zzz * cb2[128].xyz + r11.xyz;
      r1.w = dot(r10.xyz, r0.xyz);
      r1.w = r1.w + r1.w;
      r0.xyz = r0.xyz * -r1.www + r10.xyz;
      r0.xyz = r0.xyz * cb2[129].zzz + r2.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r10.xyz = cb0[13].xyz * r0.yyy;
      r10.xyz = r0.xxx * cb0[12].xyz + r10.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r10.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r1.w = asuint(cb0[197].w) << 2;
      r10.xyz = cb2[r1.w+132].xyw * r0.yyy;
      r10.xyz = r0.xxx * cb2[r1.w+131].xyw + r10.xyz;
      r0.xyz = r0.zzz * cb2[r1.w+133].xyw + r10.xyz;
      r0.xyz = cb2[r1.w+134].xyw + r0.xyz;
      r1.w = cb2[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb2[141].xy, r0.xy);
      r0.xy = min(cb2[141].xy, r0.xy);
      r0.xy = r0.xy * cb2[r1.w+139].xy + cb2[r1.w+139].zw;
      r10.xyzw = t8.SampleLevel(s3_s, r0.xy, 0).xyzw;
      r0.x = r10.w * r0.w;
    } else {
      r10.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r3.xyz = r0.xxx * r3.xyz + r10.xyz;
  }
  r0.xyz = r3.xyz * r9.xyz;
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
    r3.xyzw = t9.SampleLevel(s0_s, r8.xyz, 0).xyzw;
    r8.x = v2.w * r3.w;
    r3.xyz = v2.xyz * r3.www + r3.xyz;
  } else {
    r3.xyz = v2.xyz;
    r8.x = v2.w;
  }
  r4.xyz = r6.xyz * float3(0.449999988,0.449999988,0.449999988) + r4.xyz;
  r4.xyz = r4.xyz + -r0.xyz;
  r0.xyz = cb0[145].yyy * r4.xyz + r0.xyz;
  r7.xyz = max(float3(0,0,0), r5.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r4.xyz = -cb1[5].xyz + r2.xyz;
    r5.xyz = float3(1,1,1) + cb1[19].xyz;
    r4.xyz = cmp(r5.xyz < abs(r4.xyz));
    r0.w = (int)r4.y | (int)r4.x;
    r0.w = (int)r4.z | (int)r0.w;
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
  r0.xyz = r7.xyz + r0.xyz;
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