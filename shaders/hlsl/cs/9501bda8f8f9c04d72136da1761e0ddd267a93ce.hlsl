// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[53];
}




// 3Dmigoto declarations
#define cmp -


void main)
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
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_texture2d (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 8, 8, 1
  r0.xy = (uint2)vThreadID.xy;
  r0.zw = asuint(cb0[46].zw);
  r0.xy = r0.xy + r0.zw;
  r0.xy = float2(0.5,0.5) + r0.xy;
  r0.zw = cb0[45].xy * r0.xy;
  r0.xy = r0.xy * cb0[45].xy + float2(-0.5,-0.5);
  r0.x = max(abs(r0.x), abs(r0.y));
  r0.x = cmp(r0.x >= 0.5);
  if (r0.x != 0) {
    return;
  }
  r0.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
  r1.xyz = max(float3(0,0,0), r0.xyz);
  r1.xyz = log2(r1.xyz);
  r1.xyz = cb0[27].yyy * r1.xyz;
  r2.xyz = exp2(r1.xyz);
  if (cb0[52].x == 0) {
    r3.xyz = float3(12.9200001,12.9200001,12.9200001) * r2.xyz;
    r4.xyz = cmp(r2.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r1.xyz = float3(0.416666657,0.416666657,0.416666657) * r1.xyz;
    r1.xyz = exp2(r1.xyz);
    r1.xyz = r1.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r1.xyz = r4.xyz ? r1.xyz : r3.xyz;
  } else {
    r3.xyzw = cmp(asint(cb0[52].yyyy) == int4(1,2,3,4));
    r4.xyz = r3.www ? float3(1,0,0) : float3(1.70505154,-0.621790707,-0.0832583979);
    r5.xyz = r3.www ? float3(0,1,0) : float3(-0.130257145,1.14080286,-0.0105485283);
    r6.xyz = r3.www ? float3(0,0,1) : float3(-0.0240032747,-0.128968775,1.15297174);
    r4.xyz = r3.zzz ? float3(0.695452213,0.140678704,0.163869068) : r4.xyz;
    r5.xyz = r3.zzz ? float3(0.0447945632,0.859671116,0.0955343172) : r5.xyz;
    r6.xyz = r3.zzz ? float3(-0.00552588282,0.00402521016,1.00150073) : r6.xyz;
    r4.xyz = r3.yyy ? float3(1.02579927,-0.0200525094,-0.00577136781) : r4.xyz;
    r5.xyz = r3.yyy ? float3(-0.00223502493,1.00458264,-0.00235231337) : r5.xyz;
    r3.yzw = r3.yyy ? float3(-0.00501400325,-0.0252933875,1.03044021) : r6.xyz;
    r4.xyz = r3.xxx ? float3(1.37915885,-0.308850735,-0.0703467429) : r4.xyz;
    r5.xyz = r3.xxx ? float3(-0.0693352968,1.08229232,-0.0129620517) : r5.xyz;
    r3.xyz = r3.xxx ? float3(-0.00215925858,-0.0454653986,1.04775953) : r3.yzw;
    r0.w = cmp(asint(cb0[52].x) == 1);
    if (r0.w != 0) {
      r6.x = dot(float3(0.613191485,0.33951208,0.0473663323), r2.xyz);
      r6.y = dot(float3(0.0702069029,0.916335821,0.0134500116), r2.xyz);
      r6.z = dot(float3(0.0206188709,0.109567292,0.869606733), r2.xyz);
      r7.x = dot(r4.xyz, r6.xyz);
      r7.y = dot(r5.xyz, r6.xyz);
      r7.z = dot(r3.xyz, r6.xyz);
      r6.xyz = max(float3(6.10351999e-005,6.10351999e-005,6.10351999e-005), r7.xyz);
      r7.xyz = float3(4.5,4.5,4.5) * r6.xyz;
      r6.xyz = max(float3(0.0179999992,0.0179999992,0.0179999992), r6.xyz);
      r6.xyz = log2(r6.xyz);
      r6.xyz = float3(0.449999988,0.449999988,0.449999988) * r6.xyz;
      r6.xyz = exp2(r6.xyz);
      r6.xyz = r6.xyz * float3(1.09899998,1.09899998,1.09899998) + float3(-0.0989999995,-0.0989999995,-0.0989999995);
      r1.xyz = min(r7.xyz, r6.xyz);
    } else {
      r6.xy = cmp(asint(cb0[52].xx) == int2(3,5));
      r0.w = (int)r6.y | (int)r6.x;
      if (r0.w != 0) {
        r6.xyz = float3(1.5,1.5,1.5) * r2.xyz;
        r7.y = dot(float3(0.439700812,0.382978052,0.1773348), r6.xyz);
        r7.z = dot(float3(0.0897923037,0.813423157,0.096761629), r6.xyz);
        r7.w = dot(float3(0.0175439864,0.111544058,0.870704114), r6.xyz);
        r0.w = min(r7.y, r7.z);
        r0.w = min(r0.w, r7.w);
        r2.w = max(r7.y, r7.z);
        r2.w = max(r2.w, r7.w);
        r6.xy = max(float2(1.00000001e-010,0.00999999978), r2.ww);
        r0.w = max(1.00000001e-010, r0.w);
        r0.w = r6.x + -r0.w;
        r0.w = r0.w / r6.y;
        r6.xyz = r7.wzy + -r7.zyw;
        r6.xy = r7.wz * r6.xy;
        r2.w = r6.x + r6.y;
        r2.w = r7.y * r6.z + r2.w;
        r2.w = sqrt(r2.w);
        r3.w = r7.w + r7.z;
        r3.w = r3.w + r7.y;
        r2.w = r2.w * 1.75 + r3.w;
        r3.w = 0.333333343 * r2.w;
        r4.w = -0.400000006 + r0.w;
        r5.w = 2.5 * r4.w;
        r5.w = 1 + -abs(r5.w);
        r5.w = max(0, r5.w);
        r6.x = cmp(0 < r4.w);
        r4.w = cmp(r4.w < 0);
        r4.w = (int)-r6.x + (int)r4.w;
        r4.w = (int)r4.w;
        r5.w = -r5.w * r5.w + 1;
        r4.w = r4.w * r5.w + 1;
        r4.w = 0.0250000004 * r4.w;
        r5.w = cmp(0.159999996 >= r2.w);
        r2.w = cmp(r2.w >= 0.479999989);
        r3.w = 0.0799999982 / r3.w;
        r3.w = -0.5 + r3.w;
        r3.w = r4.w * r3.w;
        r2.w = r2.w ? 0 : r3.w;
        r2.w = r5.w ? r4.w : r2.w;
        r2.w = 1 + r2.w;
        r6.yzw = r7.yzw * r2.www;
        r8.xy = cmp(r6.zw == r6.yz);
        r3.w = r8.y ? r8.x : 0;
        r4.w = r7.z * r2.w + -r6.w;
        r4.w = 1.73205078 * r4.w;
        r5.w = r6.y * 2 + -r6.z;
        r5.w = -r7.w * r2.w + r5.w;
        r7.x = min(abs(r5.w), abs(r4.w));
        r7.z = max(abs(r5.w), abs(r4.w));
        r7.z = 1 / r7.z;
        r7.x = r7.x * r7.z;
        r7.z = r7.x * r7.x;
        r7.w = r7.z * 0.0208350997 + -0.0851330012;
        r7.w = r7.z * r7.w + 0.180141002;
        r7.w = r7.z * r7.w + -0.330299497;
        r7.z = r7.z * r7.w + 0.999866009;
        r7.w = r7.x * r7.z;
        r8.x = cmp(abs(r5.w) < abs(r4.w));
        r7.w = r7.w * -2 + 1.57079637;
        r7.w = r8.x ? r7.w : 0;
        r7.x = r7.x * r7.z + r7.w;
        r7.z = cmp(r5.w < -r5.w);
        r7.z = r7.z ? -3.141593 : 0;
        r7.x = r7.x + r7.z;
        r7.z = min(r5.w, r4.w);
        r4.w = max(r5.w, r4.w);
        r5.w = cmp(r7.z < -r7.z);
        r4.w = cmp(r4.w >= -r4.w);
        r4.w = r4.w ? r5.w : 0;
        r4.w = r4.w ? -r7.x : r7.x;
        r4.w = 57.2957802 * r4.w;
        r3.w = r3.w ? 0 : r4.w;
        r4.w = cmp(r3.w < 0);
        r5.w = 360 + r3.w;
        r3.w = r4.w ? r5.w : r3.w;
        r3.w = max(0, r3.w);
        r3.w = min(360, r3.w);
        r4.w = cmp(180 < r3.w);
        r5.w = -360 + r3.w;
        r3.w = r4.w ? r5.w : r3.w;
        r4.w = cmp(-67.5 < r3.w);
        r5.w = cmp(r3.w < 67.5);
        r4.w = r4.w ? r5.w : 0;
        if (r4.w != 0) {
          r3.w = 67.5 + r3.w;
          r4.w = 0.0296296291 * r3.w;
          r5.w = (int)r4.w;
          r4.w = trunc(r4.w);
          r3.w = r3.w * 0.0296296291 + -r4.w;
          r4.w = r3.w * r3.w;
          r7.x = r4.w * r3.w;
          r8.xyz = float3(-0.166666672,-0.5,0.166666672) * r7.xxx;
          r7.zw = r4.ww * float2(0.5,0.5) + r8.xy;
          r7.zw = r3.ww * float2(-0.5,0.5) + r7.zw;
          r3.w = r7.x * 0.5 + -r4.w;
          r3.w = 0.666666687 + r3.w;
          r8.xyw = cmp((int3)r5.www == int3(3,2,1));
          r7.xz = float2(0.166666672,0.166666672) + r7.zw;
          r4.w = r5.w ? 0 : r8.z;
          r4.w = r8.w ? r7.z : r4.w;
          r3.w = r8.y ? r3.w : r4.w;
          r3.w = r8.x ? r7.x : r3.w;
        } else {
          r3.w = 0;
        }
        r0.w = r3.w * r0.w;
        r0.w = 1.5 * r0.w;
        r2.w = -r7.y * r2.w + 0.0299999993;
        r0.w = r2.w * r0.w;
        r6.x = r0.w * 0.180000007 + r6.y;
        r6.xyz = max(float3(0,0,0), r6.xzw);
        r6.xyz = min(float3(65535,65535,65535), r6.xyz);
        r7.x = dot(float3(1.45143926,-0.236510754,-0.214928567), r6.xyz);
        r7.y = dot(float3(-0.0765537769,1.17622972,-0.0996759236), r6.xyz);
        r7.z = dot(float3(0.00831614807,-0.00603244966,0.997716308), r6.xyz);
        r6.xyz = max(float3(0,0,0), r7.xyz);
        r6.xyz = min(float3(65535,65535,65535), r6.xyz);
        r0.w = dot(r6.xyz, float3(0.272228718,0.674081743,0.0536895171));
        r6.xyz = r6.xyz + -r0.www;
        r6.xyz = r6.xyz * float3(0.959999979,0.959999979,0.959999979) + r0.www;
        r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
        r6.xyz = log2(r6.xyz);
        r6.xyz = r7.xyz ? float3(-14,-14,-14) : r6.xyz;
        r7.xyz = cmp(float3(-17.4739323,-17.4739323,-17.4739323) >= r6.xyz);
        if (r7.x != 0) {
          r0.w = -4;
        } else {
          r2.w = cmp(-17.4739323 < r6.x);
          r3.w = cmp(r6.x < -2.47393107);
          r2.w = r2.w ? r3.w : 0;
          if (r2.w != 0) {
            r2.w = r6.x * 0.30103001 + 5.26017761;
            r3.w = 0.664385557 * r2.w;
            r4.w = (int)r3.w;
            r3.w = trunc(r3.w);
            r8.y = r2.w * 0.664385557 + -r3.w;
            r7.xw = (int2)r4.ww + int2(1,2);
            r8.x = r8.y * r8.y;
            r9.x = icb[r4.w+0].x;
            r9.y = icb[r7.x+0].x;
            r9.z = icb[r7.w+0].x;
            r10.x = dot(r9.xzy, float3(0.5,0.5,-1));
            r10.y = dot(r9.xy, float2(-1,1));
            r10.z = dot(r9.xy, float2(0.5,0.5));
            r8.z = 1;
            r0.w = dot(r8.xyz, r10.xyz);
          } else {
            r2.w = cmp(r6.x >= -2.47393107);
            r3.w = cmp(r6.x < 15.5260687);
            r2.w = r2.w ? r3.w : 0;
            if (r2.w != 0) {
              r2.w = r6.x * 0.30103001 + 0.744727492;
              r3.w = 0.553654671 * r2.w;
              r4.w = (int)r3.w;
              r3.w = trunc(r3.w);
              r8.y = r2.w * 0.553654671 + -r3.w;
              r6.xw = (int2)r4.ww + int2(1,2);
              r8.x = r8.y * r8.y;
              r9.x = icb[r4.w+0].y;
              r9.y = icb[r6.x+0].y;
              r9.z = icb[r6.w+0].y;
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
        r8.x = exp2(r0.w);
        if (r7.y != 0) {
          r0.w = -4;
        } else {
          r2.w = cmp(-17.4739323 < r6.y);
          r3.w = cmp(r6.y < -2.47393107);
          r2.w = r2.w ? r3.w : 0;
          if (r2.w != 0) {
            r2.w = r6.y * 0.30103001 + 5.26017761;
            r3.w = 0.664385557 * r2.w;
            r4.w = (int)r3.w;
            r3.w = trunc(r3.w);
            r9.y = r2.w * 0.664385557 + -r3.w;
            r6.xw = (int2)r4.ww + int2(1,2);
            r9.x = r9.y * r9.y;
            r10.x = icb[r4.w+0].x;
            r10.y = icb[r6.x+0].x;
            r10.z = icb[r6.w+0].x;
            r11.x = dot(r10.xzy, float3(0.5,0.5,-1));
            r11.y = dot(r10.xy, float2(-1,1));
            r11.z = dot(r10.xy, float2(0.5,0.5));
            r9.z = 1;
            r0.w = dot(r9.xyz, r11.xyz);
          } else {
            r2.w = cmp(r6.y >= -2.47393107);
            r3.w = cmp(r6.y < 15.5260687);
            r2.w = r2.w ? r3.w : 0;
            if (r2.w != 0) {
              r2.w = r6.y * 0.30103001 + 0.744727492;
              r3.w = 0.553654671 * r2.w;
              r4.w = (int)r3.w;
              r3.w = trunc(r3.w);
              r9.y = r2.w * 0.553654671 + -r3.w;
              r6.xy = (int2)r4.ww + int2(1,2);
              r9.x = r9.y * r9.y;
              r10.x = icb[r4.w+0].y;
              r10.y = icb[r6.x+0].y;
              r10.z = icb[r6.y+0].y;
              r11.x = dot(r10.xzy, float3(0.5,0.5,-1));
              r11.y = dot(r10.xy, float2(-1,1));
              r11.z = dot(r10.xy, float2(0.5,0.5));
              r9.z = 1;
              r0.w = dot(r9.xyz, r11.xyz);
            } else {
              r0.w = 4;
            }
          }
        }
        r0.w = 3.32192802 * r0.w;
        r8.y = exp2(r0.w);
        if (r7.z != 0) {
          r0.w = -4;
        } else {
          r2.w = cmp(-17.4739323 < r6.z);
          r3.w = cmp(r6.z < -2.47393107);
          r2.w = r2.w ? r3.w : 0;
          if (r2.w != 0) {
            r2.w = r6.z * 0.30103001 + 5.26017761;
            r3.w = 0.664385557 * r2.w;
            r4.w = (int)r3.w;
            r3.w = trunc(r3.w);
            r7.y = r2.w * 0.664385557 + -r3.w;
            r6.xy = (int2)r4.ww + int2(1,2);
            r7.x = r7.y * r7.y;
            r9.x = icb[r4.w+0].x;
            r9.y = icb[r6.x+0].x;
            r9.z = icb[r6.y+0].x;
            r10.x = dot(r9.xzy, float3(0.5,0.5,-1));
            r10.y = dot(r9.xy, float2(-1,1));
            r10.z = dot(r9.xy, float2(0.5,0.5));
            r7.z = 1;
            r0.w = dot(r7.xyz, r10.xyz);
          } else {
            r2.w = cmp(r6.z >= -2.47393107);
            r3.w = cmp(r6.z < 15.5260687);
            r2.w = r2.w ? r3.w : 0;
            if (r2.w != 0) {
              r2.w = r6.z * 0.30103001 + 0.744727492;
              r3.w = 0.553654671 * r2.w;
              r4.w = (int)r3.w;
              r3.w = trunc(r3.w);
              r6.y = r2.w * 0.553654671 + -r3.w;
              r7.xy = (int2)r4.ww + int2(1,2);
              r6.x = r6.y * r6.y;
              r9.x = icb[r4.w+0].y;
              r9.y = icb[r7.x+0].y;
              r9.z = icb[r7.y+0].y;
              r7.x = dot(r9.xzy, float3(0.5,0.5,-1));
              r7.y = dot(r9.xy, float2(-1,1));
              r7.z = dot(r9.xy, float2(0.5,0.5));
              r6.z = 1;
              r0.w = dot(r6.xyz, r7.xyz);
            } else {
              r0.w = 4;
            }
          }
        }
        r0.w = 3.32192802 * r0.w;
        r8.z = exp2(r0.w);
        r6.x = dot(float3(0.695452213,0.140678704,0.163869068), r8.xyz);
        r6.y = dot(float3(0.0447945632,0.859671116,0.0955343172), r8.xyz);
        r6.z = dot(float3(-0.00552588282,0.00402521016,1.00150073), r8.xyz);
        r0.w = dot(float3(1.45143926,-0.236510754,-0.214928567), r6.xyz);
        r2.w = dot(float3(-0.0765537769,1.17622972,-0.0996759236), r6.xyz);
        r3.w = dot(float3(0.00831614807,-0.00603244966,0.997716308), r6.xyz);
        r4.w = cmp(0 >= r0.w);
        r0.w = log2(r0.w);
        r0.w = r4.w ? -13.2877121 : r0.w;
        r4.w = cmp(-12.7838678 >= r0.w);
        if (r4.w != 0) {
          r4.w = r0.w * 0.90309 + 7.54498291;
        } else {
          r5.w = cmp(-12.7838678 < r0.w);
          r6.x = cmp(r0.w < 2.26303458);
          r5.w = r5.w ? r6.x : 0;
          if (r5.w != 0) {
            r5.w = r0.w * 0.30103001 + 3.84832764;
            r6.x = 1.54540098 * r5.w;
            r6.y = (int)r6.x;
            r6.x = trunc(r6.x);
            r7.y = r5.w * 1.54540098 + -r6.x;
            r6.xz = (int2)r6.yy + int2(1,2);
            r7.x = r7.y * r7.y;
            r8.x = icb[r6.y+0].z;
            r8.y = icb[r6.x+0].z;
            r8.z = icb[r6.z+0].z;
            r6.x = dot(r8.xzy, float3(0.5,0.5,-1));
            r6.y = dot(r8.xy, float2(-1,1));
            r6.z = dot(r8.xy, float2(0.5,0.5));
            r7.z = 1;
            r4.w = dot(r7.xyz, r6.xyz);
          } else {
            r5.w = cmp(r0.w >= 2.26303458);
            r6.x = cmp(r0.w < 12.1373367);
            r5.w = r5.w ? r6.x : 0;
            if (r5.w != 0) {
              r5.w = r0.w * 0.30103001 + -0.681241274;
              r6.x = 2.3549509 * r5.w;
              r6.y = (int)r6.x;
              r6.x = trunc(r6.x);
              r7.y = r5.w * 2.3549509 + -r6.x;
              r6.xz = (int2)r6.yy + int2(1,2);
              r7.x = r7.y * r7.y;
              r8.x = icb[r6.y+0].w;
              r8.y = icb[r6.x+0].w;
              r8.z = icb[r6.z+0].w;
              r6.x = dot(r8.xzy, float3(0.5,0.5,-1));
              r6.y = dot(r8.xy, float2(-1,1));
              r6.z = dot(r8.xy, float2(0.5,0.5));
              r7.z = 1;
              r4.w = dot(r7.xyz, r6.xyz);
            } else {
              r4.w = r0.w * 0.0180617999 + 2.78077793;
            }
          }
        }
        r0.w = 3.32192802 * r4.w;
        r6.x = exp2(r0.w);
        r0.w = cmp(0 >= r2.w);
        r2.w = log2(r2.w);
        r0.w = r0.w ? -13.2877121 : r2.w;
        r2.w = cmp(-12.7838678 >= r0.w);
        if (r2.w != 0) {
          r2.w = r0.w * 0.90309 + 7.54498291;
        } else {
          r4.w = cmp(-12.7838678 < r0.w);
          r5.w = cmp(r0.w < 2.26303458);
          r4.w = r4.w ? r5.w : 0;
          if (r4.w != 0) {
            r4.w = r0.w * 0.30103001 + 3.84832764;
            r5.w = 1.54540098 * r4.w;
            r6.w = (int)r5.w;
            r5.w = trunc(r5.w);
            r7.y = r4.w * 1.54540098 + -r5.w;
            r8.xy = (int2)r6.ww + int2(1,2);
            r7.x = r7.y * r7.y;
            r9.x = icb[r6.w+0].z;
            r9.y = icb[r8.x+0].z;
            r9.z = icb[r8.y+0].z;
            r8.x = dot(r9.xzy, float3(0.5,0.5,-1));
            r8.y = dot(r9.xy, float2(-1,1));
            r8.z = dot(r9.xy, float2(0.5,0.5));
            r7.z = 1;
            r2.w = dot(r7.xyz, r8.xyz);
          } else {
            r4.w = cmp(r0.w >= 2.26303458);
            r5.w = cmp(r0.w < 12.1373367);
            r4.w = r4.w ? r5.w : 0;
            if (r4.w != 0) {
              r4.w = r0.w * 0.30103001 + -0.681241274;
              r5.w = 2.3549509 * r4.w;
              r6.w = (int)r5.w;
              r5.w = trunc(r5.w);
              r7.y = r4.w * 2.3549509 + -r5.w;
              r8.xy = (int2)r6.ww + int2(1,2);
              r7.x = r7.y * r7.y;
              r9.x = icb[r6.w+0].w;
              r9.y = icb[r8.x+0].w;
              r9.z = icb[r8.y+0].w;
              r8.x = dot(r9.xzy, float3(0.5,0.5,-1));
              r8.y = dot(r9.xy, float2(-1,1));
              r8.z = dot(r9.xy, float2(0.5,0.5));
              r7.z = 1;
              r2.w = dot(r7.xyz, r8.xyz);
            } else {
              r2.w = r0.w * 0.0180617999 + 2.78077793;
            }
          }
        }
        r0.w = 3.32192802 * r2.w;
        r6.y = exp2(r0.w);
        r0.w = cmp(0 >= r3.w);
        r2.w = log2(r3.w);
        r0.w = r0.w ? -13.2877121 : r2.w;
        r2.w = cmp(-12.7838678 >= r0.w);
        if (r2.w != 0) {
          r2.w = r0.w * 0.90309 + 7.54498291;
        } else {
          r3.w = cmp(-12.7838678 < r0.w);
          r4.w = cmp(r0.w < 2.26303458);
          r3.w = r3.w ? r4.w : 0;
          if (r3.w != 0) {
            r3.w = r0.w * 0.30103001 + 3.84832764;
            r4.w = 1.54540098 * r3.w;
            r5.w = (int)r4.w;
            r4.w = trunc(r4.w);
            r7.y = r3.w * 1.54540098 + -r4.w;
            r8.xy = (int2)r5.ww + int2(1,2);
            r7.x = r7.y * r7.y;
            r9.x = icb[r5.w+0].z;
            r9.y = icb[r8.x+0].z;
            r9.z = icb[r8.y+0].z;
            r8.x = dot(r9.xzy, float3(0.5,0.5,-1));
            r8.y = dot(r9.xy, float2(-1,1));
            r8.z = dot(r9.xy, float2(0.5,0.5));
            r7.z = 1;
            r2.w = dot(r7.xyz, r8.xyz);
          } else {
            r3.w = cmp(r0.w >= 2.26303458);
            r4.w = cmp(r0.w < 12.1373367);
            r3.w = r3.w ? r4.w : 0;
            if (r3.w != 0) {
              r3.w = r0.w * 0.30103001 + -0.681241274;
              r4.w = 2.3549509 * r3.w;
              r5.w = (int)r4.w;
              r4.w = trunc(r4.w);
              r7.y = r3.w * 2.3549509 + -r4.w;
              r8.xy = (int2)r5.ww + int2(1,2);
              r7.x = r7.y * r7.y;
              r9.x = icb[r5.w+0].w;
              r9.y = icb[r8.x+0].w;
              r9.z = icb[r8.y+0].w;
              r8.x = dot(r9.xzy, float3(0.5,0.5,-1));
              r8.y = dot(r9.xy, float2(-1,1));
              r8.z = dot(r9.xy, float2(0.5,0.5));
              r7.z = 1;
              r2.w = dot(r7.xyz, r8.xyz);
            } else {
              r2.w = r0.w * 0.0180617999 + 2.78077793;
            }
          }
        }
        r0.w = 3.32192802 * r2.w;
        r6.z = exp2(r0.w);
        r6.xyz = float3(-3.50738446e-005,-3.50738446e-005,-3.50738446e-005) + r6.xyz;
        r7.x = dot(r4.xyz, r6.xyz);
        r7.y = dot(r5.xyz, r6.xyz);
        r7.z = dot(r3.xyz, r6.xyz);
        r6.xyz = float3(9.99999975e-005,9.99999975e-005,9.99999975e-005) * r7.xyz;
        r6.xyz = log2(r6.xyz);
        r6.xyz = float3(0.159301758,0.159301758,0.159301758) * r6.xyz;
        r6.xyz = exp2(r6.xyz);
        r7.xyz = r6.xyz * float3(18.8515625,18.8515625,18.8515625) + float3(0.8359375,0.8359375,0.8359375);
        r6.xyz = r6.xyz * float3(18.6875,18.6875,18.6875) + float3(1,1,1);
        r6.xyz = rcp(r6.xyz);
        r6.xyz = r7.xyz * r6.xyz;
        r6.xyz = log2(r6.xyz);
        r6.xyz = float3(78.84375,78.84375,78.84375) * r6.xyz;
        r1.xyz = exp2(r6.xyz);
      } else {
        r6.xy = cmp(asint(cb0[52].xx) == int2(4,6));
        r0.w = (int)r6.y | (int)r6.x;
        if (r0.w != 0) {
          r6.xyz = float3(1.5,1.5,1.5) * r2.xyz;
          r7.y = dot(float3(0.439700812,0.382978052,0.1773348), r6.xyz);
          r7.z = dot(float3(0.0897923037,0.813423157,0.096761629), r6.xyz);
          r7.w = dot(float3(0.0175439864,0.111544058,0.870704114), r6.xyz);
          r0.w = min(r7.y, r7.z);
          r0.w = min(r0.w, r7.w);
          r2.w = max(r7.y, r7.z);
          r2.w = max(r2.w, r7.w);
          r6.xy = max(float2(1.00000001e-010,0.00999999978), r2.ww);
          r0.w = max(1.00000001e-010, r0.w);
          r0.w = r6.x + -r0.w;
          r0.w = r0.w / r6.y;
          r6.xyz = r7.wzy + -r7.zyw;
          r6.xy = r7.wz * r6.xy;
          r2.w = r6.x + r6.y;
          r2.w = r7.y * r6.z + r2.w;
          r2.w = sqrt(r2.w);
          r3.w = r7.w + r7.z;
          r3.w = r3.w + r7.y;
          r2.w = r2.w * 1.75 + r3.w;
          r3.w = 0.333333343 * r2.w;
          r4.w = -0.400000006 + r0.w;
          r5.w = 2.5 * r4.w;
          r5.w = 1 + -abs(r5.w);
          r5.w = max(0, r5.w);
          r6.x = cmp(0 < r4.w);
          r4.w = cmp(r4.w < 0);
          r4.w = (int)-r6.x + (int)r4.w;
          r4.w = (int)r4.w;
          r5.w = -r5.w * r5.w + 1;
          r4.w = r4.w * r5.w + 1;
          r4.w = 0.0250000004 * r4.w;
          r5.w = cmp(0.159999996 >= r2.w);
          r2.w = cmp(r2.w >= 0.479999989);
          r3.w = 0.0799999982 / r3.w;
          r3.w = -0.5 + r3.w;
          r3.w = r4.w * r3.w;
          r2.w = r2.w ? 0 : r3.w;
          r2.w = r5.w ? r4.w : r2.w;
          r2.w = 1 + r2.w;
          r6.yzw = r7.yzw * r2.www;
          r8.xy = cmp(r6.zw == r6.yz);
          r3.w = r8.y ? r8.x : 0;
          r4.w = r7.z * r2.w + -r6.w;
          r4.w = 1.73205078 * r4.w;
          r5.w = r6.y * 2 + -r6.z;
          r5.w = -r7.w * r2.w + r5.w;
          r7.x = min(abs(r5.w), abs(r4.w));
          r7.z = max(abs(r5.w), abs(r4.w));
          r7.z = 1 / r7.z;
          r7.x = r7.x * r7.z;
          r7.z = r7.x * r7.x;
          r7.w = r7.z * 0.0208350997 + -0.0851330012;
          r7.w = r7.z * r7.w + 0.180141002;
          r7.w = r7.z * r7.w + -0.330299497;
          r7.z = r7.z * r7.w + 0.999866009;
          r7.w = r7.x * r7.z;
          r8.x = cmp(abs(r5.w) < abs(r4.w));
          r7.w = r7.w * -2 + 1.57079637;
          r7.w = r8.x ? r7.w : 0;
          r7.x = r7.x * r7.z + r7.w;
          r7.z = cmp(r5.w < -r5.w);
          r7.z = r7.z ? -3.141593 : 0;
          r7.x = r7.x + r7.z;
          r7.z = min(r5.w, r4.w);
          r4.w = max(r5.w, r4.w);
          r5.w = cmp(r7.z < -r7.z);
          r4.w = cmp(r4.w >= -r4.w);
          r4.w = r4.w ? r5.w : 0;
          r4.w = r4.w ? -r7.x : r7.x;
          r4.w = 57.2957802 * r4.w;
          r3.w = r3.w ? 0 : r4.w;
          r4.w = cmp(r3.w < 0);
          r5.w = 360 + r3.w;
          r3.w = r4.w ? r5.w : r3.w;
          r3.w = max(0, r3.w);
          r3.w = min(360, r3.w);
          r4.w = cmp(180 < r3.w);
          r5.w = -360 + r3.w;
          r3.w = r4.w ? r5.w : r3.w;
          r4.w = cmp(-67.5 < r3.w);
          r5.w = cmp(r3.w < 67.5);
          r4.w = r4.w ? r5.w : 0;
          if (r4.w != 0) {
            r3.w = 67.5 + r3.w;
            r4.w = 0.0296296291 * r3.w;
            r5.w = (int)r4.w;
            r4.w = trunc(r4.w);
            r3.w = r3.w * 0.0296296291 + -r4.w;
            r4.w = r3.w * r3.w;
            r7.x = r4.w * r3.w;
            r8.xyz = float3(-0.166666672,-0.5,0.166666672) * r7.xxx;
            r7.zw = r4.ww * float2(0.5,0.5) + r8.xy;
            r7.zw = r3.ww * float2(-0.5,0.5) + r7.zw;
            r3.w = r7.x * 0.5 + -r4.w;
            r3.w = 0.666666687 + r3.w;
            r8.xyw = cmp((int3)r5.www == int3(3,2,1));
            r7.xz = float2(0.166666672,0.166666672) + r7.zw;
            r4.w = r5.w ? 0 : r8.z;
            r4.w = r8.w ? r7.z : r4.w;
            r3.w = r8.y ? r3.w : r4.w;
            r3.w = r8.x ? r7.x : r3.w;
          } else {
            r3.w = 0;
          }
          r0.w = r3.w * r0.w;
          r0.w = 1.5 * r0.w;
          r2.w = -r7.y * r2.w + 0.0299999993;
          r0.w = r2.w * r0.w;
          r6.x = r0.w * 0.180000007 + r6.y;
          r6.xyz = max(float3(0,0,0), r6.xzw);
          r6.xyz = min(float3(65535,65535,65535), r6.xyz);
          r7.x = dot(float3(1.45143926,-0.236510754,-0.214928567), r6.xyz);
          r7.y = dot(float3(-0.0765537769,1.17622972,-0.0996759236), r6.xyz);
          r7.z = dot(float3(0.00831614807,-0.00603244966,0.997716308), r6.xyz);
          r6.xyz = max(float3(0,0,0), r7.xyz);
          r6.xyz = min(float3(65535,65535,65535), r6.xyz);
          r0.w = dot(r6.xyz, float3(0.272228718,0.674081743,0.0536895171));
          r6.xyz = r6.xyz + -r0.www;
          r6.xyz = r6.xyz * float3(0.959999979,0.959999979,0.959999979) + r0.www;
          r7.xyz = cmp(float3(0,0,0) >= r6.xyz);
          r6.xyz = log2(r6.xyz);
          r6.xyz = r7.xyz ? float3(-14,-14,-14) : r6.xyz;
          r7.xyz = cmp(float3(-17.4739323,-17.4739323,-17.4739323) >= r6.xyz);
          if (r7.x != 0) {
            r0.w = -4;
          } else {
            r2.w = cmp(-17.4739323 < r6.x);
            r3.w = cmp(r6.x < -2.47393107);
            r2.w = r2.w ? r3.w : 0;
            if (r2.w != 0) {
              r2.w = r6.x * 0.30103001 + 5.26017761;
              r3.w = 0.664385557 * r2.w;
              r4.w = (int)r3.w;
              r3.w = trunc(r3.w);
              r8.y = r2.w * 0.664385557 + -r3.w;
              r7.xw = (int2)r4.ww + int2(1,2);
              r8.x = r8.y * r8.y;
              r9.x = icb[r4.w+0].x;
              r9.y = icb[r7.x+0].x;
              r9.z = icb[r7.w+0].x;
              r10.x = dot(r9.xzy, float3(0.5,0.5,-1));
              r10.y = dot(r9.xy, float2(-1,1));
              r10.z = dot(r9.xy, float2(0.5,0.5));
              r8.z = 1;
              r0.w = dot(r8.xyz, r10.xyz);
            } else {
              r2.w = cmp(r6.x >= -2.47393107);
              r3.w = cmp(r6.x < 15.5260687);
              r2.w = r2.w ? r3.w : 0;
              if (r2.w != 0) {
                r2.w = r6.x * 0.30103001 + 0.744727492;
                r3.w = 0.553654671 * r2.w;
                r4.w = (int)r3.w;
                r3.w = trunc(r3.w);
                r8.y = r2.w * 0.553654671 + -r3.w;
                r6.xw = (int2)r4.ww + int2(1,2);
                r8.x = r8.y * r8.y;
                r9.x = icb[r4.w+0].y;
                r9.y = icb[r6.x+0].y;
                r9.z = icb[r6.w+0].y;
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
          r8.x = exp2(r0.w);
          if (r7.y != 0) {
            r0.w = -4;
          } else {
            r2.w = cmp(-17.4739323 < r6.y);
            r3.w = cmp(r6.y < -2.47393107);
            r2.w = r2.w ? r3.w : 0;
            if (r2.w != 0) {
              r2.w = r6.y * 0.30103001 + 5.26017761;
              r3.w = 0.664385557 * r2.w;
              r4.w = (int)r3.w;
              r3.w = trunc(r3.w);
              r9.y = r2.w * 0.664385557 + -r3.w;
              r6.xw = (int2)r4.ww + int2(1,2);
              r9.x = r9.y * r9.y;
              r10.x = icb[r4.w+0].x;
              r10.y = icb[r6.x+0].x;
              r10.z = icb[r6.w+0].x;
              r11.x = dot(r10.xzy, float3(0.5,0.5,-1));
              r11.y = dot(r10.xy, float2(-1,1));
              r11.z = dot(r10.xy, float2(0.5,0.5));
              r9.z = 1;
              r0.w = dot(r9.xyz, r11.xyz);
            } else {
              r2.w = cmp(r6.y >= -2.47393107);
              r3.w = cmp(r6.y < 15.5260687);
              r2.w = r2.w ? r3.w : 0;
              if (r2.w != 0) {
                r2.w = r6.y * 0.30103001 + 0.744727492;
                r3.w = 0.553654671 * r2.w;
                r4.w = (int)r3.w;
                r3.w = trunc(r3.w);
                r9.y = r2.w * 0.553654671 + -r3.w;
                r6.xy = (int2)r4.ww + int2(1,2);
                r9.x = r9.y * r9.y;
                r10.x = icb[r4.w+0].y;
                r10.y = icb[r6.x+0].y;
                r10.z = icb[r6.y+0].y;
                r11.x = dot(r10.xzy, float3(0.5,0.5,-1));
                r11.y = dot(r10.xy, float2(-1,1));
                r11.z = dot(r10.xy, float2(0.5,0.5));
                r9.z = 1;
                r0.w = dot(r9.xyz, r11.xyz);
              } else {
                r0.w = 4;
              }
            }
          }
          r0.w = 3.32192802 * r0.w;
          r8.y = exp2(r0.w);
          if (r7.z != 0) {
            r0.w = -4;
          } else {
            r2.w = cmp(-17.4739323 < r6.z);
            r3.w = cmp(r6.z < -2.47393107);
            r2.w = r2.w ? r3.w : 0;
            if (r2.w != 0) {
              r2.w = r6.z * 0.30103001 + 5.26017761;
              r3.w = 0.664385557 * r2.w;
              r4.w = (int)r3.w;
              r3.w = trunc(r3.w);
              r7.y = r2.w * 0.664385557 + -r3.w;
              r6.xy = (int2)r4.ww + int2(1,2);
              r7.x = r7.y * r7.y;
              r9.x = icb[r4.w+0].x;
              r9.y = icb[r6.x+0].x;
              r9.z = icb[r6.y+0].x;
              r10.x = dot(r9.xzy, float3(0.5,0.5,-1));
              r10.y = dot(r9.xy, float2(-1,1));
              r10.z = dot(r9.xy, float2(0.5,0.5));
              r7.z = 1;
              r0.w = dot(r7.xyz, r10.xyz);
            } else {
              r2.w = cmp(r6.z >= -2.47393107);
              r3.w = cmp(r6.z < 15.5260687);
              r2.w = r2.w ? r3.w : 0;
              if (r2.w != 0) {
                r2.w = r6.z * 0.30103001 + 0.744727492;
                r3.w = 0.553654671 * r2.w;
                r4.w = (int)r3.w;
                r3.w = trunc(r3.w);
                r6.y = r2.w * 0.553654671 + -r3.w;
                r7.xy = (int2)r4.ww + int2(1,2);
                r6.x = r6.y * r6.y;
                r9.x = icb[r4.w+0].y;
                r9.y = icb[r7.x+0].y;
                r9.z = icb[r7.y+0].y;
                r7.x = dot(r9.xzy, float3(0.5,0.5,-1));
                r7.y = dot(r9.xy, float2(-1,1));
                r7.z = dot(r9.xy, float2(0.5,0.5));
                r6.z = 1;
                r0.w = dot(r6.xyz, r7.xyz);
              } else {
                r0.w = 4;
              }
            }
          }
          r0.w = 3.32192802 * r0.w;
          r8.z = exp2(r0.w);
          r6.x = dot(float3(0.695452213,0.140678704,0.163869068), r8.xyz);
          r6.y = dot(float3(0.0447945632,0.859671116,0.0955343172), r8.xyz);
          r6.z = dot(float3(-0.00552588282,0.00402521016,1.00150073), r8.xyz);
          r0.w = dot(float3(1.45143926,-0.236510754,-0.214928567), r6.xyz);
          r2.w = dot(float3(-0.0765537769,1.17622972,-0.0996759236), r6.xyz);
          r3.w = dot(float3(0.00831614807,-0.00603244966,0.997716308), r6.xyz);
          r4.w = cmp(0 >= r0.w);
          r0.w = log2(r0.w);
          r0.w = r4.w ? -13.2877121 : r0.w;
          r4.w = cmp(-12.7838678 >= r0.w);
          if (r4.w != 0) {
            r4.w = -2.30102992;
          } else {
            r5.w = cmp(-12.7838678 < r0.w);
            r6.x = cmp(r0.w < 2.26303458);
            r5.w = r5.w ? r6.x : 0;
            if (r5.w != 0) {
              r5.w = r0.w * 0.30103001 + 3.84832764;
              r6.x = 1.54540098 * r5.w;
              r6.y = (int)r6.x;
              r6.x = trunc(r6.x);
              r7.y = r5.w * 1.54540098 + -r6.x;
              r6.xz = (int2)r6.yy + int2(1,2);
              r7.x = r7.y * r7.y;
              r8.x = icb[r6.y+6].x;
              r8.y = icb[r6.x+6].x;
              r8.z = icb[r6.z+6].x;
              r6.x = dot(r8.xzy, float3(0.5,0.5,-1));
              r6.y = dot(r8.xy, float2(-1,1));
              r6.z = dot(r8.xy, float2(0.5,0.5));
              r7.z = 1;
              r4.w = dot(r7.xyz, r6.xyz);
            } else {
              r5.w = cmp(r0.w >= 2.26303458);
              r6.x = cmp(r0.w < 12.4948215);
              r5.w = r5.w ? r6.x : 0;
              if (r5.w != 0) {
                r5.w = r0.w * 0.30103001 + -0.681241274;
                r6.x = 2.27267218 * r5.w;
                r6.y = (int)r6.x;
                r6.x = trunc(r6.x);
                r7.y = r5.w * 2.27267218 + -r6.x;
                r6.xz = (int2)r6.yy + int2(1,2);
                r7.x = r7.y * r7.y;
                r8.x = icb[r6.y+6].y;
                r8.y = icb[r6.x+6].y;
                r8.z = icb[r6.z+6].y;
                r6.x = dot(r8.xzy, float3(0.5,0.5,-1));
                r6.y = dot(r8.xy, float2(-1,1));
                r6.z = dot(r8.xy, float2(0.5,0.5));
                r7.z = 1;
                r4.w = dot(r7.xyz, r6.xyz);
              } else {
                r4.w = r0.w * 0.0361235999 + 2.84967208;
              }
            }
          }
          r0.w = 3.32192802 * r4.w;
          r6.x = exp2(r0.w);
          r0.w = cmp(0 >= r2.w);
          r2.w = log2(r2.w);
          r0.w = r0.w ? -13.2877121 : r2.w;
          r2.w = cmp(-12.7838678 >= r0.w);
          if (r2.w != 0) {
            r2.w = -2.30102992;
          } else {
            r4.w = cmp(-12.7838678 < r0.w);
            r5.w = cmp(r0.w < 2.26303458);
            r4.w = r4.w ? r5.w : 0;
            if (r4.w != 0) {
              r4.w = r0.w * 0.30103001 + 3.84832764;
              r5.w = 1.54540098 * r4.w;
              r6.w = (int)r5.w;
              r5.w = trunc(r5.w);
              r7.y = r4.w * 1.54540098 + -r5.w;
              r8.xy = (int2)r6.ww + int2(1,2);
              r7.x = r7.y * r7.y;
              r9.x = icb[r6.w+6].x;
              r9.y = icb[r8.x+6].x;
              r9.z = icb[r8.y+6].x;
              r8.x = dot(r9.xzy, float3(0.5,0.5,-1));
              r8.y = dot(r9.xy, float2(-1,1));
              r8.z = dot(r9.xy, float2(0.5,0.5));
              r7.z = 1;
              r2.w = dot(r7.xyz, r8.xyz);
            } else {
              r4.w = cmp(r0.w >= 2.26303458);
              r5.w = cmp(r0.w < 12.4948215);
              r4.w = r4.w ? r5.w : 0;
              if (r4.w != 0) {
                r4.w = r0.w * 0.30103001 + -0.681241274;
                r5.w = 2.27267218 * r4.w;
                r6.w = (int)r5.w;
                r5.w = trunc(r5.w);
                r7.y = r4.w * 2.27267218 + -r5.w;
                r8.xy = (int2)r6.ww + int2(1,2);
                r7.x = r7.y * r7.y;
                r9.x = icb[r6.w+6].y;
                r9.y = icb[r8.x+6].y;
                r9.z = icb[r8.y+6].y;
                r8.x = dot(r9.xzy, float3(0.5,0.5,-1));
                r8.y = dot(r9.xy, float2(-1,1));
                r8.z = dot(r9.xy, float2(0.5,0.5));
                r7.z = 1;
                r2.w = dot(r7.xyz, r8.xyz);
              } else {
                r2.w = r0.w * 0.0361235999 + 2.84967208;
              }
            }
          }
          r0.w = 3.32192802 * r2.w;
          r6.y = exp2(r0.w);
          r0.w = cmp(0 >= r3.w);
          r2.w = log2(r3.w);
          r0.w = r0.w ? -13.2877121 : r2.w;
          r2.w = cmp(-12.7838678 >= r0.w);
          if (r2.w != 0) {
            r2.w = -2.30102992;
          } else {
            r3.w = cmp(-12.7838678 < r0.w);
            r4.w = cmp(r0.w < 2.26303458);
            r3.w = r3.w ? r4.w : 0;
            if (r3.w != 0) {
              r3.w = r0.w * 0.30103001 + 3.84832764;
              r4.w = 1.54540098 * r3.w;
              r5.w = (int)r4.w;
              r4.w = trunc(r4.w);
              r7.y = r3.w * 1.54540098 + -r4.w;
              r8.xy = (int2)r5.ww + int2(1,2);
              r7.x = r7.y * r7.y;
              r9.x = icb[r5.w+6].x;
              r9.y = icb[r8.x+6].x;
              r9.z = icb[r8.y+6].x;
              r8.x = dot(r9.xzy, float3(0.5,0.5,-1));
              r8.y = dot(r9.xy, float2(-1,1));
              r8.z = dot(r9.xy, float2(0.5,0.5));
              r7.z = 1;
              r2.w = dot(r7.xyz, r8.xyz);
            } else {
              r3.w = cmp(r0.w >= 2.26303458);
              r4.w = cmp(r0.w < 12.4948215);
              r3.w = r3.w ? r4.w : 0;
              if (r3.w != 0) {
                r3.w = r0.w * 0.30103001 + -0.681241274;
                r4.w = 2.27267218 * r3.w;
                r5.w = (int)r4.w;
                r4.w = trunc(r4.w);
                r7.y = r3.w * 2.27267218 + -r4.w;
                r8.xy = (int2)r5.ww + int2(1,2);
                r7.x = r7.y * r7.y;
                r9.x = icb[r5.w+6].y;
                r9.y = icb[r8.x+6].y;
                r9.z = icb[r8.y+6].y;
                r8.x = dot(r9.xzy, float3(0.5,0.5,-1));
                r8.y = dot(r9.xy, float2(-1,1));
                r8.z = dot(r9.xy, float2(0.5,0.5));
                r7.z = 1;
                r2.w = dot(r7.xyz, r8.xyz);
              } else {
                r2.w = r0.w * 0.0361235999 + 2.84967208;
              }
            }
          }
          r0.w = 3.32192802 * r2.w;
          r6.z = exp2(r0.w);
          r7.x = dot(r4.xyz, r6.xyz);
          r7.y = dot(r5.xyz, r6.xyz);
          r7.z = dot(r3.xyz, r6.xyz);
          r6.xyz = float3(9.99999975e-005,9.99999975e-005,9.99999975e-005) * r7.xyz;
          r6.xyz = log2(r6.xyz);
          r6.xyz = float3(0.159301758,0.159301758,0.159301758) * r6.xyz;
          r6.xyz = exp2(r6.xyz);
          r7.xyz = r6.xyz * float3(18.8515625,18.8515625,18.8515625) + float3(0.8359375,0.8359375,0.8359375);
          r6.xyz = r6.xyz * float3(18.6875,18.6875,18.6875) + float3(1,1,1);
          r6.xyz = rcp(r6.xyz);
          r6.xyz = r7.xyz * r6.xyz;
          r6.xyz = log2(r6.xyz);
          r6.xyz = float3(78.84375,78.84375,78.84375) * r6.xyz;
          r1.xyz = exp2(r6.xyz);
        } else {
          r0.w = cmp(asint(cb0[52].x) == 7);
          if (r0.w != 0) {
            r6.x = dot(float3(0.613191485,0.33951208,0.0473663323), r2.xyz);
            r6.y = dot(float3(0.0702069029,0.916335821,0.0134500116), r2.xyz);
            r6.z = dot(float3(0.0206188709,0.109567292,0.869606733), r2.xyz);
            r7.x = dot(r4.xyz, r6.xyz);
            r7.y = dot(r5.xyz, r6.xyz);
            r7.z = dot(r3.xyz, r6.xyz);
            r6.xyz = float3(9.99999975e-005,9.99999975e-005,9.99999975e-005) * r7.xyz;
            r6.xyz = log2(r6.xyz);
            r6.xyz = float3(0.159301758,0.159301758,0.159301758) * r6.xyz;
            r6.xyz = exp2(r6.xyz);
            r7.xyz = r6.xyz * float3(18.8515625,18.8515625,18.8515625) + float3(0.8359375,0.8359375,0.8359375);
            r6.xyz = r6.xyz * float3(18.6875,18.6875,18.6875) + float3(1,1,1);
            r6.xyz = rcp(r6.xyz);
            r6.xyz = r7.xyz * r6.xyz;
            r6.xyz = log2(r6.xyz);
            r6.xyz = float3(78.84375,78.84375,78.84375) * r6.xyz;
            r1.xyz = exp2(r6.xyz);
          } else {
            r6.xy = cmp(asint(cb0[52].xx) == int2(8,9));
            r7.x = dot(float3(0.613191485,0.33951208,0.0473663323), r0.xyz);
            r7.y = dot(float3(0.0702069029,0.916335821,0.0134500116), r0.xyz);
            r7.z = dot(float3(0.0206188709,0.109567292,0.869606733), r0.xyz);
            r0.x = dot(r4.xyz, r7.xyz);
            r0.y = dot(r5.xyz, r7.xyz);
            r0.z = dot(r3.xyz, r7.xyz);
            r7.x = dot(float3(0.613191485,0.33951208,0.0473663323), r2.xyz);
            r7.y = dot(float3(0.0702069029,0.916335821,0.0134500116), r2.xyz);
            r7.z = dot(float3(0.0206188709,0.109567292,0.869606733), r2.xyz);
            r0.w = dot(r4.xyz, r7.xyz);
            r2.w = dot(r5.xyz, r7.xyz);
            r3.x = dot(r3.xyz, r7.xyz);
            r4.x = log2(r0.w);
            r4.y = log2(r2.w);
            r4.z = log2(r3.x);
            r3.xyz = cb0[27].zzz * r4.xyz;
            r3.xyz = exp2(r3.xyz);
            r0.xyz = r6.yyy ? r0.xyz : r3.xyz;
            r1.xyz = r6.xxx ? r2.xyz : r0.xyz;
          }
        }
      }
    }
  }
  r0.xyzw = (int4)vThreadID.xyyy + asint(cb0[46].zwww);
  r1.w = 1;
// No code for instruction (needs manual fix):
store_uav_typed u0.xyzw, r0.xyzw, r1.xyzw
  return;
}