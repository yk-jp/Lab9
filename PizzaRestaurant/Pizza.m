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

-(instancetype) initWithSize: (NSString*) size toppings: (NSArray*) toppings {
    self = [super init];
    if(self) {
        if([size isEqualToString:@"small"]) {
            _size = Small;
        } else if([size isEqualToString:@"medium"]) {
            _size = Medium;
        } else if([size isEqualToString:@"large"]) {
            _size = Large;
        }
        
        _toppings = toppings;
        
    }
    
    return self;
}

- (PizzaSize) getSize {
    return _size;
}

@end
