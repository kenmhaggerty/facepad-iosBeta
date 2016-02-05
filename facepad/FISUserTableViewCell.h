//
//  FISUserTableViewCell.h
//  facepad
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISUserView.h"

@interface FISUserTableViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel *postsCountLabel;
@property (nonatomic, strong) IBOutlet FISUserView *userView;
@end
