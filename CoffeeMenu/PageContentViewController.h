//
//  PageContentViewController.h
//  CoffeeMenu
//
//  Created by 黃昱彰 on 2014/6/8.
//  Copyright (c) 2014年 max005. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"

@interface PageContentViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UIButton *IntoFBButton;
@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;
@property BOOL isfbEnable;
@end
