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

cbuffer cb5 : register(b5)
{
  float4 cb5[9];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.x = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.x = cb0[27].z ? 0 : r0.x;
  r0.y = cmp(r0.x == 0.000000);
  if (r0.y != 0) {
    if (-1 != 0) discard;
    o0.xyzw = float4(0,0,0,1);
    return;
  } else {
    r0.z = cmp(0 >= cb5[8].w);
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
  r1.xyz = r2.xyz * cb0[26].yyy + r1.xyz;
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
        r0.x = r0.y ? 1 : cb5[8].z;
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
        r0.z = saturate(cb5[0].z * r0.y);
        r1.w = cb5[0].y + -cb5[0].x;
        r0.z = r0.z * r1.w + cb5[0].x;
        r1.w = floor(r0.z);
        r2.w = r1.w * r0.y;
        r2.w = r2.w / r0.z;
        r3.x = dot(cb1[161].xyz, r2.xyz);
        r3.y = -cb2[5].x * cb2[5].x + 1;
        r3.z = cb2[5].x * cb2[5].x + 1;
        r4.x = dot(-r3.xx, cb2[5].xx);
        r3.z = r4.x + r3.z;
        r4.x = 12.566371 * r3.z;
        r3.z = sqrt(r3.z);
        r3.z = r4.x * r3.z;
        r3.y = r3.y / r3.z;
        r3.x = r3.x * r3.x + 1;
        r3.x = 0.0596831031 * r3.x;
        r3.z = cmp(0 != cb1[184].x);
        r4.x = r3.z ? cb1[184].y : cb1[135].y;
        r4.xyz = cb1[163].xyz * r4.xxx;
        r4.w = asuint(cb1[144].y);
        r5.xy = r4.ww * float2(32.6650009,11.8149996) + v0.xy;
        r4.w = dot(r5.xy, float2(0.0671105608,0.00583714992));
        r4.w = frac(r4.w);
        r4.w = 52.9829178 * r4.w;
        r4.w = frac(r4.w);
        r3.z = r3.z ? 0.300000012 : r4.w;
        r0.w = cb2[0].z * cb2[0].z + -r0.w;
        r0.w = max(0, r0.w);
        r0.w = sqrt(r0.w);
        r4.w = cb2[0].z + -cb2[0].y;
        r5.x = dot(cb1[161].xyz, cb1[161].xyz);
        r5.y = 4 * r5.x;
        r5.x = r5.x + r5.x;
        r6.xyz = float3(0,0,0);
        r7.xyz = float3(1,1,1);
        r5.z = cb3[38].x;
        r5.w = 0;
        while (true) {
          r6.w = cmp(r5.w >= r0.z);
          if (r6.w != 0) break;
          r6.w = r5.w / r1.w;
          r5.w = 1 + r5.w;
          r7.w = r5.w / r1.w;
          r6.w = r6.w * r6.w;
          r7.w = r7.w * r7.w;
          r8.x = r6.w * r2.w;
          r8.y = cmp(1 < r7.w);
          r7.w = r7.w * r2.w;
          r7.w = r8.y ? r0.y : r7.w;
          r6.w = -r2.w * r6.w + r7.w;
          r7.w = r6.w * r3.z + r8.x;
          r8.xyz = r7.www * r2.xyz + r1.xyz;
          r7.w = dot(r8.xyz, r8.xyz);
          r8.w = sqrt(r7.w);
          r9.x = -cb2[0].y + r8.w;
          r9.y = max(0, r9.x);
          r9.z = cb2[3].x * r9.y;
          r9.z = 1.44269502 * r9.z;
          r9.z = exp2(r9.z);
          r9.w = cb2[0].w * r9.y;
          r9.w = 1.44269502 * r9.w;
          r9.w = exp2(r9.w);
          r10.x = cmp(r9.y < cb2[7].x);
          r10.y = saturate(cb2[7].z * r9.y + cb2[7].y);
          r9.y = saturate(cb2[8].x * r9.y + cb2[7].w);
          r9.y = r10.x ? r10.y : r9.y;
          r10.xyz = cb2[2].xyz * r9.zzz;
          r11.xyz = cb2[1].xyz * r9.www;
          r12.xyz = r9.zzz * cb2[2].xyz + r11.xyz;
          r13.xyz = r9.zzz * cb2[4].xyz + r11.xyz;
          r9.yzw = r9.yyy * cb2[9].xyz + r13.xyz;
          r13.xyz = r9.yzw * r6.www;
          r13.xyz = r13.xyz * r0.xxx;
          r13.xyz = float3(-1.44269502,-1.44269502,-1.44269502) * r13.xyz;
          r13.xyz = exp2(r13.xyz);
          r14.xyz = r8.xyz / r8.www;
          r6.w = dot(cb1[161].xyz, r14.xyz);
          r10.w = -cb2[0].y * cb2[0].y + r7.w;
          r10.w = max(0, r10.w);
          r10.w = sqrt(r10.w);
          r11.w = r6.w * r6.w + -1;
          r7.w = r7.w * r11.w + r3.w;
          r7.w = sqrt(r7.w);
          r7.w = -r8.w * r6.w + r7.w;
          r7.w = max(0, r7.w);
          r8.w = cb2[0].z + -r8.w;
          r11.w = r10.w + r0.w;
          r7.w = -r8.w + r7.w;
          r8.w = r11.w + -r8.w;
          r15.x = r7.w / r8.w;
          r15.y = r10.w / r0.w;
          r15.xyz = t3.SampleLevel(s3_s, r15.xy, 0).xyz;
          r11.xyz = r11.xyz * r3.xxx;
          r10.xyz = r10.xyz * r3.yyy + r11.xyz;
          r11.x = saturate(r6.w * 0.5 + 0.5);
          r11.y = saturate(r9.x / r4.w);
          r11.xyz = t4.SampleLevel(s4_s, r11.xy, 0).xyz;
          r14.xyz = -r14.xyz * float3(0.00100000005,0.00100000005,0.00100000005) + r8.xyz;
          r6.w = dot(r14.xyz, r14.xyz);
          r7.w = dot(cb1[161].xyz, r14.xyz);
          r7.w = r7.w + r7.w;
          r6.w = -cb2[0].y * cb2[0].y + r6.w;
          r6.w = r6.w * r5.y;
          r6.w = r7.w * r7.w + -r6.w;
          r8.w = cmp(r6.w >= 0);
          r6.w = sqrt(r6.w);
          r14.xy = r6.ww * float2(1,-1) + -r7.ww;
          r14.xy = r14.xy / r5.xx;
          r14.xy = r8.ww ? r14.xy : float2(-1,-1);
          r14.zw = cmp(r14.yx < float2(0,0));
          r6.w = r14.w ? r14.z : 0;
          r16.xy = max(float2(0,0), r14.xy);
          r7.w = r14.w ? r16.y : -1;
          r7.w = r14.z ? r16.x : r7.w;
          r8.w = (int)r14.w | (int)r14.z;
          r9.x = min(r14.y, r14.x);
          r9.x = max(0, r9.x);
          r7.w = r8.w ? r7.w : r9.x;
          r7.w = cmp(r7.w >= 0);
          r6.w = r6.w ? 0 : r7.w;
          r8.xyz = r8.xyz * float3(100000,100000,100000) + cb1[173].xyz;
          if (r5.z != 0) {
            r14.xyzw = cb3[41].xyzw * r8.yyyy;
            r14.xyzw = r8.xxxx * cb3[40].xyzw + r14.xyzw;
            r14.xyzw = r8.zzzz * cb3[42].xyzw + r14.xyzw;
            r14.xyzw = cb3[43].xyzw + r14.xyzw;
            r16.xyzw = r14.xyxy / r14.wwww;
            r14.xy = cmp(r16.zw >= float2(0,0));
            r17.xy = cmp(float2(1,1) >= r16.zw);
            r14.xy = r14.xy ? r17.xy : 0;
            r7.w = r14.y ? r14.x : 0;
            if (r7.w != 0) {
              r16.xyzw = r16.xyzw * cb3[44].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r14.xy = frac(r16.zw);
              r16.xyzw = floor(r16.xyzw);
              r17.xyzw = float4(0.5,1.5,0.5,0.5) + r16.zwzw;
              r17.xyzw = cb3[44].zwzw * r17.xyzw;
              r18.x = t2.SampleLevel(s2_s, r17.xy, 0).x;
              r16.xyzw = float4(1.5,1.5,1.5,0.5) + r16.xyzw;
              r16.xyzw = cb3[44].zwzw * r16.xyzw;
              r18.y = t2.SampleLevel(s2_s, r16.xy, 0).x;
              r18.z = t2.SampleLevel(s2_s, r16.zw, 0).x;
              r18.w = t2.SampleLevel(s2_s, r17.zw, 0).x;
              r7.w = r14.z * 40 + -1;
              r16.xyzw = saturate(r18.xyzw * float4(40,40,40,40) + -r7.wwww);
              r17.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r18.xyzw);
              r17.xyzw = r17.xyzw ? float4(1,1,1,1) : 0;
              r16.xyzw = r17.xyzw + r16.xyzw;
              r16.xyzw = min(float4(1,1,1,1), r16.xyzw);
              r14.zw = r16.zy + -r16.wx;
              r14.xz = r14.xx * r14.zw + r16.wx;
              r7.w = r14.z + -r14.x;
              r7.w = r14.y * r7.w + r14.x;
            } else {
              r7.w = 1;
            }
          } else {
            r7.w = 1;
          }
          r14.xyzw = cb3[2].xyzw * r8.yyyy;
          r14.xyzw = r8.xxxx * cb3[1].xyzw + r14.xyzw;
          r14.xyzw = r8.zzzz * cb3[3].xyzw + r14.xyzw;
          r14.xyzw = cb3[4].xyzw + r14.xyzw;
          r14.xy = r14.xy / r14.ww;
          r16.xy = cmp(r14.xy >= cb3[5].xy);
          r16.zw = cmp(cb3[5].zw >= r14.xy);
          r16.xy = r16.zw ? r16.xy : 0;
          r8.w = r16.y ? r16.x : 0;
          if (r8.w != 0) {
            r8.w = t1.SampleLevel(s1_s, r14.xy, 0).x;
            r9.x = -cb3[6].x + r8.w;
            r9.x = cmp(r14.z < r9.x);
            r9.x = r9.x ? 1.000000 : 0;
            r8.w = cmp(r8.w == 1.000000);
            r8.w = r8.w ? 1.000000 : 0;
            r8.w = r9.x + r8.w;
            r8.w = min(1, r8.w);
          } else {
            r8.w = 1;
          }
          r14.xyz = -cb1[67].xyz + r8.xyz;
          r9.x = dot(r14.xyz, cb1[60].xyz);
          r9.x = saturate(r9.x * cb3[7].z + cb3[7].w);
          r9.x = r9.x * r9.x;
          r10.w = 1 + -r8.w;
          r8.w = r9.x * r10.w + r8.w;
          r7.w = min(r8.w, r7.w);
          r6.w = r6.w ? 0 : r7.w;
          r14.xyzw = cb4[46].xyzw * r8.yyyy;
          r14.xyzw = r8.xxxx * cb4[45].xyzw + r14.xyzw;
          r8.xyzw = r8.zzzz * cb4[47].xyzw + r14.xyzw;
          r8.xyzw = cb4[48].xyzw + r8.xyzw;
          r8.xyz = r8.xyz / r8.www;
          r8.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
          r8.xyw = t5.SampleLevel(s5_s, r8.xy, 0).xyz;
          r7.w = saturate(1 + -r8.z);
          r7.w = r7.w * cb4[43].x + -r8.x;
          r7.w = max(0, r7.w);
          r7.w = r7.w * r8.y;
          r7.w = 1000 * r7.w;
          r7.w = min(r8.w, r7.w);
          r7.w = -1.44269502 * r7.w;
          r7.w = exp2(r7.w);
          r7.w = min(1, r7.w);
          r8.xyz = r11.xyz * r7.www;
          r11.xyz = r6.www * r15.xyz;
          r8.xyz = r8.xyz * r12.xyz;
          r8.xyz = r11.xyz * r10.xyz + r8.xyz;
          r8.xyz = r8.xyz * r4.xyz;
          r8.xyz = -r8.xyz * r13.xyz + r8.xyz;
          r8.xyz = r8.xyz / r9.yzw;
          r6.xyz = r7.xyz * r8.xyz + r6.xyz;
          r7.xyz = r13.xyz * r7.xyz;
        }
      } else {
        r6.xyz = float3(0,0,0);
        r7.xyz = float3(1,1,1);
      }
    } else {
      r6.xyz = float3(0,0,0);
      r7.xyz = float3(1,1,1);
    }
  } else {
    r6.xyz = float3(0,0,0);
    r7.xyz = float3(1,1,1);
  }
  o0.xyz = min(float3(32256,32256,32256), r6.xyz);
  o0.w = dot(r7.xyz, float3(0.333333343,0.333333343,0.333333343));
  return;
}