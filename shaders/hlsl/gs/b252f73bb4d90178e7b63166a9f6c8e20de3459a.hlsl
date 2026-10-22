// Decompiled with 3Dmigoto 1.3.16. Reconstructed HLSL; not original source.
struct t0_t {
  float val[4];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb2 : register(b2)
{
  float4 cb2[15];
}

cbuffer cb1 : register(b1)
{
  float4 cb1[71];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[2];
}




// 3Dmigoto declarations
#define cmp -


[maxvertexcount(24)]
void main(
  inout TriangleStream<float> m0,
  float4 v0 : TEXCOORD10,
  float4 v1 : TEXCOORD11,
  uint v2 : PRIMITIVE_ID0,
  float2 v3 : ATTRIBUTE0,
  out float4 o0 : TEXCOORD10,
  out float4 o1 : TEXCOORD11,
  out uint o2 : PRIMITIVE_ID0,
  out uint p2 : SV_RenderTargetArrayIndex0,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_inputprimitive triangle 
// Needs manual fix for instruction:  
//dcl_stream m0
// Needs manual fix for instruction:
// unknown dcl_: dcl_outputtopology trianglestrip 
  r0.x = (int)cb2[13].z;
  r0.y = 36 * (int)v[0][2].x;
  r0.z = mad((int)v[0][2].x, 36, 5);
  r1.x = t0[r0.z].val[0/4];
  r1.y = t0[r0.z].val[0/4+1];
  r1.z = t0[r0.z].val[0/4+2];
  r1.w = t0[r0.z].val[0/4+3];
  r1.xyz = cb1[70].xyz + r1.xyz;
  r0.z = cb1[13].z * r1.y;
  r0.z = r1.x * cb1[12].z + r0.z;
  r0.z = r1.z * cb1[14].z + r0.z;
  r0.z = cb1[15].z + r0.z;
  r0.w = r0.z + r1.w;
  r0.w = r0.w * cb2[14].x + cb2[14].y;
  r0.w = log2(r0.w);
  r0.w = cb2[14].z * r0.w;
  r0.w = (int)r0.w;
  r1.x = r0.z + -r1.w;
  r1.x = r1.x * cb2[14].x + cb2[14].y;
  r1.x = log2(r1.x);
  r1.x = cb2[14].z * r1.x;
  r1.x = (int)r1.x;
  r1.y = max(0, (int)r1.x);
  r1.z = asuint(cb0[1].x) << 3;
  r1.y = (int)r1.z + (int)r1.y;
  r1.x = cmp((int)r1.x < (int)r0.x);
  r1.z = cmp((int)r0.w >= (int)r1.y);
  r1.x = r1.z ? r1.x : 0;
  r1.z = cmp((int)r0.w >= 0);
  r1.x = r1.z ? r1.x : 0;
  if (r1.x != 0) {
    r1.xz = mad((int2)v[0][2].xx, int2(36,36), int2(23,24));
    r2.x = t0[r1.x].val[0/4];
    r2.y = t0[r1.x].val[0/4+1];
    r2.z = t0[r1.x].val[0/4+2];
    r3.x = t0[r1.z].val[0/4];
    r3.y = t0[r1.z].val[0/4+1];
    r3.z = t0[r1.z].val[0/4+2];
    r4.x = t0[r0.y].val[0/4];
    r4.y = t0[r0.y].val[0/4+1];
    r4.z = t0[r0.y].val[0/4+2];
    r1.xz = mad((int2)v[0][2].xx, int2(36,36), int2(1,3));
    r5.x = t0[r1.x].val[0/4];
    r5.y = t0[r1.x].val[0/4+1];
    r5.z = t0[r1.x].val[0/4+2];
    r0.y = mad((int)v[0][2].x, 36, 2);
    r6.x = t0[r0.y].val[0/4];
    r6.y = t0[r0.y].val[0/4+1];
    r6.z = t0[r0.y].val[0/4+2];
    r7.x = t0[r1.z].val[0/4];
    r7.y = t0[r1.z].val[0/4+1];
    r7.w = t0[r1.z].val[0/4+2];
    r0.x = (int)r0.x + -1;
    r0.x = min((int)r0.w, (int)r0.x);
    r0.y = (int)r1.y + 7;
    r0.x = min((int)r0.x, (int)r0.y);
    r2.w = 1;
    r8.x = r4.x;
    r8.y = r5.x;
    r8.z = r6.x;
    r8.w = r7.x;
    r9.x = dot(r2.xyzw, r8.xyzw);
    r10.x = r4.y;
    r10.y = r5.y;
    r10.z = r6.y;
    r10.w = r7.y;
    r9.y = dot(r2.xyzw, r10.xyzw);
    r7.x = r4.z;
    r7.y = r5.z;
    r7.z = r6.z;
    r9.z = dot(r2.xyzw, r7.xyzw);
    r4.xyz = cb1[70].xyz + r9.xyz;
    r0.yw = cb1[13].xy * r4.yy;
    r0.yw = r4.xx * cb1[12].xy + r0.yw;
    r0.yw = r4.zz * cb1[14].xy + r0.yw;
    r0.yw = cb1[15].xy + r0.yw;
    r1.xz = min(float2(10000000,10000000), r0.yw);
    r0.yw = max(float2(-10000000,-10000000), r0.yw);
    r4.xyz = r3.xyz + -r2.xyz;
    r5.xyz = r4.xyz * float3(1,0,0) + r2.xyz;
    r5.w = 1;
    r6.x = dot(r5.xyzw, r8.xyzw);
    r6.y = dot(r5.xyzw, r10.xyzw);
    r6.z = dot(r5.xyzw, r7.xyzw);
    r5.xyz = cb1[70].xyz + r6.xyz;
    r5.yw = cb1[13].xy * r5.yy;
    r5.xy = r5.xx * cb1[12].xy + r5.yw;
    r5.xy = r5.zz * cb1[14].xy + r5.xy;
    r5.xy = cb1[15].xy + r5.xy;
    r1.xz = min(r5.xy, r1.xz);
    r0.yw = max(r5.xy, r0.yw);
    r5.xyz = r4.xyz * float3(0,1,0) + r2.xyz;
    r5.w = 1;
    r6.x = dot(r5.xyzw, r8.xyzw);
    r6.y = dot(r5.xyzw, r10.xyzw);
    r6.z = dot(r5.xyzw, r7.xyzw);
    r5.xyz = cb1[70].xyz + r6.xyz;
    r5.yw = cb1[13].xy * r5.yy;
    r5.xy = r5.xx * cb1[12].xy + r5.yw;
    r5.xy = r5.zz * cb1[14].xy + r5.xy;
    r5.xy = cb1[15].xy + r5.xy;
    r1.xz = min(r5.xy, r1.xz);
    r0.yw = max(r5.xy, r0.yw);
    r5.xyz = r4.xyz * float3(1,1,0) + r2.xyz;
    r5.w = 1;
    r6.x = dot(r5.xyzw, r8.xyzw);
    r6.y = dot(r5.xyzw, r10.xyzw);
    r6.z = dot(r5.xyzw, r7.xyzw);
    r5.xyz = cb1[70].xyz + r6.xyz;
    r5.yw = cb1[13].xy * r5.yy;
    r5.xy = r5.xx * cb1[12].xy + r5.yw;
    r5.xy = r5.zz * cb1[14].xy + r5.xy;
    r5.xy = cb1[15].xy + r5.xy;
    r1.xz = min(r5.xy, r1.xz);
    r0.yw = max(r5.xy, r0.yw);
    r5.xyz = r4.xyz * float3(0,0,1) + r2.xyz;
    r5.w = 1;
    r6.x = dot(r5.xyzw, r8.xyzw);
    r6.y = dot(r5.xyzw, r10.xyzw);
    r6.z = dot(r5.xyzw, r7.xyzw);
    r5.xyz = cb1[70].xyz + r6.xyz;
    r5.yw = cb1[13].xy * r5.yy;
    r5.xy = r5.xx * cb1[12].xy + r5.yw;
    r5.xy = r5.zz * cb1[14].xy + r5.xy;
    r5.xy = cb1[15].xy + r5.xy;
    r1.xz = min(r5.xy, r1.xz);
    r0.yw = max(r5.xy, r0.yw);
    r5.xyz = r4.xyz * float3(1,0,1) + r2.xyz;
    r5.w = 1;
    r6.x = dot(r5.xyzw, r8.xyzw);
    r6.y = dot(r5.xyzw, r10.xyzw);
    r6.z = dot(r5.xyzw, r7.xyzw);
    r5.xyz = cb1[70].xyz + r6.xyz;
    r5.yw = cb1[13].xy * r5.yy;
    r5.xy = r5.xx * cb1[12].xy + r5.yw;
    r5.xy = r5.zz * cb1[14].xy + r5.xy;
    r5.xy = cb1[15].xy + r5.xy;
    r1.xz = min(r5.xy, r1.xz);
    r0.yw = max(r5.xy, r0.yw);
    r2.xyz = r4.xyz * float3(0,1,1) + r2.xyz;
    r2.w = 1;
    r4.x = dot(r2.xyzw, r8.xyzw);
    r4.y = dot(r2.xyzw, r10.xyzw);
    r4.z = dot(r2.xyzw, r7.xyzw);
    r2.xyz = cb1[70].xyz + r4.xyz;
    r2.yw = cb1[13].xy * r2.yy;
    r2.xy = r2.xx * cb1[12].xy + r2.yw;
    r2.xy = r2.zz * cb1[14].xy + r2.xy;
    r2.xy = cb1[15].xy + r2.xy;
    r1.xz = min(r2.xy, r1.xz);
    r0.yw = max(r2.xy, r0.yw);
    r3.w = 1;
    r2.x = dot(r3.xyzw, r8.xyzw);
    r2.y = dot(r3.xyzw, r10.xyzw);
    r2.z = dot(r3.xyzw, r7.xyzw);
    r2.xyz = cb1[70].xyz + r2.xyz;
    r2.yw = cb1[13].xy * r2.yy;
    r2.xy = r2.xx * cb1[12].xy + r2.yw;
    r2.xy = r2.zz * cb1[14].xy + r2.xy;
    r2.xy = cb1[15].xy + r2.xy;
    r1.xz = min(r2.xy, r1.xz);
    r0.yw = max(r2.xy, r0.yw);
    r2.x = cmp(r1.w == 0.000000);
    r0.yw = r0.yw + -r1.xz;
    r2.yz = r0.yw * v[0][3].xy + r1.xz;
    r3.xy = r0.yw * v[1][3].xy + r1.xz;
    r0.yw = r0.yw * v[2][3].xy + r1.xz;
    r4.xyzw = cb2[8].xyzw * r2.zzzz;
    r4.xyzw = r2.yyyy * cb2[7].xyzw + r4.xyzw;
    r5.xyzw = cb2[8].xyzw * r3.yyyy;
    r3.xyzw = r3.xxxx * cb2[7].xyzw + r5.xyzw;
    r5.xyzw = cb2[8].xyzw * r0.wwww;
    r5.xyzw = r0.yyyy * cb2[7].xyzw + r5.xyzw;
    r0.y = r1.y;
    while (true) {
      r0.w = cmp((int)r0.x < (int)r0.y);
      if (r0.w != 0) break;
      r0.w = (int)r0.y;
      r0.w = cb2[11].z + r0.w;
      r0.w = r0.w / cb2[14].z;
      r0.w = exp2(r0.w);
      r0.w = -cb2[14].y + r0.w;
      r0.w = r0.w / cb2[14].x;
      r1.x = r0.w + -r0.z;
      r1.x = cmp(r1.w >= abs(r1.x));
      r1.x = (int)r1.x | (int)r2.x;
      if (r1.x != 0) {
        r6.xyzw = r0.wwww * cb2[9].xyzw + r4.xyzw;
        r6.xyzw = cb2[10].xyzw + r6.xyzw;
        o0.xyzw = v[0][0].xyzw;
        o1.xyzw = v[0][1].xyzw;
        o2.x = v[0][2].x;
        o3.xyzw = r6.xyzw;
        p2.x = r0.y;
      // Needs manual fix for instruction, maybe. 
//            emit_stream m0
      m0.Append(0);
        r6.xyzw = r0.wwww * cb2[9].xyzw + r3.xyzw;
        r6.xyzw = cb2[10].xyzw + r6.xyzw;
        o0.xyzw = v[1][0].xyzw;
        o1.xyzw = v[1][1].xyzw;
        o2.x = v[1][2].x;
        o3.xyzw = r6.xyzw;
        p2.x = r0.y;
      // Needs manual fix for instruction, maybe. 
//            emit_stream m0
      m0.Append(0);
        r6.xyzw = r0.wwww * cb2[9].xyzw + r5.xyzw;
        r6.xyzw = cb2[10].xyzw + r6.xyzw;
        o0.xyzw = v[2][0].xyzw;
        o1.xyzw = v[2][1].xyzw;
        o2.x = v[2][2].x;
        o3.xyzw = r6.xyzw;
        p2.x = r0.y;
      // Needs manual fix for instruction, maybe. 
//            emit_stream m0
      m0.Append(0);
      // Needs manual fix for instruction, maybe. 
//            cut_stream m0
      m0.RestartStrip();
      }
      r0.y = (int)r0.y + 1;
    }
  }
  return;
}