//
//  UserLoginViewController.m
//  Walkwork
//
//  Created by  on 12-6-14.
//  Copyright (c) 2012年 richitec. All rights reserved.
//

#import "UserLoginViewController.h"

#import "CommonToolkit/CommonToolkit.h"

#import "UserLoginView.h"

#import "UserRegisterViewController.h"

// UserLoginViewController extension
@interface UserLoginViewController ()

// user register navigate
- (void)userRegisterNavigate;

// user login confirm
- (void)userLoginConfirm;

// did login success selector
- (void)didLoginSuccess:(ASIHTTPRequest *)pRequest;

@end




@implementation UserLoginViewController

- (id)init{
    return [super initWithCompatibleView:[[UserLoginView alloc] init]];
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

- (void)userRegisterNavigate{
    NSLog(@"user register navigate");
    
    // push user register view controller in navigation controller
    [self.navigationController pushViewController:[[UserRegisterViewController alloc] init] animated:YES];
}

- (void)userLoginConfirm{
    NSLog(@"user login confirm");
    
    // test httpUtil by ares
    [[UserManager shareUserManager] setUser:@"ares" andPassword:@"123456"];
    
    [HttpUtil postRequestWithUrl:@"http://www.sina.com.cn/imeeting/user/login" andPostFormat:urlEncoded andParameter:[[NSMutableDictionary alloc] initWithObjectsAndKeys:@"13813005146", @"loginName", @"123", @"loginPwd", nil] andUserInfo:nil andRequestType:synchronous andProcessor:self andFinishedRespSelector:@selector(didLoginSuccess:) andFailedRespSelector:nil];
}

- (void)didLoginSuccess:(ASIHTTPRequest *)pRequest{
    NSLog(@"%@ - didLoginSuccess, request = %@", NSStringFromClass(self.class), pRequest.url);
}

@end
