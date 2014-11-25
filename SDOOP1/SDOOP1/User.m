//
//  User.m
//  SDOOP1
//
//  Created by shay deacy on 15/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "User.h"

@implementation User


+(User*)user{
    return [[User alloc] init];
}


-(void)sayHello{
    NSLog(@"hello");
    
}

-(id)init{
    self = [super init];
    if (!self)
    {
        return nil;
    }
    _uid = 1;
    _name = @"hudson";
    _avatar = [UIImage imageNamed:@"hudmo.jpg"];
    [self sayHello];
    return self;
}

-(id)initWithID:(NSInteger)uid name:(NSString *)name avatar:(UIImage *)avatar{
    self = [super init];
    if(!self){return nil;}
    
    _uid =  uid;
    _name =  name;
    _avatar = avatar;
    
    return self;
}

@end
