//
//  EntryController.m
//  Journal ObjC
//
//  Created by Alex Kennedy on 9/28/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"

@implementation EntryController

+ (EntryController *)shared
{
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[EntryController alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
    }
    return self;
}



// add entry
- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    Entry *newEntry = [[Entry alloc] initWithTitle:title text:bodyText];
    
    [_entries addObject:newEntry];
}

// update entry
- (void)updateEntry:(Entry *)entry title:(NSString *)title text:(NSString *)text
{
    entry.title;
    entry.bodyText = text;
    entry.timestamp = [NSDate date];
}

// remove entry
- (void)removeEntry:(Entry *)entry
{
    [_entries removeObject:entry];
}



@end
