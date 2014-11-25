//
//  ViewController.m
//  SDBugsAnimalsTableView
//
//  Created by shay deacy on 25/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"
#import "DetailsViewController.h"
#define numberOfSections 2

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    _animals = @[@"sheep",@"pigs",@"cows",@"chickens"];
    _bugs   =@[@"spider",@"cockroach",@"fly"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return numberOfSections;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return @"Animals";
    }
    else if(section == 1){
        return @"Bugs";
    }
    else{
        return @"";
    }

    
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return [_animals count];
            break;
        case 1:
            return [_bugs count];
            break;
            
        default:
            return 0;
            break;
    }
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"shayCell"];
    
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [_animals objectAtIndex:indexPath.row];
            break;
        case 1:
            cell.textLabel.text = [_bugs objectAtIndex:indexPath.row];
            break;
            
        default:
            cell.textLabel.text = @"Not found";

            break;
    }
    
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetailsViewController *destination = [segue destinationViewController];
    NSInteger ind = [_tableView indexPathForSelectedRow].row;
    NSInteger sec = [_tableView indexPathForSelectedRow].section;
    if (sec == 0) {
        destination.detailsText = _animals[ind];

    } else {
        destination.detailsText = _bugs[ind];
    }
    


}

@end
