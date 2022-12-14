//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Yusuke K on 2022-09-08.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "global.h"

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject
-(instancetype) initWithSize: (PizzaSize) size toppings: (NSArray*) toppings;
@end

NS_ASSUME_NONNULL_END
