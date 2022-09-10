//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Yusuke K on 2022-09-09.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject

-(void) records;
-(void)deliverPizza:(Pizza *)pizza;
-(void) addRecords: (Pizza*) pizza;

@end

NS_ASSUME_NONNULL_END
