//
//  Example.m
//  SDTestTest
//
//  Created by shay deacy on 16/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "Example.h"

@implementation Example

-(NSInteger)addAnInt:(NSInteger)a toAnotherInt:(NSInteger)b{

    
    
    return a+b;
}

-(NSString*)concatenateAString:(NSString*)a toAnotherString:(NSString*)b{
    NSString *answer = [NSString stringWithFormat:@"%@%@",a,b];
    
    
    
    return answer;
}

@end
