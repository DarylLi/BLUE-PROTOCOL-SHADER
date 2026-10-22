// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[359];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[50];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v1.xy;
  r1.xyzw = t6.Sample(s1_s, r0.xy).xyzw;
  r2.xyz = t1.SampleLevel(s0_s, r0.xy, 0).xyz;
  r0.zw = t2.SampleLevel(s0_s, r0.xy, 0).zw;
  r3.xyzw = t3.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r4.xyzw = t4.SampleLevel(s0_s, r0.xy, 0).xyzw;
  r2.w = t0.SampleLevel(s0_s, r0.xy, 0).x;
  r5.x = r2.w * cb1[65].x + cb1[65].y;
  r2.w = r2.w * cb1[65].z + -cb1[65].w;
  r2.w = 1 / r2.w;
  r2.w = r5.x + r2.w;
  r5.xy = cb1[132].xy * r0.xy;
  r5.xy = (uint2)r5.xy;
  r5.z = (uint)cb1[152].x;
  r5.x = (int)r5.y + (int)r5.x;
  r5.x = (int)r5.z + (int)r5.x;
  r5.x = (int)r5.x & 1;
  r2.xyz = r2.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r6.xyzw = cmp((int4)r0.wwww == int4(12,13,2,3));
  r5.yz = (int2)r6.yw | (int2)r6.xz;
  r7.xyzw = cmp((int4)r0.wwww == int4(4,5,6,7));
  r5.zw = (int2)r5.zz | (int2)r7.xy;
  r5.zw = (int2)r7.yz | (int2)r5.zw;
  r5.zw = (int2)r7.zw | (int2)r5.zw;
  r5.z = (int)r7.w | (int)r5.z;
  r8.xyzw = cmp((int4)r0.wwww == int4(8,9,14,1));
  r0.w = (int)r5.z | (int)r8.x;
  r0.w = (int)r6.x | (int)r0.w;
  r0.w = (int)r6.y | (int)r0.w;
  r0.w = (int)r8.y | (int)r0.w;
  r4.xyzw = (int4)r4.xyzw & (int4)r0.wwww;
  r0.w = (int)r7.y | (int)r8.y;
  r5.z = cmp(0 < cb1[156].y);
  r6.y = cmp(0 < cb1[207].z);
  r5.z = r5.z ? r6.y : 0;
  r6.y = cmp(0 != cb1[156].y);
  r6.yzw = r6.yyy ? float3(1,1,1) : r3.xyz;
  r5.x = r5.x ? 1 : 0;
  r6.yzw = r5.zzz ? r5.xxx : r6.yzw;
  r6.yzw = r0.www ? r6.yzw : r3.xyz;
  r3.xyz = r5.yyy ? r3.xyz : r6.yzw;
  r0.w = (int)r6.x | (int)r8.z;
  if (r0.w != 0) {
    r0.xy = t5.SampleLevel(s0_s, r0.xy, 0).yw;
    r0.w = r5.y ? r3.w : 1;
    r0.xy = (int2)r0.xy & (int2)r5.yy;
    r3.w = cmp(cb1[31].w < 1);
    r5.x = cb1[65].w + r2.w;
    r5.x = cb1[65].z * r5.x;
    r5.x = 1 / r5.x;
    r5.y = r2.w * cb1[30].z + cb1[31].z;
    r3.w = r3.w ? r5.x : r5.y;
    r5.x = r2.w / cb0[9].y;
    r5.x = min(1, r5.x);
    r5.x = 1 + -r5.x;
    r0.y = cb0[9].x * r0.y;
    r0.y = r0.y * r5.x;
    r6.xy = cb1[132].zw * r0.yy;
    r5.yz = cb1[130].xy + cb1[129].xy;
    r5.yz = r5.yz / cb1[132].xy;
    r7.xy = -r6.xy;
    r7.xw = v1.xy * cb1[132].zw + r7.xy;
    r0.y = t0.SampleLevel(s0_s, r7.xw, 0).x;
    r6.w = cmp(r3.w >= r0.y);
    if (r6.w != 0) {
      r6.w = t2.SampleLevel(s0_s, r7.xw, 0).w;
      r6.w = 255 * r6.w;
      r6.w = round(r6.w);
      r6.w = (uint)r6.w;
      r6.w = (int)r6.w & 15;
      r7.xw = cmp((int2)r6.ww == int2(12,14));
      r6.w = (int)r7.w | (int)r7.x;
      r0.y = (int)r0.y & (int)r6.w;
    } else {
      r0.y = r3.w;
    }
    r7.z = 0;
    r7.xy = v1.xy * cb1[132].zw + r7.zy;
    r6.w = t0.SampleLevel(s0_s, r7.xy, 0).x;
    r7.z = cmp(r3.w >= r6.w);
    if (r7.z != 0) {
      r7.x = t2.SampleLevel(s0_s, r7.xy, 0).w;
      r7.x = 255 * r7.x;
      r7.x = round(r7.x);
      r7.x = (uint)r7.x;
      r7.x = (int)r7.x & 15;
      r7.xy = cmp((int2)r7.xx == int2(12,14));
      r7.x = (int)r7.y | (int)r7.x;
      r6.w = r7.x ? r6.w : 0;
    } else {
      r6.w = r3.w;
    }
    r6.z = -r6.y;
    r6.xy = v1.xy * cb1[132].zw + r6.xz;
    r5.yz = min(r6.xy, r5.yz);
    r6.x = t0.SampleLevel(s0_s, r5.yz, 0).x;
    r6.y = cmp(r3.w >= r6.x);
    if (r6.y != 0) {
      r5.y = t2.SampleLevel(s0_s, r5.yz, 0).w;
      r5.y = 255 * r5.y;
      r5.y = round(r5.y);
      r5.y = (uint)r5.y;
      r5.y = (int)r5.y & 15;
      r5.yz = cmp((int2)r5.yy == int2(12,14));
      r5.y = (int)r5.z | (int)r5.y;
      r5.y = r5.y ? r6.x : 0;
    } else {
      r5.y = r3.w;
    }
    r5.z = -r5.y + r0.y;
    r0.y = r0.y + -r3.w;
    r6.x = r6.w + -r3.w;
    r0.y = r6.x * 2 + r0.y;
    r0.y = r0.y + r5.y;
    r0.y = r0.y + -r3.w;
    r0.y = r0.y * r0.y;
    r0.y = r5.z * r5.z + r0.y;
    r0.y = cb0[9].w * r0.y;
    r0.y = sqrt(r0.y);
    r3.w = cb0[9].z * r3.w;
    r0.y = cmp(r0.y >= r3.w);
    r0.y = r0.y ? 1.000000 : 0;
    r3.w = max(r3.x, r3.y);
    r3.w = max(r3.w, r3.z);
    r0.z = r3.w + r0.z;
    r0.z = max(0, r0.z);
    r3.w = max(0.00100000005, r3.w);
    r0.z = r0.z / r3.w;
    r6.xyz = r3.xyz * r0.zzz;
    r0.z = cmp(r4.w < 1);
    r0.z = r0.z ? 0 : 1;
    r0.z = r0.z * r0.w;
    r6.xyz = r6.xyz * r0.yyy;
    r0.xyw = r6.xyz * r0.xxx;
    r0.xyw = r0.xyw * r5.xxx;
    r0.xyz = r0.xyw * r0.zzz + r1.xyz;
    r0.w = r2.w / cb0[10].z;
    r0.w = min(1, r0.w);
    r5.xy = float2(1,1) + -cb0[10].xy;
    r5.xy = r0.ww * r5.xy + cb0[10].xy;
    r0.w = dot(r0.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r0.xyz = r0.xyz + -r0.www;
    r0.xyz = r5.xxx * r0.xyz + r0.www;
    r0.xyz = max(float3(0,0,0), r0.xyz);
    r0.xyz = float3(5.55555534,5.55555534,5.55555534) * r0.xyz;
    r0.xyz = log2(r0.xyz);
    r0.xyz = r5.yyy * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r0.xyz;
  } else {
    r0.x = dot(cb0[14].xyz, r2.xyz);
    r0.y = cmp(0 < r0.x);
    r0.z = cmp(0 < asuint(cb0[15].w));
    r0.y = r0.z ? r0.y : 0;
    if (r0.y != 0) {
      r0.y = cb0[15].w;
      r0.z = 0;
      while (true) {
        r0.w = cmp((uint)r0.z >= asuint(cb0[15].w));
        if (r0.w != 0) break;
        r0.w = dot(cb0[16].xyzw, icb[r0.z+0].xyzw);
        r0.w = cmp(r2.w < r0.w);
        if (r0.w != 0) {
          r0.y = r0.z;
          break;
        }
        r0.z = (int)r0.z + 1;
      }
      r0.z = cmp((uint)r0.y < asuint(cb0[15].w));
      if (r0.z != 0) {
        r0.zw = v1.xy * cb1[132].zw + -cb1[66].wz;
        r0.zw = r0.zw / cb1[66].xy;
        r0.zw = r0.zw * r2.ww;
        r3.w = (uint)r0.y << 2;
        r6.xyzw = cb0[r3.w+19].xyzw * r0.wwww;
        r6.xyzw = r0.zzzz * cb0[r3.w+18].xyzw + r6.xyzw;
        r6.xyzw = r2.wwww * cb0[r3.w+20].xyzw + r6.xyzw;
        r6.xyzw = cb0[r3.w+21].xyzw + r6.xyzw;
        r0.z = min(0.999989986, r6.z);
        r0.y = dot(cb0[17].xyzw, icb[r0.y+0].xyzw);
        r7.xyzw = cb0[13].xyxy * r6.xyxy;
        r9.xy = frac(r7.zw);
        r7.xyzw = floor(r7.xyzw);
        r10.xyzw = float4(-3,-3,-2,-3) + r7.zwzw;
        r10.xyzw = cb0[13].zwzw * r10.xyzw;
        r11.x = t7.SampleLevel(s2_s, r10.xy, 0).x;
        r11.y = t7.SampleLevel(s2_s, r10.zw, 0).x;
        r10.xyzw = float4(-1,-3,0,-3) + r7.zwzw;
        r10.xyzw = cb0[13].zwzw * r10.xyzw;
        r11.z = t7.SampleLevel(s2_s, r10.xy, 0).x;
        r11.w = t7.SampleLevel(s2_s, r10.zw, 0).x;
        r0.w = min(1, r11.x);
        r0.w = min(r11.y, r0.w);
        r0.w = min(r11.z, r0.w);
        r0.w = min(r11.w, r0.w);
        r0.z = r0.z * r0.y + -1;
        r10.xyzw = saturate(r11.xyzw * r0.yyyy + -r0.zzzz);
        r11.xyzw = float4(-3,-2,-2,-2) + r7.zwzw;
        r11.xyzw = cb0[13].zwzw * r11.xyzw;
        r12.x = t7.SampleLevel(s2_s, r11.xy, 0).x;
        r12.y = t7.SampleLevel(s2_s, r11.zw, 0).x;
        r11.xyzw = float4(-1,-2,0,-2) + r7.zwzw;
        r11.xyzw = cb0[13].zwzw * r11.xyzw;
        r12.z = t7.SampleLevel(s2_s, r11.xy, 0).x;
        r12.w = t7.SampleLevel(s2_s, r11.zw, 0).x;
        r0.w = min(r12.x, r0.w);
        r0.w = min(r12.y, r0.w);
        r0.w = min(r12.z, r0.w);
        r0.w = min(r12.w, r0.w);
        r11.xyzw = saturate(r12.xyzw * r0.yyyy + -r0.zzzz);
        r12.xyzw = float4(-3,-1,-2,-1) + r7.zwzw;
        r12.xyzw = cb0[13].zwzw * r12.xyzw;
        r13.x = t7.SampleLevel(s2_s, r12.xy, 0).x;
        r13.y = t7.SampleLevel(s2_s, r12.zw, 0).x;
        r12.xyzw = float4(-1,-1,0,-1) + r7.zwzw;
        r12.xyzw = cb0[13].zwzw * r12.xyzw;
        r13.z = t7.SampleLevel(s2_s, r12.xy, 0).x;
        r13.w = t7.SampleLevel(s2_s, r12.zw, 0).x;
        r0.w = min(r13.x, r0.w);
        r0.w = min(r13.y, r0.w);
        r0.w = min(r13.z, r0.w);
        r0.w = min(r13.w, r0.w);
        r12.xyzw = saturate(r13.xyzw * r0.yyyy + -r0.zzzz);
        r13.xyzw = float4(-3,0,-2,0) + r7.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r14.x = t7.SampleLevel(s2_s, r13.xy, 0).x;
        r14.y = t7.SampleLevel(s2_s, r13.zw, 0).x;
        r13.xyzw = float4(-1,0,1,-3) + r7.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r14.z = t7.SampleLevel(s2_s, r13.xy, 0).x;
        r5.xy = cb0[13].zw * r7.zw;
        r14.w = t7.SampleLevel(s2_s, r5.xy, 0).x;
        r0.w = min(r14.x, r0.w);
        r0.w = min(r14.y, r0.w);
        r0.w = min(r14.z, r0.w);
        r0.w = min(r14.w, r0.w);
        r14.xyzw = saturate(r14.xyzw * r0.yyyy + -r0.zzzz);
        r4.w = 1 + -r9.x;
        r5.x = r10.x * r4.w + r10.y;
        r5.y = r11.x * r4.w + r11.y;
        r5.z = r12.x * r4.w + r12.y;
        r8.x = r14.x * r4.w + r14.y;
        r5.x = r5.x + r10.z;
        r5.y = r5.y + r11.z;
        r5.z = r5.z + r12.z;
        r8.x = r8.x + r14.z;
        r15.y = r10.w * r9.x + r5.x;
        r15.z = r11.w * r9.x + r5.y;
        r15.w = r12.w * r9.x + r5.z;
        r15.x = r14.w * r9.x + r8.x;
        r9.z = 1 + -r9.y;
        r9.w = 1;
        r5.x = dot(r15.xywz, r9.yzww);
        r5.x = 0.111111112 * r5.x;
        r16.x = min(1, r5.x);
        r5.x = t7.SampleLevel(s2_s, r13.zw, 0).x;
        r13.xyzw = float4(2,-3,3,-3) + r7.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r5.y = t7.SampleLevel(s2_s, r13.xy, 0).x;
        r5.z = t7.SampleLevel(s2_s, r13.zw, 0).x;
        r0.w = min(r5.x, r0.w);
        r0.w = min(r5.y, r0.w);
        r0.w = min(r5.z, r0.w);
        r5.xyz = saturate(r5.xyz * r0.yyy + -r0.zzz);
        r13.xyzw = float4(1,-2,2,-2) + r7.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r10.x = t7.SampleLevel(s2_s, r13.xy, 0).x;
        r10.y = t7.SampleLevel(s2_s, r13.zw, 0).x;
        r13.xyzw = float4(3,-2,1,-1) + r7.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r10.z = t7.SampleLevel(s2_s, r13.xy, 0).x;
        r0.w = min(r10.x, r0.w);
        r0.w = min(r10.y, r0.w);
        r0.w = min(r10.z, r0.w);
        r10.xyz = saturate(r10.xyz * r0.yyy + -r0.zzz);
        r11.x = t7.SampleLevel(s2_s, r13.zw, 0).x;
        r13.xyzw = float4(2,-1,3,-1) + r7.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r11.y = t7.SampleLevel(s2_s, r13.xy, 0).x;
        r11.z = t7.SampleLevel(s2_s, r13.zw, 0).x;
        r0.w = min(r11.x, r0.w);
        r0.w = min(r11.y, r0.w);
        r0.w = min(r11.z, r0.w);
        r11.xyz = saturate(r11.xyz * r0.yyy + -r0.zzz);
        r13.xyzw = float4(1,0,2,0) + r7.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r12.x = t7.SampleLevel(s2_s, r13.xy, 0).x;
        r12.y = t7.SampleLevel(s2_s, r13.zw, 0).x;
        r13.xyzw = float4(3,0,-3,1) + r7.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r12.z = t7.SampleLevel(s2_s, r13.xy, 0).x;
        r0.w = min(r12.x, r0.w);
        r0.w = min(r12.y, r0.w);
        r0.w = min(r12.z, r0.w);
        r12.xyz = saturate(r12.xyz * r0.yyy + -r0.zzz);
        r5.x = r10.w * r4.w + r5.x;
        r8.x = r11.w * r4.w + r10.x;
        r9.z = r12.w * r4.w + r11.x;
        r10.x = r14.w * r4.w + r12.x;
        r5.x = r5.x + r5.y;
        r5.y = r8.x + r10.y;
        r8.x = r9.z + r11.y;
        r9.z = r10.x + r12.y;
        r14.y = r5.z * r9.x + r5.x;
        r14.z = r10.z * r9.x + r5.y;
        r14.w = r11.z * r9.x + r8.x;
        r14.x = r12.z * r9.x + r9.z;
        r10.xyzw = r9.ywwy * float4(-1,1,1,1) + float4(1,0,0,0);
        r5.x = dot(r14.yzwx, r10.xyzw);
        r5.x = 0.111111112 * r5.x;
        r16.y = min(1, r5.x);
        r11.x = t7.SampleLevel(s2_s, r13.zw, 0).x;
        r12.xyzw = float4(-2,1,-1,1) + r7.zwzw;
        r12.xyzw = cb0[13].zwzw * r12.xyzw;
        r11.y = t7.SampleLevel(s2_s, r12.xy, 0).x;
        r11.z = t7.SampleLevel(s2_s, r12.zw, 0).x;
        r12.xyzw = float4(0,1,-3,2) + r7.zwzw;
        r12.xyzw = cb0[13].zwzw * r12.xyzw;
        r11.w = t7.SampleLevel(s2_s, r12.xy, 0).x;
        r0.w = min(r11.x, r0.w);
        r0.w = min(r11.y, r0.w);
        r0.w = min(r11.z, r0.w);
        r0.w = min(r11.w, r0.w);
        r11.xyzw = saturate(r11.xyzw * r0.yyyy + -r0.zzzz);
        r12.x = t7.SampleLevel(s2_s, r12.zw, 0).x;
        r13.xyzw = float4(-2,2,-1,2) + r7.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r12.y = t7.SampleLevel(s2_s, r13.xy, 0).x;
        r12.z = t7.SampleLevel(s2_s, r13.zw, 0).x;
        r13.xyzw = float4(0,2,-3,3) + r7.zwzw;
        r13.xyzw = cb0[13].zwzw * r13.xyzw;
        r12.w = t7.SampleLevel(s2_s, r13.xy, 0).x;
        r0.w = min(r12.x, r0.w);
        r0.w = min(r12.y, r0.w);
        r0.w = min(r12.z, r0.w);
        r0.w = min(r12.w, r0.w);
        r12.xyzw = saturate(r12.xyzw * r0.yyyy + -r0.zzzz);
        r13.x = t7.SampleLevel(s2_s, r13.zw, 0).x;
        r17.xyzw = float4(-2,3,-1,3) + r7.zwzw;
        r17.xyzw = cb0[13].zwzw * r17.xyzw;
        r13.y = t7.SampleLevel(s2_s, r17.xy, 0).x;
        r13.z = t7.SampleLevel(s2_s, r17.zw, 0).x;
        r17.xyzw = float4(0,3,1,1) + r7.zwzw;
        r17.xyzw = cb0[13].zwzw * r17.xyzw;
        r13.w = t7.SampleLevel(s2_s, r17.xy, 0).x;
        r0.w = min(r13.x, r0.w);
        r0.w = min(r13.y, r0.w);
        r0.w = min(r13.z, r0.w);
        r0.w = min(r13.w, r0.w);
        r13.xyzw = saturate(r13.xyzw * r0.yyyy + -r0.zzzz);
        r5.x = r11.x * r4.w + r11.y;
        r5.y = r12.x * r4.w + r12.y;
        r5.z = r13.x * r4.w + r13.y;
        r5.x = r5.x + r11.z;
        r5.y = r5.y + r12.z;
        r5.z = r5.z + r13.z;
        r15.y = r11.w * r9.x + r5.x;
        r15.z = r12.w * r9.x + r5.y;
        r15.w = r13.w * r9.x + r5.z;
        r5.x = dot(r15.xyzw, r10.xyzw);
        r5.x = 0.111111112 * r5.x;
        r16.z = min(1, r5.x);
        r5.x = t7.SampleLevel(s2_s, r17.zw, 0).x;
        r15.xyzw = float4(2,1,3,1) + r7.zwzw;
        r15.xyzw = cb0[13].zwzw * r15.xyzw;
        r5.y = t7.SampleLevel(s2_s, r15.xy, 0).x;
        r5.z = t7.SampleLevel(s2_s, r15.zw, 0).x;
        r0.w = min(r5.x, r0.w);
        r0.w = min(r5.y, r0.w);
        r0.w = min(r5.z, r0.w);
        r5.xyz = saturate(r5.xyz * r0.yyy + -r0.zzz);
        r15.xyzw = float4(1,2,2,2) + r7.zwzw;
        r15.xyzw = cb0[13].zwzw * r15.xyzw;
        r9.y = t7.SampleLevel(s2_s, r15.xy, 0).x;
        r9.z = t7.SampleLevel(s2_s, r15.zw, 0).x;
        r15.xyzw = float4(3,2,1,3) + r7.zwzw;
        r15.xyzw = cb0[13].zwzw * r15.xyzw;
        r9.w = t7.SampleLevel(s2_s, r15.xy, 0).x;
        r0.w = min(r9.y, r0.w);
        r0.w = min(r9.z, r0.w);
        r0.w = min(r9.w, r0.w);
        r9.yzw = saturate(r9.yzw * r0.yyy + -r0.zzz);
        r11.x = t7.SampleLevel(s2_s, r15.zw, 0).x;
        r7.xyzw = float4(2,3,3,3) + r7.xyzw;
        r7.xyzw = cb0[13].zwzw * r7.xyzw;
        r11.y = t7.SampleLevel(s2_s, r7.xy, 0).x;
        r11.z = t7.SampleLevel(s2_s, r7.zw, 0).x;
        r0.w = min(r11.x, r0.w);
        r0.w = min(r11.y, r0.w);
        r0.w = min(r11.z, r0.w);
        r7.xyz = saturate(r11.xyz * r0.yyy + -r0.zzz);
        r0.y = r11.w * r4.w + r5.x;
        r0.z = r12.w * r4.w + r9.y;
        r4.w = r13.w * r4.w + r7.x;
        r0.y = r0.y + r5.y;
        r0.z = r0.z + r9.z;
        r4.w = r4.w + r7.y;
        r14.y = r5.z * r9.x + r0.y;
        r14.z = r9.w * r9.x + r0.z;
        r14.w = r7.z * r9.x + r4.w;
        r0.y = dot(r14.xyzw, r10.xyzw);
        r0.y = 0.111111112 * r0.y;
        r16.w = min(1, r0.y);
        r0.y = dot(r16.xyzw, float4(0.25,0.25,0.25,0.25));
        r0.y = -0.5 + r0.y;
        r0.y = saturate(r0.y * cb0[15].x + 0.5);
        r7.xyzw = cb0[r3.w+35].xyzw * r6.yyyy;
        r7.xyzw = r6.xxxx * cb0[r3.w+34].xyzw + r7.xyzw;
        r9.xyzw = r0.wwww * cb0[r3.w+36].xyzw + r7.xyzw;
        r9.xyzw = r6.wwww * cb0[r3.w+37].xyzw + r9.xyzw;
        r7.xyzw = r6.zzzz * cb0[r3.w+36].xyzw + r7.xyzw;
        r6.xyzw = r6.wwww * cb0[r3.w+37].xyzw + r7.xyzw;
        r6.xyzw = r9.xyzw + -r6.xyzw;
        r0.z = dot(r6.xyzw, r6.xyzw);
        r0.z = sqrt(r0.z);
        r0.z = r0.z / cb0[14].w;
        r0.z = min(1, r0.z);
        r0.w = 1 + -r0.y;
        r0.y = r0.z * r0.w + r0.y;
        r0.x = saturate(r0.x);
        r0.y = -1 + r0.y;
        r0.x = r0.x * r0.y + 1;
        r0.y = saturate(r2.w * cb0[15].y + cb0[15].z);
        r0.y = r0.y * r0.y;
        r0.z = 1 + -r0.x;
        r0.x = r0.y * r0.z + r0.x;
        r0.yzw = float3(1,1,1) + -cb0[12].xyz;
        r0.xyz = r0.xxx * r0.yzw + cb0[12].xyz;
        r1.xyz = r1.xyz * r0.xyz;
      }
    }
  }
  if (r8.z != 0) {
    r0.x = cmp(0.100000001 < r1.w);
    r0.yzw = r4.xyz * r4.xyz;
    r1.xyz = r0.xxx ? r0.yzw : r1.xyz;
  }
  r0.x = (int)r5.w | (int)r8.y;
  r0.x = (int)r0.x | (int)r8.w;
  if (r0.x != 0) {
    r0.xyz = max(float3(0.00100000005,0.00100000005,0.00100000005), r3.xyz);
    r0.xyz = r1.xyz / r0.xyz;
    r0.w = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
    r0.w = saturate(r0.w / cb0[0].x);
    r3.w = saturate(r2.w / cb0[0].y);
    r4.xyzw = cb0[3].xyzw + -cb0[1].xyzw;
    r4.xyzw = r3.wwww * r4.xyzw + cb0[1].xyzw;
    r5.x = 1 + -r1.w;
    r5.yz = float2(2.29999995,2.29999995) * cb1[130].zw;
    r6.x = v1.x * cb1[132].z + r5.y;
    r6.y = v1.y * cb1[132].w + -r5.z;
    r5.yzw = t6.Gather(s1_s, r6.xy).yzw;
    r5.yzw = float3(1,1,1) + -r5.ywz;
    r5.z = r5.z + -r5.x;
    r5.xy = r5.xx + -r5.yw;
    r5.x = max(abs(r5.x), abs(r5.z));
    r5.x = max(r5.x, abs(r5.y));
    r6.xyzw = cb0[4].xyzw + -cb0[2].xyzw;
    r6.xyzw = r3.wwww * r6.xyzw + cb0[2].xyzw;
    r5.y = cb0[0].w + -cb0[0].z;
    r3.w = r3.w * r5.y + cb0[0].z;
    r5.x = log2(r5.x);
    r3.w = r5.x * r3.w;
    r3.w = exp2(r3.w);
    r3.w = 100 * r3.w;
    r3.w = min(1, r3.w);
    r2.x = dot(r2.xyz, cb1[358].xyz);
    r2.x = cmp(r2.x >= 0);
    r2.x = r2.x ? 1.000000 : 0;
    r2.x = r3.w * r2.x;
    r5.xyzw = r6.xyzw + -r4.xyzw;
    r4.xyzw = r2.xxxx * r5.xyzw + r4.xyzw;
    r2.x = max(r3.x, r3.y);
    r2.x = max(r2.x, r3.z);
    r2.x = r4.z + r2.x;
    r3.xyz = float3(1,0.666666687,0.333333343) + r4.xxx;
    r3.xyz = frac(r3.xyz);
    r3.xyz = r3.xyz * float3(6,6,6) + float3(-3,-3,-3);
    r3.xyz = saturate(float3(-1,-1,-1) + abs(r3.xyz));
    r3.xyz = float3(-1,-1,-1) + r3.xyz;
    r3.xyz = r4.yyy * r3.xyz + float3(1,1,1);
    r2.xyz = r3.xyz * r2.xxx;
    r3.xyz = r2.xyz * r0.xyz;
    r0.w = -1 + r0.w;
    r0.w = r4.w * r0.w + 1;
    r0.xyz = -r2.xyz * r0.xyz + r1.xyz;
    r0.xyz = r0.www * r0.xyz + r3.xyz;
    r0.w = saturate(r2.w / cb0[11].z);
    r2.xy = float2(-1,-1) + cb0[11].xy;
    r2.xy = r0.ww * r2.xy + float2(1,1);
    r0.w = dot(r0.xyz, float3(0.272228718,0.674081743,0.0536895171));
    r0.xyz = r0.xyz + -r0.www;
    r0.xyz = r2.xxx * r0.xyz + r0.www;
    r0.xyz = max(float3(0,0,0), r0.xyz);
    r0.xyz = float3(5.55555534,5.55555534,5.55555534) * r0.xyz;
    r0.xyz = log2(r0.xyz);
    r0.xyz = r2.yyy * r0.xyz;
    r0.xyz = exp2(r0.xyz);
    r1.xyz = float3(0.180000007,0.180000007,0.180000007) * r0.xyz;
  }
  o0.xyzw = r1.xyzw;
  return;
}