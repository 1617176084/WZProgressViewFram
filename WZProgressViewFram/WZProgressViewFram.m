//
//  UIProgressViewFram.m
//  Myyg
//
//  Created by 王 on 16/5/26.
//  Copyright © 2016年 Mr.Wang. All rights reserved.
//

#import "WZProgressViewFram.h"

@interface WZProgressViewFram ()

@property(nonatomic, strong, nullable) UIImageView *progressImageV;
@property(nonatomic, strong, nullable) UIImageView *trackImageV;

@end

@implementation WZProgressViewFram
- (instancetype)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    [self initLayout];
  }
  return self;
}
- (id)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    [self initLayout];
  }
  return self;
}
- (void)initLayout {
  self.trackImageV = [[UIImageView alloc] init];
  [self addSubview:_trackImageV];
  self.progressImageV = [[UIImageView alloc] init];
  [self addSubview:_progressImageV];
}
- (void)layoutSubviews {
  [UIView animateWithDuration:0.2
                   animations:^{
                     _trackImageV.frame = self.bounds;
                     self.progressImageV.frame =
                         CGRectMake(0, 0, CGRectGetWidth(self.bounds) / 100.0 *
                                              _progressValue,
                                    CGRectGetHeight(self.bounds));
                   }];
}
- (void)setProgressImage:(UIImage *)progressImage {
  self.progressImageV.image = progressImage;
}
- (void)setTrackImage:(UIImage *)trackImage {
  self.trackImageV.image = trackImage;
}
- (void)setProgressImageColor:(UIColor *)progressImageColor {
  self.progressImageV.backgroundColor = progressImageColor;
}
- (void)setProgressValue:(float)progressValue {
  _progressValue = progressValue;
  [self layoutSubviews];
}
- (void)setTrackImageColor:(UIColor *)trackImageColor {
  self.trackImageV.backgroundColor = trackImageColor;
}
- (void)setCornerRadius:(float)cornerRadius {
  self.layer.cornerRadius = cornerRadius;
  self.layer.masksToBounds = true;
}
- (void)setProgressCornerRadius:(float)progressCornerRadius {
  _progressImageV.layer.cornerRadius = progressCornerRadius;
  _progressImageV.layer.masksToBounds = true;
}
//- (void)setHightScale:(float)hightScale {
//  //更改进度条高度
//  self.transform = CGAffineTransformMakeScale(1.0f, hightScale);
//  self.layer.cornerRadius = CGRectGetHeight(self.frame) * hightScale / 4;
//  self.layer.masksToBounds = true;
//}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
