//
//  DetailsViewController.h
//  SDBugsAnimalsTableView
//
//  Created by shay deacy on 25/11/2014.
//  Copyright (c) 2014 shay deacy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *detailsTextField;
@property (nonatomic,strong) NSString *detailsText;


@end
