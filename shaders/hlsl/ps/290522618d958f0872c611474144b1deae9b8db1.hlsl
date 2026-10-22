// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t2 : register(t2);

TextureCube<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[89];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  uint v2 : SV_RenderTargetArrayIndex0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = (uint2)v1.xy;
  r0.z = v2.x;
  r1.xyz = cmp((uint3)r0.xyz < asuint(cb3[0].xyz));
  r0.z = r1.y ? r1.x : 0;
  r0.z = r1.z ? r0.z : 0;
  if (r0.z != 0) {
    r0.z = cmp(-2 < cb2[10].x);
    r0.w = cmp(-2 < cb2[11].y);
    r0.xy = (uint2)r0.xy;
    r0.xy = cb0[72].xy + r0.xy;
    r0.xy = r0.xy / cb3[1].xy;
    r0.xy = r0.xy * float2(2,2) + float2(-1,-1);
    r0.xy = float2(1,-1) * r0.xy;
    r1.x = (uint)v2.x;
    r1.x = cb0[72].z + r1.x;
    r1.x = r1.x / cb3[2].z;
    r1.x = exp2(r1.x);
    r1.x = -cb3[2].y + r1.x;
    r1.x = r1.x / cb3[2].x;
    r1.y = cmp(cb1[31].w < 1);
    r1.z = cb1[65].w + r1.x;
    r1.z = cb1[65].z * r1.z;
    r1.z = 1 / r1.z;
    r1.x = r1.x * cb1[30].z + cb1[31].z;
    r1.x = r1.y ? r1.z : r1.x;
    r2.xyzw = cb0[56].xyzw * r0.yyyy;
    r2.xyzw = r0.xxxx * cb0[55].xyzw + r2.xyzw;
    r1.xyzw = r1.xxxx * cb0[57].xyzw + r2.xyzw;
    r1.xyzw = cb0[58].xyzw + r1.xyzw;
    r1.xyz = r1.yxz / r1.www;
    r1.xyz = -cb1[70].yxz + r1.xyz;
    r2.xyz = -cb1[67].xyz + r1.yxz;
    r0.x = dot(r2.xyz, r2.xyz);
    r0.x = rsqrt(r0.x);
    r2.xyz = r2.xyz * r0.xxx;
    r3.xyz = cb2[6].xyz + -r1.yxz;
    r0.x = dot(r3.xyz, r3.xyz);
    r0.y = rsqrt(r0.x);
    r4.xyz = r3.xyz * r0.yyy;
    r5.xyz = cb2[6].www * r3.xyz;
    r0.y = dot(r5.xyz, r5.xyz);
    r0.y = min(1, r0.y);
    r0.y = 1 + -r0.y;
    r0.y = log2(r0.y);
    r0.y = cb2[7].w * r0.y;
    r0.y = exp2(r0.y);
    r1.w = dot(r4.xyz, cb2[8].xyz);
    r2.w = -cb2[10].x + r1.w;
    r2.w = saturate(cb2[10].y * r2.w);
    r2.w = r2.w * r2.w;
    r2.w = r2.w * r0.y;
    r0.y = r0.z ? r2.w : r0.y;
    r1.w = cmp(r1.w < 0);
    r1.w = r1.w ? 0 : r0.y;
    r0.y = r0.w ? r1.w : r0.y;
    if (r0.w != 0) {
      r5.xyz = cb2[9].zxy * cb2[8].yzx;
      r5.xyz = cb2[9].yzx * cb2[8].zxy + -r5.xyz;
      r0.w = cmp(0.0350000001 < cb2[11].x);
      r6.x = dot(r5.xyz, r3.xyz);
      r6.y = dot(cb2[9].xyz, r3.xyz);
      r7.z = dot(cb2[8].xyz, r3.xyz);
      r1.w = cb2[11].x * cb2[11].y;
      r2.w = -cb2[11].x * cb2[11].x + 1;
      r2.w = sqrt(r2.w);
      r8.z = min(r7.z, r1.w);
      r1.w = r8.z / r1.w;
      r2.w = cb2[11].y * r2.w;
      r3.w = r2.w * r1.w;
      r6.zw = cmp(float2(0,0) < r6.xy);
      r9.xy = cmp(r6.xy < float2(0,0));
      r6.zw = (int2)-r6.zw + (int2)r9.xy;
      r6.zw = (int2)r6.zw;
      r9.x = cb2[9].w;
      r9.y = cb2[10].w;
      r9.zw = r2.ww * r1.ww + r9.xy;
      r6.xy = max(r9.zw, abs(r6.xy));
      r7.xy = r6.zw * r6.xy;
      r8.xy = r9.zw * r6.zw;
      r7.xyz = -r8.xyz + r7.xyz;
      r1.w = max(0.00100000005, r7.z);
      r6.xy = abs(r7.xy) / r1.ww;
      r6.xy = r8.zz * r6.xy + -r3.ww;
      r7.xy = max(float2(0,0), -r6.zw);
      r7.xy = r6.xy * r7.xy + -r9.xy;
      r7.xy = max(r7.xy, -r9.xy);
      r7.xy = min(r7.xy, r9.xy);
      r6.zw = max(float2(0,0), r6.zw);
      r6.xy = -r6.xy * r6.zw + r9.xy;
      r6.xy = max(r6.xy, -r9.xy);
      r6.xy = min(r6.xy, r9.xy);
      r6.zw = r6.xy + -r7.xy;
      r6.zw = float2(0.5,0.5) * r6.zw;
      r6.zw = r0.ww ? r6.zw : r9.xy;
      r7.zw = cmp(r6.zw == float2(0,0));
      r1.w = (int)r7.w | (int)r7.z;
      if (r1.w == 0) {
        r6.xy = r7.xy + r6.xy;
        r6.xy = float2(0.5,0.5) * r6.xy;
        r7.xyz = -r5.xyz * r6.xxx + r3.xyz;
        r7.xyz = -cb2[9].xyz * r6.yyy + r7.xyz;
        r7.xyz = r0.www ? r7.xyz : r3.xyz;
        r0.w = dot(r5.xyz, r7.xyz);
        r1.w = dot(cb2[9].xyz, r7.xyz);
        r7.w = dot(cb2[8].xyz, r7.xyz);
        r7.y = r0.w + -r6.z;
        r7.x = r0.w + r6.z;
        r7.z = r1.w + -r6.w;
        r6.x = r1.w + r6.w;
        r0.w = dot(r7.yz, r7.yz);
        r0.w = r7.w * r7.w + r0.w;
        r0.w = rsqrt(r0.w);
        r8.xyz = r7.zwy * r0.www;
        r0.w = dot(r7.xz, r7.xz);
        r0.w = r7.w * r7.w + r0.w;
        r0.w = rsqrt(r0.w);
        r9.xyz = r7.wxz * r0.www;
        r6.yzw = r7.xwy;
        r0.w = dot(r6.xy, r6.xy);
        r0.w = r7.w * r7.w + r0.w;
        r0.w = rsqrt(r0.w);
        r7.xyz = r6.xzy * r0.www;
        r0.w = dot(r6.xw, r6.xw);
        r0.w = r7.w * r7.w + r0.w;
        r0.w = rsqrt(r0.w);
        r6.xyz = r6.zwx * r0.www;
        r0.w = dot(r8.yzx, r9.xyz);
        r1.w = dot(r9.zxy, r7.xyz);
        r2.w = dot(r7.yzx, r6.xyz);
        r3.w = dot(r6.zxy, r8.xyz);
        r4.w = -r0.w * 0.174999997 + 1.57079995;
        r0.w = 1 + r0.w;
        r0.w = rsqrt(r0.w);
        r0.w = r4.w * r0.w;
        r4.w = -r1.w * 0.174999997 + 1.57079995;
        r1.w = 1 + r1.w;
        r1.w = rsqrt(r1.w);
        r1.w = r4.w * r1.w;
        r4.w = -r2.w * 0.174999997 + 1.57079995;
        r2.w = 1 + r2.w;
        r2.w = rsqrt(r2.w);
        r2.w = r4.w * r2.w;
        r4.w = -r3.w * 0.174999997 + 1.57079995;
        r3.w = 1 + r3.w;
        r3.w = rsqrt(r3.w);
        r3.w = r4.w * r3.w;
        r10.xyz = r1.www * r7.xyz;
        r10.xyz = -r0.www * r8.xyz + r10.xyz;
        r11.xyz = r10.xyz * r9.xyz;
        r9.xyz = r9.zxy * r10.yzx + -r11.xyz;
        r7.xyz = -r2.www * r7.xyz;
        r7.xyz = r3.www * r8.xyz + r7.xyz;
        r8.xyz = r7.xyz * r6.xyz;
        r6.xyz = r6.zxy * r7.yzx + -r8.xyz;
        r6.xyz = r9.xyz + r6.xyz;
        r7.xyz = cb2[9].xyz * r6.yyy;
        r5.xyz = r6.xxx * r5.xyz + r7.xyz;
        r5.xyz = r6.zzz * cb2[8].xyz + r5.xyz;
        r0.w = dot(r5.xyz, r5.xyz);
        r1.w = rsqrt(r0.w);
        r0.w = r1.w * r0.w;
        r0.w = 0.5 * r0.w;
      } else {
        r0.w = 0;
      }
    } else {
      r0.w = 1;
    }
    r0.y = r0.w * r0.y;
    r0.w = cmp(0 < r0.y);
    if (r0.w != 0) {
      if (cb0[49].x != 0) {
        if (r0.z == 0) {
          r5.xyz = -cb2[6].yxz + r1.xyz;
          r0.w = dot(r5.xyz, r5.xyz);
          r0.w = sqrt(r0.w);
          r5.xyz = r5.xyz / r0.www;
          r1.w = min(abs(r5.x), abs(r5.y));
          r2.w = max(abs(r5.x), abs(r5.y));
          r2.w = 1 / r2.w;
          r1.w = r2.w * r1.w;
          r2.w = r1.w * r1.w;
          r3.w = r2.w * 0.0208350997 + -0.0851330012;
          r3.w = r2.w * r3.w + 0.180141002;
          r3.w = r2.w * r3.w + -0.330299497;
          r2.w = r2.w * r3.w + 0.999866009;
          r3.w = r2.w * r1.w;
          r4.w = cmp(abs(r5.y) < abs(r5.x));
          r3.w = r3.w * -2 + 1.57079637;
          r3.w = r4.w ? r3.w : 0;
          r1.w = r1.w * r2.w + r3.w;
          r6.xy = cmp(r5.yz < -r5.yz);
          r2.w = r6.x ? -3.141593 : 0;
          r1.w = r2.w + r1.w;
          r2.w = min(r5.x, r5.y);
          r3.w = max(r5.x, r5.y);
          r2.w = cmp(r2.w < -r2.w);
          r3.w = cmp(r3.w >= -r3.w);
          r2.w = r2.w ? r3.w : 0;
          r1.w = r2.w ? -r1.w : r1.w;
          r2.w = 0.159154937 * r1.w;
          r3.w = cmp(0 < r1.w);
          r1.w = r1.w * 0.159154937 + 1;
          r5.x = r3.w ? r2.w : r1.w;
          r1.w = 1 + -abs(r5.z);
          r1.w = sqrt(r1.w);
          r2.w = abs(r5.z) * -0.0187292993 + 0.0742610022;
          r2.w = r2.w * abs(r5.z) + -0.212114394;
          r2.w = r2.w * abs(r5.z) + 1.57072878;
          r3.w = r2.w * r1.w;
          r3.w = r3.w * -2 + 3.14159274;
          r3.w = r6.y ? r3.w : 0;
          r1.w = r2.w * r1.w + r3.w;
          r5.y = 0.318309873 * r1.w;
          r1.w = t2.SampleLevel(s2_s, r5.xy, 0).x;
          r0.w = cb2[6].w * r0.w;
          r0.w = cmp(r0.w < r1.w);
          r0.w = r0.w ? 1.000000 : 0;
        } else {
          r5.xyzw = cb0[51].xyzw * r1.xxxx;
          r5.xyzw = r1.yyyy * cb0[50].xyzw + r5.xyzw;
          r5.xyzw = r1.zzzz * cb0[52].xyzw + r5.xyzw;
          r5.xyzw = cb0[53].xyzw + r5.xyzw;
          r6.xyzw = r5.xyxy / r5.wwww;
          r5.xy = cmp(r6.zw >= float2(0,0));
          r7.xy = cmp(float2(1,1) >= r6.zw);
          r5.xy = r5.xy ? r7.xy : 0;
          r1.w = r5.y ? r5.x : 0;
          if (r1.w != 0) {
            r6.xyzw = r6.xyzw * cb0[54].xyxy + float4(-0.5,-0.5,-0.5,-0.5);
            r5.xy = frac(r6.zw);
            r6.xyzw = floor(r6.xyzw);
            r7.xyzw = float4(0.5,1.5,0.5,0.5) + r6.zwzw;
            r7.xyzw = cb0[54].zwzw * r7.xyzw;
            r8.x = t2.SampleLevel(s2_s, r7.xy, 0).x;
            r6.xyzw = float4(1.5,1.5,1.5,0.5) + r6.xyzw;
            r6.xyzw = cb0[54].zwzw * r6.xyzw;
            r8.y = t2.SampleLevel(s2_s, r6.xy, 0).x;
            r8.z = t2.SampleLevel(s2_s, r6.zw, 0).x;
            r8.w = t2.SampleLevel(s2_s, r7.zw, 0).x;
            r1.w = r5.z * 40 + -1;
            r6.xyzw = saturate(r8.xyzw * float4(40,40,40,40) + -r1.wwww);
            r7.xyzw = cmp(float4(0.99000001,0.99000001,0.99000001,0.99000001) < r8.xyzw);
            r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
            r6.xyzw = r7.xyzw + r6.xyzw;
            r6.xyzw = min(float4(1,1,1,1), r6.xyzw);
            r5.zw = r6.zy + -r6.wx;
            r5.xz = r5.xx * r5.zw + r6.wx;
            r1.w = r5.z + -r5.x;
            r0.w = r5.y * r1.w + r5.x;
          } else {
            r0.w = 1;
          }
        }
      } else {
        r0.w = 1;
      }
      if (r0.z == 0) {
        r0.x = sqrt(r0.x);
        r0.x = cb2[6].w * r0.x;
        r0.x = cmp(r0.x < 1);
        if (r0.x != 0) {
          r0.x = 15.3599997 * cb0[41].x;
          r0.z = max(abs(r3.y), abs(r3.z));
          r0.z = max(abs(r3.x), r0.z);
          r5.xyz = cmp(r3.xyz == abs(r3.xyz));
          r6.xy = cmp(abs(r3.xy) == r0.zz);
          r5.xyz = r5.xyz ? float3(0,2.80259693e-045,5.60519386e-045) : float3(1,3,5);
          r0.z = r6.y ? r5.y : r5.z;
          r0.z = r6.x ? r5.x : r0.z;
          r0.z = (uint)r0.z << 2;
          r5.xy = cb0[r0.z+18].zw * -r3.yy;
          r5.xy = -r3.xx * cb0[r0.z+17].zw + r5.xy;
          r5.xy = -r3.zz * cb0[r0.z+19].zw + r5.xy;
          r5.xy = cb0[r0.z+20].zw + r5.xy;
          r0.z = r5.x / r5.y;
          r0.x = -r0.x / r5.y;
          r0.x = r0.z + r0.x;
          r0.x = t1.SampleCmpLevelZero(s1_s, r3.xyz, r0.x).x;
        } else {
          r0.x = 1;
        }
      } else {
        r3.xyzw = cb0[43].xyzw * r1.xxxx;
        r3.xyzw = r1.yyyy * cb0[42].xyzw + r3.xyzw;
        r1.xyzw = r1.zzzz * cb0[44].xyzw + r3.xyzw;
        r1.xyzw = cb0[45].xyzw + r1.xyzw;
        r1.xy = r1.xy / r1.ww;
        r3.xy = cmp(r1.xy >= cb0[46].xy);
        r3.zw = cmp(cb0[46].zw >= r1.xy);
        r3.xy = r3.zw ? r3.xy : 0;
        r0.z = r3.y ? r3.x : 0;
        if (r0.z != 0) {
          r0.z = t0.SampleLevel(s0_s, r1.xy, 0).x;
          r0.z = -cb0[48].x + r0.z;
          r0.z = cmp(r1.z < r0.z);
          r0.x = r0.z ? 1.000000 : 0;
        } else {
          r0.x = 1;
        }
      }
      r0.x = min(r0.w, r0.x);
    } else {
      r0.x = 1;
    }
    r0.z = dot(r4.xyz, -r2.xyz);
    r0.w = -cb0[88].y * cb0[88].y + 1;
    r1.x = cb0[88].y * cb0[88].y + 1;
    r0.z = dot(r0.zz, -cb0[88].yy);
    r0.z = r1.x + -r0.z;
    r0.z = log2(r0.z);
    r0.z = 1.5 * r0.z;
    r0.z = exp2(r0.z);
    r0.z = 12.566371 * r0.z;
    r0.z = r0.w / r0.z;
    r0.y = r0.z * r0.y;
    r0.x = r0.y * r0.x;
    r0.x = cb2[2].x * r0.x;
    r0.xyz = cb2[7].xyz * r0.xxx;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}