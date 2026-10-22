// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<sint4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < asint(cb0[1].x));
  if (r0.x != 0) {
    switch (cb0[1].x) {
      case 1 :      r1.x = mad(asint(cb0[0].x), asint(cb0[0].y), -1);
      r1.x = min(asint(cb0[2].x), (int)r1.x);
      r1.yz = asint(cb0[0].xy);
      r2.xy = v0.xy / r1.yz;
      r1.w = (int)r1.x & 0x80000000;
      r2.z = max((int)-r1.x, (int)r1.x);
      r2.w = max(asint(-cb0[0].x), asint(cb0[0].x));
      uiDest.x = (uint)r2.z / (uint)r2.w;
      r4.x = (uint)r2.z % (uint)r2.w;
      r3.x = uiDest.x;
      r2.z = -(int)r4.x;
      r1.w = r1.w ? r2.z : r4.x;
      r1.x = (int)r1.x ^ asint(cb0[0].x);
      r2.z = -(int)r3.x;
      r1.x = (int)r1.x & 0x80000000;
      r1.x = r1.x ? r2.z : r3.x;
      r3.xy = (int2)r1.wx;
      r1.xy = r3.xy / r1.yz;
      r1.xy = r2.xy + r1.xy;
      r1.zw = asuint(cb0[3].xy);
      r1.xy = r1.xy * r1.zw;
      r1.xy = (int2)r1.xy;
      r1.zw = float2(0,0);
      r1.x = t0.Load(r1.xyz).x;
      r0.xyz = (int3)r1.xxx;
      r0.w = 1;
      break;
      case 2 :      r1.x = mad(asint(cb0[0].x), asint(cb0[0].y), -1);
      r1.xy = min(asint(cb0[2].xy), (int2)r1.xx);
      r1.zw = asint(cb0[0].xy);
      r2.xy = v0.xy / r1.zw;
      r2.zw = (int2)r1.xy & int2(0x80000000,0x80000000);
      r3.xy = max((int2)-r1.xy, (int2)r1.xy);
      r3.z = max(asint(-cb0[0].x), asint(cb0[0].x));
      uiDest.x = (uint)r3.x / (uint)r3.z;
      r4.x = (uint)r3.x % (uint)r3.z;
      r3.x = uiDest.x;
      r3.w = -(int)r4.x;
      r2.z = r2.z ? r3.w : r4.x;
      r1.xy = (int2)r1.xy ^ asint(cb0[0].xx);
      r3.w = -(int)r3.x;
      r1.xy = (int2)r1.xy & int2(0x80000000,0x80000000);
      r1.x = r1.x ? r3.w : r3.x;
      r4.x = (int)r2.z;
      r4.y = (int)r1.x;
      r3.xw = r4.xy / r1.zw;
      r3.xw = r3.xw + r2.xy;
      r4.xy = asuint(cb0[3].xy);
      r3.xw = r4.xy * r3.xw;
      r5.xy = (int2)r3.xw;
      r5.zw = float2(0,0);
      r1.x = t0.Load(r5.xyz).x;
      r0.x = (int)r1.x;
      uiDest.x = (uint)r3.y / (uint)r3.z;
      r3.x = (uint)r3.y % (uint)r3.z;
      r1.x = uiDest.x;
      r2.z = -(int)r3.x;
      r2.z = r2.w ? r2.z : r3.x;
      r2.w = -(int)r1.x;
      r1.x = r1.y ? r2.w : r1.x;
      r3.x = (int)r2.z;
      r3.y = (int)r1.x;
      r1.xy = r3.xy / r1.zw;
      r1.xy = r2.xy + r1.xy;
      r1.xy = r1.xy * r4.xy;
      r1.xy = (int2)r1.xy;
      r1.zw = float2(0,0);
      r1.x = t0.Load(r1.xyz).x;
      r0.y = (int)r1.x;
      r0.zw = float2(0,1);
      break;
      case 3 :      r1.x = mad(asint(cb0[0].x), asint(cb0[0].y), -1);
      r1.xyz = min(asint(cb0[2].xyz), (int3)r1.xxx);
      r2.xy = asint(cb0[0].xy);
      r2.zw = v0.xy / r2.xy;
      r3.xyz = (int3)r1.xyz & int3(0x80000000,0x80000000,0x80000000);
      r4.xyz = max((int3)-r1.xyz, (int3)r1.xyz);
      r1.w = max(asint(-cb0[0].x), asint(cb0[0].x));
      uiDest.x = (uint)r4.x / (uint)r1.w;
      r5.x = (uint)r4.x % (uint)r1.w;
      r4.x = uiDest.x;
      r3.w = -(int)r5.x;
      r3.x = r3.x ? r3.w : r5.x;
      r1.xyz = (int3)r1.xyz ^ asint(cb0[0].xxx);
      r3.w = -(int)r4.x;
      r1.xyz = (int3)r1.xyz & int3(0x80000000,0x80000000,0x80000000);
      r1.x = r1.x ? r3.w : r4.x;
      r5.x = (int)r3.x;
      r5.y = (int)r1.x;
      r3.xw = r5.xy / r2.xy;
      r3.xw = r3.xw + r2.zw;
      r4.xw = asuint(cb0[3].xy);
      r3.xw = r4.xw * r3.xw;
      r5.xy = (int2)r3.xw;
      r5.zw = float2(0,0);
      r1.x = t0.Load(r5.xyz).x;
      r0.x = (int)r1.x;
      uiDest.x = (uint)r4.y / (uint)r1.w;
      r3.x = (uint)r4.y % (uint)r1.w;
      r1.x = uiDest.x;
      r3.w = -(int)r3.x;
      r3.x = r3.y ? r3.w : r3.x;
      r3.y = -(int)r1.x;
      r1.x = r1.y ? r3.y : r1.x;
      r3.x = (int)r3.x;
      r3.y = (int)r1.x;
      r1.xy = r3.xy / r2.xy;
      r1.xy = r2.zw + r1.xy;
      r1.xy = r1.xy * r4.xw;
      r5.xy = (int2)r1.xy;
      r5.zw = float2(0,0);
      r1.x = t0.Load(r5.xyz).x;
      r0.y = (int)r1.x;
      uiDest.x = (uint)r4.z / (uint)r1.w;
      r3.x = (uint)r4.z % (uint)r1.w;
      r1.x = uiDest.x;
      r1.y = -(int)r3.x;
      r1.y = r3.z ? r1.y : r3.x;
      r1.w = -(int)r1.x;
      r1.x = r1.z ? r1.w : r1.x;
      r3.xy = (int2)r1.yx;
      r1.xy = r3.xy / r2.xy;
      r1.xy = r2.zw + r1.xy;
      r1.xy = r1.xy * r4.xw;
      r1.xy = (int2)r1.xy;
      r1.zw = float2(0,0);
      r1.x = t0.Load(r1.xyz).x;
      r0.z = (int)r1.x;
      r0.w = 1;
      break;
      case 4 :      r1.x = mad(asint(cb0[0].x), asint(cb0[0].y), -1);
      r1.xyzw = min(asint(cb0[2].xyzw), (int4)r1.xxxx);
      r2.xy = asint(cb0[0].xy);
      r2.zw = v0.xy / r2.xy;
      r3.xyzw = (int4)r1.xyzw & int4(0x80000000,0x80000000,0x80000000,0x80000000);
      r4.xyzw = max((int4)-r1.xyzw, (int4)r1.xyzw);
      r5.x = max(asint(-cb0[0].x), asint(cb0[0].x));
      uiDest.x = (uint)r4.x / (uint)r5.x;
      r6.x = (uint)r4.x % (uint)r5.x;
      r4.x = uiDest.x;
      r5.y = -(int)r6.x;
      r3.x = r3.x ? r5.y : r6.x;
      r1.xyzw = (int4)r1.xyzw ^ asint(cb0[0].xxxx);
      r5.y = -(int)r4.x;
      r1.xyzw = (int4)r1.xyzw & int4(0x80000000,0x80000000,0x80000000,0x80000000);
      r1.x = r1.x ? r5.y : r4.x;
      r6.x = (int)r3.x;
      r6.y = (int)r1.x;
      r5.yz = r6.xy / r2.xy;
      r5.yz = r5.yz + r2.zw;
      r6.xy = asuint(cb0[3].xy);
      r5.yz = r6.xy * r5.yz;
      r7.xy = (int2)r5.yz;
      r7.zw = float2(0,0);
      r1.x = t0.Load(r7.xyz).x;
      r0.x = (int)r1.x;
      uiDest.x = (uint)r4.y / (uint)r5.x;
      r3.x = (uint)r4.y % (uint)r5.x;
      r1.x = uiDest.x;
      r4.x = -(int)r3.x;
      r3.x = r3.y ? r4.x : r3.x;
      r3.y = -(int)r1.x;
      r1.x = r1.y ? r3.y : r1.x;
      r3.x = (int)r3.x;
      r3.y = (int)r1.x;
      r1.xy = r3.xy / r2.xy;
      r1.xy = r2.zw + r1.xy;
      r1.xy = r1.xy * r6.xy;
      r7.xy = (int2)r1.xy;
      r7.zw = float2(0,0);
      r1.x = t0.Load(r7.xyz).x;
      r0.y = (int)r1.x;
      uiDest.x = (uint)r4.z / (uint)r5.x;
      r3.x = (uint)r4.z % (uint)r5.x;
      r1.x = uiDest.x;
      r1.y = -(int)r3.x;
      r1.y = r3.z ? r1.y : r3.x;
      r3.x = -(int)r1.x;
      r1.x = r1.z ? r3.x : r1.x;
      r3.xy = (int2)r1.yx;
      r1.xy = r3.xy / r2.xy;
      r1.xy = r2.zw + r1.xy;
      r1.xy = r1.xy * r6.xy;
      r7.xy = (int2)r1.xy;
      r7.zw = float2(0,0);
      r1.x = t0.Load(r7.xyz).x;
      r0.z = (int)r1.x;
      uiDest.x = (uint)r4.w / (uint)r5.x;
      r3.x = (uint)r4.w % (uint)r5.x;
      r1.x = uiDest.x;
      r1.y = -(int)r3.x;
      r1.y = r3.w ? r1.y : r3.x;
      r1.z = -(int)r1.x;
      r1.x = r1.w ? r1.z : r1.x;
      r3.xy = (int2)r1.yx;
      r1.xy = r3.xy / r2.xy;
      r1.xy = r2.zw + r1.xy;
      r1.xy = r1.xy * r6.xy;
      r1.xy = (int2)r1.xy;
      r1.zw = float2(0,0);
      r1.x = t0.Load(r1.xyz).x;
      r0.w = (int)r1.x;
      break;
      default :
      r0.xyzw = float4(1,0,0,1);
      break;
    }
  } else {
    r1.xy = asuint(cb0[3].xy);
    r1.xy = v0.xy * r1.xy;
    r1.xy = (int2)r1.xy;
    r1.zw = float2(0,0);
    r1.xyzw = t0.Load(r1.xyz).xyzw;
    r0.xyzw = (int4)r1.xyzw;
  }
  r0.xyzw = r0.xyzw * cb0[4].xyzw + -cb0[5].xyzw;
  r1.x = asint(cb0[6].x) & 1;
  r1.y = (int)r0.x & 0x7f800000;
  r1.y = cmp((int)r1.y != 0x7f800000);
  if (1 == 0) r1.z = 0; else if (1+3 < 32) {   r1.z = (uint)cb0[6].y << (32-(1 + 3)); r1.z = (uint)r1.z >> (32-1);  } else r1.z = (uint)cb0[6].y >> 3;
  r2.xyzw = r1.zzzz ? float4(1,1,1,1) : float4(1,0,0,1);
  r2.xyzw = r1.yyyy ? r0.xyzw : r2.xyzw;
  o0.xyzw = r1.xxxx ? r2.xyzw : r0.xyzw;
  return;
}