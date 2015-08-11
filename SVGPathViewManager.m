//
//  SVGPathViewManager.m
//  TestApp
//
//  Created by Pavlo Aksonov on 10.08.15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "SVGPathViewManager.h"
#import "SVGPathView.h"

@implementation SVGPathViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  SVGPathView *svg = [[SVGPathView alloc] init];
  return svg;
  //
  //    return [[SVGPath alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(filename, NSString)
RCT_EXPORT_VIEW_PROPERTY(d, NSString)
RCT_EXPORT_VIEW_PROPERTY(scale, float)


@end
