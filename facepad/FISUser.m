//
//  FISUser.m
//  facepad
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISUser.h"

@implementation FISUser

- (instancetype)init
{
    self = [self initWithUsername:@"" profilePic:nil cover:nil];
    return self;
}

- (instancetype)initWithUsername:(NSString *)username profilePic:(UIImage *)profilePic cover:(UIImage *)cover
{
    self = [super init];
    if (self)
    {
        _username = username;
        _profilePic = profilePic;
        _cover = cover;
        _posts = @[];
    }
    return self;
}

@end
