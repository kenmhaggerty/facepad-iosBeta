//
//  FISFeedPost.h
//  facepad
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISUser.h"

@interface FISFeedPost : NSObject
@property (nonatomic, strong) FISUser *user;
@property (nonatomic, strong) NSDate *date;
@end
