//
//  Card.m
//  SDBlackjackRevisited
//
//  Created by shay deacy on 16/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "Card.h"

@implementation Card


-(id)initWithSuit:(NSString*)suit number:(NSString*)number {
    self = [super init];
    if (!self) {
        return nil;
    }
    _suit = suit;
    _number = number;
  
    return self;
}


-(NSString*)description{
    return [NSString stringWithFormat:@"%@ of %@",_number,_suit];
}

-(NSInteger)value{
    NSDictionary *values = @{
                             @"A": @10,
                             @"1": @1,
                             @"2": @2,
                             @"3": @3,
                             @"4": @4,
                             @"5": @5,
                             @"6": @6,
                             @"7": @7,
                             @"8": @8,
                             @"9": @9,
                             @"10": @10,
                             @"J": @10,
                             @"Q": @10,
                             @"K": @10
                             };
    NSNumber *value = values[_number];
    return value.integerValue;
    }


@end
