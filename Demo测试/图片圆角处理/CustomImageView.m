//
//  CustomImageView.m
//  Demo测试
//
//  Created by vcyber on 16/6/28.
//  Copyright © 2016年 vcyber. All rights reserved.
//

#import "CustomImageView.h"


@implementation CustomImageView

- (void)clipImageRoundRectWithRoundingCorners:(UIRectCorner)rectCorner cornerRadii:(CGSize)size {
    
    UIBezierPath *roundRectPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCorner cornerRadii:size];
    CAShapeLayer *imageLayer = [CAShapeLayer layer];
    imageLayer.frame = self.bounds;
    imageLayer.path = roundRectPath.CGPath;
    self.layer.mask = imageLayer;
}


- (void)clipImageInnerRoundRectWithRoundingCorners:(UIRectCorner)rectCorner cornerRadii:(CGSize)size {
    
    CGPoint leftTop = CGPointMake(0, 0);
    CGPoint rightTop = CGPointMake(self.bounds.size.width, 0);
    CGPoint leftBottom = CGPointMake(0, self.bounds.size.height);
    CGPoint rightBottom = CGPointMake(self.bounds.size.width, self.bounds.size.height);
    
    UIBezierPath *path = [UIBezierPath bezierPath];

    if (rectCorner & UIRectCornerTopLeft) {
        UIBezierPath *topLeft = [UIBezierPath bezierPath];
        [topLeft addArcWithCenter:leftTop radius:size.width startAngle:0 endAngle:M_PI_2 clockwise:YES];
        [topLeft addLineToPoint:leftBottom];
        [topLeft addLineToPoint:rightBottom];
        [topLeft addLineToPoint:rightTop];
        [topLeft closePath];
        [path appendPath:topLeft];

    }
    
//    if (rectCorner & UIRectCornerTopRight) {
//        UIBezierPath *topRight = [UIBezierPath bezierPath];
//        [topRight addArcWithCenter:rightTop radius:size.width startAngle:M_PI_2 endAngle:M_PI clockwise:YES];
//        
//        [path appendPath:topRight];
//        
//        NSLog(@"1");
//    }
//    
//    if (rectCorner & UIRectCornerBottomLeft) {
//        UIBezierPath *bottomLeft = [UIBezierPath bezierPath];
//        [bottomLeft addArcWithCenter:leftBottom radius:size.width startAngle:-M_PI_2 endAngle:0 clockwise:YES];
//        [path appendPath:bottomLeft];
//        NSLog(@"2");
//    }
//    
//    if (rectCorner & UIRectCornerBottomRight) {
//        UIBezierPath *bottomRight = [UIBezierPath bezierPath];
//        [bottomRight addArcWithCenter:rightBottom radius:size.width startAngle:M_PI endAngle:- M_PI_2 clockwise:YES];
//        [path appendPath:bottomRight];
//        NSLog(@"3");
//    }
    
    CAShapeLayer *imageLayer = [CAShapeLayer layer];
    imageLayer.frame = self.bounds;
    imageLayer.path = path.CGPath;
    self.layer.mask = imageLayer;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
