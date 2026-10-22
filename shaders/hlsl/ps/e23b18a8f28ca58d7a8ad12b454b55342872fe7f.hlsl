// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture3D<float4> t11 : register(t11);

Texture3D<float4> t10 : register(t10);

Texture3D<float4> t9 : register(t9);

Texture3D<float4> t8 : register(t8);

Texture3D<float4> t7 : register(t7);

Texture3D<float4> t6 : register(t6);

Texture3D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

SamplerState s0_s : register(s0);

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[208];
}




// 3Dmigoto declarations
#define cmp -


void main(
  linear noperspective float4 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t2.SampleLevel(s0_s, v0.xy, 0).xyzw;
  r0.w = 255 * r0.w;
  r0.w = round(r0.w);
  r0.w = (uint)r0.w;
  r0.w = (int)r0.w & 15;
  r1.xyzw = cmp((int4)r0.wwww == int4(12,13,0,14));
  r1.xy = (int2)r1.yw | (int2)r1.xz;
  if (r1.x != 0) {
    r1.z = 1;
  } else {
    r1.z = t4.SampleLevel(s0_s, v0.xy, 0).x;
  }
  if (r1.y != 0) {
    o0.xyzw = float4(0,0,0,0);
    return;
  }
  r2.xyz = cb0[49].xyz * v0.www;
  r2.xyz = v0.zzz * cb0[48].xyz + r2.xyz;
  r2.xyz = cb0[50].xyz + r2.xyz;
  r1.y = t0.SampleLevel(s0_s, v0.xy, 0).x;
  r1.w = r1.y * cb0[65].x + cb0[65].y;
  r1.y = r1.y * cb0[65].z + -cb0[65].w;
  r1.y = 1 / r1.y;
  r1.y = r1.w + r1.y;
  r3.xyz = r2.xyz * r1.yyy + cb0[67].xyz;
  r4.xyz = r3.xyz * cb1[1].xxx + cb1[4].xyz;
  r5.xyz = float3(-16,-16,-16) + r4.xyz;
  r1.y = max(abs(r5.y), abs(r5.z));
  r1.y = max(abs(r5.x), r1.y);
  r1.y = 15.5 + -r1.y;
  r1.y = saturate(r1.y / cb1[6].x);
  r5.xyz = cb0[67].xyz * cb1[1].xxx + cb1[4].xyz;
  r4.xyz = r5.xyz + -r4.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = cmp(64 < r1.w);
  r1.y = r1.w ? r1.y : 1;
  r1.w = cmp(0 < r1.y);
  if (r1.w != 0) {
    r4.xyz = t1.SampleLevel(s0_s, v0.xy, 0).xyz;
    r5.xyzw = t3.SampleLevel(s0_s, v0.xy, 0).xyzw;
    r6.xy = cb0[132].xy * v0.xy;
    r6.xy = (uint2)r6.xy;
    r1.w = (uint)cb0[152].x;
    r2.w = (int)r6.y + (int)r6.x;
    r1.w = (int)r1.w + (int)r2.w;
    r1.w = (int)r1.w & 1;
    r4.xyzw = r4.xyzx * float4(2,2,2,2) + float4(-1,-1,-1,-1);
    r2.w = dot(r4.yzw, r4.yzw);
    r2.w = rsqrt(r2.w);
    r4.xyzw = r4.xyzw * r2.wwww;
    r2.w = r1.x ? r5.w : 1;
    r6.xy = cmp((int2)r0.ww == int2(9,5));
    r0.x = r6.x ? 0 : r0.x;
    r0.w = 0.0799999982 * r0.y;
    r7.xyz = -r0.yyy * float3(0.0799999982,0.0799999982,0.0799999982) + r5.xyz;
    r7.xyz = r0.xxx * r7.xyz + r0.www;
    r0.y = (int)r6.x | (int)r6.y;
    r0.w = cmp(0 < cb0[156].y);
    r3.w = cmp(0 < cb0[207].z);
    r0.w = r0.w ? r3.w : 0;
    r3.w = cmp(0 != cb0[156].y);
    r6.xyz = r3.www ? float3(1,1,1) : r5.xyz;
    r8.xy = r1.ww ? float2(1,0) : float2(0,1);
    r8.yzw = r8.yyy * r7.xyz;
    r6.xyz = r0.www ? r8.xxx : r6.xyz;
    r8.xyz = r0.www ? r8.yzw : r7.xyz;
    r7.xyz = r0.yyy ? r8.xyz : r7.xyz;
    r6.xyz = r0.yyy ? r6.xyz : r5.xyz;
    r0.xyw = -r6.xyz * r0.xxx + r6.xyz;
    r0.xyw = r1.xxx ? r5.xyz : r0.xyw;
    r0.xyw = r0.xyw * cb0[136].www + cb0[136].xyz;
    r5.xyz = cb0[137].www * r7.xyz;
    r5.xyz = r1.xxx ? float3(0,0,0) : r5.xyz;
    r5.xyz = cb0[137].xyz + r5.xyz;
    r1.x = dot(r2.xyz, r2.xyz);
    r1.x = rsqrt(r1.x);
    r2.xyz = r2.xyz * r1.xxx;
    r1.x = dot(r2.yzx, r4.yzw);
    r1.x = r1.x + r1.x;
    r2.xyz = r4.wyz * -r1.xxx + r2.xyz;
    r6.xyz = asint(cb1[0].xyz);
    r7.xyz = r3.xyz * cb1[1].xxx + r6.xyz;
    r7.xyz = float3(0.03125,0.03125,0.03125) * r7.xyz;
    r8.xyz = t5.SampleLevel(s1_s, r7.xyz, 0).xyz;
    r9.xyzw = t6.SampleLevel(s1_s, r7.xyz, 0).xyzw;
    r10.xyzw = t7.SampleLevel(s1_s, r7.xyz, 0).zxyw;
    r11.xyzw = t8.SampleLevel(s1_s, r7.xyz, 0).xyzw;
    r12.xyzw = t9.SampleLevel(s1_s, r7.xyz, 0).xyzw;
    r13.xyzw = t10.SampleLevel(s1_s, r7.xyz, 0).xyzw;
    r7.xyzw = t11.SampleLevel(s1_s, r7.xyz, 0).yzxw;
    r14.xyz = r4.yzw * r4.yzy;
    r1.xw = r4.yw * r4.zz;
    r15.xyz = float3(0.429042995,0.429042995,0.429042995) * r7.xyw;
    r3.w = r4.x * r4.x + -r14.x;
    r16.x = r12.w;
    r16.yz = r13.xy;
    r17.xyz = float3(0.743125021,0.743125021,0.743125021) * r16.xyz;
    r14.xyw = r17.xyz * r14.yyy;
    r14.xyw = r15.xyz * r3.www + r14.xyw;
    r14.xyw = r8.xyz * float3(0.886227012,0.886227012,0.886227012) + r14.xyw;
    r14.xyw = -r16.xyz * float3(0.247707993,0.247707993,0.247707993) + r14.xyw;
    r7.xy = r13.zw;
    r13.xyz = r7.xyz * r1.www;
    r13.xyz = r11.yzw * r14.zzz + r13.xyz;
    r13.xyz = r12.xyz * r1.xxx + r13.xyz;
    r13.xyz = r13.xyz * float3(0.85808599,0.85808599,0.85808599) + r14.xyw;
    r14.xy = r10.xw;
    r14.z = r11.x;
    r18.xyz = r9.xyz * r4.yyy;
    r4.xyw = r14.xyz * r4.www + r18.xyz;
    r10.x = r9.w;
    r4.xyz = r10.xyz * r4.zzz + r4.xyw;
    r4.xyz = r4.xyz * float3(1.02332795,1.02332795,1.02332795) + r13.xyz;
    r4.xyz = max(float3(0,0,0), r4.xyz);
    r4.xyz = cb1[1].zzz * r4.xyz;
    r0.xyw = r4.xyz * r0.xyw;
    r0.xyw = float3(0.000375000003,0.000375000003,0.000375000003) * r0.xyw;
    r1.x = dot(r5.xyz, float3(0.298999995,0.587000012,0.114));
    r1.w = cmp(r1.x >= cb1[3].x);
    if (r1.w != 0) {
      r0.z = 1 + -r0.z;
      r0.z = r0.z * r0.z;
      r0.z = r0.z * r0.z;
      r1.w = 8 * r0.z;
      r4.xyz = r2.xyz * r1.www;
      r4.xyz = r4.xyz * cb1[0].www + r3.xyz;
      r4.xyz = r4.xyz * cb1[1].xxx + r6.xyz;
      r4.xyz = float3(0.03125,0.03125,0.03125) * r4.xyz;
      r5.xyz = t5.SampleLevel(s1_s, r4.xyz, 0).xyz;
      r13.xyzw = t6.SampleLevel(s1_s, r4.xyz, 0).xyzw;
      r18.xyzw = t7.SampleLevel(s1_s, r4.xyz, 0).zxyw;
      r19.xyzw = t8.SampleLevel(s1_s, r4.xyz, 0).yzxw;
      r20.xyzw = t9.SampleLevel(s1_s, r4.xyz, 0).xyzw;
      r21.xyzw = t10.SampleLevel(s1_s, r4.xyz, 0).xyzw;
      r4.xyzw = t11.SampleLevel(s1_s, r4.xyz, 0).yzxw;
      r22.xyz = r2.yzx * r2.yzy;
      r23.xy = r2.yx * r2.zz;
      r24.xyz = float3(0.429042995,0.429042995,0.429042995) * r4.xyw;
      r1.w = r2.x * r2.x + -r22.x;
      r25.x = r20.w;
      r25.yz = r21.xy;
      r26.xyz = r25.xyz * r22.yyy;
      r26.xyz = float3(0.743125021,0.743125021,0.743125021) * r26.xyz;
      r24.xyz = r24.xyz * r1.www + r26.xyz;
      r5.xyz = r5.xyz * float3(0.886227012,0.886227012,0.886227012) + r24.xyz;
      r5.xyz = -r25.xyz * float3(0.247707993,0.247707993,0.247707993) + r5.xyz;
      r4.xy = r21.zw;
      r4.xyz = r4.xyz * r23.yyy;
      r4.xyz = r19.xyw * r22.zzz + r4.xyz;
      r4.xyz = r20.xyz * r23.xxx + r4.xyz;
      r4.xyz = r4.xyz * float3(0.85808599,0.85808599,0.85808599) + r5.xyz;
      r19.xy = r18.xw;
      r5.xyz = r13.xyz * r2.yyy;
      r5.xyz = r19.xyz * r2.xxx + r5.xyz;
      r18.x = r13.w;
      r5.xyz = r18.xyz * r2.zzz + r5.xyz;
      r4.xyz = r5.xyz * float3(1.02332795,1.02332795,1.02332795) + r4.xyz;
      r4.xyz = max(float3(0,0,0), r4.xyz);
      r4.xyz = cb1[1].yyy * r4.xyz;
      r5.xyz = float3(0.000375000003,0.000375000003,0.000375000003) * r4.xyz;
      r13.xy = cmp(float2(0.625,0.125) < r0.zz);
      if (r13.x != 0) {
        r0.z = 4 * r0.z;
        r13.xzw = r2.xyz * r0.zzz;
        r3.xyz = r13.xzw * cb1[0].www + r3.xyz;
        r3.xyz = r3.xyz * cb1[1].xxx + r6.xyz;
        r3.xyz = float3(0.03125,0.03125,0.03125) * r3.xyz;
        r6.xyz = t5.SampleLevel(s1_s, r3.xyz, 0).xyz;
        r18.xyzw = t6.SampleLevel(s1_s, r3.xyz, 0).xyzw;
        r19.xyzw = t7.SampleLevel(s1_s, r3.xyz, 0).zxyw;
        r20.xyzw = t8.SampleLevel(s1_s, r3.xyz, 0).yzxw;
        r21.xyzw = t9.SampleLevel(s1_s, r3.xyz, 0).xyzw;
        r24.xyzw = t10.SampleLevel(s1_s, r3.xyz, 0).xyzw;
        r3.xyzw = t11.SampleLevel(s1_s, r3.xyz, 0).yzxw;
        r13.xzw = r3.xyw * r1.www;
        r25.x = r21.w;
        r25.yz = r24.xy;
        r26.xyz = r25.xyz * r22.yyy;
        r26.xyz = float3(0.743125021,0.743125021,0.743125021) * r26.xyz;
        r13.xzw = r13.xzw * float3(0.429042995,0.429042995,0.429042995) + r26.xyz;
        r6.xyz = r6.xyz * float3(0.886227012,0.886227012,0.886227012) + r13.xzw;
        r6.xyz = -r25.xyz * float3(0.247707993,0.247707993,0.247707993) + r6.xyz;
        r3.xy = r24.zw;
        r3.xyz = r3.xyz * r23.yyy;
        r3.xyz = r20.xyw * r22.zzz + r3.xyz;
        r3.xyz = r21.xyz * r23.xxx + r3.xyz;
        r3.xyz = r3.xyz * float3(0.85808599,0.85808599,0.85808599) + r6.xyz;
        r20.xy = r19.xw;
        r6.xyz = r18.xyz * r2.yyy;
        r6.xyz = r20.xyz * r2.xxx + r6.xyz;
        r19.x = r18.w;
        r6.xyz = r19.xyz * r2.zzz + r6.xyz;
        r3.xyz = r6.xyz * float3(1.02332795,1.02332795,1.02332795) + r3.xyz;
        r3.xyz = max(float3(0,0,0), r3.xyz);
        r3.xyz = cb1[1].yyy * r3.xyz;
        r3.xyz = float3(0.000375000003,0.000375000003,0.000375000003) * r3.xyz;
        r0.z = dot(r3.xyz, float3(0.298999995,0.587000012,0.114));
        r3.w = dot(r5.xyz, float3(0.298999995,0.587000012,0.114));
        r3.w = 0.75 * r3.w;
        r0.z = r0.z * 0.25 + r3.w;
        r0.z = 9.99999975e-005 + r0.z;
        r0.z = r3.w / r0.z;
        r4.xyz = r4.xyz * float3(0.000375000003,0.000375000003,0.000375000003) + -r3.xyz;
        r5.xyz = r0.zzz * r4.xyz + r3.xyz;
      }
      if (r13.y != 0) {
        r3.xyz = r22.yyy * r17.xyz;
        r3.xyz = r15.xyz * r1.www + r3.xyz;
        r3.xyz = r8.xyz * float3(0.886227012,0.886227012,0.886227012) + r3.xyz;
        r3.xyz = -r16.xyz * float3(0.247707993,0.247707993,0.247707993) + r3.xyz;
        r4.xyz = r23.yyy * r7.xyz;
        r4.xyz = r11.yzw * r22.zzz + r4.xyz;
        r4.xyz = r12.xyz * r23.xxx + r4.xyz;
        r3.xyz = r4.xyz * float3(0.85808599,0.85808599,0.85808599) + r3.xyz;
        r4.xyz = r9.xyz * r2.yyy;
        r4.xyz = r14.xyz * r2.xxx + r4.xyz;
        r2.xyz = r10.xyz * r2.zzz + r4.xyz;
        r2.xyz = r2.xyz * float3(1.02332795,1.02332795,1.02332795) + r3.xyz;
        r2.xyz = max(float3(0,0,0), r2.xyz);
        r2.xyz = cb1[1].zzz * r2.xyz;
        r2.xyz = float3(0.000375000003,0.000375000003,0.000375000003) * r2.xyz;
        r2.xyz = r2.xyz / cb1[1].zzz;
        r3.xyz = cb1[1].yyy * r2.xyz;
        r0.z = dot(r3.xyz, float3(0.298999995,0.587000012,0.114));
        r1.w = dot(r5.xyz, float3(0.298999995,0.587000012,0.114));
        r1.w = 0.75 * r1.w;
        r0.z = r0.z * 0.25 + r1.w;
        r0.z = 9.99999975e-005 + r0.z;
        r0.z = r1.w / r0.z;
        r2.xyz = -r2.xyz * cb1[1].yyy + r5.xyz;
        r5.xyz = r0.zzz * r2.xyz + r3.xyz;
      }
      r0.z = min(0.0199999996, cb1[3].x);
      r1.x = -cb1[3].x + r1.x;
      r0.z = saturate(r1.x / r0.z);
      r2.xyz = r5.xyz * r0.zzz;
    } else {
      r2.xyz = float3(0,0,0);
    }
    r0.z = r2.w * r1.z;
    r1.x = 1;
    r1.x = r1.x * r0.z;
    r0.xyz = r0.xyw * r0.zzz + r2.xyz;
    o0.w = r1.x;
  } else {
    r0.xyz = float3(0,0,0);
    o0.w = 0;
  }
  r0.xyz = r0.xyz * r1.yyy;
  o0.xyz = cb0[135].yyy * r0.xyz;
  return;
}