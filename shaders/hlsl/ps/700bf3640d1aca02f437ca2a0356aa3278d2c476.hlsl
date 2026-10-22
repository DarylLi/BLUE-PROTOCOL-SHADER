// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

TextureCube<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerComparisonState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb3 : register(b3)
{
  float4 cb3[3];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[12];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[210];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[94];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[24];
  r0.xy = (uint2)v1.xy;
  r0.z = v2.x;
  r1.xyz = cmp((uint3)r0.xyz < asuint(cb3[0].xyz));
  r0.w = r1.y ? r1.x : 0;
  r0.w = r1.z ? r0.w : 0;
  if (r0.w != 0) {
    r1.xy = cmp(float2(-2,0) < cb2[10].xw);
    r1.zw = (uint2)r0.xy;
    r2.xy = float2(0.5,0.5) + r1.zw;
    r2.xy = r2.xy / cb3[1].xy;
    r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
    r2.xy = float2(1,-1) * r2.xy;
    r0.w = (uint)v2.x;
    r2.z = 0.5 + r0.w;
    r2.z = r2.z / cb3[2].z;
    r2.z = exp2(r2.z);
    r2.z = -cb3[2].y + r2.z;
    r2.z = r2.z / cb3[2].x;
    r2.w = cmp(cb1[31].w < 1);
    r3.x = cb1[65].w + r2.z;
    r3.x = cb1[65].z * r3.x;
    r3.x = 1 / r3.x;
    r2.z = r2.z * cb1[30].z + cb1[31].z;
    r2.z = r2.w ? r3.x : r2.z;
    r3.xyzw = cb0[56].xyzw * r2.yyyy;
    r3.xyzw = r2.xxxx * cb0[55].xyzw + r3.xyzw;
    r3.xyzw = r2.zzzz * cb0[57].xyzw + r3.xyzw;
    r3.xyzw = cb0[58].xyzw + r3.xyzw;
    r2.xyz = r3.xyz / r3.www;
    r2.xyz = -cb1[70].xyz + r2.xyz;
    r3.xyz = cb0[60].xyw * r2.yyy;
    r3.xyz = r2.xxx * cb0[59].xyw + r3.xyz;
    r2.xyz = r2.zzz * cb0[61].xyw + r3.xyz;
    r2.xyz = cb0[62].xyw + r2.xyz;
    r2.xy = r2.xy / r2.zz;
    r3.xy = r2.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r2.x = r2.z * cb1[209].x + cb1[209].y;
    r2.x = log2(r2.x);
    r2.x = cb1[209].z * r2.x;
    r3.z = cb1[208].z * r2.x;
    r2.xyz = cmp(r3.xyz < float3(0,0,0));
    r2.x = (int)r2.y | (int)r2.x;
    r2.x = (int)r2.z | (int)r2.x;
    r3.xyz = cmp(float3(1,1,1) < r3.xyz);
    r2.y = (int)r3.y | (int)r3.x;
    r2.y = (int)r3.z | (int)r2.y;
    r2.x = (int)r2.y | (int)r2.x;
    r2.y = cmp(cb0[71].x < 0.00100000005);
    r2.x = (int)r2.y | (int)r2.x;
    r2.x = r2.x ? cb0[88].x : 1;
    r0.xyz = (int3)r0.xyz + int3(1,1,1);
    r0.xyz = (uint3)r0.xyz;
    r2.y = cb2[6].w * cb2[6].w;
    r3.xyz = cb2[9].zxy * cb2[8].yzx;
    r3.xyz = cb2[9].yzx * cb2[8].zxy + -r3.xyz;
    r4.xy = cmp(float2(-2,0.0350000001) < cb2[11].yx);
    r2.z = cb2[11].x * cb2[11].y;
    r3.w = -cb2[11].x * cb2[11].x + 1;
    r3.w = sqrt(r3.w);
    r3.w = cb2[11].y * r3.w;
    r5.x = cb2[9].w;
    r5.y = cb2[10].w;
    r4.z = 0.5 * cb2[10].w;
    r4.w = 15.3599997 * cb0[41].x;
    r5.zw = cb0[93].zw + -cb0[93].xy;
    r6.x = -cb0[88].y * cb0[88].y + 1;
    r6.y = cb0[88].y * cb0[88].y + 1;
    r6.z = -2 * cb0[88].y;
    r6.w = cb0[49].x;
    r7.xyzw = float4(0,0,0,0);
    while (true) {
      r8.x = cmp((uint)r7.w >= (uint)r2.x);
      if (r8.x != 0) break;
      r8.xy = cb0[r7.w+72].xy + r1.zw;
      r8.xy = r8.xy / cb3[1].xy;
      r8.xy = r8.xy * float2(2,2) + float2(-1,-1);
      r8.xy = float2(1,-1) * r8.xy;
      r8.z = cb0[r7.w+72].z + r0.w;
      r8.z = r8.z / cb3[2].z;
      r8.z = exp2(r8.z);
      r8.z = -cb3[2].y + r8.z;
      r8.z = r8.z / cb3[2].x;
      r8.w = cb1[65].w + r8.z;
      r8.w = cb1[65].z * r8.w;
      r8.w = 1 / r8.w;
      r8.z = r8.z * cb1[30].z + cb1[31].z;
      r8.z = r2.w ? r8.w : r8.z;
      r9.xyzw = cb0[56].xyzw * r8.yyyy;
      r9.xyzw = r8.xxxx * cb0[55].xyzw + r9.xyzw;
      r8.xyzw = r8.zzzz * cb0[57].xyzw + r9.xyzw;
      r8.xyzw = cb0[58].xyzw + r8.xyzw;
      r8.xyz = r8.xyz / r8.www;
      r8.xyz = -cb1[70].xyz + r8.xyz;
      r9.xyz = -cb1[67].xyz + r8.xyz;
      r8.w = dot(r9.xyz, r9.xyz);
      r8.w = rsqrt(r8.w);
      r9.xyz = r9.xyz * r8.www;
      r10.xyz = cb2[6].xyz + -r8.xyz;
      r8.w = dot(r10.xyz, r10.xyz);
      r9.w = rsqrt(r8.w);
      r11.xyz = r10.xyz * r9.www;
      r9.w = r8.w * r2.y;
      r9.w = -r9.w * r9.w + 1;
      r9.w = max(0, r9.w);
      r9.w = r9.w * r9.w;
      r10.w = dot(r11.xyz, cb2[8].xyz);
      r11.w = -cb2[10].x + r10.w;
      r11.w = saturate(cb2[10].y * r11.w);
      r11.w = r11.w * r11.w;
      r11.w = r11.w * r9.w;
      r9.w = r1.x ? r11.w : r9.w;
      r10.w = cmp(r10.w < 0);
      r10.w = r10.w ? 0 : r9.w;
      r9.w = r4.x ? r10.w : r9.w;
      if (r4.x != 0) {
        r12.x = dot(r3.xyz, r10.xyz);
        r12.y = dot(cb2[9].xyz, r10.xyz);
        r13.z = dot(cb2[8].xyz, r10.xyz);
        r14.z = min(r13.z, r2.z);
        r10.w = r14.z / r2.z;
        r11.w = r10.w * r3.w;
        r12.zw = cmp(float2(0,0) < r12.xy);
        r15.xy = cmp(r12.xy < float2(0,0));
        r12.zw = (int2)-r12.zw + (int2)r15.xy;
        r12.zw = (int2)r12.zw;
        r15.xy = r3.ww * r10.ww + r5.xy;
        r12.xy = max(r15.xy, abs(r12.xy));
        r13.xy = r12.zw * r12.xy;
        r14.xy = r15.xy * r12.zw;
        r13.xyz = -r14.xyz + r13.xyz;
        r10.w = max(0.00100000005, r13.z);
        r12.xy = abs(r13.xy) / r10.ww;
        r12.xy = r14.zz * r12.xy + -r11.ww;
        r13.xy = max(float2(0,0), -r12.zw);
        r13.xy = r12.xy * r13.xy + -r5.xy;
        r13.xy = max(r13.xy, -r5.xy);
        r13.xy = min(r13.xy, r5.xy);
        r12.zw = max(float2(0,0), r12.zw);
        r12.xy = -r12.xy * r12.zw + r5.xy;
        r12.xy = max(r12.xy, -r5.xy);
        r12.xy = min(r12.xy, r5.xy);
        r12.zw = r12.xy + -r13.xy;
        r12.zw = float2(0.5,0.5) * r12.zw;
        r12.zw = r4.yy ? r12.zw : r5.xy;
        r13.zw = cmp(r12.zw == float2(0,0));
        r10.w = (int)r13.w | (int)r13.z;
        if (r10.w == 0) {
          r12.xy = r13.xy + r12.xy;
          r12.xy = float2(0.5,0.5) * r12.xy;
          r13.xyz = -r3.xyz * r12.xxx + r10.xyz;
          r13.xyz = -cb2[9].xyz * r12.yyy + r13.xyz;
          r13.xyz = r4.yyy ? r13.xyz : r10.xyz;
          r10.w = dot(r3.xyz, r13.xyz);
          r11.w = dot(cb2[9].xyz, r13.xyz);
          r13.w = dot(cb2[8].xyz, r13.xyz);
          r13.y = r10.w + -r12.z;
          r13.x = r10.w + r12.z;
          r13.z = r11.w + -r12.w;
          r12.x = r11.w + r12.w;
          r10.w = dot(r13.yz, r13.yz);
          r10.w = r13.w * r13.w + r10.w;
          r10.w = rsqrt(r10.w);
          r14.xyz = r13.zwy * r10.www;
          r10.w = dot(r13.xz, r13.xz);
          r10.w = r13.w * r13.w + r10.w;
          r10.w = rsqrt(r10.w);
          r15.xyz = r13.wxz * r10.www;
          r12.yzw = r13.xwy;
          r10.w = dot(r12.xy, r12.xy);
          r10.w = r13.w * r13.w + r10.w;
          r10.w = rsqrt(r10.w);
          r13.xyz = r12.xzy * r10.www;
          r10.w = dot(r12.xw, r12.xw);
          r10.w = r13.w * r13.w + r10.w;
          r10.w = rsqrt(r10.w);
          r12.xyz = r12.zwx * r10.www;
          r10.w = dot(r14.yzx, r15.xyz);
          r11.w = dot(r15.zxy, r13.xyz);
          r12.w = dot(r13.yzx, r12.xyz);
          r13.w = dot(r12.zxy, r14.xyz);
          r14.w = -r10.w * 0.174999997 + 1.57079995;
          r10.w = 1 + r10.w;
          r10.w = rsqrt(r10.w);
          r10.w = r14.w * r10.w;
          r14.w = -r11.w * 0.174999997 + 1.57079995;
          r11.w = 1 + r11.w;
          r11.w = rsqrt(r11.w);
          r11.w = r14.w * r11.w;
          r14.w = -r12.w * 0.174999997 + 1.57079995;
          r12.w = 1 + r12.w;
          r12.w = rsqrt(r12.w);
          r12.w = r14.w * r12.w;
          r14.w = -r13.w * 0.174999997 + 1.57079995;
          r13.w = 1 + r13.w;
          r13.w = rsqrt(r13.w);
          r13.w = r14.w * r13.w;
          r16.xyz = r11.www * r13.xyz;
          r16.xyz = -r10.www * r14.xyz + r16.xyz;
          r17.xyz = r16.xyz * r15.xyz;
          r15.xyz = r15.zxy * r16.yzx + -r17.xyz;
          r13.xyz = -r12.www * r13.xyz;
          r13.xyz = r13.www * r14.xyz + r13.xyz;
          r14.xyz = r13.xyz * r12.xyz;
          r12.xyz = r12.zxy * r13.yzx + -r14.xyz;
          r12.xyz = r15.xyz + r12.xyz;
          r13.xyz = cb2[9].xyz * r12.yyy;
          r12.xyw = r12.xxx * r3.xyz + r13.xyz;
          r12.xyz = r12.zzz * cb2[8].xyz + r12.xyw;
          r10.w = dot(r12.xyz, r12.xyz);
          r11.w = rsqrt(r10.w);
          r10.w = r11.w * r10.w;
          r10.w = 0.5 * r10.w;
        } else {
          r10.w = 0;
        }
      } else {
        r12.xyz = cb0[r7.w+72].xyz + r0.xyz;
        r12.xy = r12.xy / cb3[1].xy;
        r12.xy = r12.xy * float2(2,2) + float2(-1,-1);
        r12.xy = float2(1,-1) * r12.xy;
        r11.w = r12.z / cb3[2].z;
        r11.w = exp2(r11.w);
        r11.w = -cb3[2].y + r11.w;
        r11.w = r11.w / cb3[2].x;
        r12.z = cb1[65].w + r11.w;
        r12.z = cb1[65].z * r12.z;
        r12.z = 1 / r12.z;
        r11.w = r11.w * cb1[30].z + cb1[31].z;
        r11.w = r2.w ? r12.z : r11.w;
        r13.xyzw = cb0[56].xyzw * r12.yyyy;
        r12.xyzw = r12.xxxx * cb0[55].xyzw + r13.xyzw;
        r12.xyzw = r11.wwww * cb0[57].xyzw + r12.xyzw;
        r12.xyzw = cb0[58].xyzw + r12.xyzw;
        r12.xyz = r12.xyz / r12.www;
        r12.xyz = -cb1[70].xyz + r12.xyz;
        r12.xyz = -r12.xyz + r8.xyz;
        r11.w = dot(r12.xyz, r12.xyz);
        r11.w = sqrt(r11.w);
        r11.w = cb0[88].z * r11.w;
        r11.w = max(1, r11.w);
        r12.xyz = -r4.zzz * cb2[9].xyz + r10.xyz;
        r12.w = r11.w * r11.w;
        if (r1.y != 0) {
          r13.xyz = r4.zzz * cb2[9].xyz + r10.xyz;
          r13.w = dot(r12.xyz, r12.xyz);
          r14.x = dot(r13.xyz, r13.xyz);
          r13.w = rsqrt(r13.w);
          r14.x = rsqrt(r14.x);
          r13.w = r14.x * r13.w;
          r13.x = dot(r12.xyz, r13.xyz);
          r13.x = r13.x * r13.w;
          r13.x = r13.x * 0.5 + 0.5;
          r12.w = r12.w * r13.w + r13.x;
          r10.w = r13.w / r12.w;
        } else {
          r12.x = dot(r12.xyz, r12.xyz);
          r11.w = r11.w * r11.w + r12.x;
          r10.w = rcp(r11.w);
        }
      }
      r9.w = r10.w * r9.w;
      r10.w = cmp(0 < r9.w);
      if (r10.w != 0) {
        if (r6.w != 0) {
          if (r1.x == 0) {
            r12.xyz = -cb2[6].yxz + r8.yxz;
            r10.w = dot(r12.xyz, r12.xyz);
            r10.w = sqrt(r10.w);
            r12.xyz = r12.xyz / r10.www;
            r11.w = min(abs(r12.x), abs(r12.y));
            r12.w = max(abs(r12.x), abs(r12.y));
            r12.w = 1 / r12.w;
            r11.w = r12.w * r11.w;
            r12.w = r11.w * r11.w;
            r13.x = r12.w * 0.0208350997 + -0.0851330012;
            r13.x = r12.w * r13.x + 0.180141002;
            r13.x = r12.w * r13.x + -0.330299497;
            r12.w = r12.w * r13.x + 0.999866009;
            r13.x = r12.w * r11.w;
            r13.y = cmp(abs(r12.y) < abs(r12.x));
            r13.x = r13.x * -2 + 1.57079637;
            r13.x = r13.y ? r13.x : 0;
            r11.w = r11.w * r12.w + r13.x;
            r13.xy = cmp(r12.yz < -r12.yz);
            r12.w = r13.x ? -3.141593 : 0;
            r11.w = r12.w + r11.w;
            r12.w = min(r12.x, r12.y);
            r12.x = max(r12.x, r12.y);
            r12.y = cmp(r12.w < -r12.w);
            r12.x = cmp(r12.x >= -r12.x);
            r12.x = r12.x ? r12.y : 0;
            r11.w = r12.x ? -r11.w : r11.w;
            r12.x = 0.159154937 * r11.w;
            r12.y = cmp(0 < r11.w);
            r11.w = r11.w * 0.159154937 + 1;
            r12.x = r12.y ? r12.x : r11.w;
            r11.w = 1 + -abs(r12.z);
            r11.w = sqrt(r11.w);
            r12.w = abs(r12.z) * -0.0187292993 + 0.0742610022;
            r12.w = r12.w * abs(r12.z) + -0.212114394;
            r12.z = r12.w * abs(r12.z) + 1.57072878;
            r12.w = r12.z * r11.w;
            r12.w = r12.w * -2 + 3.14159274;
            r12.w = r13.y ? r12.w : 0;
            r11.w = r12.z * r11.w + r12.w;
            r12.y = 0.318309873 * r11.w;
            r11.w = t2.SampleLevel(s2_s, r12.xy, 0).x;
            r10.w = cb2[6].w * r10.w;
            r10.w = cmp(r10.w < r11.w);
            r10.w = r10.w ? 1.000000 : 0;
          } else {
            r12.xyzw = cb0[51].xyzw * r8.yyyy;
            r12.xyzw = r8.xxxx * cb0[50].xyzw + r12.xyzw;
            r12.xyzw = r8.zzzz * cb0[52].xyzw + r12.xyzw;
            r12.xyzw = cb0[53].xyzw + r12.xyzw;
            r13.xyzw = r12.xyxy / r12.wwww;
            r12.xy = cmp(r13.zw >= float2(0,0));
            r14.xy = cmp(float2(1,1) >= r13.zw);
            r12.xy = r12.xy ? r14.xy : 0;
            r11.w = r12.y ? r12.x : 0;
            if (r11.w != 0) {
              r13.xyzw = r13.xyzw * cb0[54].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r12.xy = frac(r13.zw);
              r13.xyzw = floor(r13.xyzw);
              r14.xyzw = float4(0.5,1.5,0.5,0.5) + r13.zwzw;
              r14.xyzw = cb0[54].zwzw * r14.xyzw;
              r15.x = t2.SampleLevel(s2_s, r14.xy, 0).x;
              r13.xyzw = float4(1.5,1.5,1.5,0.5) + r13.xyzw;
              r13.xyzw = cb0[54].zwzw * r13.xyzw;
              r15.y = t2.SampleLevel(s2_s, r13.xy, 0).x;
              r15.z = t2.SampleLevel(s2_s, r13.zw, 0).x;
              r15.w = t2.SampleLevel(s2_s, r14.zw, 0).x;
              r11.w = r12.z * 40 + -1;
              r13.xyzw = saturate(r15.xyzw * float4(40,40,40,40) + -r11.wwww);
              r14.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r15.xyzw);
              r14.xyzw = r14.xyzw ? float4(1,1,1,1) : 0;
              r13.xyzw = r14.xyzw + r13.xyzw;
              r13.xyzw = min(float4(1,1,1,1), r13.xyzw);
              r12.zw = r13.zy + -r13.wx;
              r12.xz = r12.xx * r12.zw + r13.wx;
              r11.w = r12.z + -r12.x;
              r10.w = r12.y * r11.w + r12.x;
            } else {
              r10.w = 1;
            }
          }
        } else {
          r10.w = 1;
        }
        if (r1.x == 0) {
          x0[0].zw = cb0[17].zw;
          x0[1].zw = cb0[18].zw;
          x0[2].zw = cb0[19].zw;
          x0[3].zw = cb0[20].zw;
          x0[4].zw = cb0[21].zw;
          x0[5].zw = cb0[22].zw;
          x0[6].zw = cb0[23].zw;
          x0[7].zw = cb0[24].zw;
          x0[8].zw = cb0[25].zw;
          x0[9].zw = cb0[26].zw;
          x0[10].zw = cb0[27].zw;
          x0[11].zw = cb0[28].zw;
          x0[12].zw = cb0[29].zw;
          x0[13].zw = cb0[30].zw;
          x0[14].zw = cb0[31].zw;
          x0[15].zw = cb0[32].zw;
          x0[16].zw = cb0[33].zw;
          x0[17].zw = cb0[34].zw;
          x0[18].zw = cb0[35].zw;
          x0[19].zw = cb0[36].zw;
          x0[20].zw = cb0[37].zw;
          x0[21].zw = cb0[38].zw;
          x0[22].zw = cb0[39].zw;
          x0[23].zw = cb0[40].zw;
          r8.w = sqrt(r8.w);
          r8.w = cb2[6].w * r8.w;
          r8.w = cmp(r8.w < 1);
          if (r8.w != 0) {
            r8.w = max(abs(r10.y), abs(r10.z));
            r8.w = max(abs(r10.x), r8.w);
            r12.xyz = cmp(r10.xyz == abs(r10.xyz));
            r13.xy = cmp(abs(r10.xy) == r8.ww);
            r12.xyz = r12.xyz ? float3(0,2.80259693e-045,5.60519386e-045) : float3(1,3,5);
            r8.w = r13.y ? r12.y : r12.z;
            r8.w = r13.x ? r12.x : r8.w;
            r8.w = (uint)r8.w << 2;
            r12.xy = x0[r8.w+0].zw;
            r12.zw = x0[r8.w+1].zw;
            r13.xy = x0[r8.w+2].zw;
            r13.zw = x0[r8.w+3].zw;
            r12.zw = r12.zw * -r10.yy;
            r12.xy = -r10.xx * r12.xy + r12.zw;
            r12.xy = -r10.zz * r13.xy + r12.xy;
            r12.xy = r12.xy + r13.zw;
            r8.w = r12.x / r12.y;
            r11.w = -r4.w / r12.y;
            r8.w = r11.w + r8.w;
            r8.w = t1.SampleCmpLevelZero(s1_s, r10.xyz, r8.w).x;
          } else {
            r8.w = 1;
          }
        } else {
          r12.xyzw = cb0[43].xyzw * r8.yyyy;
          r12.xyzw = r8.xxxx * cb0[42].xyzw + r12.xyzw;
          r12.xyzw = r8.zzzz * cb0[44].xyzw + r12.xyzw;
          r12.xyzw = cb0[45].xyzw + r12.xyzw;
          r10.xy = r12.xy / r12.ww;
          r12.xy = cmp(r10.xy >= cb0[46].xy);
          r13.xy = cmp(cb0[46].zw >= r10.xy);
          r12.xy = r12.xy ? r13.xy : 0;
          r10.z = r12.y ? r12.x : 0;
          if (r10.z != 0) {
            r10.x = t0.SampleLevel(s0_s, r10.xy, 0).x;
            r10.x = -cb0[48].x + r10.x;
            r10.x = cmp(r12.z < r10.x);
            r8.w = r10.x ? 1.000000 : 0;
          } else {
            r8.w = 1;
          }
        }
        r8.w = min(r10.w, r8.w);
      } else {
        r8.w = 1;
      }
      r10.xyz = -cb2[6].xyz + r8.xyz;
      r10.w = dot(r10.xyz, r10.xyz);
      r10.w = rsqrt(r10.w);
      r10.xyz = r10.xyz * r10.www;
      r12.xyz = cb0[90].zyx * r10.yyy;
      r10.xyw = r10.xxx * cb0[89].zyx + r12.xyz;
      r10.xyz = r10.zzz * cb0[91].zyx + r10.xyw;
      r10.w = max(abs(r10.x), abs(r10.y));
      r11.w = min(abs(r10.x), abs(r10.y));
      r10.w = r11.w / r10.w;
      r11.w = r10.w * r10.w;
      r12.x = r11.w * 0.0872929022 + -0.301894993;
      r11.w = r12.x * r11.w + 1;
      r12.x = r11.w * r10.w;
      r12.y = cmp(abs(r10.x) < abs(r10.y));
      r10.w = -r11.w * r10.w + 1.57079637;
      r10.w = r12.y ? r10.w : r12.x;
      r10.xy = cmp(r10.xy < float2(0,0));
      r11.w = 3.14159274 + -r10.w;
      r10.x = r10.x ? r11.w : r10.w;
      r10.x = r10.y ? -r10.x : r10.x;
      r10.x = 3.14159274 + r10.x;
      r10.w = abs(r10.z) * -0.156582996 + 1.57079637;
      r11.w = 1 + -abs(r10.z);
      r11.w = sqrt(r11.w);
      r12.x = r11.w * r10.w;
      r10.z = cmp(r10.z >= 0);
      r10.w = -r10.w * r11.w + 3.14159274;
      r10.z = r10.z ? r12.x : r10.w;
      r10.xy = float2(0.159154937,0.318309873) * r10.xz;
      r12.xyz = cb0[90].xyw * r8.yyy;
      r12.xyz = r8.xxx * cb0[89].xyw + r12.xyz;
      r8.xyz = r8.zzz * cb0[91].xyw + r12.xyz;
      r8.xyz = cb0[92].xyw + r8.xyz;
      r8.xy = r8.xy / r8.zz;
      r8.xy = float2(1,1) + -r8.xy;
      r8.xy = r1.xx ? r8.xy : r10.xy;
      r8.xy = r8.xy * r5.zw + cb0[93].xy;
      r8.x = t3.SampleLevel(s3_s, r8.xy, 0).x;
      r8.x = r8.w * r8.x;
      r8.y = dot(r11.xyz, -r9.xyz);
      r8.y = -r6.z * r8.y + r6.y;
      r8.y = log2(r8.y);
      r8.y = 1.5 * r8.y;
      r8.y = exp2(r8.y);
      r8.y = 12.566371 * r8.y;
      r8.y = r6.x / r8.y;
      r8.y = r8.y * r9.w;
      r8.x = r8.y * r8.x;
      r8.x = cb2[2].x * r8.x;
      r7.xyz = cb2[7].xyz * r8.xxx + r7.xyz;
      r7.w = (int)r7.w + 1;
    }
    r0.x = (uint)r2.x;
    r0.xyz = r7.xyz / r0.xxx;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}