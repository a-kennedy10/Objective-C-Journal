//
//  Entry.m
//  Journal ObjC
//
//  Created by Alex Kennedy on 9/28/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

#import "Entry.h"
NS_ASSUME_NONNULL_BEGIN

@implementation Entry

- (instancetype)initWithName:(NSString *)title
                    bodyText:(NSString *)bodyText
                   timestamp:(NSDate *)timestamp
{
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = timestamp;
    }
    return self;
}


@end

NS_ASSUME_NONNULL_END
