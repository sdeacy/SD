//
//  ViewController.m
//  SDOOP1.2
//
//  Created by shay deacy on 15/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *arr = @[@"shay",@"shah",];
   
    
    NSDictionary *dict = @{@"1": @"one",@"2": @"two",
                        @"3": @"three"};
    
    
    NSString *str = @"a string";
    
    [self checkIfObjectCountable:arr];
        [self checkIfObjectCountable:dict];
        [self checkIfObjectCountable:str];


}


-(void)checkIfObjectCountable:(id)object{
    if ([object respondsToSelector:@selector(count)]) {
        NSString *str = [NSString stringWithFormat:@"%@ has %i items",[object class],[object count]];
        _tex.textColor = [UIColor cyanColor];
        _tex.text = [_tex.text stringByAppendingString:str];
        _anuzzaLabel.text = [_anuzzaLabel.text stringByAppendingString:str];
        
    }
    else{
        
        NSLog(@"%@ can't be counted....",[object class]);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
