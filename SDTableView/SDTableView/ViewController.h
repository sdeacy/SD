//
//  ViewController.h
//  SDTableView
//
//  Created by shay deacy on 10/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property NSArray *books;


@end
