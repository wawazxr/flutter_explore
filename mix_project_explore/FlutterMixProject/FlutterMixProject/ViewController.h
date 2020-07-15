//
//  ViewController.h
//  FlutterMixProject
//
//  Created by junchao on 2020/7/14.
//  Copyright © 2020 qihoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UIButton *btnOpen;
- (IBAction)didPressedBtnOpen:(id)sender;

@end

