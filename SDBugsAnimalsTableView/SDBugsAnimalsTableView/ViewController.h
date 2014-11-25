//
//  ViewController.h
//  SDBugsAnimalsTableView
//
//  Created by shay deacy on 25/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *animals;
@property (nonatomic, strong) NSArray *bugs;


@end
