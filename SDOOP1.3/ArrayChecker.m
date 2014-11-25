//
//  ArrayChecker.m
//  SDOOP1.3
//
//  Created by shay deacy on 16/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ArrayChecker.h"

@implementation ArrayChecker


-(id)getSecondElement:arr{
    NSLog(@"%i",[arr count]);
    
    if ([arr count] > 1) {
        NSLog(@"hello");
        return arr[1];
    }
    else{
        return @"No item at index 2";
    }
}

@end
