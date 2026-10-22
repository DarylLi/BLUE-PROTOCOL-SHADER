// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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

cbuffer cb6 : register(b6)
{
  float4 cb6[10];
}

cbuffer cb5 : register(b5)
{
  float4 cb5[49];
}

cbuffer cb4 : register(b4)
{
  float4 cb4[45];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[45];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[10];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[185];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r1.xyz = -cb1[173].xyz + cb1[172].xyz;
  r1.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r1.xyz;
  r0.zw = -cb1[129].xy + v0.xy;
  r0.zw = r0.zw * cb1[130].zw + float2(-0.5,-0.5);
  r0.zw = v0.ww * r0.zw;
  r0.zw = float2(2000000,-2000000) * r0.zw;
  r2.xyz = cb1[49].xyz * r0.www;
  r2.xyz = r0.zzz * cb1[48].xyz + r2.xyz;
  r2.xyz = cb1[50].xyz * float3(1000000,1000000,1000000) + r2.xyz;
  r2.xyz = cb1[51].xyz + r2.xyz;
  r2.xyz = -cb1[67].xyz + r2.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = cb0[27].z ? 0 : r0.x;
  r0.y = cmp(r0.x == 0.000000);
  if (r0.y != 0) {
    if (cb0[27].x != 0) {
      r0.z = dot(r1.xyz, r1.xyz);
      r0.w = dot(r2.xyz, r2.xyz);
      r1.w = dot(r2.xyz, r1.xyz);
      r1.w = r1.w + r1.w;
      r2.w = cb2[0].y * cb2[0].y;
      r3.x = -cb2[0].y * cb2[0].y + r0.z;
      r3.y = r3.x * r0.w;
      r3.y = 4 * r3.y;
      r3.y = r1.w * r1.w + -r3.y;
      r3.z = cmp(r3.y >= 0);
      r3.y = sqrt(r3.y);
      r3.yw = r3.yy * float2(-1,1) + -r1.ww;
      r0.w = r0.w + r0.w;
      r3.yw = r3.yw / r0.ww;
      r3.yz = r3.zz ? r3.yw : float2(-1,-1);
      r4.xy = cmp(r3.yz < float2(0,0));
      r0.w = r4.y ? r4.x : 0;
      r4.zw = max(float2(0,0), r3.zy);
      r1.w = r4.y ? r4.w : -1;
      r1.w = r4.x ? r4.z : r1.w;
      r3.w = (int)r4.y | (int)r4.x;
      r4.x = min(r3.y, r3.z);
      r4.x = max(0, r4.x);
      r1.w = r3.w ? r1.w : r4.x;
      r1.w = cmp(r1.w < 0);
      r0.w = (int)r0.w | (int)r1.w;
      r1.w = cmp(cb1[183].w == 0.000000);
      r0.w = r1.w ? r0.w : 0;
      if (r0.w != 0) {
        r1.w = dot(r2.xyz, cb1[161].xyz);
        r3.w = cmp(cb1[169].x < r1.w);
        if (r3.w != 0) {
          r4.xy = cmp(float2(0,0) < r3.yz);
          r4.x = (int)r4.y | (int)r4.x;
          if (r4.x == 0) {
            r4.x = sqrt(r0.z);
            r4.yzw = r1.xyz / r4.xxx;
            r4.y = dot(r2.xyz, r4.yzw);
            r4.z = cb2[0].z * cb2[0].z;
            r4.w = cb2[0].z * cb2[0].z + -r2.w;
            r4.w = max(0, r4.w);
            r5.x = max(0, r3.x);
            r5.x = sqrt(r5.x);
            r5.y = r4.y * r4.y + -1;
            r4.z = r0.z * r5.y + r4.z;
            r4.zw = sqrt(r4.zw);
            r4.y = -r4.x * r4.y + r4.z;
            r4.y = max(0, r4.y);
            r4.x = cb2[0].z + -r4.x;
            r4.z = r5.x + r4.w;
            r4.y = r4.y + -r4.x;
            r4.x = r4.z + -r4.x;
            r4.x = r4.y / r4.x;
            r4.y = r5.x / r4.w;
            r4.xyz = t5.SampleLevel(s5_s, r4.xy, 0).xyz;
          } else {
            r4.xyz = float3(0,0,0);
          }
          r4.xyz = cb1[167].xyz * r4.xyz;
        }
        r4.xyz = r3.www ? r4.xyz : 0;
        r3.w = cmp(0 != cb1[184].x);
        r3.w = r3.w ? cb1[184].y : cb1[135].y;
        r4.xyz = r4.xyz * r3.www;
        r4.xyz = min(float3(64000,64000,64000), r4.xyz);
        r3.w = 1 + -cb1[169].x;
        r4.w = 0.25 * r3.w;
        r3.w = r3.w * 0.25 + cb1[169].x;
        r1.w = r3.w + -r1.w;
        r1.w = saturate(r1.w / r4.w);
        r1.w = 1 + -r1.w;
        r4.xyz = r4.xyz * r1.www;
      }
      r4.xyz = (int3)r0.www & (int3)r4.xyz;
      if (r0.w != 0) {
        r1.w = dot(r2.xyz, cb1[162].xyz);
        r3.w = cmp(cb1[170].x < r1.w);
        if (r3.w != 0) {
          r3.yz = cmp(float2(0,0) < r3.yz);
          r3.y = (int)r3.z | (int)r3.y;
          if (r3.y == 0) {
            r3.y = sqrt(r0.z);
            r5.xyz = r1.xyz / r3.yyy;
            r3.z = dot(r2.xyz, r5.xyz);
            r4.w = cb2[0].z * cb2[0].z;
            r2.w = cb2[0].z * cb2[0].z + -r2.w;
            r2.w = max(0, r2.w);
            r2.w = sqrt(r2.w);
            r3.x = max(0, r3.x);
            r3.x = sqrt(r3.x);
            r5.x = r3.z * r3.z + -1;
            r0.z = r0.z * r5.x + r4.w;
            r0.z = sqrt(r0.z);
            r0.z = -r3.y * r3.z + r0.z;
            r0.z = max(0, r0.z);
            r3.y = cb2[0].z + -r3.y;
            r3.z = r3.x + r2.w;
            r0.z = -r3.y + r0.z;
            r3.y = r3.z + -r3.y;
            r5.x = r0.z / r3.y;
            r5.y = r3.x / r2.w;
            r3.xyz = t5.SampleLevel(s5_s, r5.xy, 0).xyz;
          } else {
            r3.xyz = float3(0,0,0);
          }
          r3.xyz = cb1[168].xyz * r3.xyz;
        }
        r3.xyz = r3.www ? r3.xyz : 0;
        r0.z = cmp(0 != cb1[184].x);
        r0.z = r0.z ? cb1[184].y : cb1[135].y;
        r3.xyz = r3.xyz * r0.zzz;
        r3.xyz = min(float3(64000,64000,64000), r3.xyz);
        r0.z = 1 + -cb1[170].x;
        r2.w = 0.25 * r0.z;
        r0.z = r0.z * 0.25 + cb1[170].x;
        r0.z = r0.z + -r1.w;
        r0.z = saturate(r0.z / r2.w);
        r0.z = 1 + -r0.z;
        r3.xyz = r3.xyz * r0.zzz;
      }
      r3.xyz = (int3)r0.www & (int3)r3.xyz;
      r3.xyz = r4.xyz + r3.xyz;
    } else {
      r3.xyz = float3(0,0,0);
    }
    r4.xyz = cb6[9].xyz;
  } else {
    r0.z = cmp(0 >= cb6[8].w);
    if (r0.z != 0) {
      if (-1 != 0) discard;
      o0.xyzw = float4(0,0,0,1);
      return;
    }
    r3.xyz = float3(0,0,0);
    r4.xyz = float3(1,1,1);
  }
  r0.z = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.z);
  r1.w = cmp(cb2[0].z < r0.w);
  if (r1.w != 0) {
    r1.w = dot(r2.xyz, r2.xyz);
    r2.w = dot(r2.xyz, r1.xyz);
    r2.w = r2.w + r2.w;
    r0.z = -cb2[0].z * cb2[0].z + r0.z;
    r0.z = r0.z * r1.w;
    r0.z = 4 * r0.z;
    r0.z = r2.w * r2.w + -r0.z;
    r3.w = cmp(r0.z >= 0);
    r0.z = sqrt(r0.z);
    r5.xy = r0.zz * float2(1,-1) + -r2.ww;
    r0.z = r1.w + r1.w;
    r5.xy = r5.xy / r0.zz;
    r5.xy = r3.ww ? r5.xy : float2(-1,-1);
    r5.zw = cmp(r5.yx < float2(0,0));
    r0.z = r5.w ? r5.z : 0;
    r6.xy = max(float2(0,0), r5.xy);
    r1.w = r5.w ? r6.y : -1;
    r1.w = r5.z ? r6.x : r1.w;
    r2.w = (int)r5.w | (int)r5.z;
    r3.w = min(r5.y, r5.x);
    r3.w = max(0, r3.w);
    r1.w = r2.w ? r1.w : r3.w;
    r0.z = r0.z ? -1 : r1.w;
    r1.w = cmp(r0.z >= 0);
    r2.w = ~(int)r1.w;
    r5.xyz = r1.xyz / r0.www;
    r6.xyz = r2.xyz * r0.zzz + r1.xyz;
    r5.xyz = r5.xyz * float3(-0.00100000005,-0.00100000005,-0.00100000005) + r6.xyz;
    r1.xyz = r1.www ? r5.xyz : r1.xyz;
    r0.z = 0;
  } else {
    r2.w = 0;
  }
  r0.w = ~(int)r2.w;
  r0.z = (int)r0.z | (int)r0.w;
  if (r0.z == 0) {
    o0.xyz = min(float3(32256,32256,32256), r3.xyz);
    o0.w = 1;
    return;
  }
  r1.xyz = r2.xyz * cb0[26].yyy + r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.w = cb2[0].y * cb2[0].y;
  r1.w = cmp(r0.w < r0.z);
  if (r1.w != 0) {
    r1.w = dot(r2.xyz, r2.xyz);
    r2.w = dot(r2.xyz, r1.xyz);
    r2.w = r2.w + r2.w;
    r3.w = -cb2[0].y * cb2[0].y + r0.z;
    r4.w = r2.w * r2.w;
    r5.x = 4 * r1.w;
    r3.w = -r5.x * r3.w + r4.w;
    r5.y = cmp(r3.w >= 0);
    r3.w = sqrt(r3.w);
    r5.zw = r3.ww * float2(1,-1) + -r2.ww;
    r1.w = r1.w + r1.w;
    r5.zw = r5.zw / r1.ww;
    r5.yz = r5.yy ? r5.zw : float2(-1,-1);
    r6.xy = cmp(r5.zy < float2(0,0));
    r3.w = r6.y ? r6.x : 0;
    r6.zw = max(float2(0,0), r5.yz);
    r5.w = r6.y ? r6.w : -1;
    r5.w = r6.x ? r6.z : r5.w;
    r6.x = (int)r6.y | (int)r6.x;
    r5.y = min(r5.z, r5.y);
    r5.y = max(0, r5.y);
    r5.y = r6.x ? r5.w : r5.y;
    r3.w = r3.w ? -1 : r5.y;
    r5.y = cb2[0].z * cb2[0].z;
    r0.z = -cb2[0].z * cb2[0].z + r0.z;
    r0.z = -r5.x * r0.z + r4.w;
    r4.w = cmp(r0.z >= 0);
    r0.z = sqrt(r0.z);
    r5.xz = r0.zz * float2(1,-1) + -r2.ww;
    r5.xz = r5.xz / r1.ww;
    r5.xz = r4.ww ? r5.xz : float2(-1,-1);
    r6.xy = cmp(r5.zx < float2(0,0));
    r0.z = r6.y ? r6.x : 0;
    r6.zw = max(float2(0,0), r5.xz);
    r1.w = r6.y ? r6.w : -1;
    r1.w = r6.x ? r6.z : r1.w;
    r2.w = (int)r6.y | (int)r6.x;
    r4.w = min(r5.z, r5.x);
    r4.w = max(0, r4.w);
    r1.w = r2.w ? r1.w : r4.w;
    r0.z = r0.z ? -1 : r1.w;
    r1.w = cmp(r3.w < 0);
    r2.w = cmp(r0.z < 0);
    r2.w = r1.w ? r2.w : 0;
    if (r2.w == 0) {
      r2.w = cmp(r0.x != 0.000000);
      r0.x = max(9.99999996e-013, r0.x);
      r6.xyzw = cb1[45].xyzw * v0.yyyy;
      r6.xyzw = v0.xxxx * cb1[44].xyzw + r6.xyzw;
      r6.xyzw = r0.xxxx * cb1[46].xyzw + r6.xyzw;
      r6.xyzw = cb1[47].xyzw + r6.xyzw;
      r5.xzw = r6.xyz / r6.www;
      r5.xzw = -cb1[70].xyz + r5.xzw;
      r6.xyz = cb1[173].xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + r1.xyz;
      r5.xzw = r5.xzw * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r6.xyz;
      r0.x = dot(r2.xyz, r5.xzw);
      r0.x = cmp(r0.x < 0);
      r0.x = r0.x ? r2.w : 0;
      if (r0.x == 0) {
        r0.x = r0.y ? 1 : cb6[8].z;
        r0.y = max(0, r0.z);
        r4.w = cmp(0 < r0.z);
        r0.z = min(r0.z, r3.w);
        r0.z = r4.w ? r0.z : 0;
        r0.y = r1.w ? r0.y : r0.z;
        r0.z = dot(r5.xzw, r5.xzw);
        r0.z = sqrt(r0.z);
        r0.z = min(r0.y, r0.z);
        r0.y = r2.w ? r0.z : r0.y;
        r0.y = min(9000000, r0.y);
        r0.z = saturate(cb6[0].z * r0.y);
        r1.w = cb6[0].y + -cb6[0].x;
        r0.z = r0.z * r1.w + cb6[0].x;
        r1.w = floor(r0.z);
        r2.w = r1.w * r0.y;
        r2.w = r2.w / r0.z;
        r3.w = dot(cb1[161].xyz, r2.xyz);
        r4.w = -cb2[5].x * cb2[5].x + 1;
        r5.x = cb2[5].x * cb2[5].x + 1;
        r5.z = cb2[5].x + cb2[5].x;
        r5.w = r5.z * -r3.w + r5.x;
        r6.x = 12.566371 * r5.w;
        r5.w = sqrt(r5.w);
        r5.w = r6.x * r5.w;
        r5.w = r4.w / r5.w;
        r3.w = r3.w * r3.w + 1;
        r3.w = 0.0596831031 * r3.w;
        r6.x = dot(cb1[162].xyz, r2.xyz);
        r5.x = r5.z * -r6.x + r5.x;
        r5.z = 12.566371 * r5.x;
        r5.x = sqrt(r5.x);
        r5.x = r5.z * r5.x;
        r4.w = r4.w / r5.x;
        r5.x = r6.x * r6.x + 1;
        r5.x = 0.0596831031 * r5.x;
        r5.z = cmp(0 != cb1[184].x);
        r6.x = r5.z ? cb1[184].y : cb1[135].y;
        r6.yzw = cb1[163].xyz * r6.xxx;
        r7.xyz = cb1[164].xyz * r6.xxx;
        r6.x = asuint(cb1[144].y);
        r8.xy = r6.xx * float2(32.6650009,11.8149996) + v0.xy;
        r6.x = dot(r8.xy, float2(0.0671105608,0.00583714992));
        r6.x = frac(r6.x);
        r6.x = 52.9829178 * r6.x;
        r6.x = frac(r6.x);
        r5.z = r5.z ? 0.300000012 : r6.x;
        r0.w = cb2[0].z * cb2[0].z + -r0.w;
        r0.w = max(0, r0.w);
        r0.w = sqrt(r0.w);
        r6.x = cb2[0].z + -cb2[0].y;
        r7.w = dot(cb1[161].xyz, cb1[161].xyz);
        r8.x = 4 * r7.w;
        r7.w = r7.w + r7.w;
        r8.y = dot(cb1[162].xyz, cb1[162].xyz);
        r8.z = 4 * r8.y;
        r8.y = r8.y + r8.y;
        r9.xyz = float3(0,0,0);
        r8.w = cb3[38].x;
        r9.w = cb4[38].x;
        r10.xyzw = float4(1,1,1,0);
        while (true) {
          r11.x = cmp(r10.w >= r0.z);
          if (r11.x != 0) break;
          r11.x = r10.w / r1.w;
          r10.w = 1 + r10.w;
          r11.y = r10.w / r1.w;
          r11.xy = r11.xy * r11.xy;
          r11.w = cmp(1 < r11.y);
          r11.yz = r11.yx * r2.ww;
          r11.y = r11.w ? r0.y : r11.y;
          r11.x = -r2.w * r11.x + r11.y;
          r11.y = r11.x * r5.z + r11.z;
          r11.yzw = r11.yyy * r2.xyz + r1.xyz;
          r12.x = dot(r11.yzw, r11.yzw);
          r12.y = sqrt(r12.x);
          r12.z = -cb2[0].y + r12.y;
          r12.w = max(0, r12.z);
          r13.x = cb2[3].x * r12.w;
          r13.x = 1.44269502 * r13.x;
          r13.x = exp2(r13.x);
          r13.y = cb2[0].w * r12.w;
          r13.y = 1.44269502 * r13.y;
          r13.y = exp2(r13.y);
          r13.z = cmp(r12.w < cb2[7].x);
          r13.w = saturate(cb2[7].z * r12.w + cb2[7].y);
          r12.w = saturate(cb2[8].x * r12.w + cb2[7].w);
          r12.w = r13.z ? r13.w : r12.w;
          r14.xyz = cb2[2].xyz * r13.xxx;
          r13.yzw = cb2[1].xyz * r13.yyy;
          r15.xyz = r13.xxx * cb2[2].xyz + r13.yzw;
          r16.xyz = r13.xxx * cb2[4].xyz + r13.yzw;
          r16.xyz = r12.www * cb2[9].xyz + r16.xyz;
          r17.xyz = r16.xyz * r11.xxx;
          r17.xyz = r17.xyz * r0.xxx;
          r17.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r17.xyz;
          r17.xyz = exp2(r17.xyz);
          r18.xyz = r11.yzw / r12.yyy;
          r11.x = dot(cb1[161].xyz, r18.xyz);
          r12.w = -cb2[0].y * cb2[0].y + r12.x;
          r12.w = max(0, r12.w);
          r12.w = sqrt(r12.w);
          r13.x = r11.x * r11.x + -1;
          r13.x = r12.x * r13.x + r5.y;
          r13.x = sqrt(r13.x);
          r13.x = -r12.y * r11.x + r13.x;
          r13.x = max(0, r13.x);
          r14.w = cb2[0].z + -r12.y;
          r15.w = r12.w + r0.w;
          r13.x = -r14.w + r13.x;
          r15.w = r15.w + -r14.w;
          r19.y = r13.x / r15.w;
          r19.z = r12.w / r0.w;
          r20.xyz = t5.SampleLevel(s5_s, r19.yz, 0).xyz;
          r21.xyz = r13.yzw * r3.www;
          r21.xyz = r14.xyz * r5.www + r21.xyz;
          r12.w = dot(cb1[162].xyz, r18.xyz);
          r13.x = r12.w * r12.w + -1;
          r12.x = r12.x * r13.x + r5.y;
          r12.x = sqrt(r12.x);
          r12.x = -r12.y * r12.w + r12.x;
          r12.x = max(0, r12.x);
          r12.x = r12.x + -r14.w;
          r19.x = r12.x / r15.w;
          r12.xyw = t5.SampleLevel(s5_s, r19.xz, 0).xyz;
          r13.xyz = r13.yzw * r5.xxx;
          r13.xyz = r14.xyz * r4.www + r13.xyz;
          r14.x = saturate(r11.x * 0.5 + 0.5);
          r14.y = saturate(r12.z / r6.x);
          r14.xyz = t6.SampleLevel(s6_s, r14.xy, 0).xyz;
          r18.xyz = -r18.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r11.yzw;
          r11.x = dot(r18.xyz, r18.xyz);
          r12.z = dot(cb1[161].xyz, r18.xyz);
          r12.z = r12.z + r12.z;
          r11.x = -cb2[0].y * cb2[0].y + r11.x;
          r13.w = r11.x * r8.x;
          r13.w = r12.z * r12.z + -r13.w;
          r14.w = cmp(r13.w >= 0);
          r13.w = sqrt(r13.w);
          r19.xy = r13.ww * float2(1,-1) + -r12.zz;
          r19.xy = r19.xy / r7.ww;
          r19.xy = r14.ww ? r19.xy : float2(-1,-1);
          r19.zw = cmp(r19.yx < float2(0,0));
          r12.z = r19.w ? r19.z : 0;
          r22.xy = max(float2(0,0), r19.xy);
          r13.w = r19.w ? r22.y : -1;
          r13.w = r19.z ? r22.x : r13.w;
          r14.w = (int)r19.w | (int)r19.z;
          r15.w = min(r19.y, r19.x);
          r15.w = max(0, r15.w);
          r13.w = r14.w ? r13.w : r15.w;
          r13.w = cmp(r13.w >= 0);
          r12.z = r12.z ? 0 : r13.w;
          r11.yzw = r11.yzw * float3(100000,100000,100000) + cb1[173].xyz;
          if (r9.w != 0) {
            r19.xyzw = cb4[41].xyzw * r11.zzzz;
            r19.xyzw = r11.yyyy * cb4[40].xyzw + r19.xyzw;
            r19.xyzw = r11.wwww * cb4[42].xyzw + r19.xyzw;
            r19.xyzw = cb4[43].xyzw + r19.xyzw;
            r22.xyzw = r19.xyxy / r19.wwww;
            r19.xy = cmp(r22.zw >= float2(0,0));
            r23.xy = cmp(float2(1,1) >= r22.zw);
            r19.xy = r19.xy ? r23.xy : 0;
            r13.w = r19.y ? r19.x : 0;
            if (r13.w != 0) {
              r22.xyzw = r22.xyzw * cb4[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r19.xy = frac(r22.zw);
              r22.xyzw = floor(r22.xyzw);
              r23.xyzw = float4(0.5,1.5,0.5,0.5) + r22.zwzw;
              r23.xyzw = cb4[44].zwzw * r23.xyzw;
              r24.x = t4.SampleLevel(s4_s, r23.xy, 0).x;
              r22.xyzw = float4(1.5,1.5,1.5,0.5) + r22.xyzw;
              r22.xyzw = cb4[44].zwzw * r22.xyzw;
              r24.y = t4.SampleLevel(s4_s, r22.xy, 0).x;
              r24.z = t4.SampleLevel(s4_s, r22.zw, 0).x;
              r24.w = t4.SampleLevel(s4_s, r23.zw, 0).x;
              r13.w = r19.z * 40 + -1;
              r22.xyzw = saturate(r24.xyzw * float4(40,40,40,40) + -r13.wwww);
              r23.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r24.xyzw);
              r23.xyzw = r23.xyzw ? float4(1,1,1,1) : 0;
              r22.xyzw = r23.xyzw + r22.xyzw;
              r22.xyzw = min(float4(1,1,1,1), r22.xyzw);
              r19.zw = r22.zy + -r22.wx;
              r19.xz = r19.xx * r19.zw + r22.wx;
              r13.w = r19.z + -r19.x;
              r13.w = r19.y * r13.w + r19.x;
            } else {
              r13.w = 1;
            }
          } else {
            r13.w = 1;
          }
          r19.xyzw = cb4[2].xyzw * r11.zzzz;
          r19.xyzw = r11.yyyy * cb4[1].xyzw + r19.xyzw;
          r19.xyzw = r11.wwww * cb4[3].xyzw + r19.xyzw;
          r19.xyzw = cb4[4].xyzw + r19.xyzw;
          r19.xy = r19.xy / r19.ww;
          r22.xy = cmp(r19.xy >= cb4[5].xy);
          r22.zw = cmp(cb4[5].zw >= r19.xy);
          r22.xy = r22.zw ? r22.xy : 0;
          r14.w = r22.y ? r22.x : 0;
          if (r14.w != 0) {
            r14.w = t3.SampleLevel(s3_s, r19.xy, 0).x;
            r15.w = -cb4[6].x + r14.w;
            r15.w = cmp(r19.z < r15.w);
            r15.w = r15.w ? 1.000000 : 0;
            r14.w = cmp(r14.w == 1.000000);
            r14.w = r14.w ? 1.000000 : 0;
            r14.w = r15.w + r14.w;
            r14.w = min(1, r14.w);
          } else {
            r14.w = 1;
          }
          r19.xyz = -cb1[67].xyz + r11.yzw;
          r15.w = dot(r19.xyz, cb1[60].xyz);
          r16.w = saturate(r15.w * cb4[7].z + cb4[7].w);
          r16.w = r16.w * r16.w;
          r17.w = 1 + -r14.w;
          r14.w = r16.w * r17.w + r14.w;
          r13.w = min(r14.w, r13.w);
          r19.xyzw = cb5[46].xyzw * r11.zzzz;
          r19.xyzw = r11.yyyy * cb5[45].xyzw + r19.xyzw;
          r19.xyzw = r11.wwww * cb5[47].xyzw + r19.xyzw;
          r19.xyzw = cb5[48].xyzw + r19.xyzw;
          r19.xyz = r19.xyz / r19.www;
          r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r19.xyw = t9.SampleLevel(s9_s, r19.xy, 0).xyz;
          r14.w = saturate(1 + -r19.z);
          r14.w = r14.w * cb5[43].x + -r19.x;
          r14.w = max(0, r14.w);
          r14.w = r14.w * r19.y;
          r14.w = 1000 * r14.w;
          r14.w = min(r19.w, r14.w);
          r14.w = -1.44269502 * r14.w;
          r14.w = exp2(r14.w);
          r14.w = min(1, r14.w);
          r14.xyz = r14.xyz * r14.www;
          r19.xyzw = cb5[20].xyzw * r11.zzzz;
          r19.xyzw = r11.yyyy * cb5[19].xyzw + r19.xyzw;
          r19.xyzw = r11.wwww * cb5[21].xyzw + r19.xyzw;
          r19.xyzw = cb5[22].xyzw + r19.xyzw;
          r19.xyz = r19.xyz / r19.www;
          r19.xy = r19.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r19.xyw = t7.SampleLevel(s7_s, r19.xy, 0).xyz;
          r14.w = saturate(1 + -r19.z);
          r14.w = r14.w * cb5[7].x + -r19.x;
          r14.w = max(0, r14.w);
          r14.w = r14.w * r19.y;
          r14.w = 1000 * r14.w;
          r14.w = min(r19.w, r14.w);
          r14.w = -1.44269502 * r14.w;
          r14.w = exp2(r14.w);
          r14.w = min(1, r14.w);
          r14.w = -1 + r14.w;
          r14.w = saturate(cb0[26].z * r14.w + 1);
          r13.w = r14.w * r13.w;
          r12.z = r12.z ? 0 : r13.w;
          r19.xyz = r12.zzz * r20.xyz;
          r14.xyz = r14.xyz * r15.xyz;
          r14.xyz = r19.xyz * r21.xyz + r14.xyz;
          r12.z = dot(cb1[162].xyz, r18.xyz);
          r12.z = r12.z + r12.z;
          r11.x = r11.x * r8.z;
          r11.x = r12.z * r12.z + -r11.x;
          r13.w = cmp(r11.x >= 0);
          r11.x = sqrt(r11.x);
          r15.xy = r11.xx * float2(1,-1) + -r12.zz;
          r15.xy = r15.xy / r8.yy;
          r15.xy = r13.ww ? r15.xy : float2(-1,-1);
          r18.xy = cmp(r15.yx < float2(0,0));
          r11.x = r18.y ? r18.x : 0;
          r18.zw = max(float2(0,0), r15.xy);
          r12.z = r18.y ? r18.w : -1;
          r12.z = r18.x ? r18.z : r12.z;
          r13.w = (int)r18.y | (int)r18.x;
          r14.w = min(r15.y, r15.x);
          r14.w = max(0, r14.w);
          r12.z = r13.w ? r12.z : r14.w;
          r12.z = cmp(r12.z >= 0);
          r11.x = r11.x ? 0 : r12.z;
          if (r8.w != 0) {
            r18.xyzw = cb3[41].xyzw * r11.zzzz;
            r18.xyzw = r11.yyyy * cb3[40].xyzw + r18.xyzw;
            r18.xyzw = r11.wwww * cb3[42].xyzw + r18.xyzw;
            r18.xyzw = cb3[43].xyzw + r18.xyzw;
            r19.xyzw = r18.xyxy / r18.wwww;
            r15.xy = cmp(r19.zw >= float2(0,0));
            r18.xy = cmp(float2(1,1) >= r19.zw);
            r15.xy = r15.xy ? r18.xy : 0;
            r12.z = r15.y ? r15.x : 0;
            if (r12.z != 0) {
              r19.xyzw = r19.xyzw * cb3[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r15.xy = frac(r19.zw);
              r19.xyzw = floor(r19.xyzw);
              r20.xyzw = float4(0.5,1.5,0.5,0.5) + r19.zwzw;
              r20.xyzw = cb3[44].zwzw * r20.xyzw;
              r21.x = t2.SampleLevel(s2_s, r20.xy, 0).x;
              r19.xyzw = float4(1.5,1.5,1.5,0.5) + r19.xyzw;
              r19.xyzw = cb3[44].zwzw * r19.xyzw;
              r21.y = t2.SampleLevel(s2_s, r19.xy, 0).x;
              r21.z = t2.SampleLevel(s2_s, r19.zw, 0).x;
              r21.w = t2.SampleLevel(s2_s, r20.zw, 0).x;
              r12.z = r18.z * 40 + -1;
              r18.xyzw = saturate(r21.xyzw * float4(40,40,40,40) + -r12.zzzz);
              r19.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r21.xyzw);
              r19.xyzw = r19.xyzw ? float4(1,1,1,1) : 0;
              r18.xyzw = r19.xyzw + r18.xyzw;
              r18.xyzw = min(float4(1,1,1,1), r18.xyzw);
              r18.yz = r18.zy + -r18.wx;
              r15.xz = r15.xx * r18.yz + r18.wx;
              r12.z = r15.z + -r15.x;
              r12.z = r15.y * r12.z + r15.x;
            } else {
              r12.z = 1;
            }
          } else {
            r12.z = 1;
          }
          r18.xyzw = cb3[2].xyzw * r11.zzzz;
          r18.xyzw = r11.yyyy * cb3[1].xyzw + r18.xyzw;
          r18.xyzw = r11.wwww * cb3[3].xyzw + r18.xyzw;
          r18.xyzw = cb3[4].xyzw + r18.xyzw;
          r15.xy = r18.xy / r18.ww;
          r18.xy = cmp(r15.xy >= cb3[5].xy);
          r19.xy = cmp(cb3[5].zw >= r15.xy);
          r18.xy = r18.xy ? r19.xy : 0;
          r13.w = r18.y ? r18.x : 0;
          if (r13.w != 0) {
            r13.w = t1.SampleLevel(s1_s, r15.xy, 0).x;
            r14.w = -cb3[6].x + r13.w;
            r14.w = cmp(r18.z < r14.w);
            r14.w = r14.w ? 1.000000 : 0;
            r13.w = cmp(r13.w == 1.000000);
            r13.w = r13.w ? 1.000000 : 0;
            r13.w = r14.w + r13.w;
            r13.w = min(1, r13.w);
          } else {
            r13.w = 1;
          }
          r14.w = saturate(r15.w * cb3[7].z + cb3[7].w);
          r14.w = r14.w * r14.w;
          r15.x = 1 + -r13.w;
          r13.w = r14.w * r15.x + r13.w;
          r12.z = min(r13.w, r12.z);
          r15.xyzw = cb5[24].xyzw * r11.zzzz;
          r15.xyzw = r11.yyyy * cb5[23].xyzw + r15.xyzw;
          r15.xyzw = r11.wwww * cb5[25].xyzw + r15.xyzw;
          r15.xyzw = cb5[26].xyzw + r15.xyzw;
          r11.yzw = r15.xyz / r15.www;
          r11.yz = r11.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r15.xyz = t8.SampleLevel(s8_s, r11.yz, 0).xyz;
          r11.y = saturate(1 + -r11.w);
          r11.y = r11.y * cb5[8].x + -r15.x;
          r11.y = max(0, r11.y);
          r11.y = r11.y * r15.y;
          r11.y = 1000 * r11.y;
          r11.y = min(r15.z, r11.y);
          r11.y = -1.44269502 * r11.y;
          r11.y = exp2(r11.y);
          r11.y = min(1, r11.y);
          r11.y = -1 + r11.y;
          r11.y = saturate(cb0[26].w * r11.y + 1);
          r11.y = r12.z * r11.y;
          r11.x = r11.x ? 0 : r11.y;
          r11.xyz = r11.xxx * r7.xyz;
          r11.xyz = r11.xyz * r12.xyw;
          r11.xyz = r11.xyz * r13.xyz;
          r11.xyz = r6.yzw * r14.xyz + r11.xyz;
          r11.xyz = -r11.xyz * r17.xyz + r11.xyz;
          r11.xyz = r11.xyz / r16.xyz;
          r9.xyz = r10.xyz * r11.xyz + r9.xyz;
          r10.xyz = r17.xyz * r10.xyz;
        }
      } else {
        r9.xyz = float3(0,0,0);
        r10.xyz = float3(1,1,1);
      }
    } else {
      r9.xyz = float3(0,0,0);
      r10.xyz = float3(1,1,1);
    }
  } else {
    r9.xyz = float3(0,0,0);
    r10.xyz = float3(1,1,1);
  }
  r0.xyz = r9.xyz * r4.xyz + r3.xyz;
  o0.xyz = min(float3(32256,32256,32256), r0.xyz);
  o0.w = dot(r10.xyz, float3(0.333333343,0.333333343,0.333333343));
  return;
}