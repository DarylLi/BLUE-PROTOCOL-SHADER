// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0,
  out float oDepth : SV_DEPTH)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = -cb1[173].xyz + cb1[67].xyz;
  r0.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r0.x);
  r0.y = 0.25 * cb0[6].z;
  r0.z = -cb0[6].z * 0.25 + cb0[6].w;
  r2.y = -68 + r0.z;
  r2.x = 2;
  r0.zw = cb0[6].zz * float2(0.25,0.25) + r2.xy;
  r0.zw = cmp(v0.xy < r0.zw);
  r0.z = r0.w ? r0.z : 0;
  r2.zw = cmp(r2.xy < v0.xy);
  r0.w = r2.w ? r2.z : 0;
  r0.z = r0.w ? r0.z : 0;
  if (r0.z != 0) {
    r0.zw = v0.xy + -r2.xy;
    r0.zw = max(float2(0,0), r0.zw);
    r0.zw = min(r0.zw, r0.yy);
    r0.yz = r0.zw / r0.yy;
    r0.yz = r0.yz * float2(2,2) + float2(-1,-1);
    r0.w = dot(r0.yz, r0.yz);
    r1.w = sqrt(r0.w);
    r1.w = cmp(r1.w < 1);
    if (r1.w != 0) {
      r1.w = cb2[0].y * cb2[0].y;
      r2.x = cmp(r1.w < r0.x);
      if (r2.x != 0) {
        r2.z = r0.w * -2 + 1;
        r2.w = 1 + -abs(r2.z);
        r2.w = sqrt(r2.w);
        r3.x = abs(r2.z) * -0.0187292993 + 0.0742610022;
        r3.x = r3.x * abs(r2.z) + -0.212114394;
        r3.x = r3.x * abs(r2.z) + 1.57072878;
        r3.y = r3.x * r2.w;
        r3.y = r3.y * -2 + 3.14159274;
        r3.z = cmp(r2.z < -r2.z);
        r3.y = r3.z ? r3.y : 0;
        r2.w = r3.x * r2.w + r3.y;
        r2.w = 1.57079637 + -r2.w;
        r2.w = cos(r2.w);
        r0.w = rsqrt(r0.w);
        r0.yz = r0.yz * r0.ww;
        r2.xy = r2.ww * r0.yz;
        r0.y = dot(r2.xyz, r2.xyz);
        r0.y = rsqrt(r0.y);
        r0.yzw = r2.xyz * r0.yyy;
        r2.x = dot(r0.yzw, r0.yzw);
        r2.y = dot(r0.ww, r1.xx);
        r2.z = -cb2[0].y * cb2[0].y + r0.x;
        r2.w = r2.y * r2.y;
        r3.x = 4 * r2.x;
        r2.z = -r3.x * r2.z + r2.w;
        r3.y = cmp(r2.z >= 0);
        r2.z = sqrt(r2.z);
        r3.zw = r2.zz * float2(1,-1) + -r2.yy;
        r2.x = r2.x + r2.x;
        r3.zw = r3.zw / r2.xx;
        r3.yz = r3.yy ? r3.zw : float2(-1,-1);
        r4.xy = cmp(r3.zy < float2(0,0));
        r2.z = r4.y ? r4.x : 0;
        r4.zw = max(float2(0,0), r3.yz);
        r3.w = r4.y ? r4.w : -1;
        r3.w = r4.x ? r4.z : r3.w;
        r4.x = (int)r4.y | (int)r4.x;
        r3.y = min(r3.z, r3.y);
        r3.y = max(0, r3.y);
        r3.y = r4.x ? r3.w : r3.y;
        r2.z = r2.z ? -1 : r3.y;
        r3.y = cb2[0].z * cb2[0].z;
        r3.z = -cb2[0].z * cb2[0].z + r0.x;
        r2.w = -r3.x * r3.z + r2.w;
        r3.x = cmp(r2.w >= 0);
        r2.w = sqrt(r2.w);
        r2.yw = r2.ww * float2(1,-1) + -r2.yy;
        r2.xy = r2.yw / r2.xx;
        r2.xy = r3.xx ? r2.xy : float2(-1,-1);
        r3.xz = cmp(r2.yx < float2(0,0));
        r2.w = r3.z ? r3.x : 0;
        r4.xy = max(float2(0,0), r2.xy);
        r3.w = r3.z ? r4.y : -1;
        r3.w = r3.x ? r4.x : r3.w;
        r3.x = (int)r3.z | (int)r3.x;
        r2.x = min(r2.y, r2.x);
        r2.x = max(0, r2.x);
        r2.x = r3.x ? r3.w : r2.x;
        r2.x = r2.w ? -1 : r2.x;
        r2.yw = cmp(r2.zx < float2(0,0));
        r2.w = r2.w ? r2.y : 0;
        if (r2.w == 0) {
          r2.w = max(0, r2.x);
          r3.x = cmp(0 < r2.x);
          r2.x = min(r2.x, r2.z);
          r2.x = r3.x ? r2.x : 0;
          r2.x = r2.y ? r2.w : r2.x;
          r2.x = min(9000000, r2.x);
          r2.z = dot(cb1[161].xyz, r0.yzw);
          r2.w = -cb2[5].x * cb2[5].x + 1;
          r3.x = cb2[5].x * cb2[5].x + 1;
          r3.z = dot(-r2.zz, cb2[5].xx);
          r3.x = r3.x + r3.z;
          r3.z = 12.566371 * r3.x;
          r3.x = sqrt(r3.x);
          r3.x = r3.z * r3.x;
          r2.w = r2.w / r3.x;
          r2.z = r2.z * r2.z + 1;
          r2.yz = float2(0.0078125,0.0596831031) * r2.xz;
          r3.x = cmp(0 != cb1[184].x);
          r3.x = r3.x ? cb1[184].y : cb1[135].y;
          r3.xzw = cb1[163].xyz * r3.xxx;
          r1.w = cb2[0].z * cb2[0].z + -r1.w;
          r1.w = max(0, r1.w);
          r1.w = sqrt(r1.w);
          r4.x = cb2[0].z + -cb2[0].y;
          r4.y = dot(cb1[161].xyz, cb1[161].xyz);
          r4.z = 4 * r4.y;
          r4.y = r4.y + r4.y;
          r1.y = 0;
          r5.xyz = float3(0,0,0);
          r6.xyz = float3(1,1,1);
          r7.x = 0;
          while (true) {
            r4.w = cmp(r7.x >= 128);
            if (r4.w != 0) break;
            r7.xy = float2(1,0.300000012) + r7.xx;
            r4.w = r7.y * r2.x;
            r4.w = 0.0078125 * r4.w;
            r7.yzw = r4.www * r0.yzw + r1.yyx;
            r4.w = dot(r7.yzw, r7.yzw);
            r5.w = sqrt(r4.w);
            r6.w = -cb2[0].y + r5.w;
            r8.x = max(0, r6.w);
            r8.y = cb2[3].x * r8.x;
            r8.y = 1.44269502 * r8.y;
            r8.y = exp2(r8.y);
            r8.z = cb2[0].w * r8.x;
            r8.z = 1.44269502 * r8.z;
            r8.z = exp2(r8.z);
            r8.w = cmp(r8.x < cb2[7].x);
            r9.x = saturate(cb2[7].z * r8.x + cb2[7].y);
            r8.x = saturate(cb2[8].x * r8.x + cb2[7].w);
            r8.x = r8.w ? r9.x : r8.x;
            r9.xyz = cb2[2].xyz * r8.yyy;
            r10.xyz = cb2[1].xyz * r8.zzz;
            r11.xyz = r8.yyy * cb2[2].xyz + r10.xyz;
            r8.yzw = r8.yyy * cb2[4].xyz + r10.xyz;
            r8.xyz = r8.xxx * cb2[9].xyz + r8.yzw;
            r12.xyz = r8.xyz * r2.yyy;
            r12.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r12.xyz;
            r12.xyz = exp2(r12.xyz);
            r13.xyz = r7.yzw / r5.www;
            r8.w = dot(cb1[161].xyz, r13.xyz);
            r9.w = -cb2[0].y * cb2[0].y + r4.w;
            r9.w = max(0, r9.w);
            r9.w = sqrt(r9.w);
            r10.w = r8.w * r8.w + -1;
            r4.w = r4.w * r10.w + r3.y;
            r4.w = sqrt(r4.w);
            r4.w = -r5.w * r8.w + r4.w;
            r4.w = max(0, r4.w);
            r5.w = cb2[0].z + -r5.w;
            r10.w = r9.w + r1.w;
            r4.w = -r5.w + r4.w;
            r5.w = r10.w + -r5.w;
            r14.x = r4.w / r5.w;
            r14.y = r9.w / r1.w;
            r14.xyz = t0.SampleLevel(s0_s, r14.xy, 0).xyz;
            r10.xyz = r10.xyz * r2.zzz;
            r9.xyz = r9.xyz * r2.www + r10.xyz;
            r10.x = saturate(r8.w * 0.5 + 0.5);
            r10.y = saturate(r6.w / r4.x);
            r10.xyz = t1.SampleLevel(s1_s, r10.xy, 0).xyz;
            r7.yzw = -r13.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r7.yzw;
            r4.w = dot(r7.yzw, r7.yzw);
            r5.w = dot(cb1[161].xyz, r7.yzw);
            r5.w = r5.w + r5.w;
            r4.w = -cb2[0].y * cb2[0].y + r4.w;
            r4.w = r4.z * r4.w;
            r4.w = r5.w * r5.w + -r4.w;
            r6.w = cmp(r4.w >= 0);
            r4.w = sqrt(r4.w);
            r7.yz = r4.ww * float2(1,-1) + -r5.ww;
            r7.yz = r7.yz / r4.yy;
            r7.yz = r6.ww ? r7.yz : float2(-1,-1);
            r13.xy = cmp(r7.zy < float2(0,0));
            r4.w = r13.y ? r13.x : 0;
            r13.zw = max(float2(0,0), r7.yz);
            r5.w = r13.y ? r13.w : -1;
            r5.w = r13.x ? r13.z : r5.w;
            r6.w = (int)r13.y | (int)r13.x;
            r7.y = min(r7.z, r7.y);
            r7.y = max(0, r7.y);
            r5.w = r6.w ? r5.w : r7.y;
            r5.w = cmp(r5.w >= 0);
            r4.w = r4.w ? 0 : r5.w;
            r4.w = r4.w ? 0 : 1;
            r7.yzw = r4.www * r14.xyz;
            r10.xyz = r10.xyz * r11.xyz;
            r7.yzw = r7.yzw * r9.xyz + r10.xyz;
            r7.yzw = r7.yzw * r3.xzw;
            r7.yzw = -r7.yzw * r12.xyz + r7.yzw;
            r7.yzw = r7.yzw / r8.xyz;
            r5.xyz = r6.xyz * r7.yzw + r5.xyz;
            r6.xyz = r12.xyz * r6.xyz;
          }
        } else {
          r5.xyz = float3(0,0,0);
        }
      } else {
        r5.xyz = float3(0,0,0);
      }
      o0.xyz = r5.xyz;
      o0.w = 0;
      oDepth = 1;
      return;
    }
    o0.xyzw = float4(0,0,0,0);
    oDepth = 1;
    return;
  }
  r2.xz = float2(-70,-66) + cb0[6].zw;
  r0.z = 0.0078125 * r2.x;
  r0.z = floor(r0.z);
  r3.x = 128 * r0.z;
  r3.y = cb0[6].w;
  r1.yw = float2(70,-2) + r3.xy;
  r1.yw = cmp(v0.xy < r1.yw);
  r0.w = r1.w ? r1.y : 0;
  r2.y = 70;
  r1.yw = cmp(r2.yz < v0.xy);
  r1.y = r1.w ? r1.y : 0;
  r0.w = r1.y ? r0.w : 0;
  if (r0.w != 0) {
    r0.w = cb2[0].y * cb2[0].y;
    r1.y = cmp(r0.w < r0.x);
    if (r1.y != 0) {
      r1.yw = v0.xy + -r2.yz;
      r1.yw = max(float2(0,0), r1.yw);
      r3.z = 64;
      r1.yw = min(r3.xz, r1.yw);
      r1.yw = r1.yw / r3.xz;
      r1.y = r1.y * r0.z;
      r2.x = frac(r1.y);
      r2.x = 3.14159274 * r2.x;
      r2.x = cos(r2.x);
      r2.y = -r2.x * r2.x + 1;
      r2.y = sqrt(r2.y);
      r1.w = 1 + -r1.w;
      r1.w = 1.57079637 * r1.w;
      r1.w = cos(r1.w);
      r2.z = -r1.w * r1.w + 1;
      r3.z = sqrt(r2.z);
      r3.xy = r1.ww * r2.xy;
      r1.w = dot(r3.xyz, r3.xyz);
      r2.x = dot(r3.zz, r1.xx);
      r2.y = -cb2[0].y * cb2[0].y + r0.x;
      r2.z = r2.x * r2.x;
      r2.w = 4 * r1.w;
      r2.y = -r2.w * r2.y + r2.z;
      r3.w = cmp(r2.y >= 0);
      r2.y = sqrt(r2.y);
      r4.xy = r2.yy * float2(-1,1) + -r2.xx;
      r1.w = r1.w + r1.w;
      r4.xy = r4.xy / r1.ww;
      r4.xy = r3.ww ? r4.xy : float2(-1,-1);
      r4.zw = cmp(r4.xy < float2(0,0));
      r2.y = r4.w ? r4.z : 0;
      r3.w = max(0, r4.y);
      r5.x = r4.w ? 0 : -1;
      r3.w = r4.z ? r3.w : r5.x;
      r4.z = (int)r4.w | (int)r4.z;
      r4.x = min(r4.x, r4.y);
      r4.x = max(0, r4.x);
      r3.w = r4.z ? r3.w : r4.x;
      r2.y = r2.y ? -1 : r3.w;
      r3.w = cb2[0].z * cb2[0].z;
      r0.x = -cb2[0].z * cb2[0].z + r0.x;
      r0.x = -r2.w * r0.x + r2.z;
      r2.z = cmp(r0.x >= 0);
      r0.x = sqrt(r0.x);
      r2.xw = r0.xx * float2(-1,1) + -r2.xx;
      r2.xw = r2.xw / r1.ww;
      r2.xz = r2.zz ? r2.xw : float2(-1,-1);
      r4.xy = cmp(r2.xz < float2(0,0));
      r0.x = r4.y ? r4.x : 0;
      r1.w = max(0, r2.z);
      r2.w = r4.y ? 0 : -1;
      r1.w = r4.x ? r1.w : r2.w;
      r2.w = (int)r4.y | (int)r4.x;
      r2.x = min(r2.x, r2.z);
      r2.x = max(0, r2.x);
      r1.w = r2.w ? r1.w : r2.x;
      r0.x = r0.x ? -1 : r1.w;
      r1.w = cmp(r2.y < 0);
      r2.x = cmp(r0.x < 0);
      r2.x = r1.w ? r2.x : 0;
      if (r2.x == 0) {
        r1.y = floor(r1.y);
        r0.z = r1.y / r0.z;
        r0.z = r0.z * r0.z;
        r0.z = r0.z * 1.57079637 + -0.0500000007;
        sincos(r0.z, r2.x, r4.x);
        r0.z = max(0, r0.x);
        r1.y = cmp(0 < r0.x);
        r0.x = min(r0.x, r2.y);
        r0.x = r1.y ? r0.x : 0;
        r0.x = r1.w ? r0.z : r0.x;
        r0.x = min(9000000, r0.x);
        r0.z = 0.0078125 * r0.x;
        r4.y = r2.x;
        r1.y = dot(r4.xy, r3.xz);
        r1.w = -cb2[5].x * cb2[5].x + 1;
        r2.x = cb2[5].x * cb2[5].x + 1;
        r2.y = dot(-r1.yy, cb2[5].xx);
        r2.x = r2.x + r2.y;
        r2.y = 12.566371 * r2.x;
        r2.x = sqrt(r2.x);
        r2.x = r2.y * r2.x;
        r1.w = r1.w / r2.x;
        r1.y = r1.y * r1.y + 1;
        r1.y = 0.0596831031 * r1.y;
        r2.x = cmp(0 != cb1[184].x);
        r2.x = r2.x ? cb1[184].y : cb1[135].y;
        r2.xyz = cb1[163].xyz * r2.xxx;
        r0.w = cb2[0].z * cb2[0].z + -r0.w;
        r0.w = max(0, r0.w);
        r0.w = sqrt(r0.w);
        r2.w = cb2[0].z + -cb2[0].y;
        r4.z = dot(r4.xy, r4.xy);
        r4.w = 4 * r4.z;
        r4.z = r4.z + r4.z;
        r1.z = 0;
        r5.xyz = float3(0,0,0);
        r6.xyz = float3(1,1,1);
        r7.x = 0;
        while (true) {
          r5.w = cmp(r7.x >= 128);
          if (r5.w != 0) break;
          r7.xy = float2(1,0.300000012) + r7.xx;
          r5.w = r7.y * r0.x;
          r5.w = 0.0078125 * r5.w;
          r7.yzw = r5.www * r3.xyz + r1.zzx;
          r5.w = dot(r7.yzw, r7.yzw);
          r6.w = sqrt(r5.w);
          r8.x = -cb2[0].y + r6.w;
          r8.y = max(0, r8.x);
          r8.z = cb2[3].x * r8.y;
          r8.z = 1.44269502 * r8.z;
          r8.z = exp2(r8.z);
          r8.w = cb2[0].w * r8.y;
          r8.w = 1.44269502 * r8.w;
          r8.w = exp2(r8.w);
          r9.x = cmp(r8.y < cb2[7].x);
          r9.y = saturate(cb2[7].z * r8.y + cb2[7].y);
          r8.y = saturate(cb2[8].x * r8.y + cb2[7].w);
          r8.y = r9.x ? r9.y : r8.y;
          r9.xyz = cb2[2].xyz * r8.zzz;
          r10.xyz = cb2[1].xyz * r8.www;
          r11.xyz = r8.zzz * cb2[2].xyz + r10.xyz;
          r12.xyz = r8.zzz * cb2[4].xyz + r10.xyz;
          r8.yzw = r8.yyy * cb2[9].xyz + r12.xyz;
          r12.xyz = r8.yzw * r0.zzz;
          r12.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r12.xyz;
          r12.xyz = exp2(r12.xyz);
          r13.xyz = r7.yzw / r6.www;
          r9.w = dot(r4.xy, r13.xz);
          r10.w = -cb2[0].y * cb2[0].y + r5.w;
          r10.w = max(0, r10.w);
          r10.w = sqrt(r10.w);
          r11.w = r9.w * r9.w + -1;
          r5.w = r5.w * r11.w + r3.w;
          r5.w = sqrt(r5.w);
          r5.w = -r6.w * r9.w + r5.w;
          r5.w = max(0, r5.w);
          r6.w = cb2[0].z + -r6.w;
          r11.w = r10.w + r0.w;
          r5.w = -r6.w + r5.w;
          r6.w = r11.w + -r6.w;
          r14.x = r5.w / r6.w;
          r14.y = r10.w / r0.w;
          r14.xyz = t0.SampleLevel(s0_s, r14.xy, 0).xyz;
          r10.xyz = r10.xyz * r1.yyy;
          r9.xyz = r9.xyz * r1.www + r10.xyz;
          r10.x = saturate(r9.w * 0.5 + 0.5);
          r10.y = saturate(r8.x / r2.w);
          r10.xyz = t1.SampleLevel(s1_s, r10.xy, 0).xyz;
          r7.yzw = -r13.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r7.yzw;
          r5.w = dot(r7.yzw, r7.yzw);
          r6.w = dot(r4.xxyy, r7.yyww);
          r5.w = -cb2[0].y * cb2[0].y + r5.w;
          r5.w = r5.w * r4.w;
          r5.w = r6.w * r6.w + -r5.w;
          r7.y = cmp(r5.w >= 0);
          r5.w = sqrt(r5.w);
          r7.zw = r5.ww * float2(1,-1) + -r6.ww;
          r7.zw = r7.zw / r4.zz;
          r7.yz = r7.yy ? r7.zw : float2(-1,-1);
          r13.xy = cmp(r7.zy < float2(0,0));
          r5.w = r13.y ? r13.x : 0;
          r13.zw = max(float2(0,0), r7.yz);
          r6.w = r13.y ? r13.w : -1;
          r6.w = r13.x ? r13.z : r6.w;
          r7.w = (int)r13.y | (int)r13.x;
          r7.y = min(r7.z, r7.y);
          r7.y = max(0, r7.y);
          r6.w = r7.w ? r6.w : r7.y;
          r6.w = cmp(r6.w >= 0);
          r5.w = r5.w ? 0 : r6.w;
          r5.w = r5.w ? 0 : 1;
          r7.yzw = r5.www * r14.xyz;
          r10.xyz = r10.xyz * r11.xyz;
          r7.yzw = r7.yzw * r9.xyz + r10.xyz;
          r7.yzw = r7.yzw * r2.xyz;
          r7.yzw = -r7.yzw * r12.xyz + r7.yzw;
          r7.yzw = r7.yzw / r8.yzw;
          r5.xyz = r6.xyz * r7.yzw + r5.xyz;
          r6.xyz = r12.xyz * r6.xyz;
        }
      } else {
        r5.xyz = float3(0,0,0);
      }
    } else {
      r5.xyz = float3(0,0,0);
    }
    o0.xyz = r5.xyz;
    o0.w = 0;
    oDepth = 1;
    return;
  }
  r0.xz = float2(0.699999988,0.200000003) * cb0[6].wz;
  r1.xy = cb0[6].zw * float2(0.800000012,0.100000001) + float2(-2,0);
  r1.zw = cb0[6].zw * float2(0.200000003,0.699999988) + r1.xy;
  r1.zw = cmp(v0.xy < r1.zw);
  r0.w = r1.w ? r1.z : 0;
  r1.xy = cmp(r1.xy < v0.xy);
  r1.x = r1.y ? r1.x : 0;
  r0.w = r1.x ? r0.w : 0;
  if (r0.w != 0) {
    r1.yz = cb0[6].wz * float2(0.100000001,0.800000012) + float2(0,-2);
    r1.yz = v0.yx + -r1.yz;
    r1.yz = max(float2(0,0), r1.yz);
    r1.yz = min(r1.yz, r0.xz);
    r0.xz = r1.yz / r0.xz;
    r0.x = 1 + -r0.x;
    r0.w = cb2[0].z + -cb2[0].y;
    r0.x = r0.x * r0.w + cb2[0].y;
    r0.x = -cb2[0].y + abs(r0.x);
    r0.x = max(0, r0.x);
    r0.w = cb2[3].x * r0.x;
    r0.w = 1.44269502 * r0.w;
    r0.w = exp2(r0.w);
    r1.y = cb2[0].w * r0.x;
    r1.y = 1.44269502 * r1.y;
    r1.y = exp2(r1.y);
    r1.z = cmp(r0.x < cb2[7].x);
    r1.w = saturate(cb2[7].z * r0.x + cb2[7].y);
    r0.x = saturate(cb2[8].x * r0.x + cb2[7].w);
    r0.x = r1.z ? r1.w : r0.x;
    r2.xyz = cb2[4].xyz * r0.www;
    r1.yzw = cb2[1].xyz * r1.yyy;
    r3.xyz = cb2[9].xyz * r0.xxx;
    r0.x = dot(r1.yzw, float3(0.333333343,0.333333343,0.333333343));
    r4.x = 100 * r0.x;
    r0.x = dot(r2.xyz, float3(0.333333343,0.333333343,0.333333343));
    r4.y = 100 * r0.x;
    r0.x = dot(r3.xyz, float3(0.333333343,0.333333343,0.333333343));
    r4.z = 100 * r0.x;
    r0.xzw = r4.xyz + -r0.zzz;
    o0.xyz = saturate(float3(100000,100000,100000) * r0.xzw);
    o0.w = 0;
    oDepth = 1;
    return;
  }
  r2.x = cb0[6].z * 0.800000012 + -2;
  r2.y = 15;
  r0.xz = cb0[6].zw * float2(0.200000003,0.800000012) + r2.xy;
  r0.xz = cmp(v0.xy < r0.xz);
  r0.x = r0.z ? r0.x : 0;
  r0.x = r1.x ? r0.x : 0;
  if (r0.x != 0) {
    o0.xyzw = float4(0.125,0.0500000007,0.00499999989,0);
    oDepth = 1;
    return;
  } else {
    oDepth = r0.y;
  }
  if (-1 != 0) discard;
  o0.xyzw = float4(0,0,0,0);
  return;
}