//
//  Coffee.h
//  CoffeeMenu
//
//  Created by 黃昱彰 on 2014/6/15.
//  Copyright (c) 2014年 max005. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Coffee : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSData * image;

@end
