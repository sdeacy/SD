//
//  ViewController.m
//  SDScrabbleWithIndex
//
//  Created by shay deacy on 18/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray *wordSectionTitles;
@property NSDictionary *words;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	_words =@{@"a":@[@"AAH",
                     @"AAL",
                     @"AAS",
                     @"ABA",
                     @"ABB",
                     @"ABO"],
              @"b":@[@"BAA",
                     @"BAC",
                     @"BAD",
                     @"BAG",
                     @"BAH",
                     @"BAL"],
              @"c":@[@"CUE",
                     @"CUM",
                     @"CUP",
                     @"CUR",
                     @"CUT",
                     @"CUZ",
                     @"CWM"],
              @"d":@[@"DAB",
                     @"DAD",
                     @"DAE",
                     @"DAG"]
              };
    
    _tableView.dataSource = self;
    [_tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"cellIdentifier"];
    
        _wordSectionTitles = [_words allKeys];
    

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [_wordSectionTitles count];
}
-(id)tableView:(UITableView*)tableView titleForHeaderInSection:(NSInteger)section{
    return [_wordSectionTitles objectAtIndex:section];
}

-(NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *sectionTitle = [_wordSectionTitles objectAtIndex:section];
    NSArray *wordsInSection = [_words objectForKey:sectionTitle];
    return [wordsInSection count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier"];
    NSString *sectionTitle = [_wordSectionTitles objectAtIndex:indexPath.section];
    NSArray *wordsForSection = [_words objectForKey:sectionTitle];
    NSString *wordForCell = [wordsForSection objectAtIndex:indexPath.row];
    
    cell.textLabel.text = wordForCell;
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
