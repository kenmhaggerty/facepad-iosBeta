//
//  FISUser.h
//  facepad
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISUser : NSObject
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) UIImage *profilePic;
@property (nonatomic, strong) UIImage *cover;
@property (nonatomic, strong) NSArray *posts;
- (instancetype)init;
- (instancetype)initWithUsername:(NSString *)username profilePic:(UIImage *)profilePic cover:(UIImage *)cover;
@end
