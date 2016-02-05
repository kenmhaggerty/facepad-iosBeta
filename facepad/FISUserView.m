//
//  FISUserView.m
//  facepad
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISUserView.h"

#define loadView() \
NSBundle *mainBundle = [NSBundle mainBundle]; \
NSArray *views = [mainBundle loadNibNamed:NSStringFromClass([self class]) owner:self options:nil]; \
[self addSubview:views[0]];

@implementation FISUserView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (!self) return nil;
    
    loadView();
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (!self) return nil;
    
    loadView();
    return self;
}

@end
