//
//  MetalImageSaturationFilter.h
//  MetalImage
//
//  Created by erickingxu on 25/7/2016.
//  Copyright © 2016 erickingxu. All rights reserved.
//

#import "MetalImageFilter.h"

@interface MetalImageSaturationFilter : MetalImageFilter

-(void)setSaturationBuffer:(float*)saturationArr;

@end
