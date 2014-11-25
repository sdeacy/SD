//
//  Card.h
//  SDBlackjackRevisited
//
//  Created by shay deacy on 16/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString *suit;
@property (nonatomic, strong) NSString *number;
@property (nonatomic, readonly) NSInteger value;
-(id)initWithSuit:(NSString*)suit number:(NSString*)number;


@end
