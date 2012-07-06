//
//  UserRegisterViewController.m
//  Walkwork
//
//  Created by  on 12-6-14.
//  Copyright (c) 2012年 richitec. All rights reserved.
//

#import "UserRegisterViewController.h"

#import "CommonToolkit/CommonToolkit.h"

#import "UserRegisterView.h"

// UserRegisterViewController extension
@interface UserRegisterViewController ()

// user register cancel
- (void)userRegisterCancel;

@end




@implementation UserRegisterViewController

- (id)init{
    return [super initWithCompatibleView:[[UserRegisterView alloc] init]];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

// custom methods implemetation
- (void)userRegisterCancel{
    NSLog(@"user register cancel");
    
    // pop user register view controller
    [self.navigationController popViewControllerAnimated:YES];
}

@end
