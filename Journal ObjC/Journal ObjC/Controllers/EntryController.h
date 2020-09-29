//
//  EntryController.h
//  Journal ObjC
//
//  Created by Alex Kennedy on 9/28/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

@property (nonatomic, strong) NSArray *entries;

+ (EntryController *)shared;

- (void)addEntryWithTitle:(NSString *)title text:(NSString *)text;
- (void)removeEntry:(Entry *)entry;
- (void)updateEntry:(Entry *)entry title:(NSString *)title text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
