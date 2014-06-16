//
//  Coffee+record.h
//  CoffeeMenu
//
//  Created by 黃昱彰 on 2014/6/15.
//  Copyright (c) 2014年 max005. All rights reserved.
//

#import "Coffee.h"

@interface Coffee (record)

+ (Coffee *)coffeeWithRecord:(NSDictionary *)info
                  coffeeName:(NSString *)name
      inManagedObjectContext:(NSManagedObjectContext *)context;
@end
