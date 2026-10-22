// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

TextureCube<float4> t2 : register(t2);

TextureCube<float4> t1 : register(t1);

struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[208];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_Position0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[132].zw * v0.xy;
  r1.xyzw = t6.SampleLevel(s0_s, r0.xy, 0).xzyw;
  r0.z = 255 * r1.w;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.w = (int)r0.z & 15;
  r2.xy = cmp((int2)r0.ww != int2(0,7));
  r1.w = r2.y ? r2.x : 0;
  if (r1.w != 0) {
    r2.xy = -cb0[129].xy + v0.xy;
    r2.xy = r2.xy * cb0[130].zw + float2(-0.5,-0.5);
    r2.xy = v0.ww * r2.xy;
    r2.xy = float2(2,-2) * r2.xy;
    r3.xyz = t5.SampleLevel(s0_s, r0.xy, 0).xyz;
    r4.xyzw = t7.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r2.zw = t8.SampleLevel(s0_s, r0.xy, 0).xy;
    r5.xyzw = t9.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r1.w = t4.SampleLevel(s0_s, r0.xy, 0).x;
    r3.w = r1.w * cb0[65].x + cb0[65].y;
    r1.w = r1.w * cb0[65].z + -cb0[65].w;
    r1.w = 1 / r1.w;
    r1.w = r3.w + r1.w;
    r6.xy = cb0[132].xy * r0.xy;
    r6.xy = (uint2)r6.xy;
    r3.w = (uint)cb0[152].x;
    r6.x = (int)r6.y + (int)r6.x;
    r3.w = (int)r3.w + (int)r6.x;
    r3.w = (int)r3.w & 1;
    r3.xyz = r3.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r6.x = dot(r3.xyz, r3.xyz);
    r6.x = rsqrt(r6.x);
    r7.xyz = r6.xxx * r3.xyz;
    r8.xyzw = cmp((int4)r0.wwww == int4(12,13,2,3));
    r6.yz = (int2)r8.yw | (int2)r8.xz;
    r6.w = r4.w * 16 + -8;
    r6.w = exp2(r6.w);
    r6.w = -0.00390625 + r6.w;
    r9.z = cb0[135].z * r6.w;
    r9.y = r4.w;
    r9.xw = float2(0,1);
    r8.zw = r6.yy ? r9.xy : r9.zw;
    r9.xyzw = cmp((int4)r0.wwww == int4(4,5,6,7));
    r6.z = (int)r6.z | (int)r9.x;
    r6.z = (int)r9.y | (int)r6.z;
    r6.z = (int)r9.z | (int)r6.z;
    r6.z = (int)r9.w | (int)r6.z;
    r9.zw = cmp((int2)r0.ww == int2(8,9));
    r0.w = (int)r6.z | (int)r9.z;
    r0.w = (int)r8.x | (int)r0.w;
    r0.w = (int)r8.y | (int)r0.w;
    r0.w = (int)r9.w | (int)r0.w;
    r10.zw = (int2)r2.zw & (int2)r0.ww;
    r0.w = r9.w ? 0 : r1.x;
    r2.zw = float2(5,0.0799999982) * r1.yz;
    r11.xyz = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
    r11.xyz = r0.www * r11.xyz + r2.www;
    r2.w = (int)r9.w | (int)r9.y;
    r6.z = cmp(0 < cb0[156].y);
    r6.w = cmp(0 < cb0[207].z);
    r6.z = r6.w ? r6.z : 0;
    r6.w = cmp(0 != cb0[156].y);
    r9.yzw = r6.www ? float3(1,1,1) : r4.xyz;
    r8.xy = r3.ww ? float2(1,0) : float2(0,1);
    r12.xyz = r11.xyz * r8.yyy;
    r12.w = r8.y * r1.z;
    r13.xyz = r6.zzz ? r8.xxx : r9.yzw;
    r11.w = r1.z;
    r12.xyzw = r6.zzzz ? r12.xyzw : r11.xyzw;
    r13.w = r12.w;
    r4.w = r11.w;
    r13.xyzw = r2.wwww ? r13.xyzw : r4.xyzw;
    r9.yzw = r2.www ? r12.xyz : r11.xyz;
    r4.xyzw = r6.yyyy ? r4.xyzw : r13.xyzw;
    r9.yzw = cb0[137].www * r9.yzw;
    r6.yzw = r6.yyy ? float3(0,0,0) : r9.yzw;
    r6.yzw = cb0[137].xyz + r6.yzw;
    r0.z = (int)r0.z & 16;
    r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r5.xyzw = r0.zzzz ? r5.xyzw : float4(0,0,0,0);
    r1.z = dot(r5.xyz, r5.xyz);
    r1.z = rsqrt(r1.z);
    r5.xyz = r5.yzx * r1.zzz;
    r5.xyz = r0.zzz ? r5.xyz : float3(0,0,0);
    r2.xy = r2.xy * r1.ww;
    r9.yzw = cb0[49].xyz * r2.yyy;
    r2.xyw = r2.xxx * cb0[48].xyz + r9.yzw;
    r2.xyw = r1.www * cb0[50].xyz + r2.xyw;
    r2.xyw = cb0[51].xyz + r2.xyw;
    r2.xyw = -cb0[67].xyz + r2.xyw;
    r0.z = dot(r2.xyw, r2.xyw);
    r0.z = rsqrt(r0.z);
    r2.xyw = r2.xyw * r0.zzz;
    r0.z = dot(r7.xyz, -r2.xyw);
    r10.x = saturate(r0.z);
    r1.z = r10.x * 0.5 + 0.5;
    r1.z = r1.z * r10.x + -1;
    r1.w = saturate(-r1.y * 1.25 + 1.25);
    r1.z = r1.z * r1.w + 1;
    r9.yzw = float3(1.11111116,1.11111116,1.11111116) * r4.xyz;
    r1.w = -1 + r10.x;
    r1.w = 0.850000024 * r1.w;
    r11.xyz = r9.yzw * r9.yzw + -r9.yzw;
    r11.xyz = r11.xyz * float3(-0.779999971,-0.779999971,-0.779999971) + r9.yzw;
    r11.xyz = float3(1,1,1) + -r11.xyz;
    r11.xyz = r1.www * r11.xyz + float3(1,1,1);
    r9.yzw = r11.xyz * r9.yzw;
    r1.w = 1 + -r10.x;
    r3.w = r1.w * r1.w;
    r3.w = r3.w * r3.w;
    r8.x = r3.w * r1.w;
    r1.w = -r3.w * r1.w + 1;
    r1.w = r1.w * 0.0399999991 + r8.x;
    r1.w = r10.z * -r1.w + 1;
    r4.xyz = r4.xyz * r1.www;
    r9.yzw = r9.yzw * r1.zzz;
    r1.w = r0.w * r10.z;
    r9.yzw = r9.yzw * float3(0.899999976,0.899999976,0.899999976) + -r4.xyz;
    r4.xyz = r1.www * r9.yzw + r4.xyz;
    r1.z = r1.z + -r4.w;
    r1.z = r10.z * r1.z + r4.w;
    r1.w = 0.0799999982 * r1.z;
    r4.xyz = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
    r4.xyz = r0.www * r4.xyz + r1.www;
    r4.xyz = r9.xxx ? r4.xyz : r6.yzw;
    r0.w = t11.SampleLevel(s5_s, r0.xy, 0).x;
    r1.zw = cmp(float2(0,0) < cb1[0].yz);
    r1.w = r1.w ? r1.z : 0;
    if (r1.w != 0) {
      r1.w = dot(r7.xyz, r7.xyz);
      r1.w = sqrt(r1.w);
      r11.x = t0[0].val[0/4];
      r11.y = t0[0].val[0/4+1];
      r11.z = t0[0].val[0/4+2];
      r11.w = t0[0].val[0/4+3];
      r7.w = 1;
      r11.x = dot(r11.xyzw, r7.xyzw);
      r12.x = t0[1].val[0/4];
      r12.y = t0[1].val[0/4+1];
      r12.z = t0[1].val[0/4+2];
      r12.w = t0[1].val[0/4+3];
      r11.y = dot(r12.xyzw, r7.xyzw);
      r12.x = t0[2].val[0/4];
      r12.y = t0[2].val[0/4+1];
      r12.z = t0[2].val[0/4+2];
      r12.w = t0[2].val[0/4+3];
      r11.z = dot(r12.xyzw, r7.xyzw);
      r12.xyzw = r7.xyzz * r7.yzzx;
      r13.x = t0[3].val[0/4];
      r13.y = t0[3].val[0/4+1];
      r13.z = t0[3].val[0/4+2];
      r13.w = t0[3].val[0/4+3];
      r13.x = dot(r13.xyzw, r12.xyzw);
      r14.x = t0[4].val[0/4];
      r14.y = t0[4].val[0/4+1];
      r14.z = t0[4].val[0/4+2];
      r14.w = t0[4].val[0/4+3];
      r13.y = dot(r14.xyzw, r12.xyzw);
      r14.x = t0[5].val[0/4];
      r14.y = t0[5].val[0/4+1];
      r14.z = t0[5].val[0/4+2];
      r14.w = t0[5].val[0/4+3];
      r13.z = dot(r14.xyzw, r12.xyzw);
      r3.w = r7.y * r7.y;
      r3.w = r7.x * r7.x + -r3.w;
      r6.y = t0[6].val[0/4];
      r6.z = t0[6].val[0/4+1];
      r6.w = t0[6].val[0/4+2];
      r9.yzw = r13.xyz + r11.xyz;
      r6.yzw = r6.yzw * r3.www + r9.yzw;
      r6.yzw = max(float3(0,0,0), r6.yzw);
      r6.yzw = cb0[187].xyz * r6.yzw;
      r3.w = dot(r6.yzw, float3(0.300000012,0.589999974,0.109999999));
      r8.z = r3.w * r1.w + r8.z;
    }
    r1.w = cmp(0 < abs(r5.w));
    r6.yzw = r7.xyz * r5.yzx;
    r6.yzw = r7.zxy * r5.zxy + -r6.yzw;
    r3.w = dot(r6.yzw, r6.yzw);
    r3.w = rsqrt(r3.w);
    r6.yzw = r6.yzw * r3.www;
    r3.w = cmp(r5.w >= 0);
    r5.xyz = r3.www ? r6.yzw : r5.xyz;
    r6.yzw = r5.xyz * -r2.xyw;
    r6.yzw = r5.zxy * -r2.ywx + -r6.yzw;
    r9.yzw = r6.yzw * r5.xyz;
    r5.xyz = r6.wyz * r5.yzx + -r9.yzw;
    r2.z = saturate(r2.z);
    r2.z = abs(r5.w) * r2.z;
    r3.xyz = -r3.xyz * r6.xxx + r5.xyz;
    r3.xyz = r2.zzz * r3.xyz + r7.xyz;
    r2.z = dot(r3.xyz, r3.xyz);
    r2.z = rsqrt(r2.z);
    r3.xyz = r3.xyz * r2.zzz;
    r3.xyz = r1.www ? r3.xyz : r7.xyz;
    r1.x = dot(-r2.xyw, r3.xyz);
    r1.w = r1.x + r1.x;
    r5.xyz = r1.www * r3.xyz + r2.xyw;
    r1.x = saturate(r1.x);
    r1.w = r1.y * r1.y;
    r2.z = -r1.y * r1.y + 1;
    r3.w = sqrt(r2.z);
    r3.w = r1.y * r1.y + r3.w;
    r2.z = r3.w * r2.z;
    r5.xyz = r5.xyz + -r3.xyz;
    r3.xyz = r2.zzz * r5.xyz + r3.xyz;
    r5.xyzw = t10.Sample(s4_s, r0.xy).xyzw;
    r0.x = 1 + -r5.w;
    r6.xyzw = r5.xyzw * float4(1,1,1,-1) + float4(0,0,0,1);
    r6.xyzw = r9.xxxx ? float4(0,0,0,1) : r6.xyzw;
    r0.y = r8.w * r0.w + r1.x;
    r0.y = log2(r0.y);
    r0.y = r1.w * r0.y;
    r0.y = exp2(r0.y);
    r0.y = r8.w * r0.w + r0.y;
    r0.y = saturate(-1 + r0.y);
    r0.w = r6.w * r0.y;
    if (r1.z != 0) {
      r1.w = max(0.00100000005, r1.y);
      r1.w = log2(r1.w);
      r1.w = -r1.w * 1.20000005 + 1;
      r2.z = -1 + cb1[0].x;
      r1.w = r2.z + -r1.w;
      r8.xyw = t1.SampleLevel(s1_s, r3.xyz, r1.w).xyz;
      r2.z = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
      r11.w = cb1[1].x * r2.z;
      r8.xyw = cb0[187].xyz * r8.xyw;
      r2.z = cmp(0 < cb1[0].w);
      if (r2.z != 0) {
        r3.xyz = t2.SampleLevel(s2_s, r3.xyz, r1.w).xyz;
        r3.xyz = r3.xyz * cb0[187].xyz + -r8.xyw;
        r8.xyw = cb1[0].www * r3.xyz + r8.xyw;
      }
      r1.w = cmp(cb1[0].z < 1);
      r11.xyz = r8.xyw * r0.www;
      r3.xyz = r1.www ? float3(0,0,0) : r8.xyw;
      r11.xyzw = r1.wwww ? r11.xyzw : 0;
    } else {
      r3.xyz = float3(0,0,0);
      r11.xyzw = float4(0,0,0,0);
    }
    r1.w = saturate(r1.y * cb0[197].x + cb0[197].y);
    r2.z = r1.w * -2 + 3;
    r1.w = r1.w * r1.w;
    r1.w = r2.z * r1.w;
    r2.z = max(9.99999975e-005, r11.w);
    r2.z = r8.z / r2.z;
    r2.z = min(cb0[197].z, r2.z);
    r2.z = -1 + r2.z;
    r1.w = r1.w * r2.z + 1;
    r3.xyz = r3.xyz * r0.www;
    r3.xyz = r11.xyz * r1.www + r3.xyz;
    r3.xyz = cb0[135].yyy * r3.xyz + r6.xyz;
    if (r9.x != 0) {
      r10.y = r1.y;
      r6.xy = t3.SampleLevel(s3_s, r10.xy, 0).xy;
      r0.w = saturate(50 * r4.y);
      r0.w = r6.y * r0.w;
      r1.w = 1 + -r10.z;
      r0.w = r1.w * r0.w;
      r6.xyz = r4.xyz * r6.xxx + r0.www;
      r6.xyz = r6.xyz * r3.xyz;
      r8.xy = t3.SampleLevel(s3_s, r10.xw, 0).xy;
      r0.w = r8.x * 0.0399999991 + r8.y;
      r1.w = r0.w * r10.z;
      r0.w = -r0.w * r10.z + 1;
      r0.y = r1.w * r0.y;
      r0.z = r0.z + r0.z;
      r2.xyz = r0.zzz * r7.xyz + r2.xyw;
      if (r1.z != 0) {
        r0.z = max(0.00100000005, r10.w);
        r0.z = log2(r0.z);
        r0.z = -r0.z * 1.20000005 + 1;
        r1.z = -1 + cb1[0].x;
        r0.z = r1.z + -r0.z;
        r7.xyz = t1.SampleLevel(s1_s, r2.xyz, r0.z).xyz;
        r1.z = dot(cb0[187].xyz, float3(0.300000012,0.589999974,0.109999999));
        r9.w = cb1[1].x * r1.z;
        r7.xyz = cb0[187].xyz * r7.xyz;
        r1.z = cmp(0 < cb1[0].w);
        if (r1.z != 0) {
          r2.xyz = t2.SampleLevel(s2_s, r2.xyz, r0.z).xyz;
          r2.xyz = r2.xyz * cb0[187].xyz + -r7.xyz;
          r7.xyz = cb1[0].www * r2.xyz + r7.xyz;
        }
        r0.z = cmp(cb1[0].z < 1);
        r9.xyz = r7.xyz * r0.yyy;
        r2.xyz = r0.zzz ? float3(0,0,0) : r7.xyz;
        r7.xyzw = r0.zzzz ? r9.xyzw : 0;
      } else {
        r2.xyz = float3(0,0,0);
        r7.xyzw = float4(0,0,0,0);
      }
      r0.z = saturate(r10.w * cb0[197].x + cb0[197].y);
      r1.z = r0.z * -2 + 3;
      r0.z = r0.z * r0.z;
      r0.z = r1.z * r0.z;
      r1.z = max(9.99999975e-005, r7.w);
      r1.z = r8.z / r1.z;
      r1.z = min(cb0[197].z, r1.z);
      r1.z = -1 + r1.z;
      r0.z = r0.z * r1.z + 1;
      r2.xyz = r2.xyz * r0.yyy;
      r2.xyz = r7.xyz * r0.zzz + r2.xyz;
      r2.xyz = cb0[135].yyy * r2.xyz;
      r0.yzw = r6.xyz * r0.www + r2.xyz;
      r0.xyz = r0.yzw * r0.xxx + r5.xyz;
    } else {
      r1.xy = t3.SampleLevel(s3_s, r1.xy, 0).xy;
      r0.w = saturate(50 * r4.y);
      r0.w = r0.w * r1.y;
      r1.xyz = r4.xyz * r1.xxx + r0.www;
      r0.xyz = r3.xyz * r1.xyz;
    }
    r0.xyz = min(float3(0,0,0), -r0.xyz);
    r0.xyz = -r0.xyz;
  } else {
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r0.xyz;
  o0.w = 0;
  return;
}