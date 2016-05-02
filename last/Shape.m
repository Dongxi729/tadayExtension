//
//  Shape.m
//  TestGraphics
//
//  Created by 郑东喜 on 16/4/29.
//  Copyright © 2016年 郑东喜. All rights reserved.
//

#import "Shape.h"

@implementation Shape


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //    画矩形
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //    设置边框颜色，仅填充4条边
    CGContextSetStrokeColorWithColor(ctx,[[UIColor redColor] CGColor]);
    
    CGContextSetFillColorWithColor(ctx, [[UIColor redColor] CGColor]);

    //    设置线宽为1
    CGContextSetLineWidth(ctx, 3.0);
    
    //    设置长方形四个顶点
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width * 0.5;
    CGPoint points[] = {CGPointMake(5, 5),CGPointMake(width * 0.5, 5),CGPointMake(width * 0.5, 125),CGPointMake(5, 125)};
    CGContextAddLines(ctx, points, 4);
    CGContextClosePath(ctx);
    CGContextStrokePath(ctx);
    
    self.backgroundColor = [UIColor clearColor];

}


@end
