//
//  UserRegisterView.m
//  Walkwork
//
//  Created by  on 12-6-14.
//  Copyright (c) 2012年 richitec. All rights reserved.
//

#import "UserRegisterView.h"

#import "CommonToolkit/CommonToolkit.h"

// UserRegisterView extension
@interface UserRegisterView ()

// user register back button clicked
- (void)registerBackBtnClicked;

@end




@implementation UserRegisterView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // set title
        self.title = NSLocalizedString(@"user register view title", nil);
        
        // set navigation bar left button item: back to login button
        self.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"user register back button title", nil) style:UIBarButtonItemStyleBordered target:self action:@selector(registerBackBtnClicked)];
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

- (void)registerBackBtnClicked{
    if ([self validateViewControllerRef:self.viewControllerRef andSelector:@selector(userRegisterCancel)]) {
        [self.viewControllerRef performSelector:@selector(userRegisterCancel)];
    }
}

@end
