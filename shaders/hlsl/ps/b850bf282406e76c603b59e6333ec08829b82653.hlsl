// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb4[49];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
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
          r3.yz = cmp(float2(0,0) < r3.yz);
          r3.y = (int)r3.z | (int)r3.y;
          if (r3.y == 0) {
            r3.y = sqrt(r0.z);
            r4.xyz = r1.xyz / r3.yyy;
            r3.z = dot(r2.xyz, r4.xyz);
            r4.x = cb2[0].z * cb2[0].z;
            r2.w = cb2[0].z * cb2[0].z + -r2.w;
            r2.w = max(0, r2.w);
            r2.w = sqrt(r2.w);
            r3.x = max(0, r3.x);
            r3.x = sqrt(r3.x);
            r4.y = r3.z * r3.z + -1;
            r0.z = r0.z * r4.y + r4.x;
            r0.z = sqrt(r0.z);
            r0.z = -r3.y * r3.z + r0.z;
            r0.z = max(0, r0.z);
            r3.y = cb2[0].z + -r3.y;
            r3.z = r3.x + r2.w;
            r0.z = -r3.y + r0.z;
            r3.y = r3.z + -r3.y;
            r4.x = r0.z / r3.y;
            r4.y = r3.x / r2.w;
            r3.xyz = t3.SampleLevel(s3_s, r4.xy, 0).xyz;
          } else {
            r3.xyz = float3(0,0,0);
          }
          r3.xyz = cb1[167].xyz * r3.xyz;
        }
        r3.xyz = r3.www ? r3.xyz : 0;
        r0.z = cmp(0 != cb1[184].x);
        r0.z = r0.z ? cb1[184].y : cb1[135].y;
        r3.xyz = r3.xyz * r0.zzz;
        r3.xyz = min(float3(64000,64000,64000), r3.xyz);
        r0.z = 1 + -cb1[169].x;
        r2.w = 0.25 * r0.z;
        r0.z = r0.z * 0.25 + cb1[169].x;
        r0.z = r0.z + -r1.w;
        r0.z = saturate(r0.z / r2.w);
        r0.z = 1 + -r0.z;
        r3.xyz = r3.xyz * r0.zzz;
      }
      r3.xyz = (int3)r0.www & (int3)r3.xyz;
    } else {
      r3.xyz = float3(0,0,0);
    }
    r4.xyz = cb5[9].xyz;
  } else {
    r0.z = cmp(0 >= cb5[8].w);
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
  r1.w = 0.00999999978 + cb2[0].z;
  r1.w = cmp(r0.w < r1.w);
  r1.w = r0.y ? r1.w : 0;
  if (r1.w != 0) {
    r5.x = dot(cb1[174].xyz, r2.xyz);
    r5.y = dot(cb1[175].xyz, r2.xyz);
    r5.z = dot(cb1[176].xyz, r2.xyz);
    r1.w = dot(r5.xyz, r5.xyz);
    r2.w = dot(r5.zz, r0.ww);
    r3.w = -cb2[0].y * cb2[0].y + r0.z;
    r4.w = r3.w * r1.w;
    r4.w = 4 * r4.w;
    r4.w = r2.w * r2.w + -r4.w;
    r5.w = cmp(r4.w >= 0);
    r4.w = sqrt(r4.w);
    r6.xy = r4.ww * float2(1,-1) + -r2.ww;
    r1.w = r1.w + r1.w;
    r6.xy = r6.xy / r1.ww;
    r6.xy = r5.ww ? r6.xy : float2(-1,-1);
    r6.zw = cmp(r6.yx < float2(0,0));
    r1.w = r6.w ? r6.z : 0;
    r7.xy = max(float2(0,0), r6.xy);
    r2.w = r6.w ? r7.y : -1;
    r2.w = r6.z ? r7.x : r2.w;
    r4.w = (int)r6.w | (int)r6.z;
    r5.w = min(r6.y, r6.x);
    r5.w = max(0, r5.w);
    r2.w = r4.w ? r2.w : r5.w;
    r3.w = sqrt(r3.w);
    r3.w = r3.w / r0.w;
    r4.w = r3.w * r3.w;
    r5.w = r4.w * r3.w;
    r6.x = r3.w * -0.212114394 + 1.57072878;
    r4.w = r4.w * 0.0742610022 + r6.x;
    r4.w = r5.w * -0.0187292993 + r4.w;
    r5.w = 1 + -r3.w;
    r5.w = sqrt(r5.w);
    r6.x = r5.w * r4.w;
    r3.w = cmp(r3.w >= 0);
    r4.w = -r5.w * r4.w + 3.14159274;
    r3.w = r3.w ? r6.x : r4.w;
    r4.w = 3.14159274 + -r3.w;
    r5.w = abs(r5.z) * abs(r5.z);
    r6.x = r5.w * abs(r5.z);
    r6.y = abs(r5.z) * -0.212114394 + 1.57072878;
    r5.w = r5.w * 0.0742610022 + r6.y;
    r5.w = r6.x * -0.0187292993 + r5.w;
    r6.x = 1 + -abs(r5.z);
    r6.x = sqrt(r6.x);
    r6.y = r6.x * r5.w;
    r5.z = cmp(r5.z >= 0);
    r5.w = -r6.x * r5.w + 3.14159274;
    r5.z = r5.z ? r6.y : r5.w;
    r2.w = cmp(r2.w < 0);
    r1.w = (int)r1.w | (int)r2.w;
    r2.w = r5.z / r4.w;
    r2.w = 1 + -r2.w;
    r2.w = sqrt(r2.w);
    r2.w = 1 + -r2.w;
    r2.w = 0.5 * r2.w;
    r4.w = r5.z + -r4.w;
    r3.w = r4.w / r3.w;
    r3.w = sqrt(r3.w);
    r3.w = r3.w * 0.5 + 0.5;
    r6.y = r1.w ? r2.w : r3.w;
    r1.w = max(abs(r5.x), abs(r5.y));
    r2.w = min(abs(r5.x), abs(r5.y));
    r1.w = r2.w / r1.w;
    r2.w = r1.w * r1.w;
    r3.w = r2.w * 0.0872929022 + -0.301894993;
    r2.w = r3.w * r2.w + 1;
    r3.w = r2.w * r1.w;
    r4.w = cmp(abs(r5.x) < abs(r5.y));
    r1.w = -r2.w * r1.w + 1.57079637;
    r1.w = r4.w ? r1.w : r3.w;
    r5.xy = cmp(-r5.xy < float2(0,0));
    r2.w = 3.14159274 + -r1.w;
    r1.w = r5.x ? r2.w : r1.w;
    r1.w = r5.y ? -r1.w : r1.w;
    r1.w = 3.14159274 + r1.w;
    r6.x = 0.159154937 * r1.w;
    r5.xy = cb5[7].zw * float2(0.5,0.5) + r6.xy;
    r5.zw = float2(1,1) + cb5[7].xy;
    r5.zw = cb5[7].xy / r5.zw;
    r5.xy = r5.xy * r5.zw;
    r5.xyz = t5.SampleLevel(s5_s, r5.xy, 0).xyz;
    r5.xyz = r5.xyz * r4.xyz;
    r1.w = cmp(0 != cb1[184].x);
    r1.w = r1.w ? cb1[184].y : cb1[135].y;
    r1.w = cb1[135].z * r1.w;
    r5.xyz = r5.xyz * r1.www + r3.xyz;
    o0.xyz = min(float3(32256,32256,32256), r5.xyz);
    o0.w = 1;
    return;
  }
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
        r0.x = r0.y ? 1 : cb5[8].z;
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
        r0.z = saturate(cb5[0].z * r0.y);
        r1.w = cb5[0].y + -cb5[0].x;
        r0.z = r0.z * r1.w + cb5[0].x;
        r1.w = floor(r0.z);
        r2.w = r1.w * r0.y;
        r2.w = r2.w / r0.z;
        r3.w = dot(cb1[161].xyz, r2.xyz);
        r4.w = -cb2[5].x * cb2[5].x + 1;
        r5.x = cb2[5].x * cb2[5].x + 1;
        r5.z = dot(-r3.ww, cb2[5].xx);
        r5.x = r5.x + r5.z;
        r5.z = 12.566371 * r5.x;
        r5.x = sqrt(r5.x);
        r5.x = r5.z * r5.x;
        r4.w = r4.w / r5.x;
        r3.w = r3.w * r3.w + 1;
        r3.w = 0.0596831031 * r3.w;
        r5.x = cmp(0 != cb1[184].x);
        r5.z = r5.x ? cb1[184].y : cb1[135].y;
        r6.xyz = cb1[163].xyz * r5.zzz;
        r5.z = asuint(cb1[144].y);
        r5.zw = r5.zz * float2(32.6650009,11.8149996) + v0.xy;
        r5.z = dot(r5.zw, float2(0.0671105608,0.00583714992));
        r5.z = frac(r5.z);
        r5.z = 52.9829178 * r5.z;
        r5.z = frac(r5.z);
        r5.x = r5.x ? 0.300000012 : r5.z;
        r0.w = cb2[0].z * cb2[0].z + -r0.w;
        r0.w = max(0, r0.w);
        r0.w = sqrt(r0.w);
        r5.z = cb2[0].z + -cb2[0].y;
        r5.w = dot(cb1[161].xyz, cb1[161].xyz);
        r6.w = 4 * r5.w;
        r5.w = r5.w + r5.w;
        r7.xyz = float3(0,0,0);
        r7.w = cb3[38].x;
        r8.xyzw = float4(1,1,1,0);
        while (true) {
          r9.x = cmp(r8.w >= r0.z);
          if (r9.x != 0) break;
          r9.x = r8.w / r1.w;
          r8.w = 1 + r8.w;
          r9.y = r8.w / r1.w;
          r9.xy = r9.xy * r9.xy;
          r9.w = cmp(1 < r9.y);
          r9.yz = r9.yx * r2.ww;
          r9.y = r9.w ? r0.y : r9.y;
          r9.x = -r2.w * r9.x + r9.y;
          r9.y = r9.x * r5.x + r9.z;
          r9.yzw = r9.yyy * r2.xyz + r1.xyz;
          r10.x = dot(r9.yzw, r9.yzw);
          r10.y = sqrt(r10.x);
          r10.z = -cb2[0].y + r10.y;
          r10.w = max(0, r10.z);
          r11.x = cb2[3].x * r10.w;
          r11.x = 1.44269502 * r11.x;
          r11.x = exp2(r11.x);
          r11.y = cb2[0].w * r10.w;
          r11.y = 1.44269502 * r11.y;
          r11.y = exp2(r11.y);
          r11.z = cmp(r10.w < cb2[7].x);
          r11.w = saturate(cb2[7].z * r10.w + cb2[7].y);
          r10.w = saturate(cb2[8].x * r10.w + cb2[7].w);
          r10.w = r11.z ? r11.w : r10.w;
          r12.xyz = cb2[2].xyz * r11.xxx;
          r11.yzw = cb2[1].xyz * r11.yyy;
          r13.xyz = r11.xxx * cb2[2].xyz + r11.yzw;
          r14.xyz = r11.xxx * cb2[4].xyz + r11.yzw;
          r14.xyz = r10.www * cb2[9].xyz + r14.xyz;
          r15.xyz = r14.xyz * r9.xxx;
          r15.xyz = r15.xyz * r0.xxx;
          r15.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r15.xyz;
          r15.xyz = exp2(r15.xyz);
          r16.xyz = r9.yzw / r10.yyy;
          r9.x = dot(cb1[161].xyz, r16.xyz);
          r10.w = -cb2[0].y * cb2[0].y + r10.x;
          r10.w = max(0, r10.w);
          r11.x = r9.x * r9.x + -1;
          r10.x = r10.x * r11.x + r5.y;
          r10.xw = sqrt(r10.xw);
          r10.x = -r10.y * r9.x + r10.x;
          r10.x = max(0, r10.x);
          r10.y = cb2[0].z + -r10.y;
          r11.x = r10.w + r0.w;
          r10.x = r10.x + -r10.y;
          r10.y = r11.x + -r10.y;
          r10.x = r10.x / r10.y;
          r10.y = r10.w / r0.w;
          r10.xyw = t3.SampleLevel(s3_s, r10.xy, 0).xyz;
          r11.xyz = r11.yzw * r3.www;
          r11.xyz = r12.xyz * r4.www + r11.xyz;
          r12.x = saturate(r9.x * 0.5 + 0.5);
          r12.y = saturate(r10.z / r5.z);
          r12.xyz = t4.SampleLevel(s4_s, r12.xy, 0).xyz;
          r16.xyz = -r16.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r9.yzw;
          r9.x = dot(r16.xyz, r16.xyz);
          r10.z = dot(cb1[161].xyz, r16.xyz);
          r10.z = r10.z + r10.z;
          r9.x = -cb2[0].y * cb2[0].y + r9.x;
          r9.x = r9.x * r6.w;
          r9.x = r10.z * r10.z + -r9.x;
          r11.w = cmp(r9.x >= 0);
          r9.x = sqrt(r9.x);
          r16.xy = r9.xx * float2(1,-1) + -r10.zz;
          r16.xy = r16.xy / r5.ww;
          r16.xy = r11.ww ? r16.xy : float2(-1,-1);
          r16.zw = cmp(r16.yx < float2(0,0));
          r9.x = r16.w ? r16.z : 0;
          r17.xy = max(float2(0,0), r16.xy);
          r10.z = r16.w ? r17.y : -1;
          r10.z = r16.z ? r17.x : r10.z;
          r11.w = (int)r16.w | (int)r16.z;
          r12.w = min(r16.y, r16.x);
          r12.w = max(0, r12.w);
          r10.z = r11.w ? r10.z : r12.w;
          r10.z = cmp(r10.z >= 0);
          r9.x = r9.x ? 0 : r10.z;
          r9.yzw = r9.yzw * float3(100000,100000,100000) + cb1[173].xyz;
          if (r7.w != 0) {
            r16.xyzw = cb3[41].xyzw * r9.zzzz;
            r16.xyzw = r9.yyyy * cb3[40].xyzw + r16.xyzw;
            r16.xyzw = r9.wwww * cb3[42].xyzw + r16.xyzw;
            r16.xyzw = cb3[43].xyzw + r16.xyzw;
            r17.xyzw = r16.xyxy / r16.wwww;
            r16.xy = cmp(r17.zw >= float2(0,0));
            r18.xy = cmp(float2(1,1) >= r17.zw);
            r16.xy = r16.xy ? r18.xy : 0;
            r10.z = r16.y ? r16.x : 0;
            if (r10.z != 0) {
              r17.xyzw = r17.xyzw * cb3[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r16.xy = frac(r17.zw);
              r17.xyzw = floor(r17.xyzw);
              r18.xyzw = float4(0.5,1.5,0.5,0.5) + r17.zwzw;
              r18.xyzw = cb3[44].zwzw * r18.xyzw;
              r19.x = t2.SampleLevel(s2_s, r18.xy, 0).x;
              r17.xyzw = float4(1.5,1.5,1.5,0.5) + r17.xyzw;
              r17.xyzw = cb3[44].zwzw * r17.xyzw;
              r19.y = t2.SampleLevel(s2_s, r17.xy, 0).x;
              r19.z = t2.SampleLevel(s2_s, r17.zw, 0).x;
              r19.w = t2.SampleLevel(s2_s, r18.zw, 0).x;
              r10.z = r16.z * 40 + -1;
              r17.xyzw = saturate(r19.xyzw * float4(40,40,40,40) + -r10.zzzz);
              r18.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r19.xyzw);
              r18.xyzw = r18.xyzw ? float4(1,1,1,1) : 0;
              r17.xyzw = r18.xyzw + r17.xyzw;
              r17.xyzw = min(float4(1,1,1,1), r17.xyzw);
              r16.zw = r17.zy + -r17.wx;
              r16.xz = r16.xx * r16.zw + r17.wx;
              r10.z = r16.z + -r16.x;
              r10.z = r16.y * r10.z + r16.x;
            } else {
              r10.z = 1;
            }
          } else {
            r10.z = 1;
          }
          r16.xyzw = cb3[2].xyzw * r9.zzzz;
          r16.xyzw = r9.yyyy * cb3[1].xyzw + r16.xyzw;
          r16.xyzw = r9.wwww * cb3[3].xyzw + r16.xyzw;
          r16.xyzw = cb3[4].xyzw + r16.xyzw;
          r16.xy = r16.xy / r16.ww;
          r17.xy = cmp(r16.xy >= cb3[5].xy);
          r17.zw = cmp(cb3[5].zw >= r16.xy);
          r17.xy = r17.zw ? r17.xy : 0;
          r11.w = r17.y ? r17.x : 0;
          if (r11.w != 0) {
            r11.w = t1.SampleLevel(s1_s, r16.xy, 0).x;
            r12.w = -cb3[6].x + r11.w;
            r12.w = cmp(r16.z < r12.w);
            r12.w = r12.w ? 1.000000 : 0;
            r11.w = cmp(r11.w == 1.000000);
            r11.w = r11.w ? 1.000000 : 0;
            r11.w = r12.w + r11.w;
            r11.w = min(1, r11.w);
          } else {
            r11.w = 1;
          }
          r16.xyz = -cb1[67].xyz + r9.yzw;
          r12.w = dot(r16.xyz, cb1[60].xyz);
          r12.w = saturate(r12.w * cb3[7].z + cb3[7].w);
          r12.w = r12.w * r12.w;
          r13.w = 1 + -r11.w;
          r11.w = r12.w * r13.w + r11.w;
          r10.z = min(r11.w, r10.z);
          r16.xyzw = cb4[46].xyzw * r9.zzzz;
          r16.xyzw = r9.yyyy * cb4[45].xyzw + r16.xyzw;
          r16.xyzw = r9.wwww * cb4[47].xyzw + r16.xyzw;
          r16.xyzw = cb4[48].xyzw + r16.xyzw;
          r16.xyz = r16.xyz / r16.www;
          r16.xy = r16.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r16.xyw = t7.SampleLevel(s7_s, r16.xy, 0).xyz;
          r11.w = saturate(1 + -r16.z);
          r11.w = r11.w * cb4[43].x + -r16.x;
          r11.w = max(0, r11.w);
          r11.w = r11.w * r16.y;
          r11.w = 1000 * r11.w;
          r11.w = min(r16.w, r11.w);
          r11.w = -1.44269502 * r11.w;
          r11.w = exp2(r11.w);
          r11.w = min(1, r11.w);
          r12.xyz = r12.xyz * r11.www;
          r16.xyzw = cb4[20].xyzw * r9.zzzz;
          r16.xyzw = r9.yyyy * cb4[19].xyzw + r16.xyzw;
          r16.xyzw = r9.wwww * cb4[21].xyzw + r16.xyzw;
          r16.xyzw = cb4[22].xyzw + r16.xyzw;
          r9.yzw = r16.xyz / r16.www;
          r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r16.xyz = t6.SampleLevel(s6_s, r9.yz, 0).xyz;
          r9.y = saturate(1 + -r9.w);
          r9.y = r9.y * cb4[7].x + -r16.x;
          r9.y = max(0, r9.y);
          r9.y = r9.y * r16.y;
          r9.y = 1000 * r9.y;
          r9.y = min(r16.z, r9.y);
          r9.y = -1.44269502 * r9.y;
          r9.y = exp2(r9.y);
          r9.y = min(1, r9.y);
          r9.y = -1 + r9.y;
          r9.y = saturate(cb0[26].z * r9.y + 1);
          r9.y = r10.z * r9.y;
          r9.x = r9.x ? 0 : r9.y;
          r9.xyz = r9.xxx * r10.xyw;
          r10.xyz = r12.xyz * r13.xyz;
          r9.xyz = r9.xyz * r11.xyz + r10.xyz;
          r9.xyz = r9.xyz * r6.xyz;
          r9.xyz = -r9.xyz * r15.xyz + r9.xyz;
          r9.xyz = r9.xyz / r14.xyz;
          r7.xyz = r8.xyz * r9.xyz + r7.xyz;
          r8.xyz = r15.xyz * r8.xyz;
        }
      } else {
        r7.xyz = float3(0,0,0);
        r8.xyz = float3(1,1,1);
      }
    } else {
      r7.xyz = float3(0,0,0);
      r8.xyz = float3(1,1,1);
    }
  } else {
    r7.xyz = float3(0,0,0);
    r8.xyz = float3(1,1,1);
  }
  r0.xyz = r7.xyz * r4.xyz + r3.xyz;
  o0.xyz = min(float3(32256,32256,32256), r0.xyz);
  o0.w = dot(r8.xyz, float3(0.333333343,0.333333343,0.333333343));
  return;
}