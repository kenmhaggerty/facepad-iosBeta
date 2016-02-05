//
//  FISNewsFeedTableViewController.h
//  facepad
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISUser.h"

@interface FISNewsFeedTableViewController : UITableViewController
@property (nonatomic, strong) FISUser *user;
@end
