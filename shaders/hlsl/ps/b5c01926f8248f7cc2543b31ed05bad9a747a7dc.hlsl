// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2DMS<uint4,2> t1 : register(t1);

Texture2DMS<float4,2> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[153];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[18];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[0].xy * v0.xy;
  r0.xy = (int2)r0.xy;
  r1.xyzw = (int4)r0.xyxy + int4(-2,0,2,0);
  r2.xy = r1.zw;
  r2.zw = float2(0,0);
  r2.x = t1.Load(r2.xy, 0).y;
  r1.zw = float2(0,0);
  r1.x = t1.Load(r1.xy, 0).y;
  r3.xyzw = (int4)r0.xyxy + int4(0,-2,0,2);
  r4.xy = r3.zw;
  r4.zw = float2(0,0);
  r1.y = t1.Load(r4.xy, 0).y;
  r3.zw = float2(0,0);
  r1.z = t1.Load(r3.xy, 0).y;
  r2.x = (int)r2.x;
  r2.yzw = (int3)r1.xyz;
  r2.xyzw = saturate(r2.xyzw);
  r1.x = dot(r2.xyzw, float4(1,1,1,1));
  r1.x = (int)r1.x;
  r1.x = cmp(0 < (int)r1.x);
  if (r1.x != 0) {
    r1.xyzw = v0.xyxy * cb0[14].xyxy + cb0[14].zwzw;
    r2.z = t3.SampleLevel(s1_s, r1.zw, 0).x;
    r3.xyzw = cb0[7].zwzw * float4(-1,0,1,0) + r1.zwzw;
    r2.w = t3.SampleLevel(s1_s, r3.xy, 0).x;
    r3.x = t3.SampleLevel(s1_s, r3.zw, 0).x;
    r1.xyzw = cb0[7].zwzw * float4(0,-1,0,1) + r1.xyzw;
    r1.x = t3.SampleLevel(s1_s, r1.xy, 0).x;
    r1.y = t3.SampleLevel(s1_s, r1.zw, 0).x;
    r1.z = r3.x + -r2.w;
    r2.x = 0.5 * r1.z;
    r1.z = r1.y + -r1.x;
    r2.y = 0.5 * r1.z;
    r1.z = min(r3.x, r2.w);
    r1.w = min(r1.x, r1.y);
    r1.z = min(r1.z, r1.w);
    r1.z = min(r2.z, r1.z);
    r1.w = max(r3.x, r2.w);
    r1.x = max(r1.x, r1.y);
    r1.x = max(r1.w, r1.x);
    r1.x = max(r2.z, r1.x);
    r1.yw = float2(0.5,0.5) + -cb1[152].zw;
    r0.zw = float2(0,0);
    r2.w = t0.Load(r0.xy, 0).x;
    r0.z = t1.Load(r0.xy, 0).y;
    r3.xy = t0.GetSamplePosition(0);
    r3.xy = r3.xy + r1.yw;
    r3.z = 1;
    r0.w = dot(r2.xyz, r3.xyz);
    r0.w = max(r0.w, r1.z);
    r0.w = min(r0.w, r1.x);
    r3.x = cmp(r2.w != 0.000000);
    r0.w = r0.w + -r2.w;
    r0.w = saturate(-r0.w * 20000 + 2);
    r4.xyzw = (int4)r0.xyxy + int4(-1,-1,1,1);
    r5.xyzw = (int4)r0.xyxy + int4(-1,1,1,-1);
    r3.yz = (int2)r0.xy ^ int2(2,2);
    r0.xy = max((int2)-r0.xy, (int2)r0.xy);
    r0.xy = (uint2)r0.xy >> int2(1,1);
    r6.xy = -(int2)r0.xy;
    r3.yz = (int2)r3.yz & int2(0x80000000,0x80000000);
    r0.xy = r3.yz ? r6.xy : r0.xy;
    r0.x = (int)r0.y + (int)r0.x;
    r0.y = (int)r0.x & 0x80000000;
    r0.x = max((int)-r0.x, (int)r0.x);
    r0.x = (int)r0.x & 1;
    r2.w = -(int)r0.x;
    r0.x = r0.y ? r2.w : r0.x;
    r0.x = (int)r0.x;
    r0.y = 0.600000024 * r0.x;
    r2.w = r0.x * 0.480000019 + 0.200000003;
    r0.x = -r0.x * 0.600000024 + 1;
    r0.x = r0.w * r0.x + r0.y;
    r0.y = cmp((int)r0.z == 1);
    r0.y = r0.y ? cb0[17].x : cb0[16].w;
    r0.y = r0.x * r0.y;
    r6.xy = r4.zw;
    r6.zw = float2(0,0);
    r7.z = 1;
    r4.zw = float2(0,0);
    r8.xy = r5.zw;
    r8.zw = float2(0,0);
    r5.zw = float2(0,0);
    r9.w = 1;
    r10.w = 1;
    r11.xyzw = float4(0,0,0,0);
    r0.z = 0;
    while (true) {
      r0.w = cmp((int)r0.z >= 2);
      if (r0.w != 0) break;
      r0.w = t0.Load(r6.xy, r0.z).x;
      r3.y = t1.Load(r6.xy, r0.z).y;
      r3.zw = t0.GetSamplePosition(r0.z);
      r7.xy = r3.zw + r1.yw;
      r3.z = dot(r2.xyz, r7.xyz);
      r3.z = max(r3.z, r1.z);
      r3.z = min(r3.z, r1.x);
      r0.w = r3.z + -r0.w;
      r0.w = saturate(-r0.w * 20000 + 2);
      r0.w = cmp(r0.w >= 0.5);
      r3.w = t0.Load(r4.xy, r0.z).x;
      r7.x = t1.Load(r4.xy, r0.z).y;
      r3.w = r3.z + -r3.w;
      r3.w = saturate(-r3.w * 20000 + 2);
      r7.y = t0.Load(r8.xy, r0.z).x;
      r7.w = t1.Load(r8.xy, r0.z).y;
      r7.y = -r7.y + r3.z;
      r7.y = saturate(-r7.y * 20000 + 2);
      r7.y = cmp(r7.y >= 0.5);
      r12.x = t0.Load(r5.xy, r0.z).x;
      r12.y = t1.Load(r5.xy, r0.z).y;
      r3.z = -r12.x + r3.z;
      r3.z = saturate(-r3.z * 20000 + 2);
      r3.zw = cmp(r3.zw >= float2(0.5,0.5));
      r13.x = min(255, (int)r3.y);
      r13.y = max(0, (int)r3.y);
      r3.y = min((int)r13.x, (int)r7.x);
      r12.x = max((int)r13.y, (int)r7.x);
      r3.y = min((int)r3.y, (int)r7.w);
      r12.x = max((int)r12.x, (int)r7.w);
      r3.y = min((int)r3.y, (int)r12.y);
      r12.x = max((int)r12.x, (int)r12.y);
      r12.zw = r0.ww ? r13.xy : float2(3.57331108e-043,0);
      r13.x = min((int)r12.z, (int)r7.x);
      r13.y = max((int)r12.w, (int)r7.x);
      r12.zw = r3.ww ? r13.xy : r12.zw;
      r13.x = min((int)r12.z, (int)r7.w);
      r13.y = max((int)r12.w, (int)r7.w);
      r7.xy = r7.yy ? r13.xy : r12.zw;
      r13.x = min((int)r7.x, (int)r12.y);
      r13.y = max((int)r7.y, (int)r12.y);
      r3.zw = r3.zz ? r13.xy : r7.xy;
      r0.w = cmp((int)r3.y != (int)r12.x);
      r3.y = cmp((int)r12.x == 4);
      r3.z = cmp((int)r3.z >= 128);
      r9.xyz = r3.zzz ? cb0[16].xyz : cb0[15].xyz;
      r12.xyzw = r9.xyzw * r2.wwww;
      r12.xyzw = r3.wwww ? r9.xyzw : r12.xyzw;
      r12.xyzw = r0.wwww ? r12.xyzw : 0;
      r10.xyz = r9.xyz * r0.xxx;
      r13.xyzw = -r12.xyzw + r10.xyzw;
      r13.xyzw = cb0[16].wwww * r13.xyzw + r12.xyzw;
      r12.xyzw = r3.yyyy ? r13.xyzw : r12.xyzw;
      r13.xyzw = -r12.xyzw + r9.xyzw;
      r13.xyzw = r0.yyyy * r13.xyzw + r12.xyzw;
      r12.xyzw = r3.xxxx ? r13.xyzw : r12.xyzw;
      r11.xyzw = r12.xyzw + r11.xyzw;
      r0.z = (int)r0.z + 1;
    }
    r0.x = 0.5 * r11.w;
    r1.xyzw = t2.Sample(s0_s, v0.xy).xyzw;
    r0.yzw = log2(r1.xyz);
    r0.yzw = float3(2.20000005,2.20000005,2.20000005) * r0.yzw;
    r0.yzw = exp2(r0.yzw);
    r1.xyz = r11.xyz * float3(0.5,0.5,0.5) + -r0.yzw;
    r0.xyz = r0.xxx * r1.xyz + r0.yzw;
    r0.xyz = log2(r0.xyz);
    r0.xyz = float3(0.454545468,0.454545468,0.454545468) * r0.xyz;
    o0.xyz = exp2(r0.xyz);
    o0.w = r1.w;
  } else {
    o0.xyzw = t2.Sample(s0_s, v0.xy).xyzw;
  }
  return;
}