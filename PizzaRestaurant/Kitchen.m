//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

-(instancetype) init {
    self = [super init];
    if(self) {
    }
    
    return self;
}

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    if(![_delegate kitchen:self shouldMakePizzaOfSize: size andToppings: toppings]){
        return NULL;
    }
    
    Pizza *newPizza = NULL;
    
    if([_delegate kitchenShouldUpgradeOrder: self]){
        PizzaSize large = Large;
        newPizza = [[Pizza alloc] initWithSize: large toppings: toppings];
    } else {
        newPizza = [[Pizza alloc] initWithSize: size toppings: toppings];
    }
    
    if([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
       [_delegate kitchenDidMakePizza:newPizza];
    }
    
    return newPizza;
}

@end
