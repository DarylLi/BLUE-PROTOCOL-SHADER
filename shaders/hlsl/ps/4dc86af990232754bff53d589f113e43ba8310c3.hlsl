// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t3 : register(t3);

Texture3D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb2 : register(b2)
{
  float4 cb2[13];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[111];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[143];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  uint v2 : PRIMITIVE_ID0,
  float4 v3 : SV_Position0,
  out float3 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(asuint(cb1[110].w) >= 1);
  if (r0.x != 0) {
    r0.x = asint(cb1[110].w) + -1;
    r0.y = (uint)r0.x << 2;
    r1.x = cb1[r0.y+27].x;
    r1.y = cb1[r0.y+28].x;
    r1.z = cb1[r0.y+29].x;
    r1.w = cb1[r0.y+30].x;
    r2.x = cb1[r0.y+27].y;
    r2.y = cb1[r0.y+28].y;
    r2.z = cb1[r0.y+29].y;
    r2.w = cb1[r0.y+30].y;
    r3.x = cb1[r0.y+27].z;
    r3.y = cb1[r0.y+28].z;
    r3.z = cb1[r0.y+29].z;
    r3.w = cb1[r0.y+30].z;
    r4.x = cb1[r0.y+27].w;
    r4.y = cb1[r0.y+28].w;
    r4.z = cb1[r0.y+29].w;
    r4.w = cb1[r0.y+30].w;
    r0.yzw = cb1[r0.x+37].xyz;
    r5.xy = cb1[r0.x+15].zw;
    r5.zw = cb1[r0.x+35].xy;
    r6.xy = cb1[r0.x+35].zw;
    r6.z = cb1[r0.x+7].x;
    r6.w = cb1[r0.x+9].x;
    r7.x = cb1[r0.x+11].x;
    r0.x = cb1[r0.x+13].x;
  } else {
    r1.x = cb1[49].x;
    r1.y = cb1[50].x;
    r1.z = cb1[51].x;
    r1.w = cb1[52].x;
    r2.x = cb1[49].y;
    r2.y = cb1[50].y;
    r2.z = cb1[51].y;
    r2.w = cb1[52].y;
    r3.x = cb1[49].z;
    r3.y = cb1[50].z;
    r3.z = cb1[51].z;
    r3.w = cb1[52].z;
    r4.x = cb1[49].w;
    r4.y = cb1[50].w;
    r4.z = cb1[51].w;
    r4.w = cb1[52].w;
    r0.yzw = cb1[53].xyz;
    r5.xy = cb1[44].zw;
    r5.zw = float2(1,1);
    r6.xy = float2(0,0);
    r6.zw = cb1[43].xy;
    r7.x = 0;
    r0.x = cb1[43].z;
  }
  r5.zw = v3.xy * r5.zw + r6.xy;
  r5.xy = r5.zw * r5.xy;
  r5.xy = r5.xy * float2(2,-2) + float2(-1,1);
  r5.zw = float2(1,1);
  r1.x = dot(r5.xyww, r1.xyzw);
  r1.y = dot(r5.xyww, r2.xyzw);
  r1.z = dot(r5.xyww, r3.xyzw);
  r1.w = dot(r5.xyzw, r4.xyzw);
  r1.xyz = r1.xyz / r1.www;
  r2.xyz = r1.xyz * float3(9.99999975e-006,9.99999975e-006,9.99999975e-006) + -cb1[1].xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r2.w = dot(r0.yzw, r0.yzw);
  r2.x = dot(r0.yzw, r2.xyz);
  r2.x = r2.x + r2.x;
  r2.y = -cb1[2].y * cb1[2].y + r1.w;
  r2.z = r2.x * r2.x;
  r3.x = 4 * r2.w;
  r2.y = -r3.x * r2.y + r2.z;
  r3.y = cmp(r2.y >= 0);
  if (r3.y != 0) {
    r2.y = sqrt(r2.y);
    r3.zw = r2.yy * float2(-1,1) + -r2.xx;
    r2.y = r2.w + r2.w;
    r3.zw = r3.zw / r2.yy;
    r1.w = -cb1[2].x * cb1[2].x + r1.w;
    r1.w = -r3.x * r1.w + r2.z;
    r2.z = cmp(r1.w >= 0);
    if (r2.z != 0) {
      r1.w = sqrt(r1.w);
      r2.xz = r1.ww * float2(-1,1) + -r2.xx;
      r2.xy = r2.xz / r2.yy;
      r2.zw = cmp(float2(0,0) < r2.xy);
      r1.w = r2.w ? r2.z : 0;
      if (r1.w != 0) {
        r2.z = min(r3.z, r3.w);
        r2.z = max(0, r2.z);
      } else {
        o0.xyz = float3(0,0,0);
        return;
      }
      r2.w = min(r2.x, r2.y);
      r2.x = max(r2.x, r2.y);
      r1.w = r1.w ? r2.w : r2.x;
      r3.z = min(r1.w, r2.z);
      r3.w = max(r1.w, r2.z);
    }
  } else {
    o0.x = r6.z;
    o0.yz = float2(0,0);
    return;
  }
  r2.xy = max(float2(0,0), r3.zw);
  r2.zw = float2(100000,1) * r2.xy;
  r1.w = 100000 * r6.z;
  if (r3.y != 0) {
    r3.x = 100000 * cb1[2].x;
    r3.x = cb1[2].y * 100000 + -r3.x;
    r3.x = 1 / r3.x;
    r1.xyz = r0.yzw * r2.zzz + r1.xyz;
    r2.y = r2.y * 100000 + -r2.z;
    r2.z = 1 / r0.x;
    r3.y = 0.00999999978 * r2.y;
    r3.y = r3.y / r0.x;
    r4.xyz = cb2[2].xyz * cb0[142].zzz;
    r3.z = cb2[8].z + -cb2[8].w;
    r3.w = cb2[12].y * cb2[12].y;
    r5.xyz = float3(0,0,0);
    r6.xyz = float3(0,0,0);
    r4.w = 0;
    r5.w = r1.w;
    r7.y = 0.5;
    while (true) {
      r7.z = cmp(r7.y >= r0.x);
      if (r7.z != 0) break;
      r7.z = r7.y * r2.z;
      r7.z = r7.z * r2.y;
      r8.xyz = r0.yzw * r7.zzz + r1.xyz;
      r9.xyz = -cb1[1].xyz * float3(100000,100000,100000) + r8.xyz;
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = sqrt(r7.w);
      r7.w = -cb1[2].x * 100000 + r7.w;
      r7.w = saturate(r7.w * r3.x);
      r9.xy = float2(500000,500000) + r8.xy;
      r9.xy = r9.xy * r3.ww;
      r9.xy = t0.SampleLevel(s0_s, r9.xy, -1).xy;
      r8.w = cmp(0 >= r9.y);
      r9.y = log2(r9.y);
      r9.y = 0.25 * r9.y;
      r9.y = exp2(r9.y);
      r10.x = r8.w ? 0 : r9.y;
      r10.y = 1 + -r7.w;
      r8.w = t1.SampleLevel(s1_s, r10.xy, -1).x;
      r8.w = r9.x * r8.w;
      r9.x = cmp(r7.w < 0.0500000007);
      r9.y = cmp(0.949999988 < r7.w);
      r9.x = (int)r9.y | (int)r9.x;
      r8.w = r9.x ? 0 : r8.w;
      r9.x = cmp(0 >= r8.w);
      if (r9.x != 0) {
        r9.x = 1 + r7.y;
        r7.y = r9.x;
        continue;
      }
      r8.xyz = cb2[7].xxx * r8.xyz;
      r9.xyz = r4.xyz * float3(0.150000006,0.150000006,0.150000006) + r8.xyz;
      r9.xyz = cb2[7].yyy * r9.xyz;
      r9.xyz = t2.SampleLevel(s2_s, r9.xyz, -1).xyz;
      r10.xyz = cmp(float3(0,0,0) >= r9.xyz);
      r9.xyz = log2(r9.xyz);
      r9.xyz = cb2[7].zzz * r9.xyz;
      r9.xyz = exp2(r9.xyz);
      r9.xyz = r10.xyz ? float3(0,0,0) : r9.xyz;
      r9.xyz = min(float3(1,1,1), r9.xyz);
      r10.xyz = r9.xyz * r8.www;
      r8.xyz = r4.xyz * float3(-0.100000001,-0.100000001,-0.100000001) + r8.xyz;
      r8.xyz = cb2[7].www * r8.xyz;
      r8.x = t3.SampleLevel(s3_s, r8.xyz, -1).x;
      r8.y = cmp(0 >= r8.x);
      r8.x = log2(r8.x);
      r8.x = cb2[8].x * r8.x;
      r8.x = exp2(r8.x);
      r8.x = cb2[8].y * r8.x;
      r8.x = r8.y ? -0 : -r8.x;
      r8.y = r8.w * r9.x + r8.x;
      r8.x = cb2[8].z + r8.x;
      r8.x = saturate(r8.y / r8.x);
      r8.x = r3.z * r8.x + cb2[8].w;
      r7.w = saturate(cb2[9].x * r7.w);
      r8.y = cmp(0 >= r7.w);
      r7.w = log2(r7.w);
      r7.w = cb2[9].y * r7.w;
      r7.w = exp2(r7.w);
      r7.w = r8.y ? 0 : r7.w;
      r8.xyz = -r8.www * r9.xyz + r8.xxx;
      r8.xyz = r7.www * r8.xyz + r10.xyz;
      r8.xyz = cb2[6].xyz * r8.xyz;
      r8.xyz = max(float3(0,0,0), r8.xyz);
      r8.xyz = min(float3(65000,65000,65000), r8.xyz);
      r9.xyz = cmp(float3(0,0,0) < r8.xyz);
      r7.w = (int)r9.y | (int)r9.x;
      r7.w = (int)r9.z | (int)r7.w;
      r7.z = min(r7.z, r5.w);
      r5.w = r7.w ? r7.z : r5.w;
      r5.xyz = r8.xyz + r5.xyz;
      r6.xyz = r8.xyz * r3.yyy + r6.xyz;
      r7.z = (int)r7.w & 0x3f800000;
      r4.w = r7.z + r4.w;
      r7.y = 1 + r7.y;
    }
  } else {
    r5.xyz = float3(0,0,0);
    r6.xyz = float3(0,0,0);
    r4.w = 0;
    r5.w = r1.w;
  }
  r0.x = max(1, r4.w);
  r0.xyz = r5.xyz / r0.xxx;
  r0.x = dot(r0.xyz, float3(0.333333343,0.333333343,0.333333343));
  o0.y = r6.w * r0.x;
  r0.x = dot(r6.xyz, float3(0.333333343,0.333333343,0.333333343));
  o0.z = r6.w * r0.x;
  r0.x = cmp(r1.w == r5.w);
  r0.y = r2.x * 100000 + r5.w;
  r0.y = 9.99999975e-006 * r0.y;
  r0.x = r0.x ? r2.w : r0.y;
  r0.x = r0.x + r7.x;
  o0.x = max(0, r0.x);
  return;
}