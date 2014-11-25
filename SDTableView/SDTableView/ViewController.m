//
//  ViewController.m
//  SDTableView
//
//  Created by shay deacy on 10/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  
    self.books = @[@"adad",@"dgggdsg",@"ukjyhtg",@"adad",@"dgggdsg",@"ukjyhtg",@"adad",@"dgggdsg",@"ukjyhtg",@"adad",@"dgggdsg",@"ukjyhtg",@"adad",@"dgggdsg",@"ukjyhtg",@"adad",@"dgggdsg",@"ukjyhtg"];
    
 

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.books count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *simpleIdentifier = @"simpleIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleIdentifier];
    }
    
    cell.textLabel.text = self.books[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"lincoln.jpeg"];
    cell.detailTextLabel.text =@"fshskjhfjssfhkjsfhkshksfhskf";
    
    return cell;
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    return indexPath;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *rowvalue = self.books[indexPath.row+1];
    NSString *message = [[NSString alloc] initWithFormat:@"You selected %@",rowvalue];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:message delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:nil, nil];
    [alert show];
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}


@end
