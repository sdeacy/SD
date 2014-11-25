//
//  ViewController.m
//  SDCountryTableView
//
//  Created by shay deacy on 17/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray *Countries;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _Countries = @[@"ireland",@"Indonesia",@"mexico",@"belize",@"ireland",@"Indonesia",@"mexico",@"belize",
                   @"ireland",@"Indonesia",@"mexico",@"belize",@"ireland",@"Indonesia",@"mexico",@"belize"];
    [_tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"cellIdentifier"];
    _tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
    
}


            

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 16;
}



-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text = [_Countries objectAtIndex:indexPath.row];
    return cell;
}

@end
