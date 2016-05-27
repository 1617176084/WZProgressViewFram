//
//  UIProgressViewFram.h
//  Myyg
//
//  Created by 王 on 16/5/26.
//  Copyright © 2016年 Mr.Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface WZProgressViewFram : UIView
@property(nonatomic, strong) IBInspectable UIImage *progressImage;
@property(nonatomic, strong) IBInspectable UIImage *trackImage;

@property(nonatomic, strong) IBInspectable UIColor *progressImageColor;
@property(nonatomic, strong) IBInspectable UIColor *trackImageColor;

@property(assign, nonatomic) IBInspectable float cornerRadius;
@property(assign, nonatomic) IBInspectable float progressCornerRadius;
/**
 *1-100
 */
@property(nonatomic, assign) IBInspectable float progressValue;
@end
