//
//  Concrete_ViewController.h
//  Objective-C Refference Guide
//
//  Created by Gnrn on 01.12.14.
//  Copyright (c) 2014 Gnrn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Concrete_ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textField;
@property (strong,nonatomic) NSString *titleN;
@property (strong,nonatomic) NSString *textContent;


@end
