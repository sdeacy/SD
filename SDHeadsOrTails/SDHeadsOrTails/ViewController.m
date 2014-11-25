//
//  ViewController.m
//  SDHeadsOrTails
//
//  Created by shay deacy on 10/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

bool user = TRUE;
BOOL coin = TRUE;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)lincolnButton:(id)sender {
    
    user = FALSE;
    coin = [self toss];
    if (!coin && !user) {
        _label.text = @"lincoln win";
        _img.image = [UIImage imageNamed:@"lincoln.jpeg"];

        
    }
    else{
        _label.text =@"liberty lose";
        _img.image = [UIImage imageNamed:@"US2520one2520dollar2520coin.jpg"];

    }
    
    }

- (IBAction)libertyButton:(id)sender {
    user = TRUE;
    coin = [self toss];
    if (coin && user) {
        _label.text = @"liberty win";
        _img.image = [UIImage imageNamed:@"US2520one2520dollar2520coin.jpg"];
        
    }
    else{
        _label.text =@"lincoln lose";
        _img.image = [UIImage imageNamed:@"lincoln.jpeg"];

    }
}

-(BOOL)toss
{
    int rand = (arc4random() % 100);
    if (rand >= 51) {
        coin = FALSE;
        _label.text = [NSString stringWithFormat:@"%i",rand];
    }
    else{
        coin = TRUE;
        _label.text = @"hello";
    }
    
    return coin;

}
@end
