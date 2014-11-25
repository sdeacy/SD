//
//  ViewController.m
//  SDOOP1
//
//  Created by shay deacy on 15/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"
#import "User.h"


@interface ViewController ()
@property (nonatomic,strong) User *user;


@end

@implementation ViewController


- (void)viewDidLoad
{

    [super viewDidLoad];
    User *user = [[User alloc] init];
    [self setUser:user];
        
    
    
    
}

-(void)setUser:(User*)user{
    _user = user;
    _uidLabel.text = [NSString stringWithFormat:@"%i",user.uid];
    _nameLabel.text = user.name;
    _avator.image = user.avatar;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeButton:(id)sender {
    if(_user.uid == 1){
        //create new user
        NSInteger uid = 2;
        NSString *name = @"shay";
        UIImage * avator = [UIImage imageNamed:@"canvas.png"];
        
        
        User *user = [[User alloc]initWithID:uid name:name avatar:avator];
        [self setUser:user];
    }
    else if ((_user.uid)== 2){
        User *user = [User user];
        [self setUser:user];
        
    }
    
}
@end
