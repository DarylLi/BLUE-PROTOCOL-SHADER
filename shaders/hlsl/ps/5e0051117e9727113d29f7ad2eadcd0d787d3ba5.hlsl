// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out uint4 o0 : SV_Target0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 2.5 * cb0[4].y;
  r0.x = v1.x * cb0[4].z + -r0.x;
  r0.yw = v1.yy;
  r1.xyz = t0.Sample(s0_s, r0.xy).xyz;
  r0.z = cb0[4].y + r0.x;
  r2.xyz = t0.Sample(s0_s, r0.zw).xyz;
  r3.x = cb0[4].y * 2 + r0.x;
  r3.y = v1.y;
  r3.xyz = t0.Sample(s0_s, r3.xy).xyz;
  r0.xyz = cb0[4].yyy * float3(3,4,5) + r0.xxx;
  r0.w = v1.y;
  r4.xyz = t0.Sample(s0_s, r0.xw).xyz;
  r5.xyz = t0.Sample(s0_s, r0.yw).xyz;
  r0.xyz = t0.Sample(s0_s, r0.zw).xyz;
  r6.x = cmp(asint(cb0[4].x) == 1);
  if (r6.x != 0) {
    r6.yzw = float3(12.9200001,12.9200001,12.9200001) * r1.xyz;
    r7.xyz = cmp(r1.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r8.xyz = log2(r1.xyz);
    r8.xyz = float3(0.416666657,0.416666657,0.416666657) * r8.xyz;
    r8.xyz = exp2(r8.xyz);
    r8.xyz = r8.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r1.xyz = r7.xyz ? r8.xyz : r6.yzw;
  }
  r1.w = 1;
  r7.x = saturate(dot(cb0[0].xyzw, r1.xyzw));
  r7.y = saturate(dot(cb0[1].xyzw, r1.xyzw));
  r7.z = saturate(dot(cb0[2].xyzw, r1.xyzw));
  r1.xyz = float3(1023,1023,1023) * r7.xyz;
  if (r6.x != 0) {
    r6.yzw = float3(12.9200001,12.9200001,12.9200001) * r2.xyz;
    r7.xyz = cmp(r2.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r8.xyz = log2(r2.xyz);
    r8.xyz = float3(0.416666657,0.416666657,0.416666657) * r8.xyz;
    r8.xyz = exp2(r8.xyz);
    r8.xyz = r8.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r2.xyz = r7.xyz ? r8.xyz : r6.yzw;
  }
  r2.w = 1;
  r1.w = saturate(dot(cb0[0].xyzw, r2.xyzw));
  r1.w = 1023 * r1.w;
  r1.xyzw = (uint4)r1.xyzw;
  if (r6.x != 0) {
    r2.xyz = float3(12.9200001,12.9200001,12.9200001) * r3.xyz;
    r6.yzw = cmp(r3.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r7.xyz = log2(r3.xyz);
    r7.xyz = float3(0.416666657,0.416666657,0.416666657) * r7.xyz;
    r7.xyz = exp2(r7.xyz);
    r7.xyz = r7.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r3.xyz = r6.yzw ? r7.xyz : r2.xyz;
  }
  r3.w = 1;
  r2.x = saturate(dot(cb0[0].xyzw, r3.xyzw));
  r2.y = saturate(dot(cb0[1].xyzw, r3.xyzw));
  r2.z = saturate(dot(cb0[2].xyzw, r3.xyzw));
  r2.xyz = float3(1023,1023,1023) * r2.xyz;
  if (r6.x != 0) {
    r3.xyz = float3(12.9200001,12.9200001,12.9200001) * r4.xyz;
    r6.yzw = cmp(r4.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r7.xyz = log2(r4.xyz);
    r7.xyz = float3(0.416666657,0.416666657,0.416666657) * r7.xyz;
    r7.xyz = exp2(r7.xyz);
    r7.xyz = r7.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r4.xyz = r6.yzw ? r7.xyz : r3.xyz;
  }
  r4.w = 1;
  r2.w = saturate(dot(cb0[0].xyzw, r4.xyzw));
  r2.w = 1023 * r2.w;
  r2.xyzw = (uint4)r2.xyzw;
  if (r6.x != 0) {
    r3.xyz = float3(12.9200001,12.9200001,12.9200001) * r5.xyz;
    r4.xyz = cmp(r5.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r6.yzw = log2(r5.xyz);
    r6.yzw = float3(0.416666657,0.416666657,0.416666657) * r6.yzw;
    r6.yzw = exp2(r6.yzw);
    r6.yzw = r6.yzw * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r5.xyz = r4.xyz ? r6.yzw : r3.xyz;
  }
  r5.w = 1;
  r3.x = saturate(dot(cb0[0].xyzw, r5.xyzw));
  r3.y = saturate(dot(cb0[1].xyzw, r5.xyzw));
  r3.z = saturate(dot(cb0[2].xyzw, r5.xyzw));
  r3.xyz = float3(1023,1023,1023) * r3.xyz;
  r3.xyz = (uint3)r3.xyz;
  if (r6.x != 0) {
    r4.xyz = float3(12.9200001,12.9200001,12.9200001) * r0.xyz;
    r5.xyz = cmp(r0.xyz >= float3(0.00313066994,0.00313066994,0.00313066994));
    r6.xyz = log2(r0.xyz);
    r6.xyz = float3(0.416666657,0.416666657,0.416666657) * r6.xyz;
    r6.xyz = exp2(r6.xyz);
    r6.xyz = r6.xyz * float3(1.05499995,1.05499995,1.05499995) + float3(-0.0549999997,-0.0549999997,-0.0549999997);
    r0.xyz = r5.xyz ? r6.xyz : r4.xyz;
  }
  r0.w = 1;
  r0.x = saturate(dot(cb0[0].xyzw, r0.xyzw));
  r0.x = 1023 * r0.x;
  r0.x = (uint)r0.x;
  r0.y = (uint)r1.x << 10;
  r0.y = mad((int)r1.z, 0x00100000, (int)r0.y);
  o0.x = (int)r0.y + (int)r1.y;
  r0.y = (uint)r2.y << 10;
  r0.y = mad((int)r2.x, 0x00100000, (int)r0.y);
  o0.y = (int)r0.y + (int)r1.w;
  r0.y = (uint)r2.w << 10;
  r0.y = mad((int)r3.y, 0x00100000, (int)r0.y);
  o0.z = (int)r0.y + (int)r2.z;
  r0.y = (uint)r3.z << 10;
  r0.x = mad((int)r0.x, 0x00100000, (int)r0.y);
  o0.w = (int)r0.x + (int)r3.x;
  return;
}