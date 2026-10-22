// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb1[132].zw * v0.xy;
  r1.xyzw = t3.SampleLevel(s0_s, r0.xy, 0).xzyw;
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
    r3.xyz = t2.SampleLevel(s0_s, r0.xy, 0).xyz;
    r4.xyzw = t4.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r2.zw = t5.SampleLevel(s0_s, r0.xy, 0).xy;
    r5.xyzw = t6.SampleLevel(s0_s, r0.xy, 0).xyzw;
    r1.w = t1.SampleLevel(s0_s, r0.xy, 0).x;
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
    r6.yzw = r6.xxx * r3.xyz;
    r7.xyzw = cmp((int4)r0.wwww == int4(12,13,2,3));
    r7.zw = (int2)r7.yw | (int2)r7.xz;
    r8.x = r7.z ? r4.w : 1;
    r9.xyzw = cmp((int4)r0.wwww == int4(4,5,6,7));
    r7.w = (int)r7.w | (int)r9.x;
    r7.w = (int)r9.y | (int)r7.w;
    r7.w = (int)r9.z | (int)r7.w;
    r7.w = (int)r9.w | (int)r7.w;
    r8.yz = cmp((int2)r0.ww == int2(8,9));
    r0.w = (int)r7.w | (int)r8.y;
    r0.w = (int)r7.x | (int)r0.w;
    r0.w = (int)r7.y | (int)r0.w;
    r0.w = (int)r8.z | (int)r0.w;
    r10.zw = (int2)r2.zw & (int2)r0.ww;
    r0.w = r8.z ? 0 : r1.x;
    r2.zw = float2(5,0.0799999982) * r1.yz;
    r7.xyw = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
    r11.xyz = r0.www * r7.xyw + r2.www;
    r2.w = (int)r8.z | (int)r9.y;
    r7.x = cmp(0 < cb1[156].y);
    r7.y = cmp(0 < cb1[207].z);
    r7.x = r7.y ? r7.x : 0;
    r7.y = cmp(0 != cb1[156].y);
    r8.yzw = r7.yyy ? float3(1,1,1) : r4.xyz;
    r7.yw = r3.ww ? float2(1,0) : float2(0,1);
    r12.xyz = r11.xyz * r7.www;
    r12.w = r7.w * r1.z;
    r13.xyz = r7.xxx ? r7.yyy : r8.yzw;
    r11.w = r1.z;
    r12.xyzw = r7.xxxx ? r12.xyzw : r11.xyzw;
    r13.w = r12.w;
    r4.w = r11.w;
    r13.xyzw = r2.wwww ? r13.xyzw : r4.xyzw;
    r7.xyw = r2.www ? r12.xyz : r11.xyz;
    r4.xyzw = r7.zzzz ? r4.xyzw : r13.xyzw;
    r7.xyw = cb1[137].www * r7.xyw;
    r7.xyz = r7.zzz ? float3(0,0,0) : r7.xyw;
    r7.xyz = cb1[137].xyz + r7.xyz;
    r0.z = (int)r0.z & 16;
    r5.xyzw = r5.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r5.xyzw = r0.zzzz ? r5.xyzw : float4(0,0,0,0);
    r1.z = dot(r5.xyz, r5.xyz);
    r1.z = rsqrt(r1.z);
    r5.xyz = r5.yzx * r1.zzz;
    r5.xyz = r0.zzz ? r5.xyz : float3(0,0,0);
    r2.xy = r2.xy * r1.ww;
    r8.yzw = cb1[49].xyz * r2.yyy;
    r2.xyw = r2.xxx * cb1[48].xyz + r8.yzw;
    r2.xyw = r1.www * cb1[50].xyz + r2.xyw;
    r2.xyw = cb1[51].xyz + r2.xyw;
    r2.xyw = -cb1[67].xyz + r2.xyw;
    r0.z = dot(r2.xyw, r2.xyw);
    r0.z = rsqrt(r0.z);
    r2.xyw = r2.xyw * r0.zzz;
    r0.z = dot(r6.yzw, -r2.xyw);
    r10.x = saturate(r0.z);
    r1.z = r10.x * 0.5 + 0.5;
    r1.z = r1.z * r10.x + -1;
    r1.w = saturate(-r1.y * 1.25 + 1.25);
    r1.z = r1.z * r1.w + 1;
    r8.yzw = float3(1.11111116,1.11111116,1.11111116) * r4.xyz;
    r1.w = -1 + r10.x;
    r1.w = 0.850000024 * r1.w;
    r11.xyz = r8.yzw * r8.yzw + -r8.yzw;
    r11.xyz = r11.xyz * float3(-0.779999971,-0.779999971,-0.779999971) + r8.yzw;
    r11.xyz = float3(1,1,1) + -r11.xyz;
    r11.xyz = r1.www * r11.xyz + float3(1,1,1);
    r8.yzw = r11.xyz * r8.yzw;
    r1.w = 1 + -r10.x;
    r3.w = r1.w * r1.w;
    r3.w = r3.w * r3.w;
    r7.w = r3.w * r1.w;
    r1.w = -r3.w * r1.w + 1;
    r1.w = r1.w * 0.0399999991 + r7.w;
    r1.w = r10.z * -r1.w + 1;
    r4.xyz = r4.xyz * r1.www;
    r8.yzw = r8.yzw * r1.zzz;
    r1.w = r0.w * r10.z;
    r8.yzw = r8.yzw * float3(0.899999976,0.899999976,0.899999976) + -r4.xyz;
    r4.xyz = r1.www * r8.yzw + r4.xyz;
    r1.z = r1.z + -r4.w;
    r1.z = r10.z * r1.z + r4.w;
    r1.w = 0.0799999982 * r1.z;
    r4.xyz = -r1.zzz * float3(0.0799999982,0.0799999982,0.0799999982) + r4.xyz;
    r4.xyz = r0.www * r4.xyz + r1.www;
    r4.xyz = r9.xxx ? r4.xyz : r7.xyz;
    r0.w = t8.SampleLevel(s3_s, r0.xy, 0).x;
    r1.z = cmp(0 < abs(r5.w));
    r7.xyz = r6.yzw * r5.yzx;
    r7.xyz = r6.wyz * r5.zxy + -r7.xyz;
    r1.w = dot(r7.xyz, r7.xyz);
    r1.w = rsqrt(r1.w);
    r7.xyz = r7.xyz * r1.www;
    r1.w = cmp(r5.w >= 0);
    r5.xyz = r1.www ? r7.xyz : r5.xyz;
    r7.xyz = r5.xyz * -r2.xyw;
    r7.xyz = r5.zxy * -r2.ywx + -r7.xyz;
    r8.yzw = r7.xyz * r5.xyz;
    r5.xyz = r7.zxy * r5.yzx + -r8.yzw;
    r2.z = saturate(r2.z);
    r1.w = abs(r5.w) * r2.z;
    r3.xyz = -r3.xyz * r6.xxx + r5.xyz;
    r3.xyz = r1.www * r3.xyz + r6.yzw;
    r1.w = dot(r3.xyz, r3.xyz);
    r1.w = rsqrt(r1.w);
    r3.xyz = r3.xyz * r1.www;
    r3.xyz = r1.zzz ? r3.xyz : r6.yzw;
    r1.x = dot(-r2.xyw, r3.xyz);
    r1.z = r1.x + r1.x;
    r5.xyz = r1.zzz * r3.xyz + r2.xyw;
    r1.x = saturate(r1.x);
    r1.z = r1.y * r1.y;
    r1.w = -r1.y * r1.y + 1;
    r2.z = sqrt(r1.w);
    r2.z = r1.y * r1.y + r2.z;
    r1.w = r2.z * r1.w;
    r5.xyz = r5.xyz + -r3.xyz;
    r3.xyz = r1.www * r5.xyz + r3.xyz;
    r5.xyzw = t7.Sample(s2_s, r0.xy).xyzw;
    r0.x = 1 + -r5.w;
    r7.xyzw = r5.xyzw * float4(1,1,1,-1) + float4(0,0,0,1);
    r7.xyzw = r9.xxxx ? float4(0,0,0,1) : r7.xyzw;
    r0.y = r8.x * r0.w + r1.x;
    r0.y = log2(r0.y);
    r0.y = r1.z * r0.y;
    r0.y = exp2(r0.y);
    r0.y = r8.x * r0.w + r0.y;
    r0.y = saturate(-1 + r0.y);
    r0.w = r7.w * r0.y;
    r1.z = cmp(0 < cb0[0].x);
    if (r1.z != 0) {
      r1.w = dot(r6.yzw, r6.yzw);
      r1.w = sqrt(r1.w);
      if (cb1[196].x != 0) {
        if (r9.z == 0) {
          r2.z = max(0.100000001, r1.y);
          r3.w = cb0[0].y * r1.w;
          r4.w = 3.14159274 * r3.w;
          r3.x = dot(r6.yzw, r3.xyz);
          r3.y = max(0.00100000005, r1.w);
          r3.x = r3.x / r3.y;
          r3.y = 1 + -abs(r3.x);
          r3.y = sqrt(r3.y);
          r3.z = abs(r3.x) * -0.0187292993 + 0.0742610022;
          r3.z = r3.z * abs(r3.x) + -0.212114394;
          r3.z = r3.z * abs(r3.x) + 1.57072878;
          r5.w = r3.z * r3.y;
          r5.w = r5.w * -2 + 3.14159274;
          r3.x = cmp(r3.x < -r3.x);
          r3.x = r3.x ? r5.w : 0;
          r3.x = r3.z * r3.y + r3.x;
          r3.y = r2.z * 3.14159274 + -r4.w;
          r3.x = r3.x + -abs(r3.y);
          r2.z = r2.z * 3.14159274 + r4.w;
          r2.z = r2.z + -abs(r3.y);
          r2.z = saturate(r3.x / r2.z);
          r2.z = 1 + -r2.z;
          r3.x = r2.z * -2 + 3;
          r2.z = r2.z * r2.z;
          r2.z = r3.x * r2.z;
          r3.x = r3.w * 3.14159274 + -0.100000001;
          r3.x = saturate(5 * r3.x);
          r1.w = r3.x * r2.z;
        }
      }
      r2.z = 1 + -r1.w;
      r1.w = cb0[1].w * r2.z + r1.w;
      r1.w = 1 + -r1.w;
      r3.xyz = cb0[1].xyz * r1.www;
    } else {
      r3.xyz = float3(0,0,0);
    }
    r3.xyz = r3.xyz * r0.www;
    r3.xyz = cb1[135].yyy * r3.xyz + r7.xyz;
    if (r9.x != 0) {
      r10.y = r1.y;
      r7.xy = t0.SampleLevel(s1_s, r10.xy, 0).xy;
      r0.w = saturate(50 * r4.y);
      r0.w = r7.y * r0.w;
      r1.w = 1 + -r10.z;
      r0.w = r1.w * r0.w;
      r7.xyz = r4.xyz * r7.xxx + r0.www;
      r7.xyz = r7.xyz * r3.xyz;
      r8.xy = t0.SampleLevel(s1_s, r10.xw, 0).xy;
      r0.w = r8.x * 0.0399999991 + r8.y;
      r1.w = r0.w * r10.z;
      r0.w = -r0.w * r10.z + 1;
      r0.y = r1.w * r0.y;
      r0.z = r0.z + r0.z;
      r2.xyz = r0.zzz * r6.yzw + r2.xyw;
      if (r1.z != 0) {
        r0.z = dot(r6.yzw, r6.yzw);
        r0.z = sqrt(r0.z);
        if (cb1[196].x != 0) {
          r1.z = max(0.100000001, r10.w);
          r1.w = cb0[0].y * r0.z;
          r2.w = 3.14159274 * r1.w;
          r2.x = dot(r6.yzw, r2.xyz);
          r2.y = max(0.00100000005, r0.z);
          r2.x = r2.x / r2.y;
          r2.y = 1 + -abs(r2.x);
          r2.y = sqrt(r2.y);
          r2.z = abs(r2.x) * -0.0187292993 + 0.0742610022;
          r2.z = r2.z * abs(r2.x) + -0.212114394;
          r2.z = r2.z * abs(r2.x) + 1.57072878;
          r3.w = r2.z * r2.y;
          r3.w = r3.w * -2 + 3.14159274;
          r2.x = cmp(r2.x < -r2.x);
          r2.x = r2.x ? r3.w : 0;
          r2.x = r2.z * r2.y + r2.x;
          r2.y = r1.z * 3.14159274 + -r2.w;
          r2.x = r2.x + -abs(r2.y);
          r1.z = r1.z * 3.14159274 + r2.w;
          r1.z = r1.z + -abs(r2.y);
          r1.z = saturate(r2.x / r1.z);
          r1.z = 1 + -r1.z;
          r2.x = r1.z * -2 + 3;
          r1.z = r1.z * r1.z;
          r1.z = r2.x * r1.z;
          r1.w = r1.w * 3.14159274 + -0.100000001;
          r1.w = saturate(5 * r1.w);
          r0.z = r1.w * r1.z;
        }
        r1.z = 1 + -r0.z;
        r0.z = cb0[1].w * r1.z + r0.z;
        r0.z = 1 + -r0.z;
        r2.xyz = cb0[1].xyz * r0.zzz;
      } else {
        r2.xyz = float3(0,0,0);
      }
      r2.xyz = r2.xyz * r0.yyy;
      r2.xyz = cb1[135].yyy * r2.xyz;
      r0.yzw = r7.xyz * r0.www + r2.xyz;
      r0.xyz = r0.yzw * r0.xxx + r5.xyz;
    } else {
      r1.xy = t0.SampleLevel(s1_s, r1.xy, 0).xy;
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