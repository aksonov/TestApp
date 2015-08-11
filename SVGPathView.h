//
//  SVGPathView.h
//  TestApp
//
//  Created by Pavlo Aksonov on 10.08.15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SVGPathView : UIView

@property (nonatomic, strong) NSString *filename;
@property (nonatomic, strong) NSString *d;
@property (nonatomic) float scale;

@end
