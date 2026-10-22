// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
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
  float4 cb1[133];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  out float4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = -cb0[17].zw + v0.xy;
  r0.xy = cb0[18].xy * r0.xy;
  r0.xy = floor(r0.xy);
  r0.zw = -r0.xy * cb0[18].zw + v0.xy;
  r0.zw = -cb0[17].zw + r0.zw;
  r1.xy = cb0[18].xy * r0.zw;
  r0.zw = -r0.wz * cb0[18].yx + float2(1,1);
  r2.yz = r0.zw * r1.xy;
  r2.w = r1.y * r1.x;
  r2.x = r0.z * r0.w;
  r0.zw = cb0[18].zw * r0.xy;
  r0.xy = r0.xy * cb0[18].zw + cb0[17].zw;
  r0.xy = cb0[17].xy * float2(0.5,0.5) + r0.xy;
  r0.zw = cb0[18].zw * float2(0.5,0.5) + r0.zw;
  r1.xy = -cb1[66].wz + r0.zw;
  r1.xy = r1.xy / cb1[66].xy;
  r3.xyzw = t1.SampleLevel(s1_s, r0.zw, 0).xyzw;
  r1.xy = r3.ww * r1.xy;
  r1.yzw = cb1[49].xyz * r1.yyy;
  r1.xyz = r1.xxx * cb1[48].xyz + r1.yzw;
  r1.xyz = r3.www * cb1[50].xyz + r1.xyz;
  r1.xyz = cb1[51].xyz + r1.xyz;
  r1.w = 1;
  r4.xyzw = t0.SampleLevel(s0_s, v0.xy, 0).xyzw;
  r5.xy = v0.zw * r4.ww;
  r5.yzw = cb1[49].xyz * r5.yyy;
  r5.xyz = r5.xxx * cb1[48].xyz + r5.yzw;
  r5.xyz = r4.www * cb1[50].xyz + r5.xyz;
  r5.xyz = cb1[51].xyz + r5.xyz;
  r5.w = dot(r5.xyz, r4.xyz);
  r6.w = -r5.w;
  r6.xyz = r4.xyz;
  r1.x = dot(r6.xyzw, r1.xyzw);
  r1.x = 1000 * abs(r1.x);
  r1.x = r1.x / r3.w;
  r1.x = 9.99999975e-005 + r1.x;
  r1.x = 10 / r1.x;
  r1.x = min(1, r1.x);
  r4.xy = cb0[18].zw + r0.zw;
  r7.xy = -cb1[66].wz + r4.xy;
  r8.xyzw = t1.SampleLevel(s1_s, r4.xy, 0).xyzw;
  r4.xy = r7.xy / cb1[66].xy;
  r4.xy = r4.xy * r8.ww;
  r7.xyz = cb1[49].xyz * r4.yyy;
  r4.xyz = r4.xxx * cb1[48].xyz + r7.xyz;
  r4.xyz = r8.www * cb1[50].xyz + r4.xyz;
  r7.xyz = cb1[51].xyz + r4.xyz;
  r7.w = 1;
  r3.w = dot(r6.xyzw, r7.xyzw);
  r3.w = 1000 * abs(r3.w);
  r3.w = r3.w / r8.w;
  r3.w = 9.99999975e-005 + r3.w;
  r3.w = 10 / r3.w;
  r1.w = min(1, r3.w);
  r7.xw = cb0[18].zw;
  r7.yz = float2(0,0);
  r9.xyzw = r7.xyzw + r0.zwzw;
  r7.xyzw = r7.xyzw + r0.xyxy;
  r10.xyzw = -cb1[66].wzwz + r9.xyzw;
  r10.xyzw = r10.xyzw / cb1[66].xyxy;
  r11.xyzw = t1.SampleLevel(s1_s, r9.xy, 0).xyzw;
  r9.xyzw = t1.SampleLevel(s1_s, r9.zw, 0).xyzw;
  r0.zw = r11.ww * r10.xy;
  r4.xy = r10.zw * r9.ww;
  r10.xyz = cb1[49].xyz * r0.www;
  r10.xyz = r0.zzz * cb1[48].xyz + r10.xyz;
  r10.xyz = r11.www * cb1[50].xyz + r10.xyz;
  r10.xyz = cb1[51].xyz + r10.xyz;
  r10.w = 1;
  r0.z = dot(r6.xyzw, r10.xyzw);
  r0.z = 1000 * abs(r0.z);
  r0.z = r0.z / r11.w;
  r0.z = 9.99999975e-005 + r0.z;
  r0.z = 10 / r0.z;
  r1.y = min(1, r0.z);
  r10.xyz = cb1[49].xyz * r4.yyy;
  r4.xyz = r4.xxx * cb1[48].xyz + r10.xyz;
  r4.xyz = r9.www * cb1[50].xyz + r4.xyz;
  r10.xyz = cb1[51].xyz + r4.xyz;
  r10.w = 1;
  r0.z = dot(r6.xyzw, r10.xyzw);
  r0.z = 1000 * abs(r0.z);
  r0.z = r0.z / r9.w;
  r0.z = 9.99999975e-005 + r0.z;
  r0.z = 10 / r0.z;
  r1.z = min(1, r0.z);
  r1.xyzw = r2.xyzw * r1.xyzw;
  r0.zw = cb0[18].zw + r0.xy;
  r2.xyz = t0.SampleLevel(s0_s, r0.xy, 0).xyz;
  r2.x = dot(r2.xyz, r6.xyz);
  r0.xyz = t0.SampleLevel(s0_s, r0.zw, 0).xyz;
  r2.w = dot(r0.xyz, r6.xyz);
  r0.xyz = t0.SampleLevel(s0_s, r7.xy, 0).xyz;
  r4.xyz = t0.SampleLevel(s0_s, r7.zw, 0).xyz;
  r2.z = dot(r4.xyz, r6.xyz);
  r2.y = dot(r0.xyz, r6.xyz);
  r0.xyzw = max(float4(9.99999975e-005,9.99999975e-005,9.99999975e-005,9.99999975e-005), r2.xyzw);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.xyz = r0.yyy * r11.xyz;
  r1.xyz = r0.xxx * r3.xyz + r1.xyz;
  r1.xyz = r0.zzz * r9.xyz + r1.xyz;
  r1.xyz = r0.www * r8.xyz + r1.xyz;
  r0.x = dot(r0.xyzw, float4(1,1,1,1));
  r0.x = max(9.99999975e-006, r0.x);
  r0.x = 1 / r0.x;
  r0.xyz = r1.xyz * r0.xxx;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  r1.x = max(9.99999975e-005, r0.w);
  r0.xyz = r0.xyz / r1.xxx;
  r1.xyz = r0.xyz * r0.www;
  r1.w = cmp(cb1[31].w < 1);
  r2.x = cb1[65].w + r4.w;
  r2.x = cb1[65].z * r2.x;
  r2.x = 1 / r2.x;
  r2.y = r4.w * cb1[30].z + cb1[31].z;
  r1.w = r1.w ? r2.x : r2.y;
  r2.xyz = cb1[123].xyw * v0.www;
  r2.xyz = v0.zzz * cb1[122].xyw + r2.xyz;
  r2.xyz = r1.www * cb1[124].xyw + r2.xyz;
  r2.xyz = cb1[125].xyw + r2.xyz;
  r2.xy = r2.xy / r2.zz;
  r2.xy = v0.zw + -r2.xy;
  r2.zw = -cb1[132].zw * float2(0.5,0.5) + v0.xy;
  r2.zw = t3.SampleLevel(s3_s, r2.zw, 0).xy;
  r1.w = cmp(0 < r2.z);
  r2.zw = r2.zw * float2(4.00801611,4.00801611) + float2(-2.00397754,-2.00397754);
  r2.xy = r1.ww ? r2.zw : r2.xy;
  r2.xy = v0.zw + -r2.xy;
  r2.zw = r2.xy * cb0[15].xy + cb0[15].wz;
  r3.xy = max(cb0[16].xy, r2.zw);
  r3.xy = min(cb0[16].zw, r3.xy);
  r3.xyzw = t2.SampleLevel(s2_s, r3.xy, 0).xyzw;
  r0.xyz = -r0.xyz * r0.www + r3.xyz;
  r2.xy = r3.ww * r2.xy;
  r3.xyz = cb1[119].xyz * r2.yyy;
  r3.xyz = r2.xxx * cb1[118].xyz + r3.xyz;
  r3.xyz = r3.www * cb1[120].xyz + r3.xyz;
  r3.xyz = cb1[121].xyz + r3.xyz;
  r3.xyz = -cb1[113].xyz + r3.xyz;
  r3.xyz = r3.xyz + -r5.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r0.w = r0.w / r4.w;
  r1.w = 0.00100000005 * cb0[13].w;
  r0.w = cmp(r1.w < r0.w);
  r2.xy = cmp(cb0[16].zw < r2.zw);
  r2.zw = cmp(r2.zw < cb0[16].xy);
  r1.w = (int)r2.w | (int)r2.z;
  r2.x = (int)r2.y | (int)r2.x;
  r1.w = (int)r1.w | (int)r2.x;
  r0.w = (int)r0.w | (int)r1.w;
  r0.w = r0.w ? 0 : cb0[13].z;
  r0.xyz = r0.www * r0.xyz + r1.xyz;
  r0.w = cmp(0 < r0.w);
  r0.w = r0.w ? 1 : -1;
  r0.w = r4.w * r0.w;
  r1.xyz = (int3)r0.xyz & int3(0x7f800000,0x7f800000,0x7f800000);
  r1.xyz = cmp((int3)r1.xyz == int3(0x7f800000,0x7f800000,0x7f800000));
  o0.xyz = r1.xyz ? float3(0,0,0) : r0.xyz;
  r0.x = cmp(0 < cb0[14].x);
  o0.w = r0.x ? r0.w : r4.w;
  return;
}