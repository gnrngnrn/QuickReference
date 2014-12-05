//
//  Specific_TableViewController.h
//  Objective-C Refference Guide
//
//  Created by Gnrn on 01.12.14.
//  Copyright (c) 2014 Gnrn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Concrete_ViewController.h"

@interface Specific_TableViewController : UITableViewController
@property (nonatomic,copy) NSDictionary *dictionaryWithNotes;
@property (nonatomic,strong) NSArray *keysArray;
@end
