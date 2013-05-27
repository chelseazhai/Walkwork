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
        
        // test pan gesture recognizer
        UIView *_pView = [[UIView alloc] initWithFrame:CGRectMake(20.0, 20.0, 140.0, 200.0)];
        _pView.backgroundColor = [UIColor redColor];
        // set view gesture recognizer delegate
        _pView.viewGestureRecognizerDelegate = self;
        
        /*
        UIPanGestureRecognizer *_pangr = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handleGestureRecognizer:)];
        _pangr.delegate = self;
        [_pView addGestureRecognizer:_pangr];
        */
         
        UILabel *_l = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 5.0, 60.0, 30.0)];
        _l.backgroundColor = [UIColor greenColor];
        _l.text = @"Label";
        [_pView addSubview:_l];
        
        [self addSubview:_pView];
        
        /*
        // test attributed label
        UIAttributedLabel *_attributedLabel = [[UIAttributedLabel alloc] initWithFrame:CGRectMake(320.0 / 2 - 50.0, 480.0 / 2, 100.0, 18.0)];
        //_attributedLabel.backgroundColor = [UIColor greenColor];
        
        // attributed string
        NSString *_testString = @"13770662051";
        NSMutableAttributedString *_attributedString = [NSMutableAttributedString attributedStringWithString:_testString];
        // set attributed string attributes
        [_attributedString setFont:[UIFont systemFontOfSize:14.0]];
        [_attributedString setTextColor:[UIColor grayColor]];
        [_attributedString setTextColor:[UIColor redColor] range:NSMakeRange(1, 3)];
        
        // set attributed label attributed text
        _attributedLabel.attributedText = _attributedString;
        
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

- (GestureType)supportedGestureInView:(UIView *)pView{
    return tap | pan | pinch;
}

- (void)view:(UIView *)pView frameChanged:(CGRect)pNewFrame{
    //NSLog(@"view new frame = %@", NSStringFromCGRect(pNewFrame));
}

- (void)view:(UIView *)pView tapAtPoint:(CGPoint)pPoint andFingerMode:(TapFingerMode)pFingerMode andCountMode:(TapCountMode)pCountMode{
    NSLog(@"view = %@, tap at point = %@, tap finger mode = %d and count mode = %d", pView, NSStringFromCGPoint(pPoint), pFingerMode, pCountMode);
}

- (void)registerBtnClicked{
    if ([self validateViewControllerRef:self.viewControllerRef andSelector:@selector(userRegisterNavigate)]) {
        //[self.viewControllerRef performSelector:@selector(userRegisterNavigate)];
    }
    
    // test by ares
    // test1
    NSMutableArray *_testArray = [[NSMutableArray alloc] init];
    [_testArray addObject:@"2"];
    [_testArray addObject:@"3"];
    [_testArray insertObject:@"1" atIndex:0];
    [_testArray addObject:@"5"];
    [_testArray insertObject:@"4" atIndex:3];
    NSLog(@"test array = %@", _testArray);
    
    // test 2
    NSString *_string = /*@"abcdefcdabecdf"*/@"翟彬彬";
    NSString *_subString = /*@"cd"*/@"彬";
    NSLog(@"ranges = %@", [_string rangesOfString:_subString]);
    NSLog(@"range = %@", NSStringFromRange([_string rangeOfString:_subString]));
    
    // test3
    NSString *_regTest1 = @"123";
    NSLog(@"%d", [_regTest1 isMatchedByRegex:@"^\\d+$"]);
    
    // test4
    NSString *_origString = @"hello12翟aREs@#绍虎簡訊 ,是 a吗";
    for (NSInteger _index = 0; _index < _origString.length; _index++) {
        //NSLog(@"char at %d pinyin array = %@", _index, [PinyinUtils pinyins4Char:[_origString characterAtIndex:_index]]);
    }
    
    // test 5
    NSArray *_pinyins = [PinyinUtils pinyins4String:_origString];
    NSLog(@"pinyins = %@", _pinyins);
    
    // test 6
    NSArray *_array2String = [NSArray arrayWithObjects:@"123", @"456", @"zha", @"ish", @"ao", @"h", @"u", nil];
    NSLog(@"array to string = %@", [_array2String toStringWithSeparator:nil]);
}

/*
- (void)handleGestureRecognizer:(UIGestureRecognizer *)pGestureRecognizer{
}
 */

@end
