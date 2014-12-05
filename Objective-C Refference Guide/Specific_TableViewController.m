//
//  Specific_TableViewController.m
//  Objective-C Refference Guide
//
//  Created by Gnrn on 01.12.14.
//  Copyright (c) 2014 Gnrn. All rights reserved.
//

#import "Specific_TableViewController.h"

@interface Specific_TableViewController ()

@end

@implementation Specific_TableViewController
@synthesize dictionaryWithNotes,keysArray;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //NSLog(@"%@",dictionaryWithNotes);
    keysArray = [dictionaryWithNotes allKeys];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [keysArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellIdentifier =@"Cell2";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    [cell.textLabel setText:[keysArray objectAtIndex:indexPath.row]];
    UIImageView * ac= [[UIImageView alloc] init];
    ac.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"222.png"]];
    cell.backgroundView =ac;
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [[UIColor alloc] initWithRed:235.0/255.0 green:177.0/255.0 blue:0.0/255.0 alpha:1.0];
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    Concrete_ViewController *cvc = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    cvc.titleN = [keysArray objectAtIndex:indexPath.row];
    cvc.textContent =[dictionaryWithNotes objectForKey:cvc.titleN];
    
}


@end
