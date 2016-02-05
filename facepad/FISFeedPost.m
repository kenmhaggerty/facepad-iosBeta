//
//  FISFeedPost.m
//  facepad
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISFeedPost.h"

@implementation FISFeedPost

- (instancetype)init
{
    self = [self initWithUser:nil date:[NSDate date]];
    return self;
}

- (instancetype)initWithUser:(FISUser *)user date:(NSDate *)date
{
    self = [super init];
    if (self)
    {
        _user = user;
        _date = date;
    }
    return self;
}

@end
