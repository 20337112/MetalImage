//
//  MetalImageLuminanceFilter.h
//  MetalImage
//
//  Created by xuqing on 25/7/2016.
//  Copyright © 2016 xuqing. All rights reserved.
//

#import "MetalImageFilter.h"

@interface MetalImageLuminanceFilter : MetalImageFilter


-(void)setLuminanceBuffer:(float*)lumArr;
@end
