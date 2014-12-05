//
//  MainTableViewController.m
//  Objective-C Refference Guide
//
//  Created by Gnrn on 01.12.14.
//  Copyright (c) 2014 Gnrn. All rights reserved.
//

#import "MainTableViewController.h"

@interface MainTableViewController ()



@end

@implementation MainTableViewController
@synthesize mainDictionary,keys;
static NSString *cellIdentifier =@"Cell";

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"Classes" ofType:@"plist"];
    mainDictionary = [[NSDictionary alloc]initWithContentsOfFile:path];
    keys = [mainDictionary allKeys];
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
    return [mainDictionary count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }

    cell.textLabel.textColor = [[UIColor alloc] initWithRed:235.0/255.0 green:177.0/255.0 blue:0.0/255.0 alpha:1.0];
    [cell.textLabel setText:[keys objectAtIndex:indexPath.row]];
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    Specific_TableViewController *svc = [segue destinationViewController];
    NSIndexPath *indePath = [self.tableView indexPathForSelectedRow];
    keys = [mainDictionary allKeys];
    NSString *keyForDictionary = [keys objectAtIndex:indePath.row];
    NSDictionary *temp = [mainDictionary objectForKey:keyForDictionary];
    [svc setDictionaryWithNotes:temp];
    svc.title = keyForDictionary;
    UIBarButtonItem *newBackButton =
    [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                     style:UIBarButtonItemStyleBordered
                                    target:nil
                                    action:nil];
    [[self navigationItem] setBackBarButtonItem:newBackButton];
    [self.tableView reloadData];
    
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Reference";
}


@end
