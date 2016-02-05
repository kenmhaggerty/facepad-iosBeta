//
//  FISTextTableViewCell.h
//  facepad
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISUserView.h"

@interface FISTextTableViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet FISUserView *userView;
@property (nonatomic, strong) IBOutlet UILabel *postContent;
- (UIImageView *)profilePic;
- (UILabel *)profileUsername;
@end
