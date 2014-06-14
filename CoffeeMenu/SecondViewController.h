//
//  SecondViewController.h
//  CoffeeMenu
//
//  Created by 黃昱彰 on 2014/6/8.
//  Copyright (c) 2014年 max005. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface SecondViewController : UIViewController <FBViewControllerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhoto:  (UIButton *)sender;
- (IBAction)selectPhoto:(UIButton *)sender;

@end
