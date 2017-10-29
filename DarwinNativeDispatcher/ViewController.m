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
}

- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
}

- (IBAction)toggleShowAlertController:(id)sender{
  UIViewController *controller = [self.storyboard instantiateInitialViewController];
  // set backgroud color
  [[DNDispatcher dispatcher].alertViewController clearColor];
  
  //show it
  [DNDispatcher dispatcher].alertViewController.show(controller);
}

- (IBAction)toggleHideAlertController:(id)sender{
    //hide it
    [[DNDispatcher dispatcher].alertViewController hide];
}

- (IBAction)toggleReplaceRootController:(id)sender{
    UIViewController *controller = [self.storyboard instantiateInitialViewController];
  
    [DNDispatcher dispatcher].rootViewController.replaceRootControllerWithController(controller);
}

- (IBAction)togglePushTabBarController:(id)sender{
    UIViewController *controller = [UIViewController new];
    controller.view.backgroundColor = [UIColor orangeColor];
    [DNDispatcher dispatcher].defaultTabbarController.animation(YES).pushViewController(controller);
}

- (IBAction)togglePushController:(id)sender{
  UIViewController *controller = [self.storyboard instantiateInitialViewController];
  [DNDispatcher dispatcher].defaultNavigationController.animation(YES).pushViewController(controller);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
