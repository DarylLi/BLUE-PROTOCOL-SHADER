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

cbuffer cb2 : register(b2)
{
  float4 cb2[2];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[208];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
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

  r0.xy = cb1[132].zw * v0.xy;
  r1.xyzw = t6.SampleLevel(s0_s, r0.xy, 0).xzyw;
  r0.z = 255 * r1.w;
  r0.z = round(r0.z);
  r0.z = (uint)r0.z;
  r0.w = (int)r0.z & 15;
  r2.xy = cmp((int2)r0.ww != int2(0,7));
  r1.w = r2.y ? r2.x : 0;
  if (r1.w != 0) {
    r2.xy = -cb1[129].xy + v0.xy;
    r2.xy = r2.xy * cb1[130].zw + float2(-0.5,-0.5);
    r2.xy = v0.ww * r2.xy;
    r2.xy = float2(2,-2) * r2.xy;
    r3.xyz = t5.SampleLevel(s0_s, r0.xy, 0).xyz;
    r4.xyzw = t7.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r2.zw = t8.SampleLevel(s0_s, r0.xy, 0).xy;
    r5.xyzw = t9.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r1.w = t4.SampleLevel(s0_s, r0.xy, 0).x;
    r3.w = r1.w * cb1[65].x + cb1[65].y;
    r1.w = r1.w * cb1[65].z + -cb1[65].w;
    r1.w = 1 / r1.w;
    r1.w = r3.w + r1.w;
    r6.xy = cb1[132].xy * r0.xy;
    r6.xy = (uint2)r6.xy;
    r3.w = (uint)cb1[152].x;
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
    r9.z = cb1[135].z * r6.w;
    r9.y = r4.w;
    r9.xw = float2(0,1);
    r8.zw = r6.yy ? r9.xy : r9.zw;
    r9.xyzw = cmp((int4)r0.wwww == int4(4,5,6,7));
    r6.z = (int)r6.z | (int)r9.x;
    r6.z = (int)r9.y | (int)r6.z;
    r6.z = (int)r9.z | (int)r6.z;
    r6.z = (int)r9.w | (int)r6.z;
    r10.xy = cmp((int2)r0.ww == int2(8,9));
    r0.w = (int)r6.z | (int)r10.x;
    r0.w = (int)r8.x | (int)r0.w;
    r0.w = (int)r8.y | (int)r0.w;
    r0.w = (int)r10.y | (int)r0.w;
    r11.zw = (int2)r2.zw & (int2)r0.ww;
    r0.w = r10.y ? 0 : r1.x;
    r2.zw = float2(5,0.0799999982) * r1.yz;
    r10.xzw = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
    r12.xyz = r0.www * r10.xzw + r2.www;
    r2.w = (int)r9.y | (int)r10.y;
    r6.z = cmp(0 < cb1[156].y);
    r6.w = cmp(0 < cb1[207].z);
    r6.z = r6.w ? r6.z : 0;
    r6.w = cmp(0 != cb1[156].y);
    r10.xyz = r6.www ? float3(1,1,1) : r4.xyz;
    r8.xy = r3.ww ? float2(1,0) : float2(0,1);
    r13.xyz = r12.xyz * r8.yyy;
    r13.w = r8.y * r1.z;
    r10.xyz = r6.zzz ? r8.xxx : r10.xyz;
    r12.w = r1.z;
    r13.xyzw = r6.zzzz ? r13.xyzw : r12.xyzw;
    r10.w = r13.w;
    r4.w = r12.w;
    r10.xyzw = r2.wwww ? r10.xyzw : r4.xyzw;
    r12.xyz = r2.www ? r13.xyz : r12.xyz;
    r4.xyzw = r6.yyyy ? r4.xyzw : r10.xyzw;
    r10.xyz = cb1[137].www * r12.xyz;
    r6.yzw = r6.yyy ? float3(0,0,0) : r10.xyz;
    r6.yzw = cb1[137].xyz + r6.yzw;
    r0.z = (int)r0.z & 16;
    r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r5.xyzw = r0.zzzz ? r5.xyzw : float4(0,0,0,0);
    r1.z = dot(r5.xyz, r5.xyz);
    r1.z = rsqrt(r1.z);
    r5.xyz = r5.yzx * r1.zzz;
    r5.xyz = r0.zzz ? r5.xyz : float3(0,0,0);
    r2.xy = r2.xy * r1.ww;
    r10.xyz = cb1[49].xyz * r2.yyy;
    r2.xyw = r2.xxx * cb1[48].xyz + r10.xyz;
    r2.xyw = r1.www * cb1[50].xyz + r2.xyw;
    r2.xyw = cb1[51].xyz + r2.xyw;
    r2.xyw = -cb1[67].xyz + r2.xyw;
    r0.z = dot(r2.xyw, r2.xyw);
    r0.z = rsqrt(r0.z);
    r2.xyw = r2.xyw * r0.zzz;
    r0.z = dot(r7.xyz, -r2.xyw);
    r11.x = saturate(r0.z);
    r1.z = r11.x * 0.5 + 0.5;
    r1.z = r1.z * r11.x + -1;
    r1.w = saturate(-r1.y * 1.25 + 1.25);
    r1.z = r1.z * r1.w + 1;
    r10.xyz = float3(1.11111116,1.11111116,1.11111116) * r4.xyz;
    r1.w = -1 + r11.x;
    r1.w = 0.850000024 * r1.w;
    r12.xyz = r10.xyz * r10.xyz + -r10.xyz;
    r12.xyz = r12.xyz * float3(-0.779999971,-0.779999971,-0.779999971) + r10.xyz;
    r12.xyz = float3(1,1,1) + -r12.xyz;
    r12.xyz = r1.www * r12.xyz + float3(1,1,1);
    r10.xyz = r12.xyz * r10.xyz;
    r1.w = 1 + -r11.x;
    r3.w = r1.w * r1.w;
    r3.w = r3.w * r3.w;
    r8.x = r3.w * r1.w;
    r1.w = -r3.w * r1.w + 1;
    r1.w = r1.w * 0.0399999991 + r8.x;
    r1.w = r11.z * -r1.w + 1;
    r4.xyz = r4.xyz * r1.www;
    r10.xyz = r10.xyz * r1.zzz;
    r1.w = r0.w * r11.z;
    r10.xyz = r10.xyz * float3(0.899999976,0.899999976,0.899999976) + -r4.xyz;
    r4.xyz = r1.www * r10.xyz + r4.xyz;
    r1.z = r1.z + -r4.w;
    r1.z = r11.z * r1.z + r4.w;
    r1.w = 0.0799999982 * r1.z;
    r4.xyz = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
    r4.xyz = r0.www * r4.xyz + r1.www;
    r4.xyz = r9.xxx ? r4.xyz : r6.yzw;
    r0.w = t11.SampleLevel(s5_s, r0.xy, 0).x;
    r1.zw = cmp(float2(0,0) < cb2[0].yz);
    r1.w = r1.w ? r1.z : 0;
    if (r1.w != 0) {
      r1.w = dot(r7.xyz, r7.xyz);
      r1.w = sqrt(r1.w);
      r10.x = t0[0].val[0/4];
      r10.y = t0[0].val[0/4+1];
      r10.z = t0[0].val[0/4+2];
      r10.w = t0[0].val[0/4+3];
      r7.w = 1;
      r10.x = dot(r10.xyzw, r7.xyzw);
      r12.x = t0[1].val[0/4];
      r12.y = t0[1].val[0/4+1];
      r12.z = t0[1].val[0/4+2];
      r12.w = t0[1].val[0/4+3];
      r10.y = dot(r12.xyzw, r7.xyzw);
      r12.x = t0[2].val[0/4];
      r12.y = t0[2].val[0/4+1];
      r12.z = t0[2].val[0/4+2];
      r12.w = t0[2].val[0/4+3];
      r10.z = dot(r12.xyzw, r7.xyzw);
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
      r10.xyz = r13.xyz + r10.xyz;
      r6.yzw = r6.yzw * r3.www + r10.xyz;
      r6.yzw = max(float3(0,0,0), r6.yzw);
      r6.yzw = cb1[187].xyz * r6.yzw;
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
    r10.xyz = r6.yzw * r5.xyz;
    r5.xyz = r6.wyz * r5.yzx + -r10.xyz;
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
    r10.xyzw = float4(0,0,0,1) + -r6.xyzw;
    r10.xyzw = r11.zzzz * r10.xyzw + r6.xyzw;
    r6.xyzw = r9.xxxx ? r10.xyzw : r6.xyzw;
    r0.y = r8.w * r0.w + r1.x;
    r0.y = log2(r0.y);
    r0.y = r1.w * r0.y;
    r0.y = exp2(r0.y);
    r0.y = r8.w * r0.w + r0.y;
    r0.y = saturate(-1 + r0.y);
    r0.w = r6.w * r0.y;
    r1.w = cmp(0 < cb0[0].x);
    if (r1.w != 0) {
      r2.z = dot(r7.xyz, r7.xyz);
      r2.z = sqrt(r2.z);
      if (cb1[196].x == 0) {
        r3.w = r2.z;
      } else {
        if (r9.z != 0) {
          r3.w = r2.z;
        } else {
          r4.w = max(0.100000001, r1.y);
          r5.w = cb0[0].y * r2.z;
          r6.w = 3.14159274 * r5.w;
          r7.w = dot(r7.xyz, r3.xyz);
          r8.x = max(0.00100000005, r2.z);
          r7.w = r7.w / r8.x;
          r8.x = 1 + -abs(r7.w);
          r8.x = sqrt(r8.x);
          r8.y = abs(r7.w) * -0.0187292993 + 0.0742610022;
          r8.y = r8.y * abs(r7.w) + -0.212114394;
          r8.y = r8.y * abs(r7.w) + 1.57072878;
          r8.w = r8.y * r8.x;
          r8.w = r8.w * -2 + 3.14159274;
          r7.w = cmp(r7.w < -r7.w);
          r7.w = r7.w ? r8.w : 0;
          r7.w = r8.y * r8.x + r7.w;
          r8.x = r4.w * 3.14159274 + -r6.w;
          r7.w = -abs(r8.x) + r7.w;
          r4.w = r4.w * 3.14159274 + r6.w;
          r4.w = r4.w + -abs(r8.x);
          r4.w = saturate(r7.w / r4.w);
          r4.w = 1 + -r4.w;
          r6.w = r4.w * -2 + 3;
          r4.w = r4.w * r4.w;
          r4.w = r6.w * r4.w;
          r5.w = r5.w * 3.14159274 + -0.100000001;
          r5.w = saturate(5 * r5.w);
          r3.w = r5.w * r4.w;
        }
      }
      r4.w = 1 + -r3.w;
      r3.w = cb0[1].w * r4.w + r3.w;
      r4.w = 1 + -r3.w;
      r8.xyw = cb0[1].xyz * r4.www;
      r4.w = 1 + -r2.z;
      r2.z = cb0[1].w * r4.w + r2.z;
    } else {
      r8.xyw = float3(0,0,0);
      r3.w = 1;
      r2.z = 1;
    }
    r2.z = r8.z * r2.z;
    if (r1.z != 0) {
      r4.w = max(0.00100000005, r1.y);
      r4.w = log2(r4.w);
      r4.w = -r4.w * 1.20000005 + 1;
      r5.w = -1 + cb2[0].x;
      r4.w = r5.w + -r4.w;
      r9.yzw = t1.SampleLevel(s1_s, r3.xyz, r4.w).xyz;
      r5.w = dot(cb1[187].xyz, float3(0.300000012,0.589999974,0.109999999));
      r10.w = cb2[1].x * r5.w;
      r9.yzw = cb1[187].xyz * r9.yzw;
      r5.w = cmp(0 < cb2[0].w);
      if (r5.w != 0) {
        r3.xyz = t2.SampleLevel(s2_s, r3.xyz, r4.w).xyz;
        r3.xyz = r3.xyz * cb1[187].xyz + -r9.yzw;
        r9.yzw = cb2[0].www * r3.xyz + r9.yzw;
      }
      r3.x = cmp(cb2[0].z < 1);
      r12.xyz = r9.yzw * r0.www;
      r10.xyz = r12.xyz * r3.www;
      r3.yzw = r9.yzw * r3.www + r8.xyw;
      r8.xyw = r3.xxx ? r8.xyw : r3.yzw;
      r3.xyzw = r3.xxxx ? r10.xyzw : 0;
    } else {
      r3.xyzw = float4(0,0,0,0);
    }
    r4.w = saturate(r1.y * cb1[197].x + cb1[197].y);
    r5.w = r4.w * -2 + 3;
    r4.w = r4.w * r4.w;
    r4.w = r5.w * r4.w;
    r3.w = max(9.99999975e-005, r3.w);
    r2.z = r2.z / r3.w;
    r2.z = min(cb1[197].z, r2.z);
    r2.z = -1 + r2.z;
    r2.z = r4.w * r2.z + 1;
    r8.xyw = r8.xyw * r0.www;
    r3.xyz = r3.xyz * r2.zzz + r8.xyw;
    r3.xyz = cb1[135].yyy * r3.xyz + r6.xyz;
    if (r9.x != 0) {
      r11.y = r1.y;
      r6.xy = t3.SampleLevel(s3_s, r11.xy, 0).xy;
      r0.w = saturate(50 * r4.y);
      r0.w = r6.y * r0.w;
      r2.z = 1 + -r11.z;
      r0.w = r2.z * r0.w;
      r6.xyz = r4.xyz * r6.xxx + r0.www;
      r6.xyz = r6.xyz * r3.xyz;
      r8.xy = t3.SampleLevel(s3_s, r11.xw, 0).xy;
      r0.w = r8.x * 0.0399999991 + r8.y;
      r2.z = r0.w * r11.z;
      r0.w = -r0.w * r11.z + 1;
      r5.xyz = r5.xyz * r2.zzz;
      r5.xyz = r6.xyz * r0.www + r5.xyz;
      r0.x = r2.z * r0.x;
      r0.x = r0.x * r0.y;
      r0.y = r0.z + r0.z;
      r0.yzw = r0.yyy * r7.xyz + r2.xyw;
      if (r1.w != 0) {
        r1.w = dot(r7.xyz, r7.xyz);
        r1.w = sqrt(r1.w);
        if (cb1[196].x == 0) {
          r2.x = r1.w;
        } else {
          r2.y = max(0.100000001, r11.w);
          r2.z = cb0[0].y * r1.w;
          r2.w = 3.14159274 * r2.z;
          r3.w = dot(r7.xyz, r0.yzw);
          r4.w = max(0.00100000005, r1.w);
          r3.w = r3.w / r4.w;
          r4.w = 1 + -abs(r3.w);
          r4.w = sqrt(r4.w);
          r5.w = abs(r3.w) * -0.0187292993 + 0.0742610022;
          r5.w = r5.w * abs(r3.w) + -0.212114394;
          r5.w = r5.w * abs(r3.w) + 1.57072878;
          r6.x = r5.w * r4.w;
          r6.x = r6.x * -2 + 3.14159274;
          r3.w = cmp(r3.w < -r3.w);
          r3.w = r3.w ? r6.x : 0;
          r3.w = r5.w * r4.w + r3.w;
          r4.w = r2.y * 3.14159274 + -r2.w;
          r3.w = -abs(r4.w) + r3.w;
          r2.y = r2.y * 3.14159274 + r2.w;
          r2.y = r2.y + -abs(r4.w);
          r2.y = saturate(r3.w / r2.y);
          r2.y = 1 + -r2.y;
          r2.w = r2.y * -2 + 3;
          r2.y = r2.y * r2.y;
          r2.y = r2.w * r2.y;
          r2.z = r2.z * 3.14159274 + -0.100000001;
          r2.z = saturate(5 * r2.z);
          r2.x = r2.z * r2.y;
        }
        r2.y = 1 + -r2.x;
        r2.x = cb0[1].w * r2.y + r2.x;
        r2.y = 1 + -r2.x;
        r2.yzw = cb0[1].xyz * r2.yyy;
        r3.w = 1 + -r1.w;
        r1.w = cb0[1].w * r3.w + r1.w;
      } else {
        r2.xyzw = float4(1,0,0,0);
        r1.w = 1;
      }
      r1.w = r8.z * r1.w;
      if (r1.z != 0) {
        r1.z = max(0.00100000005, r11.w);
        r1.z = log2(r1.z);
        r1.z = -r1.z * 1.20000005 + 1;
        r3.w = -1 + cb2[0].x;
        r1.z = r3.w + -r1.z;
        r6.xyz = t1.SampleLevel(s1_s, r0.yzw, r1.z).xyz;
        r3.w = dot(cb1[187].xyz, float3(0.300000012,0.589999974,0.109999999));
        r7.w = cb2[1].x * r3.w;
        r6.xyz = cb1[187].xyz * r6.xyz;
        r3.w = cmp(0 < cb2[0].w);
        if (r3.w != 0) {
          r0.yzw = t2.SampleLevel(s2_s, r0.yzw, r1.z).xyz;
          r0.yzw = r0.yzw * cb1[187].xyz + -r6.xyz;
          r6.xyz = cb2[0].www * r0.yzw + r6.xyz;
        }
        r0.y = cmp(cb2[0].z < 1);
        r8.xyz = r6.xyz * r0.xxx;
        r7.xyz = r8.xyz * r2.xxx;
        r6.xyz = r6.xyz * r2.xxx + r2.yzw;
        r2.yzw = r0.yyy ? r2.yzw : r6.xyz;
        r6.xyzw = r0.yyyy ? r7.xyzw : 0;
      } else {
        r6.xyzw = float4(0,0,0,0);
      }
      r0.y = saturate(r11.w * cb1[197].x + cb1[197].y);
      r0.z = r0.y * -2 + 3;
      r0.y = r0.y * r0.y;
      r0.y = r0.z * r0.y;
      r0.z = max(9.99999975e-005, r6.w);
      r0.z = r1.w / r0.z;
      r0.z = min(cb1[197].z, r0.z);
      r0.z = -1 + r0.z;
      r0.y = r0.y * r0.z + 1;
      r0.xzw = r2.yzw * r0.xxx;
      r0.xyz = r6.xyz * r0.yyy + r0.xzw;
      r0.xyz = cb1[135].yyy * r0.xyz + r5.xyz;
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