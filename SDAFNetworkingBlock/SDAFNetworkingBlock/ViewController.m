//
//  ViewController.m
//  SDAFNetworkingBlock
//
//  Created by shay deacy on 18/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //join  strings
    NSString *str = @"hello";
    NSString *str2 = [str stringByAppendingString:@" world"];
    NSString *str3 = [str2 stringByReplacingOccurrencesOfString:@"o" withString:@"x"];
    NSString *str4 = [str3 copy];

    
    
    
    NSLog(@"%@",str4);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

- (IBAction)findIPButton:(id)sender {
    NSLog(@"button pressed");
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager
     GET:@"http://ip.jsontest.com/"
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSLog(@"success");
             NSDictionary *dict = (NSDictionary*)responseObject;
             _ipLabel.text = dict[@"ip"];
         } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"no good..");
         }];
    
    
}
@end
