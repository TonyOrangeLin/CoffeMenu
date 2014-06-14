//
//  PageContentViewController.m
//  PageViewDemo
//
//  Created by Simon on 24/11/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "PageContentViewController.h"
#import <FacebookSDK/FacebookSDK.h>


@interface PageContentViewController ()

@end

@implementation PageContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.backgroundImageView.image = [UIImage imageNamed:self.imageFile];
    self.titleLabel.text = self.titleText;
    self.IntoFBButton.enabled = self.isfbEnable;
    self.IntoFBButton.hidden=!(self.isfbEnable);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareOGStoryWithShareDialog:(id)sender
{
    if([FBDialogs canPresentShareDialogWithPhotos]) {
        NSLog(@"canPresent");
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    [imagePicker setDelegate:self];
    [self presentViewController:imagePicker animated:YES completion:nil];
    }
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *img = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    FBPhotoParams *params = [[FBPhotoParams alloc] init];
    params.photos = @[img];
    
    [FBDialogs presentShareDialogWithPhotoParams:params
                                     clientState:nil
                                         handler:^(FBAppCall *call, NSDictionary *results, NSError *error) {
                                             if (error) {
                                                 NSLog(@"Error: %@", error.description);
                                             } else {
                                                 NSLog(@"Success!");
                                             }
                                         }];
    
}

@end
