// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<uint4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[0].xy * v0.xy;
  r0.xy = (int2)r0.xy;
  r1.xyzw = (int4)r0.xyxy + int4(-2,0,2,0);
  r2.xy = r1.zw;
  r2.zw = float2(0,0);
  r2.x = t1.Load(r2.xyz).y;
  r1.zw = float2(0,0);
  r1.x = t1.Load(r1.xyz).y;
  r3.xyzw = (int4)r0.xyxy + int4(0,-2,0,2);
  r4.xy = r3.zw;
  r4.zw = float2(0,0);
  r1.y = t1.Load(r4.xyz).y;
  r3.zw = float2(0,0);
  r1.z = t1.Load(r3.xyz).y;
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
    r0.zw = float2(0,0);
    r1.y = t0.Load(r0.xyw).x;
    r0.z = t1.Load(r0.xyz).y;
    r3.xy = float2(0.5,0.5) + -cb1[152].zw;
    r3.z = 1;
    r0.w = dot(r2.xyz, r3.xyz);
    r0.w = max(r0.w, r1.z);
    r0.w = min(r0.w, r1.x);
    r1.x = cmp(r1.y != 0.000000);
    r1.y = r0.w + -r1.y;
    r1.y = saturate(-r1.y * 20000 + 2);
    r2.xyzw = (int4)r0.xyxy + int4(-1,-1,1,1);
    r3.xy = r2.zw;
    r3.zw = float2(0,0);
    r1.z = t0.Load(r3.xyw).x;
    r1.w = t1.Load(r3.xyz).y;
    r1.z = -r1.z + r0.w;
    r1.z = saturate(-r1.z * 20000 + 2);
    r1.z = cmp(r1.z >= 0.5);
    r2.zw = float2(0,0);
    r3.x = t0.Load(r2.xyw).x;
    r2.x = t1.Load(r2.xyz).y;
    r2.y = -r3.x + r0.w;
    r2.y = saturate(-r2.y * 20000 + 2);
    r2.y = cmp(r2.y >= 0.5);
    r3.xyzw = (int4)r0.xyxy + int4(-1,1,1,-1);
    r4.xy = r3.zw;
    r4.zw = float2(0,0);
    r2.z = t0.Load(r4.xyw).x;
    r2.w = t1.Load(r4.xyz).y;
    r2.z = -r2.z + r0.w;
    r2.z = saturate(-r2.z * 20000 + 2);
    r2.z = cmp(r2.z >= 0.5);
    r3.zw = float2(0,0);
    r4.x = t0.Load(r3.xyw).x;
    r3.x = t1.Load(r3.xyz).y;
    r0.w = -r4.x + r0.w;
    r0.w = saturate(-r0.w * 20000 + 2);
    r0.w = cmp(r0.w >= 0.5);
    r4.x = min(255, (int)r1.w);
    r4.y = max(0, (int)r1.w);
    r1.w = min((int)r4.x, (int)r2.x);
    r3.y = max((int)r4.y, (int)r2.x);
    r1.w = min((int)r1.w, (int)r2.w);
    r3.y = max((int)r3.y, (int)r2.w);
    r1.w = min((int)r1.w, (int)r3.x);
    r3.y = max((int)r3.y, (int)r3.x);
    r3.zw = r1.zz ? r4.xy : float2(3.57331108e-043,0);
    r4.x = min((int)r3.z, (int)r2.x);
    r4.y = max((int)r3.w, (int)r2.x);
    r2.xy = r2.yy ? r4.xy : r3.zw;
    r4.x = min((int)r2.x, (int)r2.w);
    r4.y = max((int)r2.y, (int)r2.w);
    r2.xy = r2.zz ? r4.xy : r2.xy;
    r4.x = min((int)r2.x, (int)r3.x);
    r4.y = max((int)r2.y, (int)r3.x);
    r2.xy = r0.ww ? r4.xy : r2.xy;
    r0.w = cmp((int)r1.w != (int)r3.y);
    r1.z = cmp((int)r3.y == 4);
    r2.zw = (int2)r0.xy ^ int2(2,2);
    r0.xy = max((int2)-r0.xy, (int2)r0.xy);
    r0.xy = (uint2)r0.xy >> int2(1,1);
    r3.xy = -(int2)r0.xy;
    r2.zw = r2.zw ? float2(-0,-0) : 0;
    r0.xy = r2.zw ? r3.xy : r0.xy;
    r0.x = (int)r0.y + (int)r0.x;
    r0.y = (int)r0.x & 0x80000000;
    r0.x = max((int)-r0.x, (int)r0.x);
    r0.x = (int)r0.x & 1;
    r1.w = -(int)r0.x;
    r0.x = r0.y ? r1.w : r0.x;
    r0.x = (int)r0.x;
    r0.y = 0.600000024 * r0.x;
    r1.w = r0.x * 0.480000019 + 0.200000003;
    r2.x = cmp((int)r2.x >= 128);
    r3.xyz = r2.xxx ? cb0[16].xyz : cb0[15].xyz;
    r3.w = 1;
    r4.xyzw = r3.xyzw * r1.wwww;
    r2.xyzw = r2.yyyy ? r3.xyzw : r4.xyzw;
    r2.xyzw = r0.wwww ? r2.xyzw : 0;
    r0.x = -r0.x * 0.600000024 + 1;
    r0.x = r1.y * r0.x + r0.y;
    r4.xyz = r3.xyz * r0.xxx;
    r4.w = 1;
    r4.xyzw = r4.xyzw + -r2.xyzw;
    r4.xyzw = cb0[16].wwww * r4.xyzw + r2.xyzw;
    r2.xyzw = r1.zzzz ? r4.xyzw : r2.xyzw;
    r0.y = cmp((int)r0.z == 1);
    r0.y = r0.y ? cb0[17].x : cb0[16].w;
    r0.x = r0.x * r0.y;
    r3.xyzw = r3.xyzw + -r2.xyzw;
    r0.xyzw = r0.xxxx * r3.xyzw + r2.xyzw;
    r0.xyzw = r1.xxxx ? r0.xyzw : r2.xyzw;
    r1.xyzw = t2.Sample(s0_s, v0.xy).xyzw;
    r1.xyz = log2(r1.xyz);
    r1.xyz = float3(2.20000005,2.20000005,2.20000005) * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r0.xyz = -r1.xyz + r0.xyz;
    r0.xyz = r0.www * r0.xyz + r1.xyz;
    r0.xyz = log2(r0.xyz);
    r0.xyz = float3(0.454545468,0.454545468,0.454545468) * r0.xyz;
    o0.xyz = exp2(r0.xyz);
    o0.w = r1.w;
  } else {
    o0.xyzw = t2.Sample(s0_s, v0.xy).xyzw;
  }
  return;
}