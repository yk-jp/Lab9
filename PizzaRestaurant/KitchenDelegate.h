//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Yusuke K on 2022-09-09.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "global.h"
@class Kitchen;
@class Pizza;

NS_ASSUME_NONNULL_BEGIN

@protocol KitchenDelegate<NSObject>

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end


NS_ASSUME_NONNULL_END
