//
//  FirstManager.m
//  PizzaRestaurant
//
//  Created by Yusuke K on 2022-09-09.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "FirstManager.h"

@implementation FirstManager {
    
}

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return ![toppings containsObject:@"anchovies"];
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return false;
}

@end
