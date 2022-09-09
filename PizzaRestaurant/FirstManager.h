//
//  FirstManager.h
//  PizzaRestaurant
//
//  Created by Yusuke K on 2022-09-09.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface FirstManager : NSObject<KitchenDelegate>

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@end

NS_ASSUME_NONNULL_END
