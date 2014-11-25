//
//  ViewController.m
//  SDOOP1.3
//
//  Created by shay deacy on 16/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"
#import "ArrayChecker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	   
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clickButton:(id)sender {
    // creates an array of the alphabet from a string, displays second element,then creates a string of the alphabet backwards from the array
    ArrayChecker *arrChek = [[ArrayChecker alloc] init];
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    
    NSString *str = @"abcdefghijklmnopqrstuvwxyz";
    for (int i = 0; i< [str length]; i++) {
        unichar letter = [str characterAtIndex:i];
        NSString *letterStr = [NSString stringWithFormat:@"%c",letter];
        
        [arr insertObject:letterStr atIndex:i];
        
        
        
        
    }
    
    NSLog(@"%@",[arrChek getSecondElement:arr]);
    NSMutableString *backwards = [[NSMutableString alloc]init];
    
    for (int i = ([arr count]-1); i>=0; i--)
    {
        [backwards appendString:arr[i]];
    }
    NSLog(@"%@", backwards);
    _alphaLabel.text =@"";

    for (NSString *le in arr) {
        
        _alphaLabel.text = [_alphaLabel.text stringByAppendingString: le];
    }
    
}
@end
