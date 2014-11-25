//
//  User.h
//  SDOOP1
//
//  Created by shay deacy on 15/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;



@interface User : NSObject

@property (nonatomic,assign)    NSInteger uid;
@property (nonatomic,copy)      NSString *name;
@property (nonatomic,strong)    UIImage *avatar;

+(User*)user;
-(id)initWithID:(NSInteger)uid name:(NSString*)name avatar:(UIImage*)avatar;
//-(void)sayHello;    //if not declared here, and implemented in .m then it is only available to .m


@end
