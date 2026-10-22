// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t12 : register(t12);

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

cbuffer cb6 : register(b6)
{
  float4 cb6[22];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[3];
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
  float4 cb2[168];
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
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = v1.zxy * v0.yzx;
  r0.xyz = v1.yzx * v0.zxy + -r0.xyz;
  r0.xyz = v1.www * r0.xyz;
  r1.xy = -cb0[129].xy + v6.xy;
  r1.zw = r1.xy * cb0[130].zw + float2(-0.5,-0.5);
  r2.xy = v6.ww * r1.zw;
  r2.zw = v6.zw;
  r3.xyw = float3(2,-2,1);
  r3.z = v6.w;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r3.xyzw = cb0[45].xyzw * v6.yyyy;
  r3.xyzw = v6.xxxx * cb0[44].xyzw + r3.xyzw;
  r3.xyzw = v6.zzzz * cb0[46].xyzw + r3.xyzw;
  r3.xyzw = cb0[47].xyzw + r3.xyzw;
  r3.xyz = r3.xyz / r3.www;
  r4.xyz = -cb0[70].xyz + r3.xyz;
  r0.w = dot(-r3.xyz, -r3.xyz);
  r0.w = rsqrt(r0.w);
  r5.xyz = -r3.xyz * r0.www;
  r6.xyz = cb6[2].xyz * cb0[138].www + cb0[138].xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = r6.xyz * r0.www;
  r0.xyz = r6.yyy * r0.xyz;
  r0.xyz = r6.xxx * v0.xyz + r0.xyz;
  r0.xyz = r6.zzz * v1.xyz + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r6.xyz = cb4[0].xxx * v3.xyz;
  r7.xyz = -v3.xyz * cb4[0].xxx + cb6[3].xyz;
  r6.xyz = cb6[15].zzz * r7.xyz + r6.xyz;
  r0.w = cb5[2].x * cb0[142].z;
  r1.zw = r0.ww * cb6[16].yw + v2.xy;
  r7.x = r1.z * cb6[16].z + v4.w;
  r7.y = r1.w * cb6[17].x + v4.w;
  r1.z = r0.w * cb6[17].w + v2.x;
  r8.x = cb6[18].x * r1.z;
  r0.w = r0.w * cb6[18].y + v2.y;
  r8.y = cb6[18].z * r0.w;
  r0.w = t11.SampleBias(s5_s, r8.xy, cb0[143].y).x;
  r0.w = -0.5 + r0.w;
  r0.w = r0.w + r0.w;
  r1.zw = r0.ww * cb6[19].yw + cb6[13].xy;
  r1.zw = r7.xy + r1.zw;
  r7.xyzw = t12.SampleBias(s6_s, r1.zw, cb0[143].y).xyzw;
  r0.w = cb6[20].x * v4.w;
  r0.w = saturate(r0.w);
  r0.w = 0.200000003 + r0.w;
  r0.w = floor(r0.w);
  r1.z = r7.y + -r7.x;
  r0.w = r0.w * r1.z + r7.x;
  r1.zw = saturate(cb6[20].xx * v4.ww + float2(-1,-2));
  r1.zw = float2(0.200000003,0.200000003) + r1.zw;
  r1.zw = floor(r1.zw);
  r3.w = r7.z + -r0.w;
  r0.w = r1.z * r3.w + r0.w;
  r1.z = r7.w + -r0.w;
  r0.w = r1.w * r1.z + r0.w;
  r0.w = r0.w * cb6[20].z + -cb6[20].z;
  r0.w = saturate(cb6[20].z * v3.w + r0.w);
  r1.zw = r2.xy / r2.ww;
  r1.zw = r1.zw * cb0[66].xy + cb0[66].wz;
  r1.z = t10.SampleLevel(s4_s, r1.zw, 0).x;
  r1.w = r1.z * cb0[65].x + cb0[65].y;
  r1.z = r1.z * cb0[65].z + -cb0[65].w;
  r1.z = 1 / r1.z;
  r1.z = r1.w + r1.z;
  r1.w = cmp(cb0[31].w < 1);
  r2.x = r2.z * cb0[65].x + cb0[65].y;
  r2.y = r2.z * cb0[65].z + -cb0[65].w;
  r2.y = 1 / r2.y;
  r2.x = r2.x + r2.y;
  r1.w = r1.w ? r2.w : r2.x;
  r1.z = r1.z + -r1.w;
  r1.z = saturate(r1.z / cb6[21].x);
  r0.w = r1.z * r0.w;
  r2.xyz = -cb0[67].xyz + r4.xyz;
  r1.z = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.z);
  r7.xyz = -cb4[2].xyz + cb0[67].xyz;
  r3.w = dot(r7.xyz, r7.xyz);
  r3.w = sqrt(r3.w);
  r5.w = max(cb4[2].x, cb4[2].y);
  r5.w = max(cb4[2].z, r5.w);
  r5.w = saturate(ceil(r5.w));
  r6.w = r5.w * r3.w;
  r3.w = r5.w * r3.w + cb6[21].y;
  r5.w = max(r3.w, r6.w);
  r1.w = r1.w / r5.w;
  r3.w = min(r3.w, r6.w);
  r3.w = r3.w / r5.w;
  r5.w = 1 + r3.w;
  r1.w = saturate(r1.w * r5.w + -r3.w);
  r1.w = r1.w * 3 + -1;
  r1.w = max(cb6[21].z, r1.w);
  r1.w = min(1, r1.w);
  r3.w = saturate(ceil(cb5[2].y));
  r5.w = 1 + -r1.w;
  r1.w = r3.w * r5.w + r1.w;
  r0.w = r1.w * r0.w;
  r7.w = max(0, r0.w);
  r0.w = cmp(0 < cb1[20].z);
  if (r0.w != 0) {
    r8.xyz = r4.xyz * cb0[211].xyz + cb0[212].xyz;
    r8.xyz = max(float3(0,0,0), r8.xyz);
    r8.xyz = min(float3(0.99000001,0.99000001,0.99000001), r8.xyz);
    r8.xyz = cb0[213].xyz * r8.xyz;
    r9.xyz = (int3)r8.xyz;
    r9.w = 0;
    r9.xyzw = t0.Load(r9.xyzw).xyzw;
    r9.xyzw = (uint4)r9.xyzw;
    r0.w = 1 + cb0[213].w;
    r8.xyz = r8.xyz / r9.www;
    r8.xyz = frac(r8.xyz);
    r8.xyz = cb0[213].www * r8.xyz;
    r8.xyz = r9.xyz * r0.www + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) + r8.xyz;
    r8.xyz = cb0[214].xyz * r8.xyz;
    r8.x = t1.SampleLevel(s0_s, r8.xyz, 0).x;
  } else {
    r8.x = 1;
  }
  r0.w = cmp(0 != cb0[183].w);
  r9.xyz = cb0[137].xyz * float3(0.449999988,0.449999988,0.449999988) + cb0[136].xyz;
  r9.w = 0;
  r10.xyz = cb0[136].xyz;
  r10.w = cb0[137].x;
  r9.xyzw = r0.wwww ? r9.xyzw : r10.xyzw;
  r10.yz = r0.ww ? float2(0,0) : cb0[137].yz;
  r1.xy = cb0[131].zw * r1.xy;
  r1.xy = (uint2)r1.xy;
  r0.w = v6.w * cb2[3].x + cb2[3].y;
  r0.w = log2(r0.w);
  r0.w = cb2[3].z * r0.w;
  r0.w = max(0, r0.w);
  r0.w = (uint)r0.w;
  r1.w = asint(cb2[1].z) + -1;
  r0.w = min((uint)r1.w, (uint)r0.w);
  r1.xy = (uint2)r1.xy >> asuint(cb2[2].xx);
  r0.w = mad((int)r0.w, asint(cb2[1].y), (int)r1.y);
  r0.w = mad((int)r0.w, asint(cb2[1].x), (int)r1.x);
  if (cb2[0].z != 0) {
    r1.xyw = asint(cb2[8].zzz) & int3(2,4,8);
    r11.yzw = r1.xyw ? float3(1,1,1) : float3(0,0,0);
    if (cb2[48].y != 0) {
      r12.xyzw = cb2[51].xyzw * r4.yyyy;
      r12.xyzw = r4.xxxx * cb2[50].xyzw + r12.xyzw;
      r12.xyzw = r4.zzzz * cb2[52].xyzw + r12.xyzw;
      r12.xyzw = cb2[53].xyzw + r12.xyzw;
      r1.xy = r12.xy / r12.ww;
      r12.xy = cmp(r1.xy >= float2(0,0));
      r13.xy = cmp(float2(1,1) >= r1.xy);
      r12.xy = r12.xy ? r13.xy : 0;
      r1.w = r12.y ? r12.x : 0;
      if (r1.w != 0) {
        r1.x = t3.SampleLevel(s2_s, r1.xy, 0).x;
        r1.y = cmp(r12.z < r1.x);
        r1.x = cmp(0.99000001 < r1.x);
        r1.x = (int)r1.x | (int)r1.y;
        r8.x = r1.x ? 1.000000 : 0;
      } else {
        r8.x = 1;
      }
    } else {
      r8.x = 1;
    }
    if (cb2[9].z != 0) {
      r1.x = cb2[9].z;
      r1.y = 0;
      while (true) {
        r1.w = cmp((uint)r1.y >= asuint(cb2[9].z));
        if (r1.w != 0) break;
        r1.w = dot(cb2[10].xyzw, icb[r1.y+0].xyzw);
        r1.w = cmp(r2.w < r1.w);
        if (r1.w != 0) {
          r1.x = r1.y;
          break;
        }
        r1.y = (int)r1.y + 1;
      }
      r1.y = cmp((uint)r1.x < asuint(cb2[9].z));
      if (r1.y != 0) {
        r1.y = (uint)r1.x << 2;
        r12.xyzw = cb2[r1.y+12].xyzw * r4.yyyy;
        r12.xyzw = r4.xxxx * cb2[r1.y+11].xyzw + r12.xyzw;
        r12.xyzw = r4.zzzz * cb2[r1.y+13].xyzw + r12.xyzw;
        r12.xyzw = cb2[r1.y+14].xyzw + r12.xyzw;
        r13.xyzw = r12.xyxy / r12.wwww;
        r1.yw = cmp(r13.zw >= cb2[r1.x+27].xy);
        r12.xy = cmp(cb2[r1.x+27].zw >= r13.zw);
        r1.xy = r1.yw ? r12.xy : 0;
        r1.x = r1.y ? r1.x : 0;
        if (r1.x != 0) {
          r13.xyzw = r13.xyzw * cb2[31].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
          r1.xy = frac(r13.zw);
          r13.xyzw = floor(r13.xyzw);
          r14.xyzw = float4(0.5,1.5,0.5,0.5) + r13.zwzw;
          r14.xyzw = cb2[31].zwzw * r14.xyzw;
          r15.x = t2.SampleLevel(s1_s, r14.xy, 0).x;
          r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
          r13.xyzw = cb2[31].zwzw * r13.xyzw;
          r15.y = t2.SampleLevel(s1_s, r13.xy, 0).x;
          r15.z = t2.SampleLevel(s1_s, r13.zw, 0).x;
          r15.w = t2.SampleLevel(s1_s, r14.zw, 0).x;
          r1.w = r12.z * 4000 + -1;
          r12.xyzw = saturate(r15.xyzw * float4(4000,4000,4000,4000) + -r1.wwww);
          r12.yz = r12.zy + -r12.wx;
          r1.xw = r1.xx * r12.yz + r12.wx;
          r1.w = r1.w + -r1.x;
          r1.x = r1.y * r1.w + r1.x;
        } else {
          r1.x = 1;
        }
      } else {
        r1.x = 1;
      }
    } else {
      r1.x = 1;
    }
    r11.x = 1;
    r1.y = dot(float4(1,1,1,1), r11.xyzw);
    r8.yzw = r11.yzw;
    r1.w = dot(r8.xyzw, float4(1,1,1,1));
    r1.w = -1 + r1.w;
    r1.y = r1.y * r1.w + 1;
    r1.w = saturate(r2.w * cb2[9].x + cb2[9].y);
    r1.w = r1.w * r1.w;
    r1.y = r1.y + -r1.x;
    r1.x = r1.w * r1.y + r1.x;
    r1.y = min(1, r1.x);
    r1.y = r1.x + r1.y;
    r1.y = cmp(0 < r1.y);
    if (r1.y != 0) {
      r1.y = dot(cb2[4].xyz, cb2[4].xyz);
      r1.y = rsqrt(r1.y);
      r11.xyz = cb2[4].xyz * r1.yyy;
      r1.y = dot(r0.xyz, r11.xyz);
      r1.w = saturate(r1.y);
      r2.w = max(cb0[226].y, cb0[139].x);
      r3.w = dot(r0.xyz, r5.xyz);
      r5.w = dot(r5.xyz, r11.xyz);
      r6.w = r5.w * 2 + 2;
      r6.w = rsqrt(r6.w);
      r1.y = r3.w + r1.y;
      r1.y = saturate(r1.y * r6.w);
      r5.w = saturate(r6.w * r5.w + r6.w);
      r3.w = 9.99999975e-006 + abs(r3.w);
      r3.w = min(1, r3.w);
      r11.xyz = r9.xyz * r1.www;
      r11.xyz = float3(0.318309873,0.318309873,0.318309873) * r11.xyz;
      r6.w = r2.w * r2.w;
      r11.w = r6.w * r6.w;
      r12.x = r1.y * r11.w + -r1.y;
      r1.y = r12.x * r1.y + 1;
      r1.y = r1.y * r1.y;
      r1.y = 3.14159274 * r1.y;
      r1.y = r11.w / r1.y;
      r2.w = -r2.w * r2.w + 1;
      r11.w = r3.w * r2.w + r6.w;
      r2.w = r1.w * r2.w + r6.w;
      r2.w = r3.w * r2.w;
      r2.w = r1.w * r11.w + r2.w;
      r2.w = rcp(r2.w);
      r1.y = r2.w * r1.y;
      r2.w = 1 + -r5.w;
      r3.w = r2.w * r2.w;
      r3.w = r3.w * r3.w;
      r5.w = r3.w * r2.w;
      r6.w = saturate(50 * r10.y);
      r2.w = -r3.w * r2.w + 1;
      r10.x = r9.w;
      r12.xyz = r2.www * r10.xyz;
      r12.xyz = r6.www * r5.www + r12.xyz;
      r1.y = 0.5 * r1.y;
      r12.xyz = r1.yyy * r12.xyz;
      r12.xyz = r12.xyz * r1.www;
      r1.xyw = cb2[5].xyz * r1.xxx;
      r11.xyz = r11.xyz * r1.xyw;
      r1.xyw = r12.yzx * r1.ywx;
      r11.w = r1.w;
    } else {
      r1.xy = float2(0,0);
      r11.xyzw = float4(0,0,0,0);
    }
    r1.w = asuint(cb2[8].z) >> 8;
    r1.w = (int)r1.w & asint(cb1[23].w);
    r11.xyzw = r1.wwww ? r11.xyzw : float4(0,0,0,0);
    r1.xy = r1.ww ? r1.xy : float2(0,0);
  } else {
    r11.xyzw = float4(0,0,0,0);
    r1.xy = float2(0,0);
  }
  r1.w = (uint)r0.w << 1;
  r1.w = t5.Load(r1.w).x;
  r1.w = min(asuint(cb2[0].x), (uint)r1.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r2.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r2.w = t5.Load(r2.w).x;
  r1.w = min(asuint(cb2[0].x), (uint)r1.w);
  r3.w = dot(-r5.xyz, r0.xyz);
  r3.w = r3.w + r3.w;
  r12.xyz = r0.xyz * -r3.www + -r5.xyz;
  r3.w = max(cb0[226].y, cb0[139].x);
  r5.w = r3.w * r3.w;
  r3.w = -r3.w * r3.w + 1;
  r6.w = dot(r0.xyz, r5.xyz);
  r12.w = r6.w + r6.w;
  r13.x = r12.w * r6.w + -1;
  r13.y = 9.99999975e-006 + abs(r6.w);
  r13.y = min(1, r13.y);
  r14.xyz = float3(0.318309873,0.318309873,0.318309873) * r9.xyz;
  r13.z = r5.w * r5.w;
  r13.w = saturate(50 * r10.y);
  r8.yw = float2(1,1);
  r10.w = r9.w;
  r15.xyz = r11.xyz;
  r16.x = r11.w;
  r16.yz = r1.xy;
  r9.w = 0;
  while (true) {
    r14.w = cmp((uint)r9.w >= (uint)r1.w);
    if (r14.w != 0) break;
    r14.w = (int)r2.w + (int)r9.w;
    r14.w = t6.Load(r14.w).x;
    r15.w = (int)r14.w * 6;
    r17.xyzw = t4.Load(r15.w).xyzw;
    r15.w = mad((int)r14.w, 6, 1);
    r18.xyzw = t4.Load(r15.w).xyzw;
    r19.xy = mad((int2)r14.ww, int2(6,6), int2(2,3));
    r20.xyzw = t4.Load(r19.x).xyzw;
    r19.xyzw = t4.Load(r19.y).xyzw;
    r15.w = cmp(r18.w == 0.000000);
    r16.w = cmp(-2 < r19.x);
    r17.xyz = r17.xyz + -r4.xyz;
    r21.x = dot(r17.xyz, r17.xyz);
    r21.y = rsqrt(r21.x);
    r21.yzw = r21.yyy * r17.xyz;
    r22.x = r17.w * r17.w;
    r21.x = r22.x * r21.x;
    r21.x = -r21.x * r21.x + 1;
    r21.x = max(0, r21.x);
    r21.x = r21.x * r21.x;
    r22.xyz = r17.xyz * r17.www;
    r17.w = dot(r22.xyz, r22.xyz);
    r17.w = min(1, r17.w);
    r17.w = 1 + -r17.w;
    r17.w = log2(r17.w);
    r17.w = r18.w * r17.w;
    r17.w = exp2(r17.w);
    r17.w = r15.w ? r21.x : r17.w;
    r18.w = dot(r21.yzw, r20.xyz);
    r18.w = r18.w + -r19.x;
    r18.w = saturate(r18.w * r19.y);
    r18.w = r18.w * r18.w;
    r18.w = r18.w * r17.w;
    r16.w = r16.w ? r18.w : r17.w;
    r17.w = cmp(0 < r16.w);
    if (r17.w != 0) {
      r17.w = (int)r20.w & 255;
      r17.w = r17.w ? 1 : 0;
      if (r17.w != 0) {
        r21.xyzw = (int4)r20.wwww & int4(1,2,4,8);
        r21.xyzw = r21.xyzw ? float4(1,1,1,1) : float4(0,0,0,0);
        r17.w = (uint)r20.w >> 4;
        if (1 == 0) r18.w = 0; else if (1+4 < 32) {         r18.w = (uint)r20.w << (32-(1 + 4)); r18.w = (uint)r18.w >> (32-1);        } else r18.w = (uint)r20.w >> 4;
        r22.x = r18.w ? 1 : 0;
        r20.xyz = (int3)r17.www & int3(2,4,8);
        r22.yzw = r20.xyz ? float3(1,1,1) : float3(0,0,0);
        r17.w = dot(r22.xyzw, float4(1,1,1,1));
        r18.w = dot(r21.xyzw, float4(1,1,1,1));
        r19.x = dot(r8.xyyy, r21.xyzw);
        r19.x = -1 + r19.x;
        r18.w = r18.w * r19.x + 1;
        r19.xy = r18.ww * r17.ww;
      } else {
        r19.xy = float2(1,1);
      }
      r17.w = r19.x + r19.y;
      r17.w = cmp(0 < r17.w);
      if (r17.w != 0) {
        r14.w = mad((int)r14.w, 6, 4);
        r21.xyzw = t4.Load(r14.w).xyzw;
        r14.w = f16tof32(r19.w);
        r17.w = 0.5 * r14.w;
        r20.xyz = -r17.www * r21.xyz + r17.xyz;
        r17.xyz = r17.www * r21.xyz + r17.xyz;
        r17.w = cmp(0 < r14.w);
        if (r17.w != 0) {
          r18.w = dot(r20.xyz, r20.xyz);
          r19.y = dot(r17.xyz, r17.xyz);
          r18.w = rsqrt(r18.w);
          r19.y = rsqrt(r19.y);
          r19.w = r19.y * r18.w;
          r21.x = dot(r20.xyz, r17.xyz);
          r21.x = r21.x * r19.w;
          r21.y = r21.x * 0.5 + r19.w;
          r21.y = 0.5 + r21.y;
          r22.y = r19.w / r21.y;
          r19.w = dot(r0.xyz, r20.xyz);
          r21.y = dot(r0.xyz, r17.xyz);
          r19.y = r21.y * r19.y;
          r18.w = r19.w * r18.w + r19.y;
          r22.x = 0.5 * r18.w;
        } else {
          r18.w = dot(r20.xyz, r20.xyz);
          r19.y = 1 + r18.w;
          r22.y = rcp(r19.y);
          r18.w = rsqrt(r18.w);
          r23.xyz = r20.xyz * r18.www;
          r22.x = dot(r0.xyz, r23.xyz);
          r21.x = 1;
        }
        r18.w = cmp(0 < r19.z);
        r19.y = r19.z * r19.z;
        r19.y = saturate(r19.y * r22.y);
        r19.y = sqrt(r19.y);
        r19.w = cmp(r22.x < r19.y);
        r21.y = max(r22.x, -r19.y);
        r21.y = r21.y + r19.y;
        r21.y = r21.y * r21.y;
        r19.y = 4 * r19.y;
        r19.y = r21.y / r19.y;
        r19.y = r19.w ? r19.y : r22.x;
        r18.w = saturate(r18.w ? r19.y : r22.x);
        r15.w = r15.w ? r22.y : 1;
        r17.xyz = r17.xyz + -r20.xyz;
        r19.y = dot(r12.xyz, r17.xyz);
        r22.xyz = r19.yyy * r12.xyz + -r17.xyz;
        r19.w = dot(r20.xyz, r22.xyz);
        r19.y = r19.y * r19.y;
        r14.w = r14.w * r14.w + -r19.y;
        r14.w = saturate(r19.w / r14.w);
        r17.xyz = r14.www * r17.xyz + r20.xyz;
        r17.xyz = r17.www ? r17.xyz : r20.xyz;
        r14.w = dot(r17.xyz, r17.xyz);
        r14.w = rsqrt(r14.w);
        r17.xyz = r17.xyz * r14.www;
        r17.w = r19.z * r14.w;
        r17.w = saturate(r17.w * r3.w);
        r14.w = saturate(r21.w * r14.w);
        r19.y = dot(r0.xyz, r17.xyz);
        r17.x = dot(r5.xyz, r17.xyz);
        r17.y = r17.x * 2 + 2;
        r17.y = rsqrt(r17.y);
        r17.z = r19.y + r6.w;
        r17.z = saturate(r17.z * r17.y);
        r17.y = saturate(r17.y * r17.x + r17.y);
        r19.z = cmp(0 < r17.w);
        if (r19.z != 0) {
          r19.w = -r17.w * r17.w + 1;
          r19.w = sqrt(r19.w);
          r20.x = dot(r6.ww, r19.yy);
          r20.y = r20.x + -r17.x;
          r20.z = cmp(r20.y >= r19.w);
          if (r20.z != 0) {
            r17.z = 1;
            r17.y = abs(r6.w);
          } else {
            r20.z = -r20.y * r20.y + 1;
            r20.z = rsqrt(r20.z);
            r20.z = r20.z * r17.w;
            r21.y = -r20.y * r19.y + r6.w;
            r21.z = r21.y * r20.z;
            r20.y = -r20.y * r17.x + r13.x;
            r21.w = r19.y * r19.y;
            r21.w = -r6.w * r6.w + -r21.w;
            r21.w = 1 + r21.w;
            r21.w = -r17.x * r17.x + r21.w;
            r20.x = saturate(r20.x * r17.x + r21.w);
            r20.x = sqrt(r20.x);
            r20.xy = r20.zz * r20.xy;
            r21.w = r20.x * r6.w;
            r22.x = r21.w + r21.w;
            r22.y = r19.y * r19.w + r6.w;
            r20.z = r20.z * r21.y + r22.y;
            r21.y = r17.x * r19.w + r20.y;
            r21.y = 1 + r21.y;
            r22.zw = r21.yy * r20.xz;
            r23.x = r22.x * r20.z;
            r21.w = r20.z * r21.w;
            r21.w = 0.5 * r21.w;
            r21.w = r22.z * -0.5 + r21.w;
            r23.y = -r22.z * 2 + r23.x;
            r23.x = r23.x * r23.y;
            r22.z = r22.z * r22.z + r23.x;
            r23.x = r21.y * r21.y;
            r21.y = r17.x * r19.w + r21.y;
            r21.y = r21.y * -0.5 + -0.5;
            r21.yw = r22.ww * r21.yw;
            r21.y = r22.y * r23.x + r21.y;
            r20.z = r20.z * r21.y + r22.z;
            r21.y = r21.w + r21.w;
            r22.y = r21.w * r21.w;
            r22.y = r20.z * r20.z + r22.y;
            r21.y = r21.y / r22.y;
            r20.z = r21.y * r20.z;
            r21.y = -r21.y * r21.w + 1;
            r20.x = r20.z * r20.x;
            r20.x = r21.y * r21.z + r20.x;
            r20.z = r20.z * r22.x;
            r20.y = r21.y * r20.y + r20.z;
            r19.y = r19.y * r19.w + r20.x;
            r17.x = r17.x * r19.w + r20.y;
            r19.w = r17.x * 2 + 2;
            r19.w = rsqrt(r19.w);
            r19.y = r19.y + r6.w;
            r17.z = saturate(r19.y * r19.w);
            r17.y = saturate(r19.w * r17.x + r19.w);
          }
        }
        r15.w = r15.w * r18.w;
        r20.xyz = r15.www * r14.xyz;
        r17.x = cmp(0 < r14.w);
        r14.w = r14.w * r14.w;
        r19.y = r17.y * 3.5999999 + 0.400000006;
        r14.w = r14.w / r19.y;
        r14.w = r5.w * r5.w + r14.w;
        r14.w = min(1, r14.w);
        r8.z = r17.x ? r14.w : r13.z;
        r14.w = 0.25 * r17.w;
        r17.x = (uint)r8.z >> 1;
        r17.x = (int)r17.x + 0x1fbd1df5;
        r17.x = r17.x * 3 + r17.w;
        r14.w = r17.x * r14.w;
        r17.x = 0.00100000005 + r17.y;
        r14.w = r14.w / r17.x;
        r22.x = r14.w + r8.z;
        r22.y = r8.z / r22.x;
        r19.yz = r19.zz ? r22.xy : r8.zw;
        r14.w = cmp(r21.x < 1);
        r17.w = 1.00010002 + -r21.x;
        r19.w = 1 + r21.x;
        r17.w = r17.w / r19.w;
        r17.w = sqrt(r17.w);
        r19.w = 0.25 * r17.w;
        r21.x = (uint)r19.y >> 1;
        r21.x = (int)r21.x + 0x1fbd1df5;
        r17.w = r21.x * 3 + r17.w;
        r17.w = r19.w * r17.w;
        r17.x = r17.w / r17.x;
        r17.x = r19.y + r17.x;
        r17.x = r19.y / r17.x;
        r17.x = sqrt(r17.x);
        r17.x = r19.z * r17.x;
        r14.w = r14.w ? r17.x : r19.z;
        r17.x = r17.z * r8.z + -r17.z;
        r17.x = r17.x * r17.z + 1;
        r17.x = r17.x * r17.x;
        r17.x = 3.14159274 * r17.x;
        r17.x = r8.z / r17.x;
        r14.w = r17.x * r14.w;
        r8.z = sqrt(r8.z);
        r17.x = 1 + -r8.z;
        r17.z = r13.y * r17.x + r8.z;
        r8.z = r18.w * r17.x + r8.z;
        r8.z = r13.y * r8.z;
        r8.z = r18.w * r17.z + r8.z;
        r8.z = rcp(r8.z);
        r8.z = r14.w * r8.z;
        r14.w = 1 + -r17.y;
        r17.x = r14.w * r14.w;
        r17.x = r17.x * r17.x;
        r17.y = r17.x * r14.w;
        r14.w = -r17.x * r14.w + 1;
        r17.xzw = r14.www * r10.wyz;
        r17.xyz = r13.www * r17.yyy + r17.xzw;
        r8.z = 0.5 * r8.z;
        r17.xyz = r8.zzz * r17.xyz;
        r17.xyz = r17.xyz * r15.www;
        r18.xyz = r18.xyz * r16.www;
        r18.xyz = r18.xyz * r19.xxx;
        r19.xyz = r20.xyz * r18.xyz;
        r17.xyz = r18.xyz * r17.xyz;
      } else {
        r19.xyz = float3(0,0,0);
        r17.xyz = float3(0,0,0);
      }
    } else {
      r19.xyz = float3(0,0,0);
      r17.xyz = float3(0,0,0);
    }
    r8.z = (uint)r20.w >> 8;
    r8.z = (int)r8.z & asint(cb1[23].w);
    r18.xyz = r19.xyz + r15.xyz;
    r17.xyz = r17.xyz + r16.xyz;
    r15.xyz = r8.zzz ? r18.xyz : r15.xyz;
    r16.xyz = r8.zzz ? r17.xyz : r16.xyz;
    r9.w = (int)r9.w + 1;
  }
  r1.xyw = r16.xyz + r15.xyz;
  r5.yzw = r12.www * r0.xyz + -r5.xyz;
  r6.w = saturate(r6.w);
  r0.w = (int)r0.w + asint(cb2[0].w);
  r2.w = (uint)r0.w << 1;
  r2.w = t5.Load(r2.w).x;
  r2.w = min(asuint(cb2[0].y), (uint)r2.w);
  bitmask.w = ((~(-1 << 31)) << 1) & 0xffffffff;  r0.w = (((uint)r0.w << 1) & bitmask.w) | ((uint)1 & ~bitmask.w);
  r0.w = t5.Load(r0.w).x;
  r3.w = max(0.00100000005, cb0[139].x);
  r3.w = log2(r3.w);
  r3.w = -r3.w * 1.20000005 + 1;
  r8.x = -1 + cb0[195].z;
  r3.w = r8.x + -r3.w;
  r5.x = 0;
  r8.xyzw = float4(0,0,0,1);
  r9.w = 0;
  while (true) {
    r11.x = cmp((uint)r9.w >= (uint)r2.w);
    if (r11.x != 0) break;
    r11.x = cmp(r8.w < 0.00100000005);
    if (r11.x != 0) {
      break;
    }
    r11.x = (int)r0.w + (int)r9.w;
    r11.x = t6.Load(r11.x).x;
    r11.yzw = -cb3[r11.x+0].xyz + r4.xyz;
    r12.x = dot(r11.yzw, r11.yzw);
    r12.y = sqrt(r12.x);
    r12.z = cmp(r12.y < cb3[r11.x+0].w);
    if (r12.z != 0) {
      r12.z = cmp(0 < cb3[r11.x+341].z);
      if (r12.z != 0) {
        r12.z = (uint)r11.x << 2;
        r13.xyz = cb3[r12.z+1024].xyz * r4.yyy;
        r13.xyz = r4.xxx * cb3[r12.z+1023].xyz + r13.xyz;
        r13.xyz = r4.zzz * cb3[r12.z+1025].xyz + r13.xyz;
        r13.xyz = cb3[r12.z+1026].xyz + r13.xyz;
        r14.xyz = cb3[r12.z+1024].xyz * r5.zzz;
        r14.xyz = r5.yyy * cb3[r12.z+1023].xyz + r14.xyz;
        r14.xyz = r5.www * cb3[r12.z+1025].xyz + r14.xyz;
        r14.xyz = rcp(r14.xyz);
        r15.xyz = -r13.xyz * r14.xyz + -r14.xyz;
        r14.xyz = -r13.xyz * r14.xyz + r14.xyz;
        r14.xyz = max(r15.xyz, r14.xyz);
        r12.z = min(r14.y, r14.z);
        r12.z = min(r14.x, r12.z);
        r14.xyz = r12.zzz * r5.yzw + r4.xyz;
        r15.xyz = cb3[r11.x+682].xyz + cb3[r11.x+0].xyz;
        r14.xyz = -r15.xyz + r14.xyz;
        r12.z = cb3[r11.x+2387].w * 0.699999988;
        r15.xyz = -cb3[r11.x+2387].www * float3(0.5,0.5,0.5) + cb3[r11.x+2387].xyz;
        r16.xyz = cb3[r11.x+2387].xyz * r13.xyz;
        r17.xyz = cmp(r16.xyz < -r15.xyz);
        r18.xyz = r13.xyz * cb3[r11.x+2387].xyz + r15.xyz;
        r18.xyz = abs(r18.xyz);
        r17.xyz = r17.xyz ? r18.xyz : 0;
        r16.xyz = cmp(r15.xyz < r16.xyz);
        r13.xyz = r13.xyz * cb3[r11.x+2387].xyz + -r15.xyz;
        r13.xyz = abs(r13.xyz);
        r13.xyz = r16.xyz ? r13.xyz : 0;
        r12.w = dot(r17.xyz, float3(1,1,1));
        r13.x = dot(r13.xyz, float3(1,1,1));
        r12.w = r13.x + r12.w;
        r12.z = 1 / r12.z;
        r12.z = saturate(r12.w * r12.z);
        r12.w = r12.z * -2 + 3;
        r12.z = r12.z * r12.z;
        r15.x = -r12.w * r12.z + 1;
      } else {
        r12.y = saturate(r12.y / cb3[r11.x+0].w);
        r12.z = dot(r5.yzw, r11.yzw);
        r12.x = -cb3[r11.x+0].w * cb3[r11.x+0].w + r12.x;
        r12.x = r12.z * r12.z + -r12.x;
        r12.w = cmp(r12.x >= 0);
        r12.x = sqrt(r12.x);
        r12.x = r12.x + -r12.z;
        r11.yzw = r12.xxx * r5.yzw + r11.yzw;
        r16.yzw = -cb3[r11.x+682].xyz + r11.yzw;
        r11.y = r12.y * 2.5 + -1.5;
        r11.y = max(0, r11.y);
        r11.z = r11.y * r11.y;
        r11.y = -r11.y * 2 + 3;
        r16.x = -r11.z * r11.y + 1;
        r15.xyzw = r12.wwww ? r16.xyzw : r5.xyzw;
        r14.xyz = r15.yzw;
      }
      r14.w = cb3[r11.x+341].y;
      r12.xyzw = t7.SampleLevel(s3_s, r14.xyzw, r3.w).xyzw;
      r11.xyz = cb3[r11.x+341].xxx * r12.xyz;
      r11.xyz = r11.xyz * r15.xxx;
      r8.xyz = r11.xyz * r8.www + r8.xyz;
      r11.x = -r12.w * r15.x + 1;
      r8.w = r11.x * r8.w;
    }
    r9.w = (int)r9.w + 1;
  }
  r5.xyz = cb0[157].xyz * r8.xyz;
  r0.w = saturate(cb0[139].x * cb0[197].x + cb0[197].y);
  r2.w = r0.w * -2 + 3;
  r0.w = r0.w * r0.w;
  r0.w = r2.w * r0.w;
  r2.w = min(0, cb0[197].z);
  r2.w = -1 + r2.w;
  r0.w = r0.w * r2.w + 1;
  r5.xyz = r5.xyz * r0.www;
  r8.xyzw = cb0[139].xxxx * float4(-1,-0.0274999999,-0.572000027,0.0219999999) + float4(1,0.0425000004,1.03999996,-0.0399999991);
  r0.w = r8.x * r8.x;
  r2.w = -9.27999973 * r6.w;
  r2.w = exp2(r2.w);
  r0.w = min(r2.w, r0.w);
  r0.w = r0.w * r8.x + r8.y;
  r8.xy = r0.ww * float2(-1.03999996,1.03999996) + r8.zw;
  r10.xyz = r10.wyz;
  r0.w = r13.w * r8.y;
  r8.xyz = r10.xyz * r8.xxx + r0.www;
  r0.w = dot(cb2[122].xyz, float3(1,1,1));
  r0.w = cmp(9.99999975e-005 < abs(r0.w));
  if (r0.w != 0) {
    r4.w = -1;
    r0.w = dot(cb2[122].xyzw, r4.xyzw);
    r0.w = saturate(abs(r0.w) * cb2[129].x + cb2[129].y);
    r0.w = 1 + -r0.w;
    r11.xyz = -cb2[123].xyz + r4.xyz;
    r2.w = dot(r11.xyz, cb2[124].xyz);
    r2.w = cb2[124].w + -abs(r2.w);
    r2.w = saturate(cb2[129].x * r2.w);
    r3.w = dot(r11.xyz, cb2[125].xyz);
    r3.w = cb2[125].w + -abs(r3.w);
    r3.w = saturate(cb2[129].x * r3.w);
    r2.w = r3.w * r2.w;
    r0.w = r2.w * r0.w;
    r2.w = dot(cb2[122].xyz, r0.xyz);
    r2.w = saturate(r2.w * cb2[130].x + cb2[130].y);
    r3.w = -0.200000003 + cb0[139].x;
    r3.w = saturate(10 * r3.w);
    r3.w = 1 + -r3.w;
    r0.w = r2.w * r0.w;
    r0.w = r0.w * r3.w;
    r2.w = cmp(0 < r0.w);
    if (r2.w != 0) {
      r1.z = rsqrt(r1.z);
      r2.xyz = r2.xyz * r1.zzz;
      r1.z = dot(r2.xyz, -cb2[122].xyz);
      r1.z = r1.z + r1.z;
      r2.xyz = cb2[122].xyz * r1.zzz + r2.xyz;
      r11.xyz = cb2[127].xyz * r0.yyy;
      r11.xyz = r0.xxx * cb2[126].xyz + r11.xyz;
      r0.xyz = r0.zzz * cb2[128].xyz + r11.xyz;
      r1.z = dot(r2.xyz, r0.xyz);
      r1.z = r1.z + r1.z;
      r0.xyz = r0.xyz * -r1.zzz + r2.xyz;
      r0.xyz = r0.xyz * cb2[129].zzz + r4.xyz;
      r0.xyz = cb0[70].xyz + r0.xyz;
      r2.xyz = cb0[13].xyz * r0.yyy;
      r2.xyz = r0.xxx * cb0[12].xyz + r2.xyz;
      r0.xyz = r0.zzz * cb0[14].xyz + r2.xyz;
      r0.xyz = cb0[15].xyz + r0.xyz;
      r1.z = asuint(cb0[197].w) << 2;
      r2.xyz = cb2[r1.z+132].xyw * r0.yyy;
      r2.xyz = r0.xxx * cb2[r1.z+131].xyw + r2.xyz;
      r0.xyz = r0.zzz * cb2[r1.z+133].xyw + r2.xyz;
      r0.xyz = cb2[r1.z+134].xyw + r0.xyz;
      r1.z = cb2[141].z ? cb0[197].w : 0;
      r0.xy = r0.xy / r0.zz;
      r0.xy = max(-cb2[141].xy, r0.xy);
      r0.xy = min(cb2[141].xy, r0.xy);
      r0.xy = r0.xy * cb2[r1.z+139].xy + cb2[r1.z+139].zw;
      r2.xyzw = t8.SampleLevel(s3_s, r0.xy, 0).xyzw;
      r0.x = r2.w * r0.w;
    } else {
      r2.xyz = float3(0,0,0);
      r0.x = 0;
    }
    r0.x = 1 + -r0.x;
    r5.xyz = r0.xxx * r5.xyz + r2.xyz;
  }
  r0.xyz = r5.xyz * r8.xyz;
  r2.xyz = r10.xyz * float3(2.04040003,2.04040003,2.04040003) + float3(-0.332399994,-0.332399994,-0.332399994);
  r2.xyz = r10.xyz * float3(-4.79510021,-4.79510021,-4.79510021) + r2.xyz;
  r2.xyz = r10.xyz * float3(2.75519991,2.75519991,2.75519991) + r2.xyz;
  r2.xyz = float3(1.33200002,1.33200002,1.33200002) + r2.xyz;
  r2.xyz = max(float3(1,1,1), r2.xyz);
  r0.xyz = r0.xyz * r2.xyz + r1.xyw;
  r0.w = cmp(0 < cb2[150].w);
  if (r0.w != 0) {
    r1.xyz = cb0[5].xyw * r4.yyy;
    r1.xyz = r4.xxx * cb0[4].xyw + r1.xyz;
    r1.xyz = r4.zzz * cb0[6].xyw + r1.xyz;
    r1.xyz = cb0[7].xyw + r1.xyz;
    r1.xy = r1.xy / r1.zz;
    r2.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.w = r1.z * cb0[209].x + cb0[209].y;
    r0.w = log2(r0.w);
    r0.w = cb0[209].z * r0.w;
    r2.z = cb0[208].z * r0.w;
    r1.xyzw = t9.SampleLevel(s0_s, r2.xyz, 0).xyzw;
    r2.x = v5.w * r1.w;
    r1.xyz = v5.xyz * r1.www + r1.xyz;
  } else {
    r1.xyz = v5.xyz;
    r2.x = v5.w;
  }
  r2.yzw = r10.xyz * float3(0.449999988,0.449999988,0.449999988) + r9.xyz;
  r2.yzw = r2.yzw + -r0.xyz;
  r0.xyz = cb0[145].yyy * r2.yzw + r0.xyz;
  r7.xyz = max(float3(0,0,0), r6.xyz);
  r0.w = cmp(0 < cb0[140].x);
  if (r0.w != 0) {
    r2.yzw = -cb1[5].xyz + r4.xyz;
    r5.xyz = float3(1,1,1) + cb1[19].xyz;
    r2.yzw = cmp(r5.xyz < abs(r2.yzw));
    r0.w = (int)r2.z | (int)r2.y;
    r0.w = (int)r2.w | (int)r0.w;
    r1.w = dot(r4.xyz, float3(0.577000022,0.577000022,0.577000022));
    r1.w = 0.00200000009 * r1.w;
    r1.w = frac(r1.w);
    r1.w = cmp(0.5 < r1.w);
    r4.yzw = r1.www ? float3(0,1,1) : float3(1,1,0);
    r4.x = 1;
    r7.xyzw = r0.wwww ? r4.yzwx : r7.xyzw;
    o0.w = r7.w;
  } else {
    o0.w = r7.w;
  }
  r0.xyz = r7.xyz + r0.xyz;
  r0.xyz = r0.xyz * r2.xxx + r1.xyz;
  r1.xyz = cb0[135].yyy * r0.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = r1.w * r0.w;
  r2.xyz = r3.xyz * r1.www;
  r3.xy = r0.ww / cb2[163].zw;
  r0.w = log2(r3.x);
  r0.w = cb2[163].y * r0.w;
  r0.w = exp2(r0.w);
  r1.w = cmp(0.5 >= r3.y);
  r1.w = r1.w ? 1.000000 : 0;
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, cb0[358].xyz);
  r1.w = -1 + r1.w;
  r1.w = -abs(r1.w) * 0.5 + 1;
  r1.w = max(0, r1.w);
  r2.xyz = cb2[166].xyz + -cb2[165].xyz;
  r2.xyz = r1.www * r2.xyz + cb2[165].xyz;
  r1.w = cb2[164].y * r0.w;
  r1.w = log2(r1.w);
  r1.w = cb2[164].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = min(1, r1.w);
  r2.xyz = -cb2[167].xyz + r2.xyz;
  r2.xyz = r1.www * r2.xyz + cb2[167].xyz;
  r0.xyz = -r0.xyz * cb0[135].yyy + r2.xyz;
  r0.xyz = cb2[163].xxx * r0.xyz;
  r0.w = min(1, r0.w);
  o0.xyz = r0.www * r0.xyz + r1.xyz;
  return;
}