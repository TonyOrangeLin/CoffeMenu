//
//  SharePhotoViewController.h
//  CoffeeMenu
//
//  Created by 黃昱彰 on 2014/6/15.
//  Copyright (c) 2014年 max005. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SharePhotoViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhoto:  (UIButton *)sender;
- (IBAction)selectPhoto:(UIButton *)sender;
@end
