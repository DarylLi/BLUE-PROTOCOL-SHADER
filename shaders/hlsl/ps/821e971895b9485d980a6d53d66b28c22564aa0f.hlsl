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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[24];
  r0.xy = (uint2)v1.xy;
  r0.z = v2.x;
  r1.xyz = cmp((uint3)r0.xyz < asuint(cb3[0].xyz));
  r0.z = r1.y ? r1.x : 0;
  r0.z = r1.z ? r0.z : 0;
  if (r0.z != 0) {
    r0.z = cmp(-2 < cb2[10].x);
    r0.xy = (uint2)r0.xy;
    r1.xy = float2(0.5,0.5) + r0.xy;
    r1.xy = r1.xy / cb3[1].xy;
    r1.xy = r1.xy * float2(2,2) + float2(-1,-1);
    r1.xy = float2(1,-1) * r1.xy;
    r0.w = (uint)v2.x;
    r1.z = 0.5 + r0.w;
    r1.z = r1.z / cb3[2].z;
    r1.z = exp2(r1.z);
    r1.z = -cb3[2].y + r1.z;
    r1.z = r1.z / cb3[2].x;
    r1.w = cmp(cb1[31].w < 1);
    r2.x = cb1[65].w + r1.z;
    r2.x = cb1[65].z * r2.x;
    r2.x = 1 / r2.x;
    r1.z = r1.z * cb1[30].z + cb1[31].z;
    r1.z = r1.w ? r2.x : r1.z;
    r2.xyzw = cb0[56].xyzw * r1.yyyy;
    r2.xyzw = r1.xxxx * cb0[55].xyzw + r2.xyzw;
    r2.xyzw = r1.zzzz * cb0[57].xyzw + r2.xyzw;
    r2.xyzw = cb0[58].xyzw + r2.xyzw;
    r1.xyz = r2.xyz / r2.www;
    r1.xyz = -cb1[70].xyz + r1.xyz;
    r2.xyz = cb0[60].xyw * r1.yyy;
    r2.xyz = r1.xxx * cb0[59].xyw + r2.xyz;
    r1.xyz = r1.zzz * cb0[61].xyw + r2.xyz;
    r1.xyz = cb0[62].xyw + r1.xyz;
    r1.xy = r1.xy / r1.zz;
    r2.xy = r1.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r1.x = r1.z * cb1[209].x + cb1[209].y;
    r1.x = log2(r1.x);
    r1.x = cb1[209].z * r1.x;
    r2.z = cb1[208].z * r1.x;
    r1.xyz = cmp(r2.xyz < float3(0,0,0));
    r1.x = (int)r1.y | (int)r1.x;
    r1.x = (int)r1.z | (int)r1.x;
    r2.xyz = cmp(float3(1,1,1) < r2.xyz);
    r1.y = (int)r2.y | (int)r2.x;
    r1.y = (int)r2.z | (int)r1.y;
    r1.x = (int)r1.y | (int)r1.x;
    r1.y = cmp(cb0[71].x < 0.00100000005);
    r1.x = (int)r1.y | (int)r1.x;
    r1.x = r1.x ? cb0[88].x : 1;
    r2.xyz = cb2[9].zxy * cb2[8].yzx;
    r2.xyz = cb2[9].yzx * cb2[8].zxy + -r2.xyz;
    r1.yz = cmp(float2(-2,0.0350000001) < cb2[11].yx);
    r2.w = cb2[11].x * cb2[11].y;
    r3.x = -cb2[11].x * cb2[11].x + 1;
    r3.x = sqrt(r3.x);
    r3.x = cb2[11].y * r3.x;
    r4.x = cb2[9].w;
    r4.y = cb2[10].w;
    r3.y = 15.3599997 * cb0[41].x;
    r3.zw = cb0[93].zw + -cb0[93].xy;
    r4.z = -cb0[88].y * cb0[88].y + 1;
    r4.w = cb0[88].y * cb0[88].y + 1;
    r5.x = -2 * cb0[88].y;
    r5.yzw = float3(0,0,0);
    r6.x = cb0[49].x;
    r6.y = 0;
    while (true) {
      r6.z = cmp((uint)r6.y >= (uint)r1.x);
      if (r6.z != 0) break;
      r6.zw = cb0[r6.y+72].xy + r0.xy;
      r6.zw = r6.zw / cb3[1].xy;
      r6.zw = r6.zw * float2(2,2) + float2(-1,-1);
      r6.zw = float2(1,-1) * r6.zw;
      r7.x = cb0[r6.y+72].z + r0.w;
      r7.x = r7.x / cb3[2].z;
      r7.x = exp2(r7.x);
      r7.x = -cb3[2].y + r7.x;
      r7.x = r7.x / cb3[2].x;
      r7.y = cb1[65].w + r7.x;
      r7.y = cb1[65].z * r7.y;
      r7.y = 1 / r7.y;
      r7.x = r7.x * cb1[30].z + cb1[31].z;
      r7.x = r1.w ? r7.y : r7.x;
      r8.xyzw = cb0[56].xyzw * r6.wwww;
      r8.xyzw = r6.zzzz * cb0[55].xyzw + r8.xyzw;
      r7.xyzw = r7.xxxx * cb0[57].xyzw + r8.xyzw;
      r7.xyzw = cb0[58].xyzw + r7.xyzw;
      r7.xyz = r7.xyz / r7.www;
      r7.xyz = -cb1[70].xyz + r7.xyz;
      r8.xyz = -cb1[67].xyz + r7.xyz;
      r6.z = dot(r8.xyz, r8.xyz);
      r6.z = rsqrt(r6.z);
      r8.xyz = r8.xyz * r6.zzz;
      r9.xyz = cb2[6].xyz + -r7.xyz;
      r6.z = dot(r9.xyz, r9.xyz);
      r6.w = rsqrt(r6.z);
      r10.xyz = r9.xyz * r6.www;
      r11.xyz = cb2[6].www * r9.xyz;
      r6.w = dot(r11.xyz, r11.xyz);
      r6.w = min(1, r6.w);
      r6.w = 1 + -r6.w;
      r6.w = log2(r6.w);
      r6.w = cb2[7].w * r6.w;
      r6.w = exp2(r6.w);
      r7.w = dot(r10.xyz, cb2[8].xyz);
      r8.w = -cb2[10].x + r7.w;
      r8.w = saturate(cb2[10].y * r8.w);
      r8.w = r8.w * r8.w;
      r8.w = r8.w * r6.w;
      r6.w = r0.z ? r8.w : r6.w;
      r7.w = cmp(r7.w < 0);
      r7.w = r7.w ? 0 : r6.w;
      r6.w = r1.y ? r7.w : r6.w;
      if (r1.y != 0) {
        r11.x = dot(r2.xyz, r9.xyz);
        r11.y = dot(cb2[9].xyz, r9.xyz);
        r12.z = dot(cb2[8].xyz, r9.xyz);
        r13.z = min(r12.z, r2.w);
        r7.w = r13.z / r2.w;
        r8.w = r7.w * r3.x;
        r11.zw = cmp(float2(0,0) < r11.xy);
        r14.xy = cmp(r11.xy < float2(0,0));
        r11.zw = (int2)-r11.zw + (int2)r14.xy;
        r11.zw = (int2)r11.zw;
        r14.xy = r3.xx * r7.ww + r4.xy;
        r11.xy = max(r14.xy, abs(r11.xy));
        r12.xy = r11.zw * r11.xy;
        r13.xy = r14.xy * r11.zw;
        r12.xyz = -r13.xyz + r12.xyz;
        r7.w = max(0.00100000005, r12.z);
        r11.xy = abs(r12.xy) / r7.ww;
        r11.xy = r13.zz * r11.xy + -r8.ww;
        r12.xy = max(float2(0,0), -r11.zw);
        r12.xy = r11.xy * r12.xy + -r4.xy;
        r12.xy = max(r12.xy, -r4.xy);
        r12.xy = min(r12.xy, r4.xy);
        r11.zw = max(float2(0,0), r11.zw);
        r11.xy = -r11.xy * r11.zw + r4.xy;
        r11.xy = max(r11.xy, -r4.xy);
        r11.xy = min(r11.xy, r4.xy);
        r11.zw = r11.xy + -r12.xy;
        r11.zw = float2(0.5,0.5) * r11.zw;
        r11.zw = r1.zz ? r11.zw : r4.xy;
        r12.zw = cmp(r11.zw == float2(0,0));
        r7.w = (int)r12.w | (int)r12.z;
        if (r7.w == 0) {
          r11.xy = r12.xy + r11.xy;
          r11.xy = float2(0.5,0.5) * r11.xy;
          r12.xyz = -r2.xyz * r11.xxx + r9.xyz;
          r12.xyz = -cb2[9].xyz * r11.yyy + r12.xyz;
          r12.xyz = r1.zzz ? r12.xyz : r9.xyz;
          r7.w = dot(r2.xyz, r12.xyz);
          r8.w = dot(cb2[9].xyz, r12.xyz);
          r12.w = dot(cb2[8].xyz, r12.xyz);
          r12.y = r7.w + -r11.z;
          r12.x = r7.w + r11.z;
          r12.z = r8.w + -r11.w;
          r11.x = r8.w + r11.w;
          r7.w = dot(r12.yz, r12.yz);
          r7.w = r12.w * r12.w + r7.w;
          r7.w = rsqrt(r7.w);
          r13.xyz = r12.zwy * r7.www;
          r7.w = dot(r12.xz, r12.xz);
          r7.w = r12.w * r12.w + r7.w;
          r7.w = rsqrt(r7.w);
          r14.xyz = r12.wxz * r7.www;
          r11.yzw = r12.xwy;
          r7.w = dot(r11.xy, r11.xy);
          r7.w = r12.w * r12.w + r7.w;
          r7.w = rsqrt(r7.w);
          r12.xyz = r11.xzy * r7.www;
          r7.w = dot(r11.xw, r11.xw);
          r7.w = r12.w * r12.w + r7.w;
          r7.w = rsqrt(r7.w);
          r11.xyz = r11.zwx * r7.www;
          r7.w = dot(r13.yzx, r14.xyz);
          r8.w = dot(r14.zxy, r12.xyz);
          r9.w = dot(r12.yzx, r11.xyz);
          r10.w = dot(r11.zxy, r13.xyz);
          r11.w = -r7.w * 0.174999997 + 1.57079995;
          r7.w = 1 + r7.w;
          r7.w = rsqrt(r7.w);
          r7.w = r11.w * r7.w;
          r11.w = -r8.w * 0.174999997 + 1.57079995;
          r8.w = 1 + r8.w;
          r8.w = rsqrt(r8.w);
          r8.w = r11.w * r8.w;
          r11.w = -r9.w * 0.174999997 + 1.57079995;
          r9.w = 1 + r9.w;
          r9.w = rsqrt(r9.w);
          r9.w = r11.w * r9.w;
          r11.w = -r10.w * 0.174999997 + 1.57079995;
          r10.w = 1 + r10.w;
          r10.w = rsqrt(r10.w);
          r10.w = r11.w * r10.w;
          r15.xyz = r8.www * r12.xyz;
          r15.xyz = -r7.www * r13.xyz + r15.xyz;
          r16.xyz = r15.xyz * r14.xyz;
          r14.xyz = r14.zxy * r15.yzx + -r16.xyz;
          r12.xyz = -r9.www * r12.xyz;
          r12.xyz = r10.www * r13.xyz + r12.xyz;
          r13.xyz = r12.xyz * r11.xyz;
          r11.xyz = r11.zxy * r12.yzx + -r13.xyz;
          r11.xyz = r14.xyz + r11.xyz;
          r12.xyz = cb2[9].xyz * r11.yyy;
          r11.xyw = r11.xxx * r2.xyz + r12.xyz;
          r11.xyz = r11.zzz * cb2[8].xyz + r11.xyw;
          r7.w = dot(r11.xyz, r11.xyz);
          r8.w = rsqrt(r7.w);
          r7.w = r8.w * r7.w;
          r7.w = 0.5 * r7.w;
        } else {
          r7.w = 0;
        }
      } else {
        r7.w = 1;
      }
      r6.w = r7.w * r6.w;
      r7.w = cmp(0 < r6.w);
      if (r7.w != 0) {
        if (r6.x != 0) {
          if (r0.z == 0) {
            r11.xyz = -cb2[6].yxz + r7.yxz;
            r7.w = dot(r11.xyz, r11.xyz);
            r7.w = sqrt(r7.w);
            r11.xyz = r11.xyz / r7.www;
            r8.w = min(abs(r11.x), abs(r11.y));
            r9.w = max(abs(r11.x), abs(r11.y));
            r9.w = 1 / r9.w;
            r8.w = r9.w * r8.w;
            r9.w = r8.w * r8.w;
            r10.w = r9.w * 0.0208350997 + -0.0851330012;
            r10.w = r9.w * r10.w + 0.180141002;
            r10.w = r9.w * r10.w + -0.330299497;
            r9.w = r9.w * r10.w + 0.999866009;
            r10.w = r9.w * r8.w;
            r11.w = cmp(abs(r11.y) < abs(r11.x));
            r10.w = r10.w * -2 + 1.57079637;
            r10.w = r11.w ? r10.w : 0;
            r8.w = r8.w * r9.w + r10.w;
            r12.xy = cmp(r11.yz < -r11.yz);
            r9.w = r12.x ? -3.141593 : 0;
            r8.w = r9.w + r8.w;
            r9.w = min(r11.x, r11.y);
            r10.w = max(r11.x, r11.y);
            r9.w = cmp(r9.w < -r9.w);
            r10.w = cmp(r10.w >= -r10.w);
            r9.w = r9.w ? r10.w : 0;
            r8.w = r9.w ? -r8.w : r8.w;
            r9.w = 0.159154937 * r8.w;
            r10.w = cmp(0 < r8.w);
            r8.w = r8.w * 0.159154937 + 1;
            r11.x = r10.w ? r9.w : r8.w;
            r8.w = 1 + -abs(r11.z);
            r8.w = sqrt(r8.w);
            r9.w = abs(r11.z) * -0.0187292993 + 0.0742610022;
            r9.w = r9.w * abs(r11.z) + -0.212114394;
            r9.w = r9.w * abs(r11.z) + 1.57072878;
            r10.w = r9.w * r8.w;
            r10.w = r10.w * -2 + 3.14159274;
            r10.w = r12.y ? r10.w : 0;
            r8.w = r9.w * r8.w + r10.w;
            r11.y = 0.318309873 * r8.w;
            r8.w = t2.SampleLevel(s2_s, r11.xy, 0).x;
            r7.w = cb2[6].w * r7.w;
            r7.w = cmp(r7.w < r8.w);
            r7.w = r7.w ? 1.000000 : 0;
          } else {
            r11.xyzw = cb0[51].xyzw * r7.yyyy;
            r11.xyzw = r7.xxxx * cb0[50].xyzw + r11.xyzw;
            r11.xyzw = r7.zzzz * cb0[52].xyzw + r11.xyzw;
            r11.xyzw = cb0[53].xyzw + r11.xyzw;
            r12.xyzw = r11.xyxy / r11.wwww;
            r11.xy = cmp(r12.zw >= float2(0,0));
            r13.xy = cmp(float2(1,1) >= r12.zw);
            r11.xy = r11.xy ? r13.xy : 0;
            r8.w = r11.y ? r11.x : 0;
            if (r8.w != 0) {
              r12.xyzw = r12.xyzw * cb0[54].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
              r11.xy = frac(r12.zw);
              r12.xyzw = floor(r12.xyzw);
              r13.xyzw = float4(0.5,1.5,0.5,0.5) + r12.zwzw;
              r13.xyzw = cb0[54].zwzw * r13.xyzw;
              r14.x = t2.SampleLevel(s2_s, r13.xy, 0).x;
              r12.xyzw = float4(1.5,1.5,1.5,0.5) + r12.xyzw;
              r12.xyzw = cb0[54].zwzw * r12.xyzw;
              r14.y = t2.SampleLevel(s2_s, r12.xy, 0).x;
              r14.z = t2.SampleLevel(s2_s, r12.zw, 0).x;
              r14.w = t2.SampleLevel(s2_s, r13.zw, 0).x;
              r8.w = r11.z * 40 + -1;
              r12.xyzw = saturate(r14.xyzw * float4(40,40,40,40) + -r8.wwww);
              r13.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r14.xyzw);
              r13.xyzw = r13.xyzw ? float4(1,1,1,1) : 0;
              r12.xyzw = r13.xyzw + r12.xyzw;
              r12.xyzw = min(float4(1,1,1,1), r12.xyzw);
              r11.zw = r12.zy + -r12.wx;
              r11.xz = r11.xx * r11.zw + r12.wx;
              r8.w = r11.z + -r11.x;
              r7.w = r11.y * r8.w + r11.x;
            } else {
              r7.w = 1;
            }
          }
        } else {
          r7.w = 1;
        }
        if (r0.z == 0) {
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
          r6.z = sqrt(r6.z);
          r6.z = cb2[6].w * r6.z;
          r6.z = cmp(r6.z < 1);
          if (r6.z != 0) {
            r6.z = max(abs(r9.y), abs(r9.z));
            r6.z = max(abs(r9.x), r6.z);
            r11.xyz = cmp(r9.xyz == abs(r9.xyz));
            r12.xy = cmp(abs(r9.xy) == r6.zz);
            r11.xyz = r11.xyz ? float3(0,2.80259693e-045,5.60519386e-045) : float3(1,3,5);
            r6.z = r12.y ? r11.y : r11.z;
            r6.z = r12.x ? r11.x : r6.z;
            r6.z = (uint)r6.z << 2;
            r11.xy = x0[r6.z+0].zw;
            r11.zw = x0[r6.z+1].zw;
            r12.xy = x0[r6.z+2].zw;
            r12.zw = x0[r6.z+3].zw;
            r11.zw = r11.zw * -r9.yy;
            r11.xy = -r9.xx * r11.xy + r11.zw;
            r11.xy = -r9.zz * r12.xy + r11.xy;
            r11.xy = r11.xy + r12.zw;
            r6.z = r11.x / r11.y;
            r8.w = -r3.y / r11.y;
            r6.z = r8.w + r6.z;
            r6.z = t1.SampleCmpLevelZero(s1_s, r9.xyz, r6.z).x;
          } else {
            r6.z = 1;
          }
        } else {
          r9.xyzw = cb0[43].xyzw * r7.yyyy;
          r9.xyzw = r7.xxxx * cb0[42].xyzw + r9.xyzw;
          r9.xyzw = r7.zzzz * cb0[44].xyzw + r9.xyzw;
          r9.xyzw = cb0[45].xyzw + r9.xyzw;
          r9.xy = r9.xy / r9.ww;
          r11.xy = cmp(r9.xy >= cb0[46].xy);
          r11.zw = cmp(cb0[46].zw >= r9.xy);
          r11.xy = r11.zw ? r11.xy : 0;
          r8.w = r11.y ? r11.x : 0;
          if (r8.w != 0) {
            r8.w = t0.SampleLevel(s0_s, r9.xy, 0).x;
            r8.w = -cb0[48].x + r8.w;
            r8.w = cmp(r9.z < r8.w);
            r6.z = r8.w ? 1.000000 : 0;
          } else {
            r6.z = 1;
          }
        }
        r6.z = min(r7.w, r6.z);
      } else {
        r6.z = 1;
      }
      r9.xyz = -cb2[6].xyz + r7.xyz;
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = rsqrt(r7.w);
      r9.xyz = r9.xyz * r7.www;
      r11.xyz = cb0[90].zyx * r9.yyy;
      r9.xyw = r9.xxx * cb0[89].zyx + r11.xyz;
      r9.xyz = r9.zzz * cb0[91].zyx + r9.xyw;
      r7.w = max(abs(r9.x), abs(r9.y));
      r8.w = min(abs(r9.x), abs(r9.y));
      r7.w = r8.w / r7.w;
      r8.w = r7.w * r7.w;
      r9.w = r8.w * 0.0872929022 + -0.301894993;
      r8.w = r9.w * r8.w + 1;
      r9.w = r8.w * r7.w;
      r10.w = cmp(abs(r9.x) < abs(r9.y));
      r7.w = -r8.w * r7.w + 1.57079637;
      r7.w = r10.w ? r7.w : r9.w;
      r9.xy = cmp(r9.xy < float2(0,0));
      r8.w = 3.14159274 + -r7.w;
      r7.w = r9.x ? r8.w : r7.w;
      r7.w = r9.y ? -r7.w : r7.w;
      r7.w = 3.14159274 + r7.w;
      r9.x = 0.159154937 * r7.w;
      r7.w = abs(r9.z) * -0.156582996 + 1.57079637;
      r8.w = 1 + -abs(r9.z);
      r8.w = sqrt(r8.w);
      r9.w = r8.w * r7.w;
      r9.z = cmp(r9.z >= 0);
      r7.w = -r7.w * r8.w + 3.14159274;
      r7.w = r9.z ? r9.w : r7.w;
      r9.y = 0.318309873 * r7.w;
      r11.xyz = cb0[90].xyw * r7.yyy;
      r7.xyw = r7.xxx * cb0[89].xyw + r11.xyz;
      r7.xyz = r7.zzz * cb0[91].xyw + r7.xyw;
      r7.xyz = cb0[92].xyw + r7.xyz;
      r7.xy = r7.xy / r7.zz;
      r7.xy = float2(1,1) + -r7.xy;
      r7.xy = r0.zz ? r7.xy : r9.xy;
      r7.xy = r7.xy * r3.zw + cb0[93].xy;
      r7.x = t3.SampleLevel(s3_s, r7.xy, 0).x;
      r6.z = r7.x * r6.z;
      r7.x = dot(r10.xyz, -r8.xyz);
      r7.x = -r5.x * r7.x + r4.w;
      r7.x = log2(r7.x);
      r7.x = 1.5 * r7.x;
      r7.x = exp2(r7.x);
      r7.x = 12.566371 * r7.x;
      r7.x = r4.z / r7.x;
      r6.w = r7.x * r6.w;
      r6.z = r6.w * r6.z;
      r6.z = cb2[2].x * r6.z;
      r5.yzw = cb2[7].xyz * r6.zzz + r5.yzw;
      r6.y = (int)r6.y + 1;
    }
    r0.x = (uint)r1.x;
    r0.xyz = r5.yzw / r0.xxx;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}