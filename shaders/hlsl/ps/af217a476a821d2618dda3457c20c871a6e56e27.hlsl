// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s0_s, v0.xy).xyzw;
  r0.xy = float2(255,255) * r0.xy;
  r0.xy = round(r0.xy);
  r0.xy = (int2)r0.xy;
  r0.x = (uint)r0.x << 8;
  r0.x = (int)r0.y | (int)r0.x;
  r0.x = (int)r0.x;
  r0.x = -32768 + r0.x;
  r1.xyz = cmp(cb0[1].xzw == float3(1,1,1));
  r0.y = cb0[0].x * cb0[0].y;
  r0.y = r0.x * r0.y;
  r0.x = r1.x ? r0.y : r0.x;
  if (r1.y != 0) {
    r1.xy = t1.Sample(s1_s, v0.xy).xy;
    r1.xy = float2(255,255) * r1.xy;
    r1.xy = round(r1.xy);
    r1.xy = (int2)r1.xy;
    r0.y = (uint)r1.x << 8;
    r0.y = (int)r1.y | (int)r0.y;
    r0.y = (int)r0.y;
    r0.y = -32768 + r0.y;
    r1.xy = cmp(cb0[0].zy == float2(1,1));
    r1.x = r1.y ? r1.x : 0;
    r1.yw = float2(255,255) * r0.zw;
    r1.yw = round(r1.yw);
    r1.yw = (int2)r1.yw;
    r1.y = (uint)r1.y << 8;
    r1.y = (int)r1.w | (int)r1.y;
    r1.y = (int)r1.y & 0x0000fffc;
    r1.y = (int)r1.y;
    r1.y = r1.y * r0.y;
    r1.y = r1.y * 1.52597204e-005 + r0.x;
    r1.w = r0.w * 255 + 0.5;
    r1.w = floor(r1.w);
    r1.w = (uint)r1.w;
    r2.xy = (int2)r1.ww & int2(1,2);
    r2.xy = cmp((int2)r2.xy != int2(0,0));
    r1.w = cmp(r0.y < r1.y);
    r1.w = r1.w ? r2.y : 0;
    r2.y = cmp(r1.y < r0.y);
    r2.x = r2.y ? r2.x : 0;
    r1.w = (int)r1.w | (int)r2.x;
    r1.y = r1.w ? r1.y : r0.y;
    r0.y = r0.x + r0.y;
    r0.y = r1.x ? r1.y : r0.y;
    r0.y = max(-32768, r0.y);
    r0.x = min(32767, r0.y);
  }
  r0.x = 32768 + r0.x;
  r0.x = max(0, r0.x);
  r0.x = min(65535, r0.x);
  r0.x = (int)r0.x;
  r0.y = (int)r0.x & 255;
  r0.x = (int)-r0.y + (int)r0.x;
  r0.x = (uint)r0.x >> 8;
  r0.x = (int)r0.x;
  o0.x = 0.00392156886 * r0.x;
  r0.x = (int)r0.y;
  o0.y = 0.00392156886 * r0.x;
  if (r1.z != 0) {
    r0.xy = float2(1,1) / cb0[2].xy;
    r1.xy = cmp(r0.yx >= v0.yx);
    r1.z = -1 + cb0[3].w;
    r1.z = max(1, r1.z);
    r1.zw = r1.zz * r0.xy;
    r1.zw = cmp(v0.xy >= r1.zw);
    r2.xy = r0.xy * float2(0.25,0.25) + v0.xy;
    r0.xy = r2.xy + -r0.xy;
    r3.xyzw = t0.Gather(s0_s, r0.xy).xyzw;
    r4.xyzw = t0.Gather(s0_s, r0.xy).xyzw;
    r5.xyz = t0.Gather(s0_s, r2.xy).xyz;
    r2.xyz = t0.Gather(s0_s, r2.xy).xyz;
    r0.xy = cb0[2].xy * v0.xy;
    r6.xyzw = v0.xyxy * cb0[2].xyxy + float4(-1,-1,0,-1);
    r3.xyzw = float4(255,255,255,255) * r3.wzyx;
    r3.xyzw = round(r3.xyzw);
    r3.xyzw = (int4)r3.xyzw;
    r3.xyzw = (uint4)r3.xyzw << int4(8,8,8,8);
    r4.xyzw = float4(255,255,255,255) * r4.wzyx;
    r4.xyzw = round(r4.xyzw);
    r4.xyzw = (int4)r4.xyzw;
    r3.xyzw = (int4)r3.xyzw | (int4)r4.xyzw;
    r3.xyzw = (int4)r3.xyzw;
    r3.xyzw = float4(-32768,-32768,-32768,-32768) + r3.xyzw;
    r3.xyzw = cb0[3].zzzz * r3.xyzw;
    r4.xyzw = cb0[3].xyxy * r6.xyzw;
    r6.yz = cb0[3].xy * r0.xy;
    r7.xyzw = v0.xyxy * cb0[2].xyxy + float4(-1,0,1,0);
    r3.xyzw = float4(0.0078125,0.0078125,0.0078125,0.0078125) * r3.xyzw;
    r7.xyzw = cb0[3].yxxy * r7.wxzy;
    r5.xyz = float3(255,255,255) * r5.zyx;
    r5.xyz = round(r5.xyz);
    r5.xyz = (int3)r5.xyz;
    r5.xyz = (uint3)r5.xyz << int3(8,8,8);
    r2.xyz = float3(255,255,255) * r2.zyx;
    r2.xyz = round(r2.xyz);
    r2.xyz = (int3)r2.xyz;
    r2.xyz = (int3)r2.xyz | (int3)r5.xyz;
    r2.xyz = (int3)r2.xyz;
    r2.xyz = float3(-32768,-32768,-32768) + r2.xyz;
    r2.xyz = cb0[3].zzz * r2.xyz;
    r5.xyzw = v0.xyxy * cb0[2].xyxy + float4(1,1,0,1);
    r5.xyzw = cb0[3].xyxy * r5.xyzw;
    r2.xyz = float3(0.0078125,0.0078125,0.0078125) * r2.xyz;
    r8.yz = r7.yw;
    r8.x = r3.w;
    r6.x = r3.z;
    r9.xyz = -r8.xyz + r6.xyz;
    r10.yz = r4.xy;
    r10.x = r3.x;
    r11.xyz = -r10.zxy + r8.zxy;
    r12.xyz = r11.xyz * r9.xyz;
    r9.xyz = r9.zxy * r11.yzx + -r12.xyz;
    r0.x = dot(r9.xyz, r9.xyz);
    r0.x = rsqrt(r0.x);
    r9.xyz = r9.xyz * r0.xxx;
    r3.xz = r4.wz;
    r4.xyz = r10.xyz + -r3.yzx;
    r10.xyz = r3.xyz + -r6.zxy;
    r11.xyz = r10.xyz * r4.xyz;
    r4.xyz = r4.zxy * r10.yzx + -r11.xyz;
    r0.x = dot(r4.xyz, r4.xyz);
    r0.x = rsqrt(r0.x);
    r4.xyz = r4.xyz * r0.xxx;
    r8.xyz = r8.xyz + -r6.xyz;
    r10.xz = r5.wz;
    r10.y = r2.z;
    r11.xyz = -r10.xyz + r6.zxy;
    r12.xyz = r11.xyz * r8.xyz;
    r8.xyz = r8.zxy * r11.yzx + -r12.xyz;
    r0.x = dot(r8.xyz, r8.xyz);
    r0.x = rsqrt(r0.x);
    r8.xyz = r8.xyz * r0.xxx;
    r7.y = r2.x;
    r11.xyz = r7.yzx + -r6.xyz;
    r3.xyz = r6.zxy + -r3.xyz;
    r12.xyz = r11.xyz * r3.xyz;
    r3.xyz = r11.zxy * r3.yzx + -r12.xyz;
    r0.x = dot(r3.xyz, r3.xyz);
    r0.x = rsqrt(r0.x);
    r3.xyz = r3.xyz * r0.xxx;
    r2.xz = r5.yx;
    r5.xyz = r2.yzx + -r10.yzx;
    r10.xyz = r10.xyz + -r6.zxy;
    r11.xyz = r10.xyz * r5.xyz;
    r5.xyz = r5.zxy * r10.yzx + -r11.xyz;
    r0.x = dot(r5.xyz, r5.xyz);
    r0.x = rsqrt(r0.x);
    r5.xyz = r5.xyz * r0.xxx;
    r6.xyz = -r7.yzx + r6.xyz;
    r2.xyz = r7.xyz + -r2.xyz;
    r7.xyz = r6.xyz * r2.xyz;
    r2.xyz = r6.zxy * r2.yzx + -r7.xyz;
    r0.x = dot(r2.xyz, r2.xyz);
    r0.x = rsqrt(r0.x);
    r2.xyz = r2.xyz * r0.xxx;
    r0.x = (int)r1.x | (int)r1.y;
    r6.xyz = r0.xxx ? float3(0,0,0) : r9.xyz;
    r4.xyz = r0.xxx ? float3(0,0,0) : r4.xyz;
    r0.xy = (int2)r1.zw | (int2)r1.xy;
    r3.xyz = r0.xxx ? float3(0,0,0) : r3.xyz;
    r7.xyz = r0.yyy ? float3(0,0,0) : r8.xyz;
    r0.x = (int)r1.w | (int)r1.z;
    r1.xyz = r0.xxx ? float3(0,0,0) : r5.xyz;
    r2.xyz = r0.xxx ? float3(0,0,0) : r2.xyz;
    r4.xyz = r6.xyz + r4.xyz;
    r4.xyz = r4.xyz + r7.xyz;
    r3.xyz = r4.xyz + r3.xyz;
    r1.xyz = r3.xyz + r1.xyz;
    r1.xyz = r1.xyz + r2.xyz;
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = rsqrt(r0.x);
    r0.xy = r1.xy * r0.xx + float2(1,1);
    o0.zw = float2(0.5,0.5) * r0.xy;
  } else {
    o0.zw = r0.zw;
  }
  return;
}