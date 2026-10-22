// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = max(cb0[6].xy, v0.xy);
  r0.xy = min(cb0[6].zw, r0.xy);
  r1.xyzw = t0.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r2.xyz = t0.Gather(s0_s, r0.xy).xyz;
  r3.xyz = t0.Gather(s0_s, r0.xy, int2(-1, -1)).xzw;
  r0.z = max(r2.x, r1.w);
  r0.w = min(r2.x, r1.w);
  r0.z = max(r2.z, r0.z);
  r0.w = min(r2.z, r0.w);
  r2.w = max(r3.y, r3.x);
  r3.w = min(r3.y, r3.x);
  r0.z = max(r2.w, r0.z);
  r0.w = min(r3.w, r0.w);
  r2.w = cb0[10].y * r0.z;
  r0.z = r0.z + -r0.w;
  r0.w = max(cb0[10].z, r2.w);
  r0.w = cmp(r0.z >= r0.w);
  if (r0.w != 0) {
    r0.w = t0.SampleLevel(s0_s, r0.xy, 0, int2(1, -1)).w;
    r0.x = t0.SampleLevel(s0_s, r0.xy, 0, int2(-1, 1)).w;
    r4.xy = r3.yx + r2.xz;
    r0.y = 1 / r0.z;
    r0.z = r4.x + r4.y;
    r4.xy = r1.ww * float2(-2,-2) + r4.xy;
    r2.w = r0.w + r2.y;
    r0.w = r3.z + r0.w;
    r3.w = r2.z * -2 + r2.w;
    r0.w = r3.y * -2 + r0.w;
    r3.z = r3.z + r0.x;
    r0.x = r0.x + r2.y;
    r2.y = abs(r4.x) * 2 + abs(r3.w);
    r0.w = abs(r4.y) * 2 + abs(r0.w);
    r3.w = r3.x * -2 + r3.z;
    r0.x = r2.x * -2 + r0.x;
    r2.y = abs(r3.w) + r2.y;
    r0.x = abs(r0.x) + r0.w;
    r0.w = r3.z + r2.w;
    r0.x = cmp(r2.y >= r0.x);
    r0.z = r0.z * 2 + r0.w;
    r0.w = r0.x ? r3.y : r3.x;
    r2.x = r0.x ? r2.x : r2.z;
    r2.y = r0.x ? cb0[0].w : cb0[0].z;
    r0.z = r0.z * 0.0833333358 + -r1.w;
    r2.z = r0.w + -r1.w;
    r2.w = r2.x + -r1.w;
    r0.w = r0.w + r1.w;
    r2.x = r2.x + r1.w;
    r3.x = cmp(abs(r2.z) >= abs(r2.w));
    r2.z = max(abs(r2.z), abs(r2.w));
    r2.y = r3.x ? -r2.y : r2.y;
    r0.y = saturate(abs(r0.z) * r0.y);
    r0.z = r0.x ? cb0[0].z : 0;
    r2.w = r0.x ? 0 : cb0[0].w;
    r3.yz = r2.yy * float2(0.5,0.5) + v0.xy;
    r3.y = r0.x ? v0.x : r3.y;
    r3.z = r0.x ? r3.z : v0.y;
    r4.x = -r0.z * 1.5 + r3.y;
    r4.y = -r2.w * 1.5 + r3.z;
    r5.x = r0.z * 1.5 + r3.y;
    r5.y = r2.w * 1.5 + r3.z;
    r3.y = r0.y * -2 + 3;
    r3.zw = max(cb0[6].xy, r4.xy);
    r3.zw = min(cb0[6].zw, r3.zw);
    r3.z = t0.SampleLevel(s0_s, r3.zw, 0).w;
    r0.y = r0.y * r0.y;
    r4.zw = max(cb0[6].xy, r5.xy);
    r4.zw = min(cb0[6].zw, r4.zw);
    r3.w = t0.SampleLevel(s0_s, r4.zw, 0).w;
    r0.w = r3.x ? r0.w : r2.x;
    r2.x = 0.25 * r2.z;
    r1.w = -r0.w * 0.5 + r1.w;
    r0.y = r3.y * r0.y;
    r1.w = cmp(r1.w < 0);
    r3.x = -r0.w * 0.5 + r3.z;
    r3.y = -r0.w * 0.5 + r3.w;
    r3.zw = cmp(abs(r3.xy) >= r2.xx);
    r2.z = -r0.z * 2 + r4.x;
    r4.x = r3.z ? r4.x : r2.z;
    r2.z = -r2.w * 2 + r4.y;
    r4.z = r3.z ? r4.y : r2.z;
    r4.yw = ~(int2)r3.zw;
    r2.z = (int)r4.w | (int)r4.y;
    r4.y = r0.z * 2 + r5.x;
    r4.y = r3.w ? r5.x : r4.y;
    r5.x = r2.w * 2 + r5.y;
    r4.w = r3.w ? r5.y : r5.x;
    if (r2.z != 0) {
      if (r3.z == 0) {
        r5.xy = max(cb0[6].xy, r4.xz);
        r5.xy = min(cb0[6].zw, r5.xy);
        r3.x = t0.SampleLevel(s0_s, r5.xy, 0).w;
      }
      if (r3.w == 0) {
        r5.xy = max(cb0[6].xy, r4.yw);
        r5.xy = min(cb0[6].zw, r5.xy);
        r3.y = t0.SampleLevel(s0_s, r5.xy, 0).w;
      }
      r2.z = -r0.w * 0.5 + r3.x;
      r3.x = r3.z ? r3.x : r2.z;
      r0.w = -r0.w * 0.5 + r3.y;
      r3.y = r3.w ? r3.y : r0.w;
      r2.xz = cmp(abs(r3.xy) >= r2.xx);
      r0.w = -r0.z * 8 + r4.x;
      r4.x = r2.x ? r4.x : r0.w;
      r0.w = -r2.w * 8 + r4.z;
      r0.z = r0.z * 8 + r4.y;
      r4.yz = r2.zx ? r4.yz : r0.zw;
      r0.z = r2.w * 8 + r4.w;
      r4.w = r2.z ? r4.w : r0.z;
    }
    r0.z = v0.x + -r4.x;
    r0.w = -v0.x + r4.y;
    r2.x = v0.y + -r4.z;
    r0.z = r0.x ? r0.z : r2.x;
    r2.x = -v0.y + r4.w;
    r0.w = r0.x ? r0.w : r2.x;
    r2.xz = cmp(r3.xy < float2(0,0));
    r2.w = r0.w + r0.z;
    r2.xz = cmp((int2)r1.ww != (int2)r2.xz);
    r1.w = 1 / r2.w;
    r2.w = cmp(r0.z < r0.w);
    r0.z = min(r0.z, r0.w);
    r0.w = r2.w ? r2.x : r2.z;
    r0.y = r0.y * r0.y;
    r0.z = r0.z * -r1.w + 0.5;
    r0.y = cb0[10].x * r0.y;
    r0.z = (int)r0.z & (int)r0.w;
    r0.y = max(r0.z, r0.y);
    r0.yz = r0.yy * r2.yy + v0.xy;
    r2.x = r0.x ? v0.x : r0.y;
    r2.y = r0.x ? r0.z : v0.y;
    r0.xy = max(cb0[6].xy, r2.xy);
    r0.xy = min(cb0[6].zw, r0.xy);
    r1.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  }
  o0.xyz = r1.xyz;
  o0.w = 1;
  return;
}