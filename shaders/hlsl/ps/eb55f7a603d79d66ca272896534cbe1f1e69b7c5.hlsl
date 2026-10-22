// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb4 : register(b4)
{
  float4 cb4[9];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[49];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = cb0[1].y ? 0 : r0.x;
  r0.y = cmp(r0.x == 0.000000);
  if (r0.y != 0) {
    if (-1 != 0) discard;
    o0.xyzw = float4(0,0,0,1);
    return;
  } else {
    r0.z = cmp(0 >= cb4[8].w);
    if (r0.z != 0) {
      if (-1 != 0) discard;
      o0.xyzw = float4(0,0,0,1);
      return;
    }
  }
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
    r3.x = cmp(r0.z >= 0);
    r0.z = sqrt(r0.z);
    r3.yz = r0.zz * float2(1,-1) + -r2.ww;
    r0.z = r1.w + r1.w;
    r3.yz = r3.yz / r0.zz;
    r3.xy = r3.xx ? r3.yz : float2(-1,-1);
    r3.zw = cmp(r3.yx < float2(0,0));
    r0.z = r3.w ? r3.z : 0;
    r4.xy = max(float2(0,0), r3.xy);
    r1.w = r3.w ? r4.y : -1;
    r1.w = r3.z ? r4.x : r1.w;
    r2.w = (int)r3.w | (int)r3.z;
    r3.x = min(r3.y, r3.x);
    r3.x = max(0, r3.x);
    r1.w = r2.w ? r1.w : r3.x;
    r0.z = r0.z ? -1 : r1.w;
    r1.w = cmp(r0.z >= 0);
    r2.w = ~(int)r1.w;
    r3.xyz = r1.xyz / r0.www;
    r4.xyz = r2.xyz * r0.zzz + r1.xyz;
    r3.xyz = r3.xyz * float3(-0.00100000005,-0.00100000005,-0.00100000005) + r4.xyz;
    r1.xyz = r1.www ? r3.xyz : r1.xyz;
    r0.z = 0;
  } else {
    r2.w = 0;
  }
  r0.w = ~(int)r2.w;
  r0.z = (int)r0.z | (int)r0.w;
  if (r0.z == 0) {
    o0.xyzw = float4(0,0,0,1);
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
    r3.x = -cb2[0].y * cb2[0].y + r0.z;
    r3.y = r2.w * r2.w;
    r3.z = 4 * r1.w;
    r3.x = -r3.z * r3.x + r3.y;
    r3.w = cmp(r3.x >= 0);
    r3.x = sqrt(r3.x);
    r4.xy = r3.xx * float2(1,-1) + -r2.ww;
    r1.w = r1.w + r1.w;
    r4.xy = r4.xy / r1.ww;
    r3.xw = r3.ww ? r4.xy : float2(-1,-1);
    r4.xy = cmp(r3.wx < float2(0,0));
    r4.z = r4.y ? r4.x : 0;
    r5.xy = max(float2(0,0), r3.xw);
    r4.w = r4.y ? r5.y : -1;
    r4.w = r4.x ? r5.x : r4.w;
    r4.x = (int)r4.y | (int)r4.x;
    r3.x = min(r3.w, r3.x);
    r3.x = max(0, r3.x);
    r3.x = r4.x ? r4.w : r3.x;
    r3.x = r4.z ? -1 : r3.x;
    r3.w = cb2[0].z * cb2[0].z;
    r0.z = -cb2[0].z * cb2[0].z + r0.z;
    r0.z = -r3.z * r0.z + r3.y;
    r3.y = cmp(r0.z >= 0);
    r0.z = sqrt(r0.z);
    r4.xy = r0.zz * float2(1,-1) + -r2.ww;
    r4.xy = r4.xy / r1.ww;
    r3.yz = r3.yy ? r4.xy : float2(-1,-1);
    r4.xy = cmp(r3.zy < float2(0,0));
    r0.z = r4.y ? r4.x : 0;
    r4.zw = max(float2(0,0), r3.yz);
    r1.w = r4.y ? r4.w : -1;
    r1.w = r4.x ? r4.z : r1.w;
    r2.w = (int)r4.y | (int)r4.x;
    r3.y = min(r3.z, r3.y);
    r3.y = max(0, r3.y);
    r1.w = r2.w ? r1.w : r3.y;
    r0.z = r0.z ? -1 : r1.w;
    r1.w = cmp(r3.x < 0);
    r2.w = cmp(r0.z < 0);
    r2.w = r1.w ? r2.w : 0;
    if (r2.w == 0) {
      r2.w = cmp(r0.x != 0.000000);
      r0.x = max(9.99999996e-013, r0.x);
      r4.xyzw = cb1[45].xyzw * v0.yyyy;
      r4.xyzw = v0.xxxx * cb1[44].xyzw + r4.xyzw;
      r4.xyzw = r0.xxxx * cb1[46].xyzw + r4.xyzw;
      r4.xyzw = cb1[47].xyzw + r4.xyzw;
      r4.xyz = r4.xyz / r4.www;
      r4.xyz = -cb1[70].xyz + r4.xyz;
      r5.xyz = cb1[173].xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + r1.xyz;
      r4.xyz = r4.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -r5.xyz;
      r0.x = dot(r2.xyz, r4.xyz);
      r0.x = cmp(r0.x < 0);
      r0.x = r0.x ? r2.w : 0;
      if (r0.x == 0) {
        r0.x = r0.y ? 1 : cb4[8].z;
        r0.y = max(0, r0.z);
        r3.y = cmp(0 < r0.z);
        r0.z = min(r0.z, r3.x);
        r0.z = r3.y ? r0.z : 0;
        r0.y = r1.w ? r0.y : r0.z;
        r0.z = dot(r4.xyz, r4.xyz);
        r0.z = sqrt(r0.z);
        r0.z = min(r0.y, r0.z);
        r0.y = r2.w ? r0.z : r0.y;
        r0.y = min(9000000, r0.y);
        r0.z = saturate(cb4[0].z * r0.y);
        r1.w = cb4[0].y + -cb4[0].x;
        r0.z = r0.z * r1.w + cb4[0].x;
        r1.w = floor(r0.z);
        r2.w = r1.w * r0.y;
        r2.w = r2.w / r0.z;
        r3.x = dot(cb1[161].xyz, r2.xyz);
        r3.y = -cb2[5].x * cb2[5].x + 1;
        r3.z = cb2[5].x * cb2[5].x + 1;
        r4.x = cb2[5].x + cb2[5].x;
        r4.y = r4.x * -r3.x + r3.z;
        r4.z = 12.566371 * r4.y;
        r4.y = sqrt(r4.y);
        r4.y = r4.z * r4.y;
        r4.y = r3.y / r4.y;
        r3.x = r3.x * r3.x + 1;
        r4.z = dot(cb1[162].xyz, r2.xyz);
        r3.z = r4.x * -r4.z + r3.z;
        r4.x = 12.566371 * r3.z;
        r3.z = sqrt(r3.z);
        r3.z = r4.x * r3.z;
        r3.y = r3.y / r3.z;
        r3.z = r4.z * r4.z + 1;
        r3.xz = float2(0.0596831031,0.0596831031) * r3.xz;
        r4.x = cmp(0 != cb1[184].x);
        r4.z = r4.x ? cb1[184].y : cb1[135].y;
        r5.xyz = cb1[163].xyz * r4.zzz;
        r6.xyz = cb1[164].xyz * r4.zzz;
        r4.z = asuint(cb1[144].y);
        r4.zw = r4.zz * float2(32.6650009,11.8149996) + v0.xy;
        r4.z = dot(r4.zw, float2(0.0671105608,0.00583714992));
        r4.z = frac(r4.z);
        r4.z = 52.9829178 * r4.z;
        r4.z = frac(r4.z);
        r4.x = r4.x ? 0.300000012 : r4.z;
        r0.w = cb2[0].z * cb2[0].z + -r0.w;
        r0.w = max(0, r0.w);
        r0.w = sqrt(r0.w);
        r4.z = cb2[0].z + -cb2[0].y;
        r4.w = dot(cb1[161].xyz, cb1[161].xyz);
        r5.w = 4 * r4.w;
        r4.w = r4.w + r4.w;
        r6.w = dot(cb1[162].xyz, cb1[162].xyz);
        r7.x = 4 * r6.w;
        r6.w = r6.w + r6.w;
        r7.yzw = float3(0,0,0);
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
          r9.y = r9.x * r4.x + r9.z;
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
          r10.w = sqrt(r10.w);
          r11.x = r9.x * r9.x + -1;
          r11.x = r10.x * r11.x + r3.w;
          r11.x = sqrt(r11.x);
          r11.x = -r10.y * r9.x + r11.x;
          r11.x = max(0, r11.x);
          r12.w = cb2[0].z + -r10.y;
          r13.w = r10.w + r0.w;
          r11.x = -r12.w + r11.x;
          r13.w = r13.w + -r12.w;
          r17.y = r11.x / r13.w;
          r17.z = r10.w / r0.w;
          r18.xyz = t1.SampleLevel(s1_s, r17.yz, 0).xyz;
          r19.xyz = r11.yzw * r3.xxx;
          r19.xyz = r12.xyz * r4.yyy + r19.xyz;
          r10.w = dot(cb1[162].xyz, r16.xyz);
          r11.x = r10.w * r10.w + -1;
          r10.x = r10.x * r11.x + r3.w;
          r10.x = sqrt(r10.x);
          r10.x = -r10.y * r10.w + r10.x;
          r10.x = max(0, r10.x);
          r10.x = r10.x + -r12.w;
          r17.x = r10.x / r13.w;
          r10.xyw = t1.SampleLevel(s1_s, r17.xz, 0).xyz;
          r11.xyz = r11.yzw * r3.zzz;
          r11.xyz = r12.xyz * r3.yyy + r11.xyz;
          r12.x = saturate(r9.x * 0.5 + 0.5);
          r12.y = saturate(r10.z / r4.z);
          r12.xyz = t2.SampleLevel(s2_s, r12.xy, 0).xyz;
          r16.xyz = -r16.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r9.yzw;
          r9.x = dot(r16.xyz, r16.xyz);
          r10.z = dot(cb1[161].xyz, r16.xyz);
          r10.z = r10.z + r10.z;
          r9.x = -cb2[0].y * cb2[0].y + r9.x;
          r11.w = r9.x * r5.w;
          r11.w = r10.z * r10.z + -r11.w;
          r12.w = cmp(r11.w >= 0);
          r11.w = sqrt(r11.w);
          r17.xy = r11.ww * float2(1,-1) + -r10.zz;
          r17.xy = r17.xy / r4.ww;
          r17.xy = r12.ww ? r17.xy : float2(-1,-1);
          r17.zw = cmp(r17.yx < float2(0,0));
          r10.z = r17.w ? r17.z : 0;
          r20.xy = max(float2(0,0), r17.xy);
          r11.w = r17.w ? r20.y : -1;
          r11.w = r17.z ? r20.x : r11.w;
          r12.w = (int)r17.w | (int)r17.z;
          r13.w = min(r17.y, r17.x);
          r13.w = max(0, r13.w);
          r11.w = r12.w ? r11.w : r13.w;
          r11.w = cmp(r11.w >= 0);
          r10.z = r10.z ? 0 : r11.w;
          r9.yzw = r9.yzw * float3(100000,100000,100000) + cb1[173].xyz;
          r17.xyzw = cb3[46].xyzw * r9.zzzz;
          r17.xyzw = r9.yyyy * cb3[45].xyzw + r17.xyzw;
          r17.xyzw = r9.wwww * cb3[47].xyzw + r17.xyzw;
          r17.xyzw = cb3[48].xyzw + r17.xyzw;
          r17.xyz = r17.xyz / r17.www;
          r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r17.xyw = t5.SampleLevel(s5_s, r17.xy, 0).xyz;
          r11.w = saturate(1 + -r17.z);
          r11.w = r11.w * cb3[43].x + -r17.x;
          r11.w = max(0, r11.w);
          r11.w = r11.w * r17.y;
          r11.w = 1000 * r11.w;
          r11.w = min(r17.w, r11.w);
          r11.w = -1.44269502 * r11.w;
          r11.w = exp2(r11.w);
          r11.w = min(1, r11.w);
          r12.xyz = r12.xyz * r11.www;
          r17.xyzw = cb3[20].xyzw * r9.zzzz;
          r17.xyzw = r9.yyyy * cb3[19].xyzw + r17.xyzw;
          r17.xyzw = r9.wwww * cb3[21].xyzw + r17.xyzw;
          r17.xyzw = cb3[22].xyzw + r17.xyzw;
          r17.xyz = r17.xyz / r17.www;
          r17.xy = r17.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r17.xyw = t3.SampleLevel(s3_s, r17.xy, 0).xyz;
          r11.w = saturate(1 + -r17.z);
          r11.w = r11.w * cb3[7].x + -r17.x;
          r11.w = max(0, r11.w);
          r11.w = r11.w * r17.y;
          r11.w = 1000 * r11.w;
          r11.w = min(r17.w, r11.w);
          r11.w = -1.44269502 * r11.w;
          r11.w = exp2(r11.w);
          r11.w = min(1, r11.w);
          r11.w = -1 + r11.w;
          r11.w = saturate(cb0[0].y * r11.w + 1);
          r10.z = r10.z ? 0 : r11.w;
          r17.xyz = r10.zzz * r18.xyz;
          r12.xyz = r12.xyz * r13.xyz;
          r12.xyz = r17.xyz * r19.xyz + r12.xyz;
          r10.z = dot(cb1[162].xyz, r16.xyz);
          r10.z = r10.z + r10.z;
          r9.x = r9.x * r7.x;
          r9.x = r10.z * r10.z + -r9.x;
          r11.w = cmp(r9.x >= 0);
          r9.x = sqrt(r9.x);
          r13.xy = r9.xx * float2(1,-1) + -r10.zz;
          r13.xy = r13.xy / r6.ww;
          r13.xy = r11.ww ? r13.xy : float2(-1,-1);
          r13.zw = cmp(r13.yx < float2(0,0));
          r9.x = r13.w ? r13.z : 0;
          r16.xy = max(float2(0,0), r13.xy);
          r10.z = r13.w ? r16.y : -1;
          r10.z = r13.z ? r16.x : r10.z;
          r11.w = (int)r13.w | (int)r13.z;
          r12.w = min(r13.y, r13.x);
          r12.w = max(0, r12.w);
          r10.z = r11.w ? r10.z : r12.w;
          r10.z = cmp(r10.z >= 0);
          r9.x = r9.x ? 0 : r10.z;
          r13.xyzw = cb3[24].xyzw * r9.zzzz;
          r13.xyzw = r9.yyyy * cb3[23].xyzw + r13.xyzw;
          r13.xyzw = r9.wwww * cb3[25].xyzw + r13.xyzw;
          r13.xyzw = cb3[26].xyzw + r13.xyzw;
          r9.yzw = r13.xyz / r13.www;
          r9.yz = r9.yz * float2(0.5,-0.5) + float2(0.5,0.5);
          r13.xyz = t4.SampleLevel(s4_s, r9.yz, 0).xyz;
          r9.y = saturate(1 + -r9.w);
          r9.y = r9.y * cb3[8].x + -r13.x;
          r9.y = max(0, r9.y);
          r9.y = r9.y * r13.y;
          r9.y = 1000 * r9.y;
          r9.y = min(r13.z, r9.y);
          r9.y = -1.44269502 * r9.y;
          r9.y = exp2(r9.y);
          r9.y = min(1, r9.y);
          r9.y = -1 + r9.y;
          r9.y = saturate(cb0[0].z * r9.y + 1);
          r9.x = r9.x ? 0 : r9.y;
          r9.xyz = r9.xxx * r6.xyz;
          r9.xyz = r9.xyz * r10.xyw;
          r9.xyz = r9.xyz * r11.xyz;
          r9.xyz = r5.xyz * r12.xyz + r9.xyz;
          r9.xyz = -r9.xyz * r15.xyz + r9.xyz;
          r9.xyz = r9.xyz / r14.xyz;
          r7.yzw = r8.xyz * r9.xyz + r7.yzw;
          r8.xyz = r15.xyz * r8.xyz;
        }
      } else {
        r7.yzw = float3(0,0,0);
        r8.xyz = float3(1,1,1);
      }
    } else {
      r7.yzw = float3(0,0,0);
      r8.xyz = float3(1,1,1);
    }
  } else {
    r7.yzw = float3(0,0,0);
    r8.xyz = float3(1,1,1);
  }
  o0.xyz = min(float3(32256,32256,32256), r7.yzw);
  o0.w = dot(r8.xyz, float3(0.333333343,0.333333343,0.333333343));
  return;
}