//
//  UIImage+RoundRectImage.h
//  Demo测试
//
//  Created by vcyber on 16/7/11.
//  Copyright © 2016年 vcyber. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (RoundRectImage)

- (instancetype)imageByRoundCornerRadius:(CGFloat)radius
                              corners:(UIRectCorner)corners
                          borderWidth:(CGFloat)borderWidth
                          borderColor:(UIColor *)borderColor
                       borderLineJoin:(CGLineJoin)borderLineJoin;


@end
