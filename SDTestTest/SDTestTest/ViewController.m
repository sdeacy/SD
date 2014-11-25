//
//  ViewController.m
//  SDTestTest
//
//  Created by shay deacy on 16/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"
#import "Example.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    Example *ex = [[Example alloc] init];
    
    NSInteger answer = [ex addAnInt:2 toAnotherInt:3];
    NSLog(@"%i",answer);
    NSLog([ex concatenateAString:@"sea" toAnotherString:@"mus"]);
            
                        
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
