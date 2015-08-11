//
//  SVGPathView.m
//  TestApp
//
//  Created by Pavlo Aksonov on 10.08.15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "SVGPathView.h"
#import "PocketSVG.h"

@implementation SVGPathView
-(id)init {
  self = [super init];
  self.scale = 1;
  return self;
}

-(void)setScale:(float)scale {
  _scale = scale;
  [self setNeedsLayout];
}

- (void)drawRect:(CGRect)rect {
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  CGPathRef path = self.filename ?[PocketSVG pathFromSVGFileNamed:self.filename] : [PocketSVG pathFromDAttribute:self.d];
  CGRect boundingBox = CGPathGetBoundingBox(path);
  self.transform = CGAffineTransformMakeScale(self.scale, self.scale);
  CGContextAddPath(context, path);
  CGContextDrawPath(context, kCGPathStroke);
//  self.bounds = boundingBox;

}

@end
