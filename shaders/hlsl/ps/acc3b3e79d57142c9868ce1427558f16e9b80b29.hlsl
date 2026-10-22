// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r1.x = t2.SampleLevel(s0_s, v0.xy, 0).w;
  r1.x = 255 * r1.x;
  r1.x = round(r1.x);
  r1.x = (uint)r1.x;
  r1.x = (int)r1.x & 15;
  r1.xy = cmp((int2)r1.xx != int2(1,2));
  r1.x = r1.y ? r1.x : 0;
  if (r1.x != 0) {
    o0.xyzw = r0.xyzw;
    return;
  }
  r1.x = t1.SampleLevel(s0_s, v0.xy, 0).x;
  r1.y = r1.x * cb1[65].x + cb1[65].y;
  r1.x = r1.x * cb1[65].z + -cb1[65].w;
  r1.x = 1 / r1.x;
  r1.x = r1.y + r1.x;
  r1.y = r1.x / cb0[1].w;
  r1.zw = cb0[1].zy + -cb0[0].wz;
  r2.xy = cb1[132].zw * cb0[0].xy;
  r1.x = 0.000500000024 * r1.x;
  r1.xy = min(float2(1,1), r1.xy);
  r1.x = r1.x * 0.5 + 1;
  r1.yz = r1.yy * r1.zw + cb0[0].wz;
  r1.w = 1 + -r1.z;
  r1.z = r1.w * 0.400000006 + r1.z;
  r1.w = saturate(dot(r0.xyz, float3(0.200000003,0.699999988,0.100000001)));
  r2.z = r2.y * r1.x;
  r3.x = r2.x * r1.x;
  r3.z = -1 * r3.x;
  r3.yw = float2(0,-0);
  r4.xyzw = r2.yzyz * float4(-0,-1,-0,-1) + r3.zwxy;
  r5.xyzw = v0.xyxy + r4.xyzw;
  r6.xyz = t0.Sample(s0_s, r5.xy).xyz;
  r4.xyzw = v0.xyxy + -r4.xyzw;
  r7.xyz = t0.Sample(s0_s, r4.xy).xyz;
  r8.xyz = r6.xyz + -r0.xyz;
  r1.x = max(abs(r8.x), abs(r8.y));
  r1.x = max(r1.x, abs(r8.z));
  r8.xyz = r7.xyz + -r0.xyz;
  r2.x = max(abs(r8.x), abs(r8.y));
  r2.x = max(r2.x, abs(r8.z));
  r2.w = min(999999, r1.x);
  r2.w = min(r2.w, r2.x);
  r1.y = r1.y * r1.w;
  r1.w = cmp(r1.y < r2.w);
  if (r1.w != 0) {
    r8.xyzw = float4(0,0,0,0);
  } else {
    r1.w = cmp(r1.x < r2.x);
    r2.w = r1.y + r1.y;
    r3.x = cmp(r2.w < r2.x);
    r2.x = r2.x * r2.x;
    r2.x = r2.x * r2.x;
    r2.x = min(1, r2.x);
    r2.x = 1 + -r2.x;
    r2.x = max(0.5, r2.x);
    r3.y = log2(r1.z);
    r2.x = r3.y * r2.x;
    r2.x = exp2(r2.x);
    r2.x = r3.x ? 1 : r2.x;
    r9.xyz = -r7.xyz + r6.xyz;
    r9.xyz = r2.xxx * r9.xyz + r7.xyz;
    r2.x = cmp(r2.w < r1.x);
    r1.x = r1.x * r1.x;
    r1.x = r1.x * r1.x;
    r2.w = r1.x * r1.x;
    r2.w = r2.w * r2.w;
    r1.x = r2.w * r1.x;
    r1.x = min(1, r1.x);
    r1.x = 1 + -r1.x;
    r1.x = max(0.5, r1.x);
    r1.x = r1.x * r3.y;
    r1.x = exp2(r1.x);
    r1.x = r2.x ? 1 : r1.x;
    r7.xyz = r7.xyz + -r6.xyz;
    r6.xyz = r1.xxx * r7.xyz + r6.xyz;
    r8.xyz = r1.www ? r9.xyz : r6.xyz;
    r8.w = 1;
  }
  r6.xyzw = r8.xyzw * float4(2,2,2,2) + r0.xyzw;
  r1.x = r8.w * 2 + 1;
  r2.xw = r2.yz * float2(-0,-1) + v0.xy;
  r7.xyz = t0.Sample(s0_s, r2.xw).xyz;
  r2.xy = -r2.yz * float2(-0,-1) + v0.xy;
  r2.xyz = t0.Sample(s0_s, r2.xy).xyz;
  r8.xyz = r7.xyz + -r0.xyz;
  r1.w = max(abs(r8.x), abs(r8.y));
  r1.w = max(r1.w, abs(r8.z));
  r8.xyz = r2.xyz + -r0.xyz;
  r2.w = max(abs(r8.x), abs(r8.y));
  r2.w = max(r2.w, abs(r8.z));
  r3.x = min(999999, r1.w);
  r3.x = min(r3.x, r2.w);
  r3.x = cmp(r1.y < r3.x);
  if (r3.x != 0) {
    r8.xyzw = float4(0,0,0,0);
  } else {
    r3.x = cmp(r1.w < r2.w);
    r3.y = r1.y + r1.y;
    r4.x = cmp(r3.y < r2.w);
    r2.w = r2.w * r2.w;
    r2.w = r2.w * r2.w;
    r2.w = min(1, r2.w);
    r2.w = 1 + -r2.w;
    r2.w = max(0.5, r2.w);
    r4.y = log2(r1.z);
    r2.w = r4.y * r2.w;
    r2.w = exp2(r2.w);
    r2.w = r4.x ? 1 : r2.w;
    r9.xyz = r7.xyz + -r2.xyz;
    r9.xyz = r2.www * r9.xyz + r2.xyz;
    r2.w = cmp(r3.y < r1.w);
    r1.w = r1.w * r1.w;
    r1.w = r1.w * r1.w;
    r3.y = r1.w * r1.w;
    r3.y = r3.y * r3.y;
    r1.w = r3.y * r1.w;
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r1.w = max(0.5, r1.w);
    r1.w = r1.w * r4.y;
    r1.w = exp2(r1.w);
    r1.w = r2.w ? 1 : r1.w;
    r2.xyz = r2.xyz + -r7.xyz;
    r2.xyz = r1.www * r2.xyz + r7.xyz;
    r8.xyz = r3.xxx ? r9.xyz : r2.xyz;
    r8.w = 1;
  }
  r2.xyzw = r8.xyzw * float4(2,2,2,2) + r6.xyzw;
  r1.x = r8.w * 2 + r1.x;
  r5.xyz = t0.Sample(s0_s, r5.zw).xyz;
  r4.xyz = t0.Sample(s0_s, r4.zw).xyz;
  r6.xyz = r5.xyz + -r0.xyz;
  r1.w = max(abs(r6.x), abs(r6.y));
  r1.w = max(r1.w, abs(r6.z));
  r6.xyz = r4.xyz + -r0.xyz;
  r3.x = max(abs(r6.x), abs(r6.y));
  r3.x = max(r3.x, abs(r6.z));
  r3.y = min(999999, r1.w);
  r3.y = min(r3.y, r3.x);
  r3.y = cmp(r1.y < r3.y);
  if (r3.y != 0) {
    r6.xyzw = float4(0,0,0,0);
  } else {
    r3.y = cmp(r1.w < r3.x);
    r4.w = r1.y + r1.y;
    r5.w = cmp(r4.w < r3.x);
    r3.x = r3.x * r3.x;
    r3.x = r3.x * r3.x;
    r3.x = min(1, r3.x);
    r3.x = 1 + -r3.x;
    r3.x = max(0.5, r3.x);
    r7.x = log2(r1.z);
    r3.x = r7.x * r3.x;
    r3.x = exp2(r3.x);
    r3.x = r5.w ? 1 : r3.x;
    r7.yzw = r5.xyz + -r4.xyz;
    r7.yzw = r3.xxx * r7.yzw + r4.xyz;
    r3.x = cmp(r4.w < r1.w);
    r1.w = r1.w * r1.w;
    r1.w = r1.w * r1.w;
    r4.w = r1.w * r1.w;
    r4.w = r4.w * r4.w;
    r1.w = r4.w * r1.w;
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r1.w = max(0.5, r1.w);
    r1.w = r1.w * r7.x;
    r1.w = exp2(r1.w);
    r1.w = r3.x ? 1 : r1.w;
    r4.xyz = r4.xyz + -r5.xyz;
    r4.xyz = r1.www * r4.xyz + r5.xyz;
    r6.xyz = r3.yyy ? r7.yzw : r4.xyz;
    r6.w = 1;
  }
  r2.xyzw = r6.xyzw * float4(2,2,2,2) + r2.xyzw;
  r1.x = r6.w * 2 + r1.x;
  r3.xy = v0.xy + r3.zw;
  r4.xyz = t0.Sample(s0_s, r3.xy).xyz;
  r3.xy = v0.xy + -r3.zw;
  r3.xyz = t0.Sample(s0_s, r3.xy).xyz;
  r5.xyz = r4.xyz + -r0.xyz;
  r1.w = max(abs(r5.x), abs(r5.y));
  r1.w = max(r1.w, abs(r5.z));
  r5.xyz = r3.xyz + -r0.xyz;
  r3.w = max(abs(r5.x), abs(r5.y));
  r3.w = max(r3.w, abs(r5.z));
  r4.w = min(999999, r1.w);
  r4.w = min(r4.w, r3.w);
  r4.w = cmp(r1.y < r4.w);
  if (r4.w != 0) {
    r5.xyzw = float4(0,0,0,0);
  } else {
    r4.w = cmp(r1.w < r3.w);
    r1.y = r1.y + r1.y;
    r6.x = cmp(r1.y < r3.w);
    r3.w = r3.w * r3.w;
    r3.w = r3.w * r3.w;
    r3.w = min(1, r3.w);
    r3.w = 1 + -r3.w;
    r3.w = max(0.5, r3.w);
    r1.z = log2(r1.z);
    r3.w = r3.w * r1.z;
    r3.w = exp2(r3.w);
    r3.w = r6.x ? 1 : r3.w;
    r6.xyz = r4.xyz + -r3.xyz;
    r6.xyz = r3.www * r6.xyz + r3.xyz;
    r1.y = cmp(r1.y < r1.w);
    r1.w = r1.w * r1.w;
    r1.w = r1.w * r1.w;
    r3.w = r1.w * r1.w;
    r3.w = r3.w * r3.w;
    r1.w = r3.w * r1.w;
    r1.w = min(1, r1.w);
    r1.w = 1 + -r1.w;
    r1.w = max(0.5, r1.w);
    r1.z = r1.w * r1.z;
    r1.z = exp2(r1.z);
    r1.y = r1.y ? 1 : r1.z;
    r3.xyz = r3.xyz + -r4.xyz;
    r1.yzw = r1.yyy * r3.xyz + r4.xyz;
    r5.xyz = r4.www ? r6.xyz : r1.yzw;
    r5.w = 1;
  }
  r2.xyzw = r5.xyzw * float4(2,2,2,2) + r2.xyzw;
  r1.x = r5.w * 2 + r1.x;
  r1.xyzw = r2.xyzw / r1.xxxx;
  r1.xyzw = r1.xyzw + -r0.xyzw;
  o0.xyzw = cb0[1].xxxx * r1.xyzw + r0.xyzw;
  return;
}