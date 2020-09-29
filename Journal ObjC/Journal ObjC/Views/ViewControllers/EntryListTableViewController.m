//
//  EntryListTableViewController.m
//  Journal ObjC
//
//  Created by Alex Kennedy on 9/28/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "EntryController.h"
#import "EntryDetailViewController.h"

@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:true];
    [self.tableView reloadData];

}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return EntryController.shared.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    Entry *entry = EntryController.shared.entries[indexPath.row];
    cell.textLabel.text = entry.title;

    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        Entry *entry = EntryController.shared.entries[indexPath.row];
        [EntryController.shared removeEntry:entry];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toDetailView"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
//
        EntryController *entryDetailViewController = segue.destinationViewController;
        entryDetailViewController.entry = entry;
    }
}


@end
