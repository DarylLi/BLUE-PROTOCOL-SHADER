// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[36];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 0.402211, 0.126575, 0, 0},
                              { 0.297056, 0.616830, 0, 0},
                              { 0.298156, -0.001704, 0, 0},
                              { 0.019369, 0.395482, 0, 0},
                              { -0.066918, -0.367739, 0, 0},
                              { -0.955010, 0.372377, 0, 0},
                              { 0.800057, 0.120602, 0, 0},
                              { -0.749494, 0.182799, 0, 0},
                              { -0.857289, -0.416908, 0, 0},
                              { -0.108714, -0.052382, 0, 0},
                              { 0.104546, 0.965765, 0, 0},
                              { -0.013566, -0.698451, 0, 0},
                              { -0.494228, 0.789840, 0, 0},
                              { 0.797068, -0.468242, 0, 0},
                              { 0.808412, 0.533884, 0, 0},
                              { 0.403645, -0.793536, 0, 0},
                              { 0.382645, -0.273012, 0, 0},
                              { -0.041249, -0.597179, 0, 0},
                              { -0.370926, -0.917990, 0, 0},
                              { -0.379535, -0.335349, 0, 0},
                              { -0.315447, 0.106907, 0, 0},
                              { -0.767181, -0.614345, 0, 0},
                              { -0.486522, 0.639513, 0, 0},
                              { 0.235987, 0.151055, 0, 0},
                              { 0.030929, 0.730902, 0, 0},
                              { -0.828460, -0.105583, 0, 0},
                              { -0.873238, 0.303417, 0, 0},
                              { 0.926868, -0.116035, 0, 0},
                              { 0.698010, 0.376487, 0, 0},
                              { 0.823992, -0.515003, 0, 0},
                              { 0.508441, 0.753353, 0, 0},
                              { -0.975402, -0.071139, 0, 0},
                              { -0.920347, -0.411420, 0, 0},
                              { -0.883908, 0.217872, 0, 0},
                              { -0.884518, 0.568041, 0, 0},
                              { -0.811945, 0.905210, 0, 0},
                              { -0.792474, -0.779962, 0, 0},
                              { -0.614856, 0.386578, 0, 0},
                              { -0.580859, -0.208777, 0, 0},
                              { -0.537950, 0.716666, 0, 0},
                              { -0.515427, 0.089999, 0, 0},
                              { -0.454634, -0.707938, 0, 0},
                              { -0.420942, 0.991272, 0, 0},
                              { -0.261147, 0.588488, 0, 0},
                              { -0.211219, 0.114841, 0, 0},
                              { -0.146336, -0.259194, 0, 0},
                              { -0.139439, -0.888668, 0, 0},
                              { 0.011689, 0.326395, 0, 0},
                              { 0.038057, 0.625477, 0, 0},
                              { 0.062593, -0.508530, 0, 0},
                              { 0.125584, 0.046907, 0, 0},
                              { 0.169469, -0.997253, 0, 0},
                              { 0.320597, 0.291055, 0, 0},
                              { 0.359172, -0.633717, 0, 0},
                              { 0.435713, -0.250832, 0, 0},
                              { 0.507797, -0.916562, 0, 0},
                              { 0.545763, 0.730216, 0, 0},
                              { 0.568590, 0.116550, 0, 0},
                              { 0.743156, -0.505173, 0, 0},
                              { 0.736442, -0.189734, 0, 0},
                              { 0.843562, 0.357036, 0, 0},
                              { 0.865413, 0.763726, 0, 0},
                              { 0.872005, -0.927000, 0, 0} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r0.z = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r0.w = r0.z * cb1[65].x + cb1[65].y;
  r0.z = r0.z * cb1[65].z + -cb1[65].w;
  r0.z = 1 / r0.z;
  r1.z = r0.w + r0.z;
  r0.zw = v0.xy * cb1[132].zw + -cb1[66].wz;
  r0.zw = r0.zw / cb1[66].xy;
  r1.xy = r0.zw * r1.zz;
  r2.xyzw = cb0[30].xyzw * r1.yyyy;
  r2.xyzw = r1.xxxx * cb0[29].xyzw + r2.xyzw;
  r2.xyzw = r1.zzzz * cb0[31].xyzw + r2.xyzw;
  r2.xyzw = cb0[32].xyzw + r2.xyzw;
  r3.xyz = cb1[49].xyz * r1.yyy;
  r3.xyz = r1.xxx * cb1[48].xyz + r3.xyz;
  r3.xyz = r1.zzz * cb1[50].xyz + r3.xyz;
  r3.xyz = cb1[51].xyz + r3.xyz;
  r0.zw = r2.xy / r2.ww;
  r1.w = min(0.999989986, r2.z);
  r2.x = -cb0[28].x + r2.z;
  r2.x = saturate(cb0[28].y * r2.x);
  r2.x = 1 + -r2.x;
  r4.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.y = dot(r4.xyz, r4.xyz);
  r2.y = rsqrt(r2.y);
  r4.xyz = r4.xyz * r2.yyy;
  r2.y = cmp(cb0[35].w == 0.000000);
  r3.xyz = cb0[35].xyz + -r3.xyz;
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = rsqrt(r2.w);
  r3.xyz = r3.xyz * r2.www;
  r3.xyz = r2.yyy ? -cb0[35].xyz : r3.xyz;
  r2.y = saturate(dot(r4.xyz, r3.xyz));
  r2.w = 1 + -cb0[33].z;
  r2.y = r2.y * r2.w + cb0[33].z;
  r2.y = cb0[0].z * r2.y;
  r0.zw = r0.zw * cb0[1].xy + float2(-0.5,-0.5);
  r3.xy = frac(r0.zw);
  r0.zw = floor(r0.zw);
  r0.zw = float2(0.5,0.5) + r0.zw;
  r0.zw = cb0[1].zw * r0.zw;
  r5.xyzw = t4.Gather(s1_s, r0.zw, int2(-1, -1)).xyzw;
  r1.w = r1.w * r2.y + -1;
  r6.xyzw = saturate(r5.xyzw * r2.yyyy + -r1.wwww);
  r7.xyzw = t4.Gather(s1_s, r0.zw, int2(1, -1)).xyzw;
  r8.xyzw = saturate(r7.xyzw * r2.yyyy + -r1.wwww);
  r9.xyzw = t4.Gather(s1_s, r0.zw, int2(-1, 1)).xyzw;
  r10.xyzw = saturate(r9.xyzw * r2.yyyy + -r1.wwww);
  r11.xyzw = t4.Gather(s1_s, r0.zw, int2(1, 1)).xyzw;
  r12.xyzw = saturate(r11.xyzw * r2.yyyy + -r1.wwww);
  r0.zw = float2(1,1) + -r3.xy;
  r2.yw = r6.wx * r0.zz + r6.zy;
  r3.zw = r10.wx * r0.zz + r10.zy;
  r2.yw = r2.yw + r8.wx;
  r3.zw = r3.zw + r12.wx;
  r6.xy = r8.zy * r3.xx + r2.yw;
  r6.zw = r12.zy * r3.xx + r3.zw;
  r8.x = 0.111111112 * r0.w;
  r8.yz = float2(0.111111112,0.111111112);
  r8.w = 0.111111112 * r3.y;
  r0.w = dot(r6.xyzw, r8.xyzw);
  r1.w = t2.SampleLevel(s0_s, r0.xy, 0).w;
  r1.w = 255 * r1.w;
  r1.w = round(r1.w);
  r1.w = (uint)r1.w;
  r1.w = (int)r1.w & 15;
  r6.xyzw = cmp((int4)r1.wwww == int4(2,3,5,6));
  r2.y = (int)r6.y | (int)r6.x;
  r3.yz = cmp((int2)r1.ww == int2(7,9));
  r2.w = (int)r6.z | (int)r2.y;
  r2.w = (int)r6.w | (int)r2.w;
  r2.w = (int)r3.y | (int)r2.w;
  r2.w = (int)r3.z | (int)r2.w;
  if (r2.w != 0) {
    r0.xy = t3.SampleLevel(s0_s, r0.xy, 0).xw;
    r10.xyzw = cmp((int4)r1.wwww == int4(4,8,12,13));
    r1.w = (int)r2.y | (int)r10.x;
    r1.w = (int)r6.z | (int)r1.w;
    r1.w = (int)r6.w | (int)r1.w;
    r1.w = (int)r3.y | (int)r1.w;
    r1.w = (int)r10.y | (int)r1.w;
    r1.w = (int)r10.z | (int)r1.w;
    r1.w = (int)r10.w | (int)r1.w;
    r1.w = (int)r3.z | (int)r1.w;
    r0.xy = (int2)r0.xy & (int2)r1.ww;
    r0.y = min(0.999000013, r0.y);
    r0.y = 1 + -r0.y;
    r0.y = log2(r0.y);
    r0.y = -0.0346573591 * r0.y;
    r1.w = (int)r3.z | (int)r3.y;
    r0.y = r1.w ? 1 : r0.y;
    r1.w = cb0[33].x + r2.z;
    r0.y = cb0[33].w * r0.y;
    if (r6.z != 0) {
      r0.x = r0.x * 255 + 0.5;
      r6.y = (uint)r0.x;
      r6.xzw = float3(3,0,0);
      r2.yz = t5.Load(r6.xyz).xy;
      r3.yzw = cb1[13].xyz * r4.yyy;
      r3.yzw = r4.xxx * cb1[12].xyz + r3.yzw;
      r3.yzw = r4.zzz * cb1[14].xyz + r3.yzw;
      r0.x = cb0[33].w * r2.y;
      r2.y = 0.5 * r2.z;
      r1.xyz = -r2.yyy * r3.yzw + r1.xyz;
      r4.xyzw = cb0[30].xyzw * r1.yyyy;
      r4.xyzw = r1.xxxx * cb0[29].xyzw + r4.xyzw;
      r4.xyzw = r1.zzzz * cb0[31].xyzw + r4.xyzw;
      r4.xyzw = cb0[32].xyzw + r4.xyzw;
      r1.xy = r4.xy / r4.ww;
      r0.x = 3.0999999 * r0.x;
      r1.z = cb0[33].x + r4.z;
      r2.zw = float2(0,2.1019477e-044);
      while (true) {
        r3.y = cmp((int)r2.w >= 31);
        if (r3.y != 0) break;
        r3.yz = icb[r2.w+0].xy * cb0[1].ww + r1.xy;
        r3.y = t4.SampleLevel(s1_s, r3.yz, 0).x;
        r3.y = -r3.y + r1.z;
        r3.z = r3.y * r0.x;
        r3.z = cmp(0 < r3.z);
        r3.y = r3.y * r0.x + r2.y;
        r3.w = max(0, r3.y);
        r3.y = r3.z ? r3.y : r3.w;
        r3.y = max(0.150000006, abs(r3.y));
        r3.y = min(5, r3.y);
        r3.y = r3.y + r2.z;
        r2.z = 0.25 + r3.y;
        r2.w = (int)r2.w + 1;
      }
      r0.x = -r2.z * 0.0125000002 + 1;
    } else {
      r4.xyzw = r1.wwww + -r5.xyzw;
      r4.xyzw = max(float4(0,0,0,0), r4.xyzw);
      r4.xyzw = -r4.xyzw * r0.yyyy;
      r4.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r4.xyzw;
      r4.xyzw = exp2(r4.xyzw);
      r4.xyzw = min(float4(1,1,1,1), r4.xyzw);
      r5.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r5.xyzw);
      r4.xyzw = r5.xyzw ? float4(1,1,1,1) : r4.xyzw;
      r5.xyzw = r1.wwww + -r7.xyzw;
      r5.xyzw = max(float4(0,0,0,0), r5.xyzw);
      r5.xyzw = -r5.xyzw * r0.yyyy;
      r5.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r5.xyzw;
      r5.xyzw = exp2(r5.xyzw);
      r5.xyzw = min(float4(1,1,1,1), r5.xyzw);
      r6.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r7.xyzw);
      r5.xyzw = r6.xyzw ? float4(1,1,1,1) : r5.xyzw;
      r6.xyzw = r1.wwww + -r9.xyzw;
      r6.xyzw = max(float4(0,0,0,0), r6.xyzw);
      r6.xyzw = -r6.xyzw * r0.yyyy;
      r6.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r6.xyzw;
      r6.xyzw = exp2(r6.xyzw);
      r6.xyzw = min(float4(1,1,1,1), r6.xyzw);
      r7.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r9.xyzw);
      r6.xyzw = r7.xyzw ? float4(1,1,1,1) : r6.xyzw;
      r1.xyzw = r1.wwww + -r11.xyzw;
      r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
      r1.xyzw = -r1.xyzw * r0.yyyy;
      r1.xyzw = float4(1.44269502,1.44269502,1.44269502,1.44269502) * r1.xyzw;
      r1.xyzw = exp2(r1.xyzw);
      r1.xyzw = min(float4(1,1,1,1), r1.xyzw);
      r7.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r11.xyzw);
      r1.xyzw = r7.xyzw ? float4(1,1,1,1) : r1.xyzw;
      r2.yz = r4.wx * r0.zz + r4.zy;
      r0.yz = r6.wx * r0.zz + r6.zy;
      r2.yz = r2.yz + r5.wx;
      r0.yz = r0.yz + r1.wx;
      r4.xy = r5.zy * r3.xx + r2.yz;
      r4.zw = r1.zy * r3.xx + r0.yz;
      r0.x = dot(r4.xyzw, r8.xyzw);
    }
  } else {
    r0.x = 1;
  }
  r0.y = -0.5 + r0.w;
  r0.y = saturate(r0.y * cb0[26].z + 0.5);
  r0.z = cb0[26].y * r2.x;
  r0.y = r0.y * r0.y + -1;
  r0.y = r0.z * r0.y + 1;
  r0.x = r0.x * r0.x + -1;
  r0.x = r0.z * r0.x + 1;
  o0.xyzw = sqrt(r0.yxyx);
  return;
}