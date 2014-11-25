//
//  ViewController.h
//  SDBlackjackRevisited
//
//  Created by shay deacy on 16/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import <UIKit/UIKit.h>

//create a card class->number,suit,value
//create an array to hold the deck
//a method to create the deck
//a method to draw a card->remove from the deck and add to the player's hand


@interface ViewController : UIViewController
- (IBAction)clickedButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;

@end
