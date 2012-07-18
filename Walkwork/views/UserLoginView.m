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
        // set background color
        self.backgroundColor = [UIColor whiteColor];
        
        // set title
        self.title = NSLocalizedString(@"user login view title", nil);
        
        // set navigation bar left button item: back to login button
        self.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"user register navigate button title", nil) style:UIBarButtonItemStyleDone target:self action:@selector(registerBtnClicked)];
        
        /*
        // test attributed label
        UIAttributedLabel *_attributedLabel = [[UIAttributedLabel alloc] initWithFrame:CGRectMake(320.0 / 2 - 100.0, 480.0 / 2, 200.0, 20.0)];
        _attributedLabel.backgroundColor = [UIColor greenColor];
        
        // attributed string
        NSMutableAttributedString *_attributedString = [NSMutableAttributedString attributedStringWithString:@"这是一个测试的带属性的标签"];
        // set attributed string attributes
        [_attributedString setFont:[UIFont systemFontOfSize:14.0]];
        [_attributedString setFont:[UIFont systemFontOfSize:20.0] range:[@"这是一个测试的带属性的标签" rangeOfString:@"这是"]];
        [_attributedString setTextColor:[UIColor grayColor]];
        [_attributedString setTextColor:[UIColor redColor] range:[@"这是一个测试的带属性的标签" rangeOfString:@"带属性的标签"]];
        [_attributedString setTextUnderline:YES range:[@"这是一个测试的带属性的标签" rangeOfString:@"是一"]];
        [_attributedString setTextBold:YES range:[@"这是一个测试的带属性的标签" rangeOfString:@"带属性的标签"]];
        
        // set attributed label attributed text
        _attributedLabel.attributedText = _attributedString;
        // and add a link to the "share your food!" text
        [_attributedLabel addCustomLink:[NSURL URLWithString:@"http://www.baidu.com"] inRange:[@"这是一个测试的带属性的标签" rangeOfString:@"测试的"]];
        // use the "Justified" alignment
        _attributedLabel.textAlignment = UITextAlignmentJustify;
        
        // add test attributed label to view
        [self addSubview:_attributedLabel];
         */
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
