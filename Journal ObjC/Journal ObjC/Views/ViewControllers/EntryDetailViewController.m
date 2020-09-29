//
//  EntryDetailViewController.m
//  Journal ObjC
//
//  Created by Alex Kennedy on 9/28/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"

@interface EntryDetailViewController ()

//MARK: - outlets
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;



@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews
{
    if (!self.entry) return;
    self.titleTextField.text = self.entry.title;
    self.bodyTextView.text = self.entry.text;
    
}
- (IBAction)saveButtonTapped:(id)sender
{
    if (self.entry) {
        [EntryController.shared updateEntry:self.entry title:self.titleTextField text:self.bodyTextView.text];
    } else {
        [EntryController.shared addEntryWithTitle:self.title text:self.bodyTextView.text];
    }
    [self.navigationController popViewControllerAnimated:true];
}


- (IBAction)clearButtonTapped:(id)sender
{
    self.titleTextField.text = @"";
    self.bodyTextView.text = @"";
}

-(void)setEntry:(Entry *)entry
{
    if (entry != entry) {
        entry = entry;
        [self updateViews];
    }
}



@end
