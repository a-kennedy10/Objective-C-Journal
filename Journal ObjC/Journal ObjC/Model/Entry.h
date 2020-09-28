//
//  Entry.h
//  Journal ObjC
//
//  Created by Alex Kennedy on 9/28/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy, readwrite) NSString *title;
@property (nonatomic, copy, readwrite) NSString *bodyText;
@property (nonatomic, copy, readwrite) NSDate *timestamp;

-(instancetype) initWithName:(NSString *)title
                    bodyText:(NSString *)bodyText
                   timestamp:(NSDate *)timestamp;



@end

NS_ASSUME_NONNULL_END

