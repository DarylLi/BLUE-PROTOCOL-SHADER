// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[28];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  linear noperspective float4 v1 : TEXCOORD1,
  linear noperspective float4 v2 : TEXCOORD2,
  linear noperspective float4 v3 : TEXCOORD3,
  linear noperspective float4 v4 : TEXCOORD4,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t0.Sample(s0_s, v4.xy).xy;
  r0.y = cmp(0 < r0.y);
  if (r0.y != 0) {
    r0.y = cmp(0 < r0.x);
    if (r0.y != 0) {
      r1.xy = float2(-1,1) * cb0[27].zw;
      r1.z = 1;
      r2.xy = v4.xy;
      r0.y = 0;
      r2.z = -1;
      r3.x = 1;
      while (true) {
        r0.w = cmp(r2.z < 7);
        r1.w = cmp(0.899999976 < r3.x);
        r0.w = r0.w ? r1.w : 0;
        if (r0.w == 0) break;
        r2.xyz = r2.xyz + r1.xyz;
        r0.yz = t0.SampleLevel(s0_s, r2.xy, 0).yx;
        r3.x = dot(r0.zy, float2(0.5,0.5));
      }
      r0.y = cmp(0.899999976 < r0.y);
      r0.y = r0.y ? 1.000000 : 0;
      r1.x = r2.z + r0.y;
    } else {
      r1.x = 0;
      r3.x = 0;
    }
    r0.yz = float2(1,-1) * cb0[27].zw;
    r0.w = 1;
    r2.yz = v4.xy;
    r2.xw = float2(-1,1);
    while (true) {
      r3.z = cmp(r2.x < 7);
      r3.w = cmp(0.899999976 < r2.w);
      r3.z = r3.w ? r3.z : 0;
      if (r3.z == 0) break;
      r2.xyz = r2.xyz + r0.wyz;
      r3.zw = t0.SampleLevel(s0_s, r2.yz, 0).xy;
      r2.w = dot(r3.zw, float2(0.5,0.5));
    }
    r3.y = r2.w;
    r0.y = r2.x + r1.x;
    r0.y = cmp(2 < r0.y);
    if (r0.y != 0) {
      r1.y = 0.25 + -r1.x;
      r1.zw = r2.xx * float2(1,-1) + float2(0,-0.25);
      r2.xyzw = r1.yxzw * cb0[27].zwzw + v4.xyxy;
      r0.yz = t0.SampleLevel(s0_s, r2.xy, 0, int2(-1, 0)).xy;
      r1.yw = t0.SampleLevel(s0_s, r2.zw, 0, int2(1, 0)).xy;
      r0.w = r1.y;
      r2.xy = r0.yw * float2(5,5) + float2(-3.75,-3.75);
      r0.yw = abs(r2.xy) * r0.yw;
      r0.yw = round(r0.yw);
      r2.y = round(r0.z);
      r2.w = round(r1.w);
      r0.yz = r2.yw * float2(2,2) + r0.yw;
      r1.yw = cmp(r3.xy >= float2(0.899999976,0.899999976));
      r0.yz = r1.yw ? float2(0,0) : r0.yz;
      r0.yz = r0.yz * float2(20,20) + r1.xz;
      r0.yz = r0.yz * float2(0.00625000009,0.0017857143) + float2(0.503125012,0.000892857148);
      r0.yz = t1.SampleLevel(s0_s, r0.yz, 0).xy;
    } else {
      r0.yz = float2(0,0);
    }
    r0.w = cb0[27].z * 0.25 + v4.x;
    r1.xy = -cb0[27].zw;
    r1.z = 1;
    r2.y = r0.w;
    r2.z = v4.y;
    r2.xw = float2(1,-1);
    while (true) {
      r1.w = cmp(r2.w < 7);
      r3.x = cmp(0.899999976 < r2.x);
      r1.w = r1.w ? r3.x : 0;
      if (r1.w == 0) break;
      r2.yzw = r2.yzw + r1.xyz;
      r3.xy = t0.SampleLevel(s0_s, r2.yz, 0).xy;
      r1.w = r3.x * 5 + -3.75;
      r1.w = r3.x * abs(r1.w);
      r4.x = round(r1.w);
      r4.y = round(r3.y);
      r2.x = dot(r4.xy, float2(0.5,0.5));
    }
    r1.x = r2.w;
    r1.w = t0.SampleLevel(s0_s, v4.xy, 0, int2(1, 0)).x;
    r1.w = cmp(0 < r1.w);
    if (r1.w != 0) {
      r3.xy = cb0[27].zw;
      r3.z = 1;
      r4.x = r0.w;
      r4.y = v4.y;
      r4.z = -1;
      r2.yz = float2(1,0);
      while (true) {
        r1.w = cmp(r4.z < 7);
        r3.w = cmp(0.899999976 < r2.y);
        r1.w = r1.w ? r3.w : 0;
        if (r1.w == 0) break;
        r4.xyz = r4.xyz + r3.xyz;
        r5.xy = t0.SampleLevel(s0_s, r4.xy, 0).xy;
        r1.w = r5.x * 5 + -3.75;
        r1.w = r5.x * abs(r1.w);
        r2.w = round(r1.w);
        r2.z = round(r5.y);
        r2.y = dot(r2.wz, float2(0.5,0.5));
      }
      r0.w = cmp(0.899999976 < r2.z);
      r0.w = r0.w ? 1.000000 : 0;
      r1.z = r4.z + r0.w;
    } else {
      r1.z = 0;
      r2.y = 0;
    }
    r0.w = r1.x + r1.z;
    r0.w = cmp(2 < r0.w);
    if (r0.w != 0) {
      r1.y = -r1.x;
      r3.xyzw = r1.yyzz * cb0[27].zwzw + v4.xyxy;
      r4.x = t0.SampleLevel(s0_s, r3.xy, 0, int2(-1, 0)).y;
      r4.z = t0.SampleLevel(s0_s, r3.xy, 0, int2(0, -1)).x;
      r4.yw = t0.SampleLevel(s0_s, r3.zw, 0, int2(1, 0)).yx;
      r1.yw = r4.xy * float2(2,2) + r4.zw;
      r2.xy = cmp(r2.xy >= float2(0.899999976,0.899999976));
      r1.yw = r2.xy ? float2(0,0) : r1.yw;
      r1.xy = r1.yw * float2(20,20) + r1.xz;
      r1.xy = r1.xy * float2(0.00625000009,0.0017857143) + float2(0.503125012,0.000892857148);
      r1.xy = t1.SampleLevel(s0_s, r1.xy, 0).xy;
      r0.yz = r1.yx + r0.yz;
    }
    r0.w = cmp(-r0.z == r0.y);
    if (r0.w != 0) {
      r1.xy = v1.xy;
      r1.z = 1;
      r2.x = 0;
      while (true) {
        r0.w = cmp(v3.x < r1.x);
        r1.w = cmp(0.828100026 < r1.z);
        r0.w = r0.w ? r1.w : 0;
        r1.w = cmp(r2.x == 0.000000);
        r0.w = r0.w ? r1.w : 0;
        if (r0.w == 0) break;
        r2.xy = t0.SampleLevel(s0_s, r1.xy, 0).xy;
        r1.xy = cb0[27].zw * float2(-2,-0) + r1.xy;
        r1.z = r2.y;
      }
      r2.yz = r1.xz;
      r1.xy = r2.xz * float2(0.5,-2) + float2(0.0078125,2.03125);
      r0.w = t2.SampleLevel(s0_s, r1.xy, 0).x;
      r0.w = r0.w * -2.00787401 + 3.25;
      r1.x = cb0[27].z * r0.w + r2.y;
      r1.y = v2.y;
      r2.x = t0.SampleLevel(s0_s, r1.xy, 0).x;
      r3.xy = v1.zw;
      r3.z = 1;
      r4.x = 0;
      while (true) {
        r0.w = cmp(r3.x < v3.y);
        r2.z = cmp(0.828100026 < r3.z);
        r0.w = r0.w ? r2.z : 0;
        r2.z = cmp(r4.x == 0.000000);
        r0.w = r0.w ? r2.z : 0;
        if (r0.w == 0) break;
        r4.xy = t0.SampleLevel(s0_s, r3.xy, 0).xy;
        r3.xy = cb0[27].zw * float2(2,0) + r3.xy;
        r3.z = r4.y;
      }
      r4.yz = r3.xz;
      r2.zw = r4.xz * float2(0.5,-2) + float2(0.5234375,2.03125);
      r0.w = t2.SampleLevel(s0_s, r2.zw, 0).x;
      r0.w = r0.w * -2.00787401 + 3.25;
      r1.z = -cb0[27].z * r0.w + r4.y;
      r3.xyzw = cb0[27].xxxx * r1.zxzx + -v0.xxxx;
      r3.xyzw = round(r3.xyzw);
      r2.zw = sqrt(abs(r3.wz));
      r2.y = t0.SampleLevel(s0_s, r1.zy, 0, int2(1, 0)).x;
      r2.xy = float2(4,4) * r2.xy;
      r2.xy = round(r2.xy);
      r2.xy = r2.xy * float2(16,16) + r2.zw;
      r2.xy = r2.xy * float2(0.00625000009,0.0017857143) + float2(0.00312500005,0.000892857148);
      r2.xy = t1.SampleLevel(s0_s, r2.xy, 0).xy;
      r3.xyzw = cmp(abs(r3.xyzw) >= abs(r3.wzwz));
      r3.xyzw = r3.xyzw ? float4(1,1,0.75,0.75) : 0;
      r0.w = r3.x + r3.y;
      r2.zw = r3.zw / r0.ww;
      r1.w = v4.y;
      r0.w = t0.SampleLevel(s0_s, r1.xw, 0, int2(0, 1)).x;
      r0.w = -r2.z * r0.w + 1;
      r1.y = t0.SampleLevel(s0_s, r1.zw, 0, int2(1, 1)).x;
      r3.x = saturate(-r2.w * r1.y + r0.w);
      r0.w = t0.SampleLevel(s0_s, r1.xw, 0, int2(0, -2)).x;
      r0.w = -r2.z * r0.w + 1;
      r1.x = t0.SampleLevel(s0_s, r1.zw, 0, int2(1, -2)).x;
      r3.y = saturate(-r2.w * r1.x + r0.w);
      o0.xy = r3.xy * r2.xy;
    } else {
      o0.xy = r0.yz;
      r0.x = 0;
    }
  } else {
    o0.xy = float2(0,0);
  }
  r0.x = cmp(0 < r0.x);
  if (r0.x != 0) {
    r0.xy = v2.xy;
    r0.z = 1;
    r1.x = 0;
    while (true) {
      r0.w = cmp(v3.z < r0.y);
      r1.w = cmp(0.828100026 < r0.z);
      r0.w = r0.w ? r1.w : 0;
      r1.w = cmp(r1.x == 0.000000);
      r0.w = r0.w ? r1.w : 0;
      if (r0.w == 0) break;
      r1.xy = t0.SampleLevel(s0_s, r0.xy, 0).yx;
      r0.xy = cb0[27].zw * float2(-0,-2) + r0.xy;
      r0.z = r1.y;
    }
    r1.yz = r0.yz;
    r0.xy = r1.xz * float2(0.5,-2) + float2(0.0078125,2.03125);
    r0.x = t2.SampleLevel(s0_s, r0.xy, 0).x;
    r0.x = r0.x * -2.00787401 + 3.25;
    r0.x = cb0[27].w * r0.x + r1.y;
    r0.y = v1.x;
    r1.x = t0.SampleLevel(s0_s, r0.yx, 0).y;
    r2.xy = v2.zw;
    r2.z = 1;
    r3.x = 0;
    while (true) {
      r1.z = cmp(r2.y < v3.w);
      r1.w = cmp(0.828100026 < r2.z);
      r1.z = r1.w ? r1.z : 0;
      r1.w = cmp(r3.x == 0.000000);
      r1.z = r1.w ? r1.z : 0;
      if (r1.z == 0) break;
      r3.xy = t0.SampleLevel(s0_s, r2.xy, 0).yx;
      r2.xy = cb0[27].zw * float2(0,2) + r2.xy;
      r2.z = r3.y;
    }
    r3.yz = r2.yz;
    r1.zw = r3.xz * float2(0.5,-2) + float2(0.5234375,2.03125);
    r1.z = t2.SampleLevel(s0_s, r1.zw, 0).x;
    r1.z = r1.z * -2.00787401 + 3.25;
    r0.z = -cb0[27].w * r1.z + r3.y;
    r2.xyzw = cb0[27].yyyy * r0.zxzx + -v0.yyyy;
    r2.xyzw = round(r2.xyzw);
    r1.zw = sqrt(abs(r2.wz));
    r1.y = t0.SampleLevel(s0_s, r0.yz, 0, int2(0, 1)).y;
    r1.xy = float2(4,4) * r1.xy;
    r1.xy = round(r1.xy);
    r1.xy = r1.xy * float2(16,16) + r1.zw;
    r1.xy = r1.xy * float2(0.00625000009,0.0017857143) + float2(0.00312500005,0.000892857148);
    r1.xy = t1.SampleLevel(s0_s, r1.xy, 0).xy;
    r2.xyzw = cmp(abs(r2.xyzw) >= abs(r2.wzwz));
    r2.xyzw = r2.xyzw ? float4(1,1,0.75,0.75) : 0;
    r0.y = r2.x + r2.y;
    r1.zw = r2.zw / r0.yy;
    r0.w = v4.x;
    r0.y = t0.SampleLevel(s0_s, r0.wx, 0, int2(1, 0)).y;
    r0.y = -r1.z * r0.y + 1;
    r2.x = t0.SampleLevel(s0_s, r0.wz, 0, int2(1, 1)).y;
    r2.z = saturate(-r1.w * r2.x + r0.y);
    r0.x = t0.SampleLevel(s0_s, r0.wx, 0, int2(-2, 0)).y;
    r0.x = -r1.z * r0.x + 1;
    r0.y = t0.SampleLevel(s0_s, r0.wz, 0, int2(-2, 1)).y;
    r2.w = saturate(-r1.w * r0.y + r0.x);
    o0.zw = r2.zw * r1.xy;
  } else {
    o0.zw = float2(0,0);
  }
  return;
}