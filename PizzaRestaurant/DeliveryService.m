//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Yusuke K on 2022-09-09.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"

@implementation DeliveryService {
  NSMutableArray *_records;
  DeliveryCar *_deliveryCar;
}

-(instancetype) init {
    self = [super init];
    if(self) {
        _records = [NSMutableArray new];
        _deliveryCar = [DeliveryCar new];
    }
    
    return self;
}

-(void)deliverPizza:(Pizza *)pizza {
    [_deliveryCar deliverPizza:pizza];
    [self addRecords: pizza];
}

-(void) records {
    NSLog(@"---------- current records ------------");
    
    for (Pizza *record in _records) {
        NSLog(@"%@", record);
    }
    
    NSLog(@"--------------- end -----------------");
}

-(void) addRecords: (Pizza*) pizza {
    [_records addObject: pizza];
}


@end
