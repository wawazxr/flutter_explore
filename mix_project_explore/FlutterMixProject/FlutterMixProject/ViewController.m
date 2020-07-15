//
//  ViewController.m
//  FlutterMixProject
//
//  Created by junchao on 2020/7/14.
//  Copyright © 2020 qihoo. All rights reserved.
//

#import "ViewController.h"
//#import <Flutter/Flutter.h>
#import "AppDelegate.h"
#import "FirstNativeViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (IBAction)didPressedBtnOpen:(id)sender {
    
    FirstNativeViewController *firstNativeVC = [[FirstNativeViewController alloc]initWithNibName:@"FirstNativeViewController" bundle:nil];
    firstNativeVC.showMessage = @"嗨，本文案来自App第一个页面，将在第一个原生页面看到我";
    __weak __typeof(self) weakSelf = self;
    //第二个原生页面的block回调
    firstNativeVC.ReturnStrBlock = ^(NSString *message){
        __strong __typeof(weakSelf) strongSelf = weakSelf;
        //从第二个原生页面回来后通知Flutter页面更新文案
        strongSelf.lblTitle.text = message;
    };
    firstNativeVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:firstNativeVC animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
//    button.frame = CGRectMake(0, 0, 200, 44);
//    button.backgroundColor = [UIColor blackColor];
//    [button setTitle:@"点击显示Flutter界面" forState:UIControlStateNormal];
//    [button addTarget:self action:@selector(flutterModuleAction:) forControlEvents:UIControlEventTouchUpInside];
////    [self.view addSubview:button];
//    button.center = self.view.center;
    
}

//- (void) flutterModuleAction:(UIButton *) action {
//    FlutterEngine * flutterEngine = [(AppDelegate *)[UIApplication sharedApplication].delegate flutterEngine];
//    FlutterViewController * flutterViewController = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
//    [self presentViewController:flutterViewController animated:YES completion:nil];
//
//}

@end
