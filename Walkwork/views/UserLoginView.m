//
//  UserLoginView.m
//  Walkwork
//
//  Created by  on 12-6-14.
//  Copyright (c) 2012年 richitec. All rights reserved.
//

#import "UserLoginView.h"

#import "CommonToolkit/CommonToolkit.h"

// UserLoginView extension
@interface UserLoginView ()

// user register button clicked
- (void)registerBtnClicked;

@end




@implementation UserLoginView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // set title
        self.title = NSLocalizedString(@"user login view title", nil);
        
        // set navigation bar left button item: back to login button
        self.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"user register navigate button title", nil) style:UIBarButtonItemStyleDone target:self action:@selector(registerBtnClicked)];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)registerBtnClicked{
    if ([self validateViewControllerRef:self.viewControllerRef andSelector:@selector(userRegisterNavigate)]) {
        [self.viewControllerRef performSelector:@selector(userRegisterNavigate)];
    }
}

@end
