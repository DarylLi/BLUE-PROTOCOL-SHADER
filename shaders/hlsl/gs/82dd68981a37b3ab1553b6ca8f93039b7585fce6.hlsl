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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_inputprimitive triangle 
// Needs manual fix for instruction:  
//dcl_stream m0
// Needs manual fix for instruction:
// unknown dcl_: dcl_outputtopology trianglestrip 
  r0.x = (int)cb2[13].z;
  r0.y = mad((int)v[0][2].x, 36, 5);
  r1.x = t0[r0.y].val[0/4];
  r1.y = t0[r0.y].val[0/4+1];
  r1.z = t0[r0.y].val[0/4+2];
  r1.w = t0[r0.y].val[0/4+3];
  r0.yzw = cb1[70].xyz + r1.xyz;
  r1.xyz = cb1[13].xyz * r0.zzz;
  r1.xyz = r0.yyy * cb1[12].xyz + r1.xyz;
  r0.yzw = r0.www * cb1[14].xyz + r1.xyz;
  r0.yzw = cb1[15].xyz + r0.yzw;
  r1.x = r0.w + r1.w;
  r1.x = r1.x * cb2[14].x + cb2[14].y;
  r1.x = log2(r1.x);
  r1.x = cb2[14].z * r1.x;
  r1.y = r0.w + -r1.w;
  r1.y = r1.y * cb2[14].x + cb2[14].y;
  r1.y = log2(r1.y);
  r1.y = cb2[14].z * r1.y;
  r1.xy = (int2)r1.xy;
  r1.z = max(0, (int)r1.y);
  r2.x = asuint(cb0[1].x) << 3;
  r1.z = (int)r1.z + (int)r2.x;
  r1.y = cmp((int)r1.y < (int)r0.x);
  r2.x = cmp((int)r1.x >= (int)r1.z);
  r1.y = r1.y ? r2.x : 0;
  r2.x = cmp((int)r1.x >= 0);
  r1.y = r1.y ? r2.x : 0;
  if (r1.y != 0) {
    r0.x = (int)r0.x + -1;
    r0.x = min((int)r1.x, (int)r0.x);
    r1.x = (int)r1.z + 7;
    r0.x = min((int)r1.x, (int)r0.x);
    r1.x = 1 / r1.w;
    r2.xy = v[0][3].xy + -r0.yz;
    r2.zw = v[1][3].xy + -r0.yz;
    r2.xyzw = r2.xyzw * r1.xxxx;
    r3.xy = v[2][3].xy + -r0.yz;
    r1.xy = r3.xy * r1.xx;
    r3.x = cmp(r1.w == 0.000000);
    r3.y = r1.z;
    while (true) {
      r3.z = cmp((int)r0.x < (int)r3.y);
      if (r3.z != 0) break;
      r3.z = (int)r3.y;
      r3.z = cb2[11].z + r3.z;
      r3.z = r3.z / cb2[14].z;
      r3.z = exp2(r3.z);
      r3.z = -cb2[14].y + r3.z;
      r3.z = r3.z / cb2[14].x;
      r3.w = r3.z + -r0.w;
      r4.x = cmp(r1.w >= abs(r3.w));
      r4.x = (int)r3.x | (int)r4.x;
      if (r4.x != 0) {
        r3.w = abs(r3.w) * abs(r3.w);
        r3.w = r1.w * r1.w + -r3.w;
        r3.w = max(0, r3.w);
        r3.w = sqrt(r3.w);
        r4.xy = r2.xy * r3.ww + r0.yz;
        r4.zw = r2.zw * r3.ww + r0.yz;
        r5.xy = r1.xy * r3.ww + r0.yz;
        r6.xyzw = cb2[8].xyzw * r4.yyyy;
        r6.xyzw = r4.xxxx * cb2[7].xyzw + r6.xyzw;
        r6.xyzw = r3.zzzz * cb2[9].xyzw + r6.xyzw;
        r6.xyzw = cb2[10].xyzw + r6.xyzw;
        o0.xyzw = v[0][0].xyzw;
        o1.xyzw = v[0][1].xyzw;
        o2.x = v[0][2].x;
        o3.xyzw = r6.xyzw;
        p2.x = r3.y;
      // Needs manual fix for instruction, maybe. 
//            emit_stream m0
      m0.Append(0);
        r6.xyzw = cb2[8].xyzw * r4.wwww;
        r4.xyzw = r4.zzzz * cb2[7].xyzw + r6.xyzw;
        r4.xyzw = r3.zzzz * cb2[9].xyzw + r4.xyzw;
        r4.xyzw = cb2[10].xyzw + r4.xyzw;
        o0.xyzw = v[1][0].xyzw;
        o1.xyzw = v[1][1].xyzw;
        o2.x = v[1][2].x;
        o3.xyzw = r4.xyzw;
        p2.x = r3.y;
      // Needs manual fix for instruction, maybe. 
//            emit_stream m0
      m0.Append(0);
        r4.xyzw = cb2[8].xyzw * r5.yyyy;
        r4.xyzw = r5.xxxx * cb2[7].xyzw + r4.xyzw;
        r4.xyzw = r3.zzzz * cb2[9].xyzw + r4.xyzw;
        r4.xyzw = cb2[10].xyzw + r4.xyzw;
        o0.xyzw = v[2][0].xyzw;
        o1.xyzw = v[2][1].xyzw;
        o2.x = v[2][2].x;
        o3.xyzw = r4.xyzw;
        p2.x = r3.y;
      // Needs manual fix for instruction, maybe. 
//            emit_stream m0
      m0.Append(0);
      // Needs manual fix for instruction, maybe. 
//            cut_stream m0
      m0.RestartStrip();
      }
      r3.y = (int)r3.y + 1;
    }
  }
  return;
}