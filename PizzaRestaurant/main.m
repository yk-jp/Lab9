//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "global.h"
#import "Kitchen.h"
#import "FirstManager.h"
#import "SecondManager.h"
#import "DeliveryService.h"

PizzaSize pizzaSizeHelper(NSString* sizeString) {
    PizzaSize size = Large;
    
    if([sizeString isEqualToString:@"small"]) {
        size = Small;
    } else if([sizeString isEqualToString:@"medium"]) {
        size = Medium;
    } else if([sizeString isEqualToString:@"large"]) {
        size = Large;
    }
    
    return size;
}

int main(int argc, const char * argv[])
{
//    small ham pineapple cheese
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        DeliveryService *deliveryService = [DeliveryService new];
        FirstManager *firstManager = [FirstManager new];
        SecondManager *secondManager = [SecondManager new];
        
        NSInteger turn = 0;
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            if(turn%2 == 0){
                restaurantKitchen.delegate =  firstManager;
            } else {
                restaurantKitchen.delegate =  secondManager;
            }
            
            NSString *size = commandWords.firstObject;
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)];
            
            PizzaSize pizzaSize = pizzaSizeHelper(size);
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
            
            if(pizza != nil) {
                [deliveryService deliverPizza:pizza];
            }
            
            [deliveryService records];
            
            turn += 1;
            
        }

    }
    return 0;
}

