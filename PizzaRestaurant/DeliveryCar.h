//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Yusuke K on 2022-09-09.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject
    -(void) deliverPizza:(Pizza *)pizza;
@end

NS_ASSUME_NONNULL_END
