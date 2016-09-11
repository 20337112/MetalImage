//
//  imgGamma.metal
//  MetalImage
//
//  Created by xuqing on 17/8/2016.
//  Copyright © 2016 xuqing. All rights reserved.
//

#include <metal_stdlib>
using namespace metal;
kernel void Gamma(texture2d<float, access::read> inTexture [[texture(0)]],
                  texture2d<float, access::write> outTexture [[texture(1)]],
                  device float *gamma [[buffer(0)]],
                  uint2 gid [[thread_position_in_grid]])
{
    const float4 inColor = inTexture.read(gid);
    const float4 outColor = float4(pow(inColor.rgb,float3(*gamma)),inColor.a);
    outTexture.write(outColor, gid);
}


