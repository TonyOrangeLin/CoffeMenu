//
//  Coffee+record.m
//  CoffeeMenu
//
//  Created by 黃昱彰 on 2014/6/15.
//  Copyright (c) 2014年 max005. All rights reserved.
//

#import "Coffee+record.h"

@implementation Coffee (record)

+ (Coffee *)coffeeWithRecord:(UIImage *)image
                  coffeeName:(NSString *)name
      inManagedObjectContext:(NSManagedObjectContext *)context
{
    Coffee *coffee = nil;
    
    coffee = [NSEntityDescription insertNewObjectForEntityForName:@"coffee"
                                           inManagedObjectContext:context];
    coffee.name = name;
    coffee.date = [NSDate date];
    coffee.image = UIImageJPEGRepresentation(image, 0.7);
    
    
    return coffee;
}

@end
