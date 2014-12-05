//
//  Concrete_ViewController.m
//  Objective-C Refference Guide
//
//  Created by Gnrn on 01.12.14.
//  Copyright (c) 2014 Gnrn. All rights reserved.
//

#import "Concrete_ViewController.h"

@interface Concrete_ViewController ()

@end

@implementation Concrete_ViewController
@synthesize textContent,titleN,label,textField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.label setText:titleN];
    [self.textField setText:textContent];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"pic2.png"]]];
    [self.textField setEditable:NO];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



@end
