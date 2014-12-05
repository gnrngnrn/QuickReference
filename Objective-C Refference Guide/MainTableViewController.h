//
//  MainTableViewController.h
//  Objective-C Refference Guide
//
//  Created by Gnrn on 01.12.14.
//  Copyright (c) 2014 Gnrn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Specific_TableViewController.h"
@interface MainTableViewController : UITableViewController
@property (nonatomic,strong) NSDictionary * mainDictionary;
@property (nonatomic,weak) NSArray *keys;

@end
