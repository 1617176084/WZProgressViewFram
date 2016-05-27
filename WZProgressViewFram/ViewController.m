//
//  ViewController.m
//  WZProgressViewFram
//
//  Created by 黄燕 on 16/5/27.
//  Copyright © 2016年 Mr.Wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(weak, nonatomic) IBOutlet WZProgressViewFram *progress;
@property(weak, nonatomic) IBOutlet WZProgressViewFram *progressTwo;
@property(weak, nonatomic) IBOutlet WZProgressViewFram *progressThree;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)valueCengid:(UISlider *)sender {
  _progress.progressValue = sender.value;
  _progressTwo.progressValue = sender.value;
  _progressThree.progressValue = sender.value;
}
@end
