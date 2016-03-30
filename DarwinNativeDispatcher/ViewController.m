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
  
  UIViewController *controller = [[UIViewController alloc]init];
  controller.view.backgroundColor = [UIColor orangeColor];

  [[DNDispatcher dispatcher].alertViewController clearColor];
  
  //show it
  [DNDispatcher dispatcher].alertViewController.show(controller);
  
  //hide it
  [[DNDispatcher dispatcher].alertViewController hide];
  

  
  
  [DNDispatcher dispatcher].rootViewController.replaceRootControllerWithController(controller);
  
  [DNDispatcher dispatcher].defaultTabbarController.pushViewController(controller);
  
  // or
  
  [DNDispatcher dispatcher].defaultNavigationController.pushViewController(controller);
  


}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
