//
//  MetalImageToneCurveFilter.h
//  MetalImage
//
//  Created by ericking on 22/7/2017.
//  Copyright © 2017 erickingxu. All rights reserved.
//

#import "MetalImageFilter.h"

@interface MetalImageToneCurveFilter : MetalImageFilter

///// This pulls in Adobe ACV curve files to specify the tone curve
- (id)initWithACVURL:(NSURL*)curveFileURL;

@end

