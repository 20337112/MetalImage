//
//  File.metal
//  MetalImage
//
//  Created by xuqing on 8/7/2016.
//  Copyright © 2016 xuqing. All rights reserved.
//

#include <metal_graphics>
#include <metal_matrix>
#include <metal_geometric>
#include <metal_math>
#include <metal_texture>

using namespace metal;

struct VertexInOut
{
    float4 m_Position [[position]];
    float2 m_TexCoord [[user(texturecoord)]];
};

vertex VertexInOut imageQuadVertex(constant float4         *pPosition[[ buffer(0) ]],
                                      constant packed_float2  *pTexCoords[[ buffer(1) ]],
                                      uint                     vid[[ vertex_id ]]        )
{
    VertexInOut outVertices;
    
    outVertices.m_Position =  pPosition[vid];
    outVertices.m_TexCoord =  pTexCoords[vid];
    
    return outVertices;
}

fragment half4 imageQuadFragment(VertexInOut inFrag[[ stage_in ]], texture2d<half> tex2D[[ texture(0) ]])
{
    constexpr sampler qsampler;
    //float r = inFrag.m_TexCoord.x;
    //float g = inFrag.m_TexCoord.y;
    half4 color = tex2D.sample(qsampler, inFrag.m_TexCoord);//half4(r, 0.0, 0.0, 1.0);
    
    return color;
}

