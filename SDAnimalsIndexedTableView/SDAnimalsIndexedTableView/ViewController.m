//
//  ViewController.m
//  SDAnimalsIndexedTableView
//
//  Created by shay deacy on 17/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSDictionary *animals;
@property NSArray       *animalSectionTitles;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	_animals = @{@"B" : @[@"Bear", @"Black Swan", @"Buffalo"],
                 @"C" : @[@"Camel", @"Cockatoo"],
                 @"D" : @[@"Dog", @"Donkey"],
                 @"E" : @[@"Emu"],
                 @"G" : @[@"Giraffe", @"Greater Rhea"],
                 @"H" : @[@"Hippopotamus", @"Horse"],
                 @"K" : @[@"Koala"],
                 @"L" : @[@"Lion", @"Llama"],
                 @"M" : @[@"Manatus", @"Meerkat"],
                 @"P" : @[@"Panda", @"Peacock", @"Pig", @"Platypus", @"Polar Bear"],
                 @"R" : @[@"Rhinoceros"],
                 @"S" : @[@"Seagull"],
                 @"T" : @[@"Tasmania Devil"],
                 @"W" : @[@"Whale", @"Whale Shark", @"Wombat"]};
    _animalSectionTitles = [[_animals allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    _tableView.dataSource = self;
    
    [_tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"cellIdentifier"];
    
    
    

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [_animalSectionTitles count];
}

-(NSString*)tableView:(UITableView*)tableView titleForHeaderInSection:(NSInteger)section{
    return [_animalSectionTitles objectAtIndex:section];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *sectionTitle = [_animalSectionTitles objectAtIndex:section];
    NSArray *animals = [_animals objectForKey:sectionTitle];
    return [animals count];
}

-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier"forIndexPath:indexPath];
    NSString *sectionTitle = [_animalSectionTitles objectAtIndex:indexPath.section];
    NSArray *sectionAnimals = [_animals objectForKey:sectionTitle];
    NSString *animal = [sectionAnimals objectAtIndex:indexPath.row];
    cell.textLabel.text = animal;
    return cell;
    
    
    
    
    
    return cell;
}









- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
