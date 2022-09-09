//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Yusuke K on 2022-09-08.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza  {
    PizzaSize _size;
    NSArray *_toppings;
}

-(instancetype) initWithSize: (PizzaSize) size toppings: (NSArray*) toppings {
    self = [super init];
    if(self) {
        _size = size;
        _toppings = toppings;
        
    }
    
    return self;
}

- (PizzaSize) getSize {
    return _size;
}

@end
