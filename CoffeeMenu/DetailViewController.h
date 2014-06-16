//
//  DetailViewController.h
//  CoffeeMenu
//
//  Created by tony on 2014/6/8.
//  Copyright (c) 2014年 max005. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *coffeelabel;
@property (strong) NSString *coffeeString;
@end
