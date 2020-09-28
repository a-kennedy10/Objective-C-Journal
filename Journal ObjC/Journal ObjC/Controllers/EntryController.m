//
//  EntryController.m
//  Journal ObjC
//
//  Created by Alex Kennedy on 9/28/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

#import "EntryController.h"

@implementation EntryController

- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    Entry *newEntry = [[Entry alloc] initWithTitle: title bodyText:bodyText];
}

@end
