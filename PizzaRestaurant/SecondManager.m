//
//  SecondManager.m
//  PizzaRestaurant
//
//  Created by Yusuke K on 2022-09-09.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "SecondManager.h"

@implementation SecondManager {
    
}

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return true;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return true;
}


-(void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"SecondManager - kitchenDidMakePizza func \n");
}


@end
