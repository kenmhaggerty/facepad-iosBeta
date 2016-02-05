//
//  FISImageTableViewCell.m
//  facepad
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISImageTableViewCell.h"

@implementation FISImageTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (UIImage *)profilePic
{
    return self.userView.profilePic;
}

- (NSString *)profileUsername
{
    return self.userView.profileUsername;
}

@end
