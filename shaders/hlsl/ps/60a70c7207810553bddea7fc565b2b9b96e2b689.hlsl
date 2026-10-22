// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
cbuffer cb0 : register(b0)
{
  float4 cb0[11];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { -4.000000, -0.718548, -4.970622, 0.808913},
                              { -4.000000, 2.081031, -3.029378, 1.191087},
                              { -3.157377, 3.668124, -2.126200, 1.568300},
                              { -0.485250, 4.000000, -1.510500, 1.948300},
                              { 1.847732, 4.000000, -1.057800, 2.308300},
                              { 1.847732, 4.000000, -0.466800, 2.638400},
                              { -2.301030, 0.801995, 0.119380, 2.859500},
                              { -2.301030, 1.198005, 0.708813, 2.987261},
                              { -1.931200, 1.594300, 1.291187, 3.012739},
                              { -1.520500, 1.997300, 1.291187, 3.012739},
                              { -1.057800, 2.378300, 0, 0},
                              { -0.466800, 2.768400, 0, 0},
                              { 0.119380, 3.051500, 0, 0},
                              { 0.708813, 3.274629, 0, 0},
                              { 1.291187, 3.327431, 0, 0},
                              { 1.291187, 3.327431, 0, 0} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.015625,-0.015625) + v0.xy;
  r0.xy = float2(1.03225803,1.03225803) * r0.xy;
  r0.z = (uint)v2.x;
  r1.z = 0.0322580636 * r0.z;
  r2.xyzw = cmp(asint(cb0[10].zzzz) == int4(1,2,3,4));
  r3.xyz = r2.www ? float3(1,0,0) : float3(1.70505154,-0.621790707,-0.0832583979);
  r4.xyz = r2.www ? float3(0,1,0) : float3(-0.130257145,1.14080286,-0.0105485283);
  r5.xyz = r2.www ? float3(0,0,1) : float3(-0.0240032747,-0.128968775,1.15297174);
  r3.xyz = r2.zzz ? float3(0.695452213,0.140678704,0.163869068) : r3.xyz;
  r4.xyz = r2.zzz ? float3(0.0447945632,0.859671116,0.0955343172) : r4.xyz;
  r5.xyz = r2.zzz ? float3(-0.00552588282,0.00402521016,1.00150073) : r5.xyz;
  r3.xyz = r2.yyy ? float3(1.02579927,-0.0200525094,-0.00577136781) : r3.xyz;
  r4.xyz = r2.yyy ? float3(-0.00223502493,1.00458264,-0.00235231337) : r4.xyz;
  r2.yzw = r2.yyy ? float3(-0.00501400325,-0.0252933875,1.03044021) : r5.xyz;
  r3.xyz = r2.xxx ? float3(1.37915885,-0.308850735,-0.0703467429) : r3.xyz;
  r4.xyz = r2.xxx ? float3(-0.0693352968,1.08229232,-0.0129620517) : r4.xyz;
  r2.xyz = r2.xxx ? float3(-0.00215925858,-0.0454653986,1.04775953) : r2.yzw;
  r0.xy = log2(r0.xy);
  r0.z = log2(r1.z);
  r0.xyz = float3(0.0126833133,0.0126833133,0.0126833133) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r5.xyz = float3(-0.8359375,-0.8359375,-0.8359375) + r0.xyz;
  r5.xyz = max(float3(0,0,0), r5.xyz);
  r0.xyz = -r0.xyz * float3(18.6875,18.6875,18.6875) + float3(18.8515625,18.8515625,18.8515625);
  r0.xyz = r5.xyz / r0.xyz;
  r0.xyz = log2(r0.xyz);
  r0.xyz = float3(6.27739477,6.27739477,6.27739477) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r5.xy = cmp(asint(cb0[10].yy) == int2(3,5));
  r0.w = (int)r5.y | (int)r5.x;
  if (r0.w != 0) {
    r5.xyz = float3(15000,15000,15000) * r0.xyz;
    r6.y = dot(float3(0.439700812,0.382978052,0.1773348), r5.xyz);
    r6.z = dot(float3(0.0897923037,0.813423157,0.096761629), r5.xyz);
    r6.w = dot(float3(0.0175439864,0.111544058,0.870704114), r5.xyz);
    r0.w = min(r6.y, r6.z);
    r0.w = min(r0.w, r6.w);
    r1.w = max(r6.y, r6.z);
    r1.w = max(r1.w, r6.w);
    r5.xy = max(float2(1.00000001e-010,0.00999999978), r1.ww);
    r0.w = max(1.00000001e-010, r0.w);
    r0.w = r5.x + -r0.w;
    r0.w = r0.w / r5.y;
    r5.xyz = r6.wzy + -r6.zyw;
    r5.xy = r6.wz * r5.xy;
    r1.w = r5.x + r5.y;
    r1.w = r6.y * r5.z + r1.w;
    r1.w = sqrt(r1.w);
    r2.w = r6.w + r6.z;
    r2.w = r2.w + r6.y;
    r1.w = r1.w * 1.75 + r2.w;
    r2.w = 0.333333343 * r1.w;
    r3.w = -0.400000006 + r0.w;
    r4.w = 2.5 * r3.w;
    r4.w = 1 + -abs(r4.w);
    r4.w = max(0, r4.w);
    r5.x = cmp(0 < r3.w);
    r3.w = cmp(r3.w < 0);
    r3.w = (int)-r5.x + (int)r3.w;
    r3.w = (int)r3.w;
    r4.w = -r4.w * r4.w + 1;
    r3.w = r3.w * r4.w + 1;
    r3.w = 0.0250000004 * r3.w;
    r4.w = cmp(0.159999996 >= r1.w);
    r1.w = cmp(r1.w >= 0.479999989);
    r2.w = 0.0799999982 / r2.w;
    r2.w = -0.5 + r2.w;
    r2.w = r3.w * r2.w;
    r1.w = r1.w ? 0 : r2.w;
    r1.w = r4.w ? r3.w : r1.w;
    r1.w = 1 + r1.w;
    r5.yzw = r6.yzw * r1.www;
    r7.xy = cmp(r5.zw == r5.yz);
    r2.w = r7.y ? r7.x : 0;
    r3.w = r6.z * r1.w + -r5.w;
    r3.w = 1.73205078 * r3.w;
    r4.w = r5.y * 2 + -r5.z;
    r4.w = -r6.w * r1.w + r4.w;
    r6.x = min(abs(r4.w), abs(r3.w));
    r6.z = max(abs(r4.w), abs(r3.w));
    r6.z = 1 / r6.z;
    r6.x = r6.x * r6.z;
    r6.z = r6.x * r6.x;
    r6.w = r6.z * 0.0208350997 + -0.0851330012;
    r6.w = r6.z * r6.w + 0.180141002;
    r6.w = r6.z * r6.w + -0.330299497;
    r6.z = r6.z * r6.w + 0.999866009;
    r6.w = r6.x * r6.z;
    r7.x = cmp(abs(r4.w) < abs(r3.w));
    r6.w = r6.w * -2 + 1.57079637;
    r6.w = r7.x ? r6.w : 0;
    r6.x = r6.x * r6.z + r6.w;
    r6.z = cmp(r4.w < -r4.w);
    r6.z = r6.z ? -3.141593 : 0;
    r6.x = r6.x + r6.z;
    r6.z = min(r4.w, r3.w);
    r3.w = max(r4.w, r3.w);
    r4.w = cmp(r6.z < -r6.z);
    r3.w = cmp(r3.w >= -r3.w);
    r3.w = r3.w ? r4.w : 0;
    r3.w = r3.w ? -r6.x : r6.x;
    r3.w = 57.2957802 * r3.w;
    r2.w = r2.w ? 0 : r3.w;
    r3.w = cmp(r2.w < 0);
    r4.w = 360 + r2.w;
    r2.w = r3.w ? r4.w : r2.w;
    r2.w = max(0, r2.w);
    r2.w = min(360, r2.w);
    r3.w = cmp(180 < r2.w);
    r4.w = -360 + r2.w;
    r2.w = r3.w ? r4.w : r2.w;
    r3.w = cmp(-67.5 < r2.w);
    r4.w = cmp(r2.w < 67.5);
    r3.w = r3.w ? r4.w : 0;
    if (r3.w != 0) {
      r2.w = 67.5 + r2.w;
      r3.w = 0.0296296291 * r2.w;
      r4.w = (int)r3.w;
      r3.w = trunc(r3.w);
      r2.w = r2.w * 0.0296296291 + -r3.w;
      r3.w = r2.w * r2.w;
      r6.x = r3.w * r2.w;
      r7.xyz = float3(-0.166666672,-0.5,0.166666672) * r6.xxx;
      r6.zw = r3.ww * float2(0.5,0.5) + r7.xy;
      r6.zw = r2.ww * float2(-0.5,0.5) + r6.zw;
      r2.w = r6.x * 0.5 + -r3.w;
      r2.w = 0.666666687 + r2.w;
      r7.xyw = cmp((int3)r4.www == int3(3,2,1));
      r6.xz = float2(0.166666672,0.166666672) + r6.zw;
      r3.w = r4.w ? 0 : r7.z;
      r3.w = r7.w ? r6.z : r3.w;
      r2.w = r7.y ? r2.w : r3.w;
      r2.w = r7.x ? r6.x : r2.w;
    } else {
      r2.w = 0;
    }
    r0.w = r2.w * r0.w;
    r0.w = 1.5 * r0.w;
    r1.w = -r6.y * r1.w + 0.0299999993;
    r0.w = r1.w * r0.w;
    r5.x = r0.w * 0.180000007 + r5.y;
    r5.xyz = max(float3(0,0,0), r5.xzw);
    r5.xyz = min(float3(65535,65535,65535), r5.xyz);
    r6.x = dot(float3(1.45143926,-0.236510754,-0.214928567), r5.xyz);
    r6.y = dot(float3(-0.0765537769,1.17622972,-0.0996759236), r5.xyz);
    r6.z = dot(float3(0.00831614807,-0.00603244966,0.997716308), r5.xyz);
    r5.xyz = max(float3(0,0,0), r6.xyz);
    r5.xyz = min(float3(65535,65535,65535), r5.xyz);
    r0.w = dot(r5.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r5.xyz = r5.xyz + -r0.www;
    r5.xyz = r5.xyz * float3(0.959999979,0.959999979,0.959999979) + r0.www;
    r6.xyz = cmp(float3(0,0,0) >= r5.xyz);
    r5.xyz = log2(r5.xyz);
    r5.xyz = r6.xyz ? float3(-14,-14,-14) : r5.xyz;
    r6.xyz = cmp(float3(-17.4739323,-17.4739323,-17.4739323) >= r5.xyz);
    if (r6.x != 0) {
      r0.w = -4;
    } else {
      r1.w = cmp(-17.4739323 < r5.x);
      r2.w = cmp(r5.x < -2.47393107);
      r1.w = r1.w ? r2.w : 0;
      if (r1.w != 0) {
        r1.w = r5.x * 0.30103001 + 5.26017761;
        r2.w = 0.664385557 * r1.w;
        r3.w = (int)r2.w;
        r2.w = trunc(r2.w);
        r7.y = r1.w * 0.664385557 + -r2.w;
        r6.xw = (int2)r3.ww + int2(1,2);
        r7.x = r7.y * r7.y;
        r8.x = icb[r3.w+0].x;
        r8.y = icb[r6.x+0].x;
        r8.z = icb[r6.w+0].x;
        r9.x = dot(r8.xzy, float3(0.5,0.5,-1));
        r9.y = dot(r8.xy, float2(-1,1));
        r9.z = dot(r8.xy, float2(0.5,0.5));
        r7.z = 1;
        r0.w = dot(r7.xyz, r9.xyz);
      } else {
        r1.w = cmp(r5.x >= -2.47393107);
        r2.w = cmp(r5.x < 15.5260687);
        r1.w = r1.w ? r2.w : 0;
        if (r1.w != 0) {
          r1.w = r5.x * 0.30103001 + 0.744727492;
          r2.w = 0.553654671 * r1.w;
          r3.w = (int)r2.w;
          r2.w = trunc(r2.w);
          r7.y = r1.w * 0.553654671 + -r2.w;
          r5.xw = (int2)r3.ww + int2(1,2);
          r7.x = r7.y * r7.y;
          r8.x = icb[r3.w+0].y;
          r8.y = icb[r5.x+0].y;
          r8.z = icb[r5.w+0].y;
          r9.x = dot(r8.xzy, float3(0.5,0.5,-1));
          r9.y = dot(r8.xy, float2(-1,1));
          r9.z = dot(r8.xy, float2(0.5,0.5));
          r7.z = 1;
          r0.w = dot(r7.xyz, r9.xyz);
        } else {
          r0.w = 4;
        }
      }
    }
    r0.w = 3.32192802 * r0.w;
    r7.x = exp2(r0.w);
    if (r6.y != 0) {
      r0.w = -4;
    } else {
      r1.w = cmp(-17.4739323 < r5.y);
      r2.w = cmp(r5.y < -2.47393107);
      r1.w = r1.w ? r2.w : 0;
      if (r1.w != 0) {
        r1.w = r5.y * 0.30103001 + 5.26017761;
        r2.w = 0.664385557 * r1.w;
        r3.w = (int)r2.w;
        r2.w = trunc(r2.w);
        r8.y = r1.w * 0.664385557 + -r2.w;
        r5.xw = (int2)r3.ww + int2(1,2);
        r8.x = r8.y * r8.y;
        r9.x = icb[r3.w+0].x;
        r9.y = icb[r5.x+0].x;
        r9.z = icb[r5.w+0].x;
        r10.x = dot(r9.xzy, float3(0.5,0.5,-1));
        r10.y = dot(r9.xy, float2(-1,1));
        r10.z = dot(r9.xy, float2(0.5,0.5));
        r8.z = 1;
        r0.w = dot(r8.xyz, r10.xyz);
      } else {
        r1.w = cmp(r5.y >= -2.47393107);
        r2.w = cmp(r5.y < 15.5260687);
        r1.w = r1.w ? r2.w : 0;
        if (r1.w != 0) {
          r1.w = r5.y * 0.30103001 + 0.744727492;
          r2.w = 0.553654671 * r1.w;
          r3.w = (int)r2.w;
          r2.w = trunc(r2.w);
          r8.y = r1.w * 0.553654671 + -r2.w;
          r5.xy = (int2)r3.ww + int2(1,2);
          r8.x = r8.y * r8.y;
          r9.x = icb[r3.w+0].y;
          r9.y = icb[r5.x+0].y;
          r9.z = icb[r5.y+0].y;
          r10.x = dot(r9.xzy, float3(0.5,0.5,-1));
          r10.y = dot(r9.xy, float2(-1,1));
          r10.z = dot(r9.xy, float2(0.5,0.5));
          r8.z = 1;
          r0.w = dot(r8.xyz, r10.xyz);
        } else {
          r0.w = 4;
        }
      }
    }
    r0.w = 3.32192802 * r0.w;
    r7.y = exp2(r0.w);
    if (r6.z != 0) {
      r0.w = -4;
    } else {
      r1.w = cmp(-17.4739323 < r5.z);
      r2.w = cmp(r5.z < -2.47393107);
      r1.w = r1.w ? r2.w : 0;
      if (r1.w != 0) {
        r1.w = r5.z * 0.30103001 + 5.26017761;
        r2.w = 0.664385557 * r1.w;
        r3.w = (int)r2.w;
        r2.w = trunc(r2.w);
        r6.y = r1.w * 0.664385557 + -r2.w;
        r5.xy = (int2)r3.ww + int2(1,2);
        r6.x = r6.y * r6.y;
        r8.x = icb[r3.w+0].x;
        r8.y = icb[r5.x+0].x;
        r8.z = icb[r5.y+0].x;
        r9.x = dot(r8.xzy, float3(0.5,0.5,-1));
        r9.y = dot(r8.xy, float2(-1,1));
        r9.z = dot(r8.xy, float2(0.5,0.5));
        r6.z = 1;
        r0.w = dot(r6.xyz, r9.xyz);
      } else {
        r1.w = cmp(r5.z >= -2.47393107);
        r2.w = cmp(r5.z < 15.5260687);
        r1.w = r1.w ? r2.w : 0;
        if (r1.w != 0) {
          r1.w = r5.z * 0.30103001 + 0.744727492;
          r2.w = 0.553654671 * r1.w;
          r3.w = (int)r2.w;
          r2.w = trunc(r2.w);
          r5.y = r1.w * 0.553654671 + -r2.w;
          r6.xy = (int2)r3.ww + int2(1,2);
          r5.x = r5.y * r5.y;
          r8.x = icb[r3.w+0].y;
          r8.y = icb[r6.x+0].y;
          r8.z = icb[r6.y+0].y;
          r6.x = dot(r8.xzy, float3(0.5,0.5,-1));
          r6.y = dot(r8.xy, float2(-1,1));
          r6.z = dot(r8.xy, float2(0.5,0.5));
          r5.z = 1;
          r0.w = dot(r5.xyz, r6.xyz);
        } else {
          r0.w = 4;
        }
      }
    }
    r0.w = 3.32192802 * r0.w;
    r7.z = exp2(r0.w);
    r5.x = dot(float3(0.695452213,0.140678704,0.163869068), r7.xyz);
    r5.y = dot(float3(0.0447945632,0.859671116,0.0955343172), r7.xyz);
    r5.z = dot(float3(-0.00552588282,0.00402521016,1.00150073), r7.xyz);
    r0.w = dot(float3(1.45143926,-0.236510754,-0.214928567), r5.xyz);
    r1.w = dot(float3(-0.0765537769,1.17622972,-0.0996759236), r5.xyz);
    r2.w = dot(float3(0.00831614807,-0.00603244966,0.997716308), r5.xyz);
    r3.w = cmp(0 >= r0.w);
    r0.w = log2(r0.w);
    r0.w = r3.w ? -13.2877121 : r0.w;
    r3.w = cmp(-12.7838678 >= r0.w);
    if (r3.w != 0) {
      r3.w = r0.w * 0.90309 + 7.54498291;
    } else {
      r4.w = cmp(-12.7838678 < r0.w);
      r5.x = cmp(r0.w < 2.26303458);
      r4.w = r4.w ? r5.x : 0;
      if (r4.w != 0) {
        r4.w = r0.w * 0.30103001 + 3.84832764;
        r5.x = 1.54540098 * r4.w;
        r5.y = (int)r5.x;
        r5.x = trunc(r5.x);
        r6.y = r4.w * 1.54540098 + -r5.x;
        r5.xz = (int2)r5.yy + int2(1,2);
        r6.x = r6.y * r6.y;
        r7.x = icb[r5.y+0].z;
        r7.y = icb[r5.x+0].z;
        r7.z = icb[r5.z+0].z;
        r5.x = dot(r7.xzy, float3(0.5,0.5,-1));
        r5.y = dot(r7.xy, float2(-1,1));
        r5.z = dot(r7.xy, float2(0.5,0.5));
        r6.z = 1;
        r3.w = dot(r6.xyz, r5.xyz);
      } else {
        r4.w = cmp(r0.w >= 2.26303458);
        r5.x = cmp(r0.w < 12.1373367);
        r4.w = r4.w ? r5.x : 0;
        if (r4.w != 0) {
          r4.w = r0.w * 0.30103001 + -0.681241274;
          r5.x = 2.3549509 * r4.w;
          r5.y = (int)r5.x;
          r5.x = trunc(r5.x);
          r6.y = r4.w * 2.3549509 + -r5.x;
          r5.xz = (int2)r5.yy + int2(1,2);
          r6.x = r6.y * r6.y;
          r7.x = icb[r5.y+0].w;
          r7.y = icb[r5.x+0].w;
          r7.z = icb[r5.z+0].w;
          r5.x = dot(r7.xzy, float3(0.5,0.5,-1));
          r5.y = dot(r7.xy, float2(-1,1));
          r5.z = dot(r7.xy, float2(0.5,0.5));
          r6.z = 1;
          r3.w = dot(r6.xyz, r5.xyz);
        } else {
          r3.w = r0.w * 0.0180617999 + 2.78077793;
        }
      }
    }
    r0.w = 3.32192802 * r3.w;
    r5.x = exp2(r0.w);
    r0.w = cmp(0 >= r1.w);
    r1.w = log2(r1.w);
    r0.w = r0.w ? -13.2877121 : r1.w;
    r1.w = cmp(-12.7838678 >= r0.w);
    if (r1.w != 0) {
      r1.w = r0.w * 0.90309 + 7.54498291;
    } else {
      r3.w = cmp(-12.7838678 < r0.w);
      r4.w = cmp(r0.w < 2.26303458);
      r3.w = r3.w ? r4.w : 0;
      if (r3.w != 0) {
        r3.w = r0.w * 0.30103001 + 3.84832764;
        r4.w = 1.54540098 * r3.w;
        r5.w = (int)r4.w;
        r4.w = trunc(r4.w);
        r6.y = r3.w * 1.54540098 + -r4.w;
        r7.xy = (int2)r5.ww + int2(1,2);
        r6.x = r6.y * r6.y;
        r8.x = icb[r5.w+0].z;
        r8.y = icb[r7.x+0].z;
        r8.z = icb[r7.y+0].z;
        r7.x = dot(r8.xzy, float3(0.5,0.5,-1));
        r7.y = dot(r8.xy, float2(-1,1));
        r7.z = dot(r8.xy, float2(0.5,0.5));
        r6.z = 1;
        r1.w = dot(r6.xyz, r7.xyz);
      } else {
        r3.w = cmp(r0.w >= 2.26303458);
        r4.w = cmp(r0.w < 12.1373367);
        r3.w = r3.w ? r4.w : 0;
        if (r3.w != 0) {
          r3.w = r0.w * 0.30103001 + -0.681241274;
          r4.w = 2.3549509 * r3.w;
          r5.w = (int)r4.w;
          r4.w = trunc(r4.w);
          r6.y = r3.w * 2.3549509 + -r4.w;
          r7.xy = (int2)r5.ww + int2(1,2);
          r6.x = r6.y * r6.y;
          r8.x = icb[r5.w+0].w;
          r8.y = icb[r7.x+0].w;
          r8.z = icb[r7.y+0].w;
          r7.x = dot(r8.xzy, float3(0.5,0.5,-1));
          r7.y = dot(r8.xy, float2(-1,1));
          r7.z = dot(r8.xy, float2(0.5,0.5));
          r6.z = 1;
          r1.w = dot(r6.xyz, r7.xyz);
        } else {
          r1.w = r0.w * 0.0180617999 + 2.78077793;
        }
      }
    }
    r0.w = 3.32192802 * r1.w;
    r5.y = exp2(r0.w);
    r0.w = cmp(0 >= r2.w);
    r1.w = log2(r2.w);
    r0.w = r0.w ? -13.2877121 : r1.w;
    r1.w = cmp(-12.7838678 >= r0.w);
    if (r1.w != 0) {
      r1.w = r0.w * 0.90309 + 7.54498291;
    } else {
      r2.w = cmp(-12.7838678 < r0.w);
      r3.w = cmp(r0.w < 2.26303458);
      r2.w = r2.w ? r3.w : 0;
      if (r2.w != 0) {
        r2.w = r0.w * 0.30103001 + 3.84832764;
        r3.w = 1.54540098 * r2.w;
        r4.w = (int)r3.w;
        r3.w = trunc(r3.w);
        r6.y = r2.w * 1.54540098 + -r3.w;
        r7.xy = (int2)r4.ww + int2(1,2);
        r6.x = r6.y * r6.y;
        r8.x = icb[r4.w+0].z;
        r8.y = icb[r7.x+0].z;
        r8.z = icb[r7.y+0].z;
        r7.x = dot(r8.xzy, float3(0.5,0.5,-1));
        r7.y = dot(r8.xy, float2(-1,1));
        r7.z = dot(r8.xy, float2(0.5,0.5));
        r6.z = 1;
        r1.w = dot(r6.xyz, r7.xyz);
      } else {
        r2.w = cmp(r0.w >= 2.26303458);
        r3.w = cmp(r0.w < 12.1373367);
        r2.w = r2.w ? r3.w : 0;
        if (r2.w != 0) {
          r2.w = r0.w * 0.30103001 + -0.681241274;
          r3.w = 2.3549509 * r2.w;
          r4.w = (int)r3.w;
          r3.w = trunc(r3.w);
          r6.y = r2.w * 2.3549509 + -r3.w;
          r7.xy = (int2)r4.ww + int2(1,2);
          r6.x = r6.y * r6.y;
          r8.x = icb[r4.w+0].w;
          r8.y = icb[r7.x+0].w;
          r8.z = icb[r7.y+0].w;
          r7.x = dot(r8.xzy, float3(0.5,0.5,-1));
          r7.y = dot(r8.xy, float2(-1,1));
          r7.z = dot(r8.xy, float2(0.5,0.5));
          r6.z = 1;
          r1.w = dot(r6.xyz, r7.xyz);
        } else {
          r1.w = r0.w * 0.0180617999 + 2.78077793;
        }
      }
    }
    r0.w = 3.32192802 * r1.w;
    r5.z = exp2(r0.w);
    r5.xyz = float3(-3.50738446e-005,-3.50738446e-005,-3.50738446e-005) + r5.xyz;
    r6.x = dot(r3.xyz, r5.xyz);
    r6.y = dot(r4.xyz, r5.xyz);
    r6.z = dot(r2.xyz, r5.xyz);
    r5.xyz = float3(9.99999975e-005,9.99999975e-005,9.99999975e-005) * r6.xyz;
    r5.xyz = log2(r5.xyz);
    r5.xyz = float3(0.159301758,0.159301758,0.159301758) * r5.xyz;
    r5.xyz = exp2(r5.xyz);
    r6.xyz = r5.xyz * float3(18.8515625,18.8515625,18.8515625) + float3(0.8359375,0.8359375,0.8359375);
    r5.xyz = r5.xyz * float3(18.6875,18.6875,18.6875) + float3(1,1,1);
    r5.xyz = rcp(r5.xyz);
    r5.xyz = r6.xyz * r5.xyz;
    r5.xyz = log2(r5.xyz);
    r5.xyz = float3(78.84375,78.84375,78.84375) * r5.xyz;
    r1.xyz = exp2(r5.xyz);
  } else {
    r5.xy = cmp(asint(cb0[10].yy) == int2(4,6));
    r0.w = (int)r5.y | (int)r5.x;
    if (r0.w != 0) {
      r0.xyz = float3(15000,15000,15000) * r0.xyz;
      r5.y = dot(float3(0.439700812,0.382978052,0.1773348), r0.xyz);
      r5.z = dot(float3(0.0897923037,0.813423157,0.096761629), r0.xyz);
      r5.w = dot(float3(0.0175439864,0.111544058,0.870704114), r0.xyz);
      r0.x = min(r5.y, r5.z);
      r0.x = min(r0.x, r5.w);
      r0.y = max(r5.y, r5.z);
      r0.y = max(r0.y, r5.w);
      r0.xyz = max(float3(1.00000001e-010,1.00000001e-010,0.00999999978), r0.xyy);
      r0.x = r0.y + -r0.x;
      r0.x = r0.x / r0.z;
      r0.yzw = r5.wzy + -r5.zyw;
      r0.yz = r5.wz * r0.yz;
      r0.y = r0.y + r0.z;
      r0.y = r5.y * r0.w + r0.y;
      r0.y = sqrt(r0.y);
      r0.z = r5.w + r5.z;
      r0.z = r0.z + r5.y;
      r0.y = r0.y * 1.75 + r0.z;
      r0.w = -0.400000006 + r0.x;
      r1.w = 2.5 * r0.w;
      r1.w = 1 + -abs(r1.w);
      r1.w = max(0, r1.w);
      r2.w = cmp(0 < r0.w);
      r0.w = cmp(r0.w < 0);
      r0.w = (int)-r2.w + (int)r0.w;
      r0.w = (int)r0.w;
      r1.w = -r1.w * r1.w + 1;
      r0.w = r0.w * r1.w + 1;
      r0.zw = float2(0.333333343,0.0250000004) * r0.yw;
      r1.w = cmp(0.159999996 >= r0.y);
      r0.y = cmp(r0.y >= 0.479999989);
      r0.z = 0.0799999982 / r0.z;
      r0.z = -0.5 + r0.z;
      r0.z = r0.w * r0.z;
      r0.y = r0.y ? 0 : r0.z;
      r0.y = r1.w ? r0.w : r0.y;
      r0.y = 1 + r0.y;
      r6.yzw = r5.yzw * r0.yyy;
      r0.zw = cmp(r6.zw == r6.yz);
      r0.z = r0.w ? r0.z : 0;
      r0.w = r5.z * r0.y + -r6.w;
      r0.w = 1.73205078 * r0.w;
      r1.w = r6.y * 2 + -r6.z;
      r1.w = -r5.w * r0.y + r1.w;
      r2.w = min(abs(r1.w), abs(r0.w));
      r3.w = max(abs(r1.w), abs(r0.w));
      r3.w = 1 / r3.w;
      r2.w = r3.w * r2.w;
      r3.w = r2.w * r2.w;
      r4.w = r3.w * 0.0208350997 + -0.0851330012;
      r4.w = r3.w * r4.w + 0.180141002;
      r4.w = r3.w * r4.w + -0.330299497;
      r3.w = r3.w * r4.w + 0.999866009;
      r4.w = r3.w * r2.w;
      r5.x = cmp(abs(r1.w) < abs(r0.w));
      r4.w = r4.w * -2 + 1.57079637;
      r4.w = r5.x ? r4.w : 0;
      r2.w = r2.w * r3.w + r4.w;
      r3.w = cmp(r1.w < -r1.w);
      r3.w = r3.w ? -3.141593 : 0;
      r2.w = r3.w + r2.w;
      r3.w = min(r1.w, r0.w);
      r0.w = max(r1.w, r0.w);
      r1.w = cmp(r3.w < -r3.w);
      r0.w = cmp(r0.w >= -r0.w);
      r0.w = r0.w ? r1.w : 0;
      r0.w = r0.w ? -r2.w : r2.w;
      r0.w = 57.2957802 * r0.w;
      r0.z = r0.z ? 0 : r0.w;
      r0.w = cmp(r0.z < 0);
      r1.w = 360 + r0.z;
      r0.z = r0.w ? r1.w : r0.z;
      r0.z = max(0, r0.z);
      r0.z = min(360, r0.z);
      r0.w = cmp(180 < r0.z);
      r1.w = -360 + r0.z;
      r0.z = r0.w ? r1.w : r0.z;
      r0.w = cmp(-67.5 < r0.z);
      r1.w = cmp(r0.z < 67.5);
      r0.w = r0.w ? r1.w : 0;
      if (r0.w != 0) {
        r0.z = 67.5 + r0.z;
        r0.w = 0.0296296291 * r0.z;
        r1.w = (int)r0.w;
        r0.w = trunc(r0.w);
        r0.z = r0.z * 0.0296296291 + -r0.w;
        r0.w = r0.z * r0.z;
        r2.w = r0.w * r0.z;
        r5.xzw = float3(-0.166666672,-0.5,0.166666672) * r2.www;
        r5.xz = r0.ww * float2(0.5,0.5) + r5.xz;
        r5.xz = r0.zz * float2(-0.5,0.5) + r5.xz;
        r0.z = r2.w * 0.5 + -r0.w;
        r0.z = 0.666666687 + r0.z;
        r7.xyz = cmp((int3)r1.www == int3(3,2,1));
        r5.xz = float2(0.166666672,0.166666672) + r5.xz;
        r0.w = r1.w ? 0 : r5.w;
        r0.w = r7.z ? r5.z : r0.w;
        r0.z = r7.y ? r0.z : r0.w;
        r0.z = r7.x ? r5.x : r0.z;
      } else {
        r0.z = 0;
      }
      r0.x = r0.z * r0.x;
      r0.x = 1.5 * r0.x;
      r0.y = -r5.y * r0.y + 0.0299999993;
      r0.x = r0.x * r0.y;
      r6.x = r0.x * 0.180000007 + r6.y;
      r0.xyz = max(float3(0,0,0), r6.xzw);
      r0.xyz = min(float3(65535,65535,65535), r0.xyz);
      r5.x = dot(float3(1.45143926,-0.236510754,-0.214928567), r0.xyz);
      r5.y = dot(float3(-0.0765537769,1.17622972,-0.0996759236), r0.xyz);
      r5.z = dot(float3(0.00831614807,-0.00603244966,0.997716308), r0.xyz);
      r0.xyz = max(float3(0,0,0), r5.xyz);
      r0.xyz = min(float3(65535,65535,65535), r0.xyz);
      r0.w = dot(r0.xyz, float3(0.272228718,0.674081743,0.0536895171));
      r0.xyz = r0.xyz + -r0.www;
      r0.xyz = r0.xyz * float3(0.959999979,0.959999979,0.959999979) + r0.www;
      r5.xyz = cmp(float3(0,0,0) >= r0.xyz);
      r0.xyz = log2(r0.xyz);
      r0.xyz = r5.xyz ? float3(-14,-14,-14) : r0.xyz;
      r5.xyz = cmp(float3(-17.4739323,-17.4739323,-17.4739323) >= r0.xyz);
      if (r5.x != 0) {
        r0.w = -4;
      } else {
        r1.w = cmp(-17.4739323 < r0.x);
        r2.w = cmp(r0.x < -2.47393107);
        r1.w = r1.w ? r2.w : 0;
        if (r1.w != 0) {
          r1.w = r0.x * 0.30103001 + 5.26017761;
          r2.w = 0.664385557 * r1.w;
          r3.w = (int)r2.w;
          r2.w = trunc(r2.w);
          r6.y = r1.w * 0.664385557 + -r2.w;
          r5.xw = (int2)r3.ww + int2(1,2);
          r6.x = r6.y * r6.y;
          r7.x = icb[r3.w+0].x;
          r7.y = icb[r5.x+0].x;
          r7.z = icb[r5.w+0].x;
          r8.x = dot(r7.xzy, float3(0.5,0.5,-1));
          r8.y = dot(r7.xy, float2(-1,1));
          r8.z = dot(r7.xy, float2(0.5,0.5));
          r6.z = 1;
          r0.w = dot(r6.xyz, r8.xyz);
        } else {
          r1.w = cmp(r0.x >= -2.47393107);
          r2.w = cmp(r0.x < 15.5260687);
          r1.w = r1.w ? r2.w : 0;
          if (r1.w != 0) {
            r0.x = r0.x * 0.30103001 + 0.744727492;
            r1.w = 0.553654671 * r0.x;
            r2.w = (int)r1.w;
            r1.w = trunc(r1.w);
            r6.y = r0.x * 0.553654671 + -r1.w;
            r5.xw = (int2)r2.ww + int2(1,2);
            r6.x = r6.y * r6.y;
            r7.x = icb[r2.w+0].y;
            r7.y = icb[r5.x+0].y;
            r7.z = icb[r5.w+0].y;
            r8.x = dot(r7.xzy, float3(0.5,0.5,-1));
            r8.y = dot(r7.xy, float2(-1,1));
            r8.z = dot(r7.xy, float2(0.5,0.5));
            r6.z = 1;
            r0.w = dot(r6.xyz, r8.xyz);
          } else {
            r0.w = 4;
          }
        }
      }
      r0.x = 3.32192802 * r0.w;
      r6.x = exp2(r0.x);
      if (r5.y != 0) {
        r0.x = -4;
      } else {
        r0.w = cmp(-17.4739323 < r0.y);
        r1.w = cmp(r0.y < -2.47393107);
        r0.w = r0.w ? r1.w : 0;
        if (r0.w != 0) {
          r0.w = r0.y * 0.30103001 + 5.26017761;
          r1.w = 0.664385557 * r0.w;
          r2.w = (int)r1.w;
          r1.w = trunc(r1.w);
          r7.y = r0.w * 0.664385557 + -r1.w;
          r5.xy = (int2)r2.ww + int2(1,2);
          r7.x = r7.y * r7.y;
          r8.x = icb[r2.w+0].x;
          r8.y = icb[r5.x+0].x;
          r8.z = icb[r5.y+0].x;
          r9.x = dot(r8.xzy, float3(0.5,0.5,-1));
          r9.y = dot(r8.xy, float2(-1,1));
          r9.z = dot(r8.xy, float2(0.5,0.5));
          r7.z = 1;
          r0.x = dot(r7.xyz, r9.xyz);
        } else {
          r0.w = cmp(r0.y >= -2.47393107);
          r1.w = cmp(r0.y < 15.5260687);
          r0.w = r0.w ? r1.w : 0;
          if (r0.w != 0) {
            r0.y = r0.y * 0.30103001 + 0.744727492;
            r0.w = 0.553654671 * r0.y;
            r1.w = (int)r0.w;
            r0.w = trunc(r0.w);
            r7.y = r0.y * 0.553654671 + -r0.w;
            r0.yw = (int2)r1.ww + int2(1,2);
            r7.x = r7.y * r7.y;
            r8.x = icb[r1.w+0].y;
            r8.y = icb[r0.y+0].y;
            r8.z = icb[r0.w+0].y;
            r9.x = dot(r8.xzy, float3(0.5,0.5,-1));
            r9.y = dot(r8.xy, float2(-1,1));
            r9.z = dot(r8.xy, float2(0.5,0.5));
            r7.z = 1;
            r0.x = dot(r7.xyz, r9.xyz);
          } else {
            r0.x = 4;
          }
        }
      }
      r0.x = 3.32192802 * r0.x;
      r6.y = exp2(r0.x);
      if (r5.z != 0) {
        r0.x = -4;
      } else {
        r0.y = cmp(-17.4739323 < r0.z);
        r0.w = cmp(r0.z < -2.47393107);
        r0.y = r0.w ? r0.y : 0;
        if (r0.y != 0) {
          r0.y = r0.z * 0.30103001 + 5.26017761;
          r0.w = 0.664385557 * r0.y;
          r1.w = (int)r0.w;
          r0.w = trunc(r0.w);
          r5.y = r0.y * 0.664385557 + -r0.w;
          r0.yw = (int2)r1.ww + int2(1,2);
          r5.x = r5.y * r5.y;
          r7.x = icb[r1.w+0].x;
          r7.y = icb[r0.y+0].x;
          r7.z = icb[r0.w+0].x;
          r8.x = dot(r7.xzy, float3(0.5,0.5,-1));
          r8.y = dot(r7.xy, float2(-1,1));
          r8.z = dot(r7.xy, float2(0.5,0.5));
          r5.z = 1;
          r0.x = dot(r5.xyz, r8.xyz);
        } else {
          r0.y = cmp(r0.z >= -2.47393107);
          r0.w = cmp(r0.z < 15.5260687);
          r0.y = r0.w ? r0.y : 0;
          if (r0.y != 0) {
            r0.y = r0.z * 0.30103001 + 0.744727492;
            r0.z = 0.553654671 * r0.y;
            r0.w = (int)r0.z;
            r0.z = trunc(r0.z);
            r5.y = r0.y * 0.553654671 + -r0.z;
            r0.yz = (int2)r0.ww + int2(1,2);
            r5.x = r5.y * r5.y;
            r7.x = icb[r0.w+0].y;
            r7.y = icb[r0.y+0].y;
            r7.z = icb[r0.z+0].y;
            r8.x = dot(r7.xzy, float3(0.5,0.5,-1));
            r8.y = dot(r7.xy, float2(-1,1));
            r8.z = dot(r7.xy, float2(0.5,0.5));
            r5.z = 1;
            r0.x = dot(r5.xyz, r8.xyz);
          } else {
            r0.x = 4;
          }
        }
      }
      r0.x = 3.32192802 * r0.x;
      r6.z = exp2(r0.x);
      r0.x = dot(float3(0.695452213,0.140678704,0.163869068), r6.xyz);
      r0.y = dot(float3(0.0447945632,0.859671116,0.0955343172), r6.xyz);
      r0.z = dot(float3(-0.00552588282,0.00402521016,1.00150073), r6.xyz);
      r0.w = dot(float3(1.45143926,-0.236510754,-0.214928567), r0.xyz);
      r1.w = dot(float3(-0.0765537769,1.17622972,-0.0996759236), r0.xyz);
      r0.x = dot(float3(0.00831614807,-0.00603244966,0.997716308), r0.xyz);
      r0.y = cmp(0 >= r0.w);
      r0.z = log2(r0.w);
      r0.y = r0.y ? -13.2877121 : r0.z;
      r0.z = cmp(-12.7838678 >= r0.y);
      if (r0.z != 0) {
        r0.z = -2.30102992;
      } else {
        r0.w = cmp(-12.7838678 < r0.y);
        r2.w = cmp(r0.y < 2.26303458);
        r0.w = r0.w ? r2.w : 0;
        if (r0.w != 0) {
          r0.w = r0.y * 0.30103001 + 3.84832764;
          r2.w = 1.54540098 * r0.w;
          r3.w = (int)r2.w;
          r2.w = trunc(r2.w);
          r5.y = r0.w * 1.54540098 + -r2.w;
          r6.xy = (int2)r3.ww + int2(1,2);
          r5.x = r5.y * r5.y;
          r7.x = icb[r3.w+6].x;
          r7.y = icb[r6.x+6].x;
          r7.z = icb[r6.y+6].x;
          r6.x = dot(r7.xzy, float3(0.5,0.5,-1));
          r6.y = dot(r7.xy, float2(-1,1));
          r6.z = dot(r7.xy, float2(0.5,0.5));
          r5.z = 1;
          r0.z = dot(r5.xyz, r6.xyz);
        } else {
          r0.w = cmp(r0.y >= 2.26303458);
          r2.w = cmp(r0.y < 12.4948215);
          r0.w = r0.w ? r2.w : 0;
          if (r0.w != 0) {
            r0.w = r0.y * 0.30103001 + -0.681241274;
            r2.w = 2.27267218 * r0.w;
            r3.w = (int)r2.w;
            r2.w = trunc(r2.w);
            r5.y = r0.w * 2.27267218 + -r2.w;
            r6.xy = (int2)r3.ww + int2(1,2);
            r5.x = r5.y * r5.y;
            r7.x = icb[r3.w+6].y;
            r7.y = icb[r6.x+6].y;
            r7.z = icb[r6.y+6].y;
            r6.x = dot(r7.xzy, float3(0.5,0.5,-1));
            r6.y = dot(r7.xy, float2(-1,1));
            r6.z = dot(r7.xy, float2(0.5,0.5));
            r5.z = 1;
            r0.z = dot(r5.xyz, r6.xyz);
          } else {
            r0.z = r0.y * 0.0361235999 + 2.84967208;
          }
        }
      }
      r0.y = 3.32192802 * r0.z;
      r5.x = exp2(r0.y);
      r0.y = cmp(0 >= r1.w);
      r0.z = log2(r1.w);
      r0.y = r0.y ? -13.2877121 : r0.z;
      r0.z = cmp(-12.7838678 >= r0.y);
      if (r0.z != 0) {
        r0.z = -2.30102992;
      } else {
        r0.w = cmp(-12.7838678 < r0.y);
        r1.w = cmp(r0.y < 2.26303458);
        r0.w = r0.w ? r1.w : 0;
        if (r0.w != 0) {
          r0.w = r0.y * 0.30103001 + 3.84832764;
          r1.w = 1.54540098 * r0.w;
          r2.w = (int)r1.w;
          r1.w = trunc(r1.w);
          r6.y = r0.w * 1.54540098 + -r1.w;
          r7.xy = (int2)r2.ww + int2(1,2);
          r6.x = r6.y * r6.y;
          r8.x = icb[r2.w+6].x;
          r8.y = icb[r7.x+6].x;
          r8.z = icb[r7.y+6].x;
          r7.x = dot(r8.xzy, float3(0.5,0.5,-1));
          r7.y = dot(r8.xy, float2(-1,1));
          r7.z = dot(r8.xy, float2(0.5,0.5));
          r6.z = 1;
          r0.z = dot(r6.xyz, r7.xyz);
        } else {
          r0.w = cmp(r0.y >= 2.26303458);
          r1.w = cmp(r0.y < 12.4948215);
          r0.w = r0.w ? r1.w : 0;
          if (r0.w != 0) {
            r0.w = r0.y * 0.30103001 + -0.681241274;
            r1.w = 2.27267218 * r0.w;
            r2.w = (int)r1.w;
            r1.w = trunc(r1.w);
            r6.y = r0.w * 2.27267218 + -r1.w;
            r7.xy = (int2)r2.ww + int2(1,2);
            r6.x = r6.y * r6.y;
            r8.x = icb[r2.w+6].y;
            r8.y = icb[r7.x+6].y;
            r8.z = icb[r7.y+6].y;
            r7.x = dot(r8.xzy, float3(0.5,0.5,-1));
            r7.y = dot(r8.xy, float2(-1,1));
            r7.z = dot(r8.xy, float2(0.5,0.5));
            r6.z = 1;
            r0.z = dot(r6.xyz, r7.xyz);
          } else {
            r0.z = r0.y * 0.0361235999 + 2.84967208;
          }
        }
      }
      r0.y = 3.32192802 * r0.z;
      r5.y = exp2(r0.y);
      r0.y = cmp(0 >= r0.x);
      r0.x = log2(r0.x);
      r0.x = r0.y ? -13.2877121 : r0.x;
      r0.y = cmp(-12.7838678 >= r0.x);
      if (r0.y != 0) {
        r0.y = -2.30102992;
      } else {
        r0.z = cmp(-12.7838678 < r0.x);
        r0.w = cmp(r0.x < 2.26303458);
        r0.z = r0.w ? r0.z : 0;
        if (r0.z != 0) {
          r0.z = r0.x * 0.30103001 + 3.84832764;
          r0.w = 1.54540098 * r0.z;
          r1.w = (int)r0.w;
          r0.w = trunc(r0.w);
          r6.y = r0.z * 1.54540098 + -r0.w;
          r0.zw = (int2)r1.ww + int2(1,2);
          r6.x = r6.y * r6.y;
          r7.x = icb[r1.w+6].x;
          r7.y = icb[r0.z+6].x;
          r7.z = icb[r0.w+6].x;
          r8.x = dot(r7.xzy, float3(0.5,0.5,-1));
          r8.y = dot(r7.xy, float2(-1,1));
          r8.z = dot(r7.xy, float2(0.5,0.5));
          r6.z = 1;
          r0.y = dot(r6.xyz, r8.xyz);
        } else {
          r0.z = cmp(r0.x >= 2.26303458);
          r0.w = cmp(r0.x < 12.4948215);
          r0.z = r0.w ? r0.z : 0;
          if (r0.z != 0) {
            r0.z = r0.x * 0.30103001 + -0.681241274;
            r0.w = 2.27267218 * r0.z;
            r1.w = (int)r0.w;
            r0.w = trunc(r0.w);
            r6.y = r0.z * 2.27267218 + -r0.w;
            r0.zw = (int2)r1.ww + int2(1,2);
            r6.x = r6.y * r6.y;
            r7.x = icb[r1.w+6].y;
            r7.y = icb[r0.z+6].y;
            r7.z = icb[r0.w+6].y;
            r8.x = dot(r7.xzy, float3(0.5,0.5,-1));
            r8.y = dot(r7.xy, float2(-1,1));
            r8.z = dot(r7.xy, float2(0.5,0.5));
            r6.z = 1;
            r0.y = dot(r6.xyz, r8.xyz);
          } else {
            r0.y = r0.x * 0.0361235999 + 2.84967208;
          }
        }
      }
      r0.x = 3.32192802 * r0.y;
      r5.z = exp2(r0.x);
      r0.x = dot(r3.xyz, r5.xyz);
      r0.y = dot(r4.xyz, r5.xyz);
      r0.z = dot(r2.xyz, r5.xyz);
      r0.xyz = float3(9.99999975e-005,9.99999975e-005,9.99999975e-005) * r0.xyz;
      r0.xyz = log2(r0.xyz);
      r0.xyz = float3(0.159301758,0.159301758,0.159301758) * r0.xyz;
      r0.xyz = exp2(r0.xyz);
      r2.xyz = r0.xyz * float3(18.8515625,18.8515625,18.8515625) + float3(0.8359375,0.8359375,0.8359375);
      r0.xyz = r0.xyz * float3(18.6875,18.6875,18.6875) + float3(1,1,1);
      r0.xyz = rcp(r0.xyz);
      r0.xyz = r2.xyz * r0.xyz;
      r0.xyz = log2(r0.xyz);
      r0.xyz = float3(78.84375,78.84375,78.84375) * r0.xyz;
      r1.xyz = exp2(r0.xyz);
    } else {
      r1.xy = v0.xy * float2(1.03225803,1.03225803) + float2(-0.0161290318,-0.0161290318);
    }
  }
  o0.xyz = float3(0.952381015,0.952381015,0.952381015) * r1.xyz;
  o0.w = 0;
  return;
}