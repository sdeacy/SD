//
//  ViewController.m
//  SDBlackjackRevisited
//
//  Created by shay deacy on 16/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"
#import "Card.h"

@interface ViewController ()

@property NSMutableArray *deck;
@property NSMutableArray *hand;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _deck = [self createDeck];
     
        
    
    
    
    
}


-(id)createDeck{
    
    NSMutableArray *deck = [[NSMutableArray alloc]init];
    NSArray *numbers = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"j",@"q",@"k"];
    NSArray *suits =@[@"hearts",@"diamonds",@"spades",@"clubs"];
 
    for (NSString *suit in suits) {
        for (NSString *num in numbers) {
            Card *card =[[Card alloc]init];
            card = [card initWithSuit:suit number:num];
            [deck addObject:card];
        }
    }
    
    
    return deck;
}

-(id)drawCard{
    NSInteger rand = arc4random() % _deck.count;
    Card *card = [_deck objectAtIndex:rand];
    [_hand addObject:card];
    [_deck removeObjectAtIndex:rand];
    return card;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedButton:(id)sender {
    NSLog(@"sanity check");
    NSInteger score = 0;
    bool endgame = false;
    while (!endgame) {
        Card *cardDrawn = [self drawCard];
        score += cardDrawn.value;
        NSLog(@"Card: %@",[cardDrawn description]);
        _scoreLabel.text = [NSString stringWithFormat:@"Your score is %i",score];
        NSLog(@"Your score is %i",score);
        if (score > 21) {
            NSLog(@"You loose");
            endgame = true;
        }
        else if ((score < 21) && ([_hand count]==5)){
            NSLog(@"Winner");
            endgame = true;
            
        }
        else if (score == 21){
            NSLog(@"Winner- 21");
            endgame = true;
        }
    }
    

}
@end
