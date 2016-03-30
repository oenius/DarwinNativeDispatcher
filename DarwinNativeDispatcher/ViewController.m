//
//  ViewController.m
//  DarwinNativeDispatcher
//
//  Created by YURI_JOU on 16/3/30.
//  Copyright © 2016年 oenius. All rights reserved.
//

#import "ViewController.h"
#import "DarwinNativeDispatcher.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  [[DNDispatcher dispatcher].defaultTabbarController navigationController];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
