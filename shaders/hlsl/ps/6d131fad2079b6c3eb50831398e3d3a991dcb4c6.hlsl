// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[10];
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
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21;
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
  r0.x = cb0[1].y ? 0 : r0.x;
  r0.y = cmp(r0.x == 0.000000);
  if (r0.y != 0) {
    if (cb0[0].w != 0) {
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
            r4.xyz = t1.SampleLevel(s1_s, r4.xy, 0).xyz;
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
            r3.xyz = t1.SampleLevel(s1_s, r5.xy, 0).xyz;
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
    r4.xyz = cb3[9].xyz;
  } else {
    r0.z = cmp(0 >= cb3[8].w);
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
    r5.xy = cb3[7].zw * float2(0.5,0.5) + r6.xy;
    r5.zw = float2(1,1) + cb3[7].xy;
    r5.zw = cb3[7].xy / r5.zw;
    r5.xy = r5.xy * r5.zw;
    r5.xyz = t3.SampleLevel(s3_s, r5.xy, 0).xyz;
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
  r1.xyz = r2.xyz * cb0[0].xxx + r1.xyz;
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
        r0.x = r0.y ? 1 : cb3[8].z;
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
        r0.z = saturate(cb3[0].z * r0.y);
        r1.w = cb3[0].y + -cb3[0].x;
        r0.z = r0.z * r1.w + cb3[0].x;
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
        r10.xyz = float3(1,1,1);
        r8.w = 0;
        while (true) {
          r9.w = cmp(r8.w >= r0.z);
          if (r9.w != 0) break;
          r9.w = r8.w / r1.w;
          r8.w = 1 + r8.w;
          r10.w = r8.w / r1.w;
          r9.w = r9.w * r9.w;
          r10.w = r10.w * r10.w;
          r11.x = r9.w * r2.w;
          r11.y = cmp(1 < r10.w);
          r10.w = r10.w * r2.w;
          r10.w = r11.y ? r0.y : r10.w;
          r9.w = -r2.w * r9.w + r10.w;
          r10.w = r9.w * r5.z + r11.x;
          r11.xyz = r10.www * r2.xyz + r1.xyz;
          r10.w = dot(r11.xyz, r11.xyz);
          r11.w = sqrt(r10.w);
          r12.x = -cb2[0].y + r11.w;
          r12.y = max(0, r12.x);
          r12.z = cb2[3].x * r12.y;
          r12.z = 1.44269502 * r12.z;
          r12.z = exp2(r12.z);
          r12.w = cb2[0].w * r12.y;
          r12.w = 1.44269502 * r12.w;
          r12.w = exp2(r12.w);
          r13.x = cmp(r12.y < cb2[7].x);
          r13.y = saturate(cb2[7].z * r12.y + cb2[7].y);
          r12.y = saturate(cb2[8].x * r12.y + cb2[7].w);
          r12.y = r13.x ? r13.y : r12.y;
          r13.xyz = cb2[2].xyz * r12.zzz;
          r14.xyz = cb2[1].xyz * r12.www;
          r15.xyz = r12.zzz * cb2[2].xyz + r14.xyz;
          r16.xyz = r12.zzz * cb2[4].xyz + r14.xyz;
          r12.yzw = r12.yyy * cb2[9].xyz + r16.xyz;
          r16.xyz = r12.yzw * r9.www;
          r16.xyz = r16.xyz * r0.xxx;
          r16.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r16.xyz;
          r16.xyz = exp2(r16.xyz);
          r17.xyz = r11.xyz / r11.www;
          r9.w = dot(cb1[161].xyz, r17.xyz);
          r13.w = -cb2[0].y * cb2[0].y + r10.w;
          r13.w = max(0, r13.w);
          r13.w = sqrt(r13.w);
          r14.w = r9.w * r9.w + -1;
          r14.w = r10.w * r14.w + r5.y;
          r14.w = sqrt(r14.w);
          r14.w = -r11.w * r9.w + r14.w;
          r14.w = max(0, r14.w);
          r15.w = cb2[0].z + -r11.w;
          r16.w = r13.w + r0.w;
          r14.w = -r15.w + r14.w;
          r16.w = r16.w + -r15.w;
          r18.y = r14.w / r16.w;
          r18.z = r13.w / r0.w;
          r19.xyz = t1.SampleLevel(s1_s, r18.yz, 0).xyz;
          r20.xyz = r14.xyz * r3.www;
          r20.xyz = r13.xyz * r5.www + r20.xyz;
          r13.w = dot(cb1[162].xyz, r17.xyz);
          r14.w = r13.w * r13.w + -1;
          r10.w = r10.w * r14.w + r5.y;
          r10.w = sqrt(r10.w);
          r10.w = -r11.w * r13.w + r10.w;
          r10.w = max(0, r10.w);
          r10.w = r10.w + -r15.w;
          r18.x = r10.w / r16.w;
          r18.xyz = t1.SampleLevel(s1_s, r18.xz, 0).xyz;
          r14.xyz = r14.xyz * r5.xxx;
          r13.xyz = r13.xyz * r4.www + r14.xyz;
          r14.x = saturate(r9.w * 0.5 + 0.5);
          r14.y = saturate(r12.x / r6.x);
          r14.xyz = t2.SampleLevel(s2_s, r14.xy, 0).xyz;
          r11.xyz = -r17.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r11.xyz;
          r9.w = dot(r11.xyz, r11.xyz);
          r10.w = dot(cb1[161].xyz, r11.xyz);
          r10.w = r10.w + r10.w;
          r9.w = -cb2[0].y * cb2[0].y + r9.w;
          r11.w = r9.w * r8.x;
          r11.w = r10.w * r10.w + -r11.w;
          r12.x = cmp(r11.w >= 0);
          r11.w = sqrt(r11.w);
          r17.xy = r11.ww * float2(1,-1) + -r10.ww;
          r17.xy = r17.xy / r7.ww;
          r17.xy = r12.xx ? r17.xy : float2(-1,-1);
          r17.zw = cmp(r17.yx < float2(0,0));
          r10.w = r17.w ? r17.z : 0;
          r21.xy = max(float2(0,0), r17.xy);
          r11.w = r17.w ? r21.y : -1;
          r11.w = r17.z ? r21.x : r11.w;
          r12.x = (int)r17.w | (int)r17.z;
          r13.w = min(r17.y, r17.x);
          r13.w = max(0, r13.w);
          r11.w = r12.x ? r11.w : r13.w;
          r11.w = cmp(r11.w >= 0);
          r10.w = r10.w ? 0 : r11.w;
          r10.w = r10.w ? 0 : 1;
          r17.xyz = r10.www * r19.xyz;
          r14.xyz = r14.xyz * r15.xyz;
          r14.xyz = r17.xyz * r20.xyz + r14.xyz;
          r10.w = dot(cb1[162].xyz, r11.xyz);
          r10.w = r10.w + r10.w;
          r9.w = r9.w * r8.z;
          r9.w = r10.w * r10.w + -r9.w;
          r11.x = cmp(r9.w >= 0);
          r9.w = sqrt(r9.w);
          r11.yz = r9.ww * float2(1,-1) + -r10.ww;
          r11.yz = r11.yz / r8.yy;
          r11.xy = r11.xx ? r11.yz : float2(-1,-1);
          r11.zw = cmp(r11.yx < float2(0,0));
          r9.w = r11.w ? r11.z : 0;
          r15.xy = max(float2(0,0), r11.xy);
          r10.w = r11.w ? r15.y : -1;
          r10.w = r11.z ? r15.x : r10.w;
          r11.z = (int)r11.w | (int)r11.z;
          r11.x = min(r11.y, r11.x);
          r11.x = max(0, r11.x);
          r10.w = r11.z ? r10.w : r11.x;
          r10.w = cmp(r10.w >= 0);
          r9.w = r9.w ? 0 : r10.w;
          r9.w = r9.w ? 0 : 1;
          r11.xyz = r9.www * r7.xyz;
          r11.xyz = r11.xyz * r18.xyz;
          r11.xyz = r11.xyz * r13.xyz;
          r11.xyz = r6.yzw * r14.xyz + r11.xyz;
          r11.xyz = -r11.xyz * r16.xyz + r11.xyz;
          r11.xyz = r11.xyz / r12.yzw;
          r9.xyz = r10.xyz * r11.xyz + r9.xyz;
          r10.xyz = r16.xyz * r10.xyz;
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