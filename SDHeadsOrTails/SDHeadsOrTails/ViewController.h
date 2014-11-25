//
//  ViewController.h
//  SDHeadsOrTails
//
//  Created by shay deacy on 10/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UILabel *label;
- (IBAction)lincolnButton:(id)sender;
- (IBAction)libertyButton:(id)sender;
-(BOOL)toss;
@end
