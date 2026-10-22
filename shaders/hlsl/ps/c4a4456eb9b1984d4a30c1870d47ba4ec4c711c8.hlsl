// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[9];
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
  float4 cb0[1];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (int2)v0.xy;
  r0.zw = float2(0,0);
  r1.xyzw = t1.Load(r0.xyw).xyzw;
  r2.x = cmp(0.999000013 < r1.w);
  if (r2.x != 0) {
    o0.xyzw = float4(0,0,0,1);
    return;
  }
  r2.xyz = -cb1[173].xyz + cb1[172].xyz;
  r2.xyz = float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) * r2.xyz;
  r3.xy = -cb1[129].xy + v0.xy;
  r3.xy = r3.xy * cb1[130].zw + float2(-0.5,-0.5);
  r3.xy = v0.ww * r3.xy;
  r3.xy = float2(2000000,-2000000) * r3.xy;
  r3.yzw = cb1[49].xyz * r3.yyy;
  r3.xyz = r3.xxx * cb1[48].xyz + r3.yzw;
  r3.xyz = cb1[50].xyz * float3(1000000,1000000,1000000) + r3.xyz;
  r3.xyz = cb1[51].xyz + r3.xyz;
  r3.xyz = -cb1[67].xyz + r3.xyz;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r3.xyz * r2.www;
  r2.w = dot(r2.xyz, r2.xyz);
  r3.w = sqrt(r2.w);
  r4.x = cmp(cb2[0].z < r3.w);
  if (r4.x != 0) {
    r4.x = dot(r3.xyz, r3.xyz);
    r4.y = dot(r3.xyz, r2.xyz);
    r4.y = r4.y + r4.y;
    r2.w = -cb2[0].z * cb2[0].z + r2.w;
    r2.w = r2.w * r4.x;
    r2.w = 4 * r2.w;
    r2.w = r4.y * r4.y + -r2.w;
    r4.z = cmp(r2.w >= 0);
    r2.w = sqrt(r2.w);
    r4.yw = r2.ww * float2(1,-1) + -r4.yy;
    r2.w = r4.x + r4.x;
    r4.xy = r4.yw / r2.ww;
    r4.xy = r4.zz ? r4.xy : float2(-1,-1);
    r4.zw = cmp(r4.yx < float2(0,0));
    r2.w = r4.w ? r4.z : 0;
    r5.xy = max(float2(0,0), r4.xy);
    r5.y = r4.w ? r5.y : -1;
    r5.x = r4.z ? r5.x : r5.y;
    r4.z = (int)r4.w | (int)r4.z;
    r4.x = min(r4.y, r4.x);
    r4.x = max(0, r4.x);
    r4.x = r4.z ? r5.x : r4.x;
    r2.w = r2.w ? -1 : r4.x;
    r4.x = cmp(r2.w >= 0);
    r4.y = ~(int)r4.x;
    r5.xyz = r2.xyz / r3.www;
    r6.xyz = r3.xyz * r2.www + r2.xyz;
    r5.xyz = r5.xyz * float3(-0.00100000005,-0.00100000005,-0.00100000005) + r6.xyz;
    r2.xyz = r4.xxx ? r5.xyz : r2.xyz;
    r2.w = 0;
  } else {
    r4.y = 0;
  }
  r3.w = ~(int)r4.y;
  r2.w = (int)r2.w | (int)r3.w;
  if (r2.w == 0) {
    o0.xyzw = float4(0,0,0,1);
    return;
  }
  r2.w = 1 + -r1.w;
  r2.xyz = r3.xyz * cb0[0].xxx + r2.xyz;
  r3.w = dot(r2.xyz, r2.xyz);
  r4.x = cb2[0].y * cb2[0].y;
  r4.y = cmp(r4.x < r3.w);
  if (r4.y != 0) {
    r4.y = dot(r3.xyz, r3.xyz);
    r4.z = dot(r3.xyz, r2.xyz);
    r4.z = r4.z + r4.z;
    r4.w = -cb2[0].y * cb2[0].y + r3.w;
    r5.x = r4.z * r4.z;
    r5.y = 4 * r4.y;
    r4.w = -r5.y * r4.w + r5.x;
    r5.z = cmp(r4.w >= 0);
    r4.w = sqrt(r4.w);
    r6.xy = r4.ww * float2(1,-1) + -r4.zz;
    r4.y = r4.y + r4.y;
    r6.xy = r6.xy / r4.yy;
    r5.zw = r5.zz ? r6.xy : float2(-1,-1);
    r6.xy = cmp(r5.wz < float2(0,0));
    r4.w = r6.y ? r6.x : 0;
    r6.zw = max(float2(0,0), r5.zw);
    r6.w = r6.y ? r6.w : -1;
    r6.z = r6.x ? r6.z : r6.w;
    r6.x = (int)r6.y | (int)r6.x;
    r5.z = min(r5.w, r5.z);
    r5.z = max(0, r5.z);
    r5.z = r6.x ? r6.z : r5.z;
    r4.w = r4.w ? -1 : r5.z;
    r5.z = cb2[0].z * cb2[0].z;
    r3.w = -cb2[0].z * cb2[0].z + r3.w;
    r3.w = -r5.y * r3.w + r5.x;
    r5.x = cmp(r3.w >= 0);
    r3.w = sqrt(r3.w);
    r5.yw = r3.ww * float2(1,-1) + -r4.zz;
    r4.yz = r5.yw / r4.yy;
    r4.yz = r5.xx ? r4.yz : float2(-1,-1);
    r5.xy = cmp(r4.zy < float2(0,0));
    r3.w = r5.y ? r5.x : 0;
    r6.xy = max(float2(0,0), r4.yz);
    r5.w = r5.y ? r6.y : -1;
    r5.w = r5.x ? r6.x : r5.w;
    r5.x = (int)r5.y | (int)r5.x;
    r4.y = min(r4.z, r4.y);
    r4.y = max(0, r4.y);
    r4.y = r5.x ? r5.w : r4.y;
    r3.w = r3.w ? -1 : r4.y;
    r4.y = cmp(r4.w < 0);
    r4.z = cmp(r3.w < 0);
    r4.z = r4.z ? r4.y : 0;
    if (r4.z == 0) {
      r0.x = t0.Load(r0.xyz).x;
      r0.y = cmp(r0.x == 0.000000);
      r0.y = r0.y ? 1 : cb3[8].z;
      r0.z = max(0, r3.w);
      r0.w = cmp(0 < r3.w);
      r3.w = min(r3.w, r4.w);
      r0.w = r0.w ? r3.w : 0;
      r0.z = r4.y ? r0.z : r0.w;
      r0.x = min(r0.z, r0.x);
      r0.x = min(9000000, r0.x);
      r0.z = saturate(cb3[0].z * r0.x);
      r0.w = cb3[0].y + -cb3[0].x;
      r0.z = r0.z * r0.w + cb3[0].x;
      r0.w = floor(r0.z);
      r3.w = r0.x * r0.w;
      r3.w = r3.w / r0.z;
      r4.y = dot(cb1[161].xyz, r3.xyz);
      r4.z = -cb2[5].x * cb2[5].x + 1;
      r4.w = cb2[5].x * cb2[5].x + 1;
      r5.x = dot(-r4.yy, cb2[5].xx);
      r4.w = r5.x + r4.w;
      r5.x = 12.566371 * r4.w;
      r4.w = sqrt(r4.w);
      r4.w = r5.x * r4.w;
      r4.z = r4.z / r4.w;
      r4.y = r4.y * r4.y + 1;
      r4.y = 0.0596831031 * r4.y;
      r4.w = cmp(0 != cb1[184].x);
      r5.x = r4.w ? cb1[184].y : cb1[135].y;
      r5.xyw = cb1[163].xyz * r5.xxx;
      r6.x = asuint(cb1[144].y);
      r6.xy = r6.xx * float2(32.6650009,11.8149996) + v0.xy;
      r6.x = dot(r6.xy, float2(0.0671105608,0.00583714992));
      r6.x = frac(r6.x);
      r6.x = 52.9829178 * r6.x;
      r6.x = frac(r6.x);
      r4.w = r4.w ? 0.300000012 : r6.x;
      r4.x = cb2[0].z * cb2[0].z + -r4.x;
      r4.x = max(0, r4.x);
      r4.x = sqrt(r4.x);
      r6.x = cb2[0].z + -cb2[0].y;
      r6.y = dot(cb1[161].xyz, cb1[161].xyz);
      r6.z = 4 * r6.y;
      r6.y = r6.y + r6.y;
      r7.xyz = float3(0,0,0);
      r8.xyz = float3(1,1,1);
      r6.w = 0;
      while (true) {
        r7.w = cmp(r6.w >= r0.z);
        if (r7.w != 0) break;
        r7.w = r6.w / r0.w;
        r6.w = 1 + r6.w;
        r8.w = r6.w / r0.w;
        r7.w = r7.w * r7.w;
        r8.w = r8.w * r8.w;
        r9.x = r7.w * r3.w;
        r9.y = cmp(1 < r8.w);
        r8.w = r8.w * r3.w;
        r8.w = r9.y ? r0.x : r8.w;
        r7.w = -r3.w * r7.w + r8.w;
        r8.w = r7.w * r4.w + r9.x;
        r9.xyz = r8.www * r3.xyz + r2.xyz;
        r8.w = dot(r9.xyz, r9.xyz);
        r9.w = sqrt(r8.w);
        r10.x = -cb2[0].y + r9.w;
        r10.y = max(0, r10.x);
        r10.z = cb2[3].x * r10.y;
        r10.z = 1.44269502 * r10.z;
        r10.z = exp2(r10.z);
        r10.w = cb2[0].w * r10.y;
        r10.w = 1.44269502 * r10.w;
        r10.w = exp2(r10.w);
        r11.x = cmp(r10.y < cb2[7].x);
        r11.y = saturate(cb2[7].z * r10.y + cb2[7].y);
        r10.y = saturate(cb2[8].x * r10.y + cb2[7].w);
        r10.y = r11.x ? r11.y : r10.y;
        r11.xyz = cb2[2].xyz * r10.zzz;
        r12.xyz = cb2[1].xyz * r10.www;
        r13.xyz = r10.zzz * cb2[2].xyz + r12.xyz;
        r14.xyz = r10.zzz * cb2[4].xyz + r12.xyz;
        r10.yzw = r10.yyy * cb2[9].xyz + r14.xyz;
        r14.xyz = r10.yzw * r7.www;
        r14.xyz = r14.xyz * r0.yyy;
        r14.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r14.xyz;
        r14.xyz = exp2(r14.xyz);
        r15.xyz = r9.xyz / r9.www;
        r7.w = dot(cb1[161].xyz, r15.xyz);
        r11.w = -cb2[0].y * cb2[0].y + r8.w;
        r11.w = max(0, r11.w);
        r11.w = sqrt(r11.w);
        r12.w = r7.w * r7.w + -1;
        r8.w = r8.w * r12.w + r5.z;
        r8.w = sqrt(r8.w);
        r8.w = -r9.w * r7.w + r8.w;
        r8.w = max(0, r8.w);
        r9.w = cb2[0].z + -r9.w;
        r12.w = r11.w + r4.x;
        r8.w = -r9.w + r8.w;
        r9.w = r12.w + -r9.w;
        r16.x = r8.w / r9.w;
        r16.y = r11.w / r4.x;
        r16.xyz = t2.SampleLevel(s0_s, r16.xy, 0).xyz;
        r12.xyz = r12.xyz * r4.yyy;
        r11.xyz = r11.xyz * r4.zzz + r12.xyz;
        r12.x = saturate(r7.w * 0.5 + 0.5);
        r12.y = saturate(r10.x / r6.x);
        r12.xyz = t3.SampleLevel(s1_s, r12.xy, 0).xyz;
        r9.xyz = -r15.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r9.xyz;
        r7.w = dot(r9.xyz, r9.xyz);
        r8.w = dot(cb1[161].xyz, r9.xyz);
        r8.w = r8.w + r8.w;
        r7.w = -cb2[0].y * cb2[0].y + r7.w;
        r7.w = r7.w * r6.z;
        r7.w = r8.w * r8.w + -r7.w;
        r9.x = cmp(r7.w >= 0);
        r7.w = sqrt(r7.w);
        r9.yz = r7.ww * float2(1,-1) + -r8.ww;
        r9.yz = r9.yz / r6.yy;
        r9.xy = r9.xx ? r9.yz : float2(-1,-1);
        r9.zw = cmp(r9.yx < float2(0,0));
        r7.w = r9.w ? r9.z : 0;
        r15.xy = max(float2(0,0), r9.xy);
        r8.w = r9.w ? r15.y : -1;
        r8.w = r9.z ? r15.x : r8.w;
        r9.z = (int)r9.w | (int)r9.z;
        r9.x = min(r9.y, r9.x);
        r9.x = max(0, r9.x);
        r8.w = r9.z ? r8.w : r9.x;
        r8.w = cmp(r8.w >= 0);
        r7.w = r7.w ? 0 : r8.w;
        r7.w = r7.w ? 0 : 1;
        r9.xyz = r7.www * r16.xyz;
        r12.xyz = r12.xyz * r13.xyz;
        r9.xyz = r9.xyz * r11.xyz + r12.xyz;
        r9.xyz = r9.xyz * r5.xyw;
        r9.xyz = -r9.xyz * r14.xyz + r9.xyz;
        r9.xyz = r9.xyz / r10.yzw;
        r7.xyz = r8.xyz * r9.xyz + r7.xyz;
        r8.xyz = r14.xyz * r8.xyz;
      }
    } else {
      r7.xyz = float3(0,0,0);
      r8.xyz = float3(1,1,1);
    }
  } else {
    r7.xyz = float3(0,0,0);
    r8.xyz = float3(1,1,1);
  }
  r0.x = dot(r8.xyz, float3(0.333333343,0.333333343,0.333333343));
  r0.yzw = r7.xyz * r2.www;
  r0.xyz = r1.xyz * r0.xxx + r0.yzw;
  o0.xyz = min(float3(32256,32256,32256), r0.xyz);
  o0.w = dot(r1.www, float3(0.333333343,0.333333343,0.333333343));
  return;
}