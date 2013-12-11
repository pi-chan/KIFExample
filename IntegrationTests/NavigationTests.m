//
//  NavigationTests.m
//  KIFExample
//
//  Created by Hiromasa OHNO on 2013/12/10.
//  Copyright (c) 2013年 xoyip. All rights reserved.
//

#import <KIF/KIF.h>

@interface NavigationTests : KIFTestCase

@end

@implementation NavigationTests

- (void)test
{
    [tester waitForViewWithAccessibilityLabel:@"FirstPageLabel"];
    [tester tapViewWithAccessibilityLabel:@"NextPageButton"];
    [tester waitForViewWithAccessibilityLabel:@"SecondPageLabel"];
    [tester tapViewWithAccessibilityLabel:@"Back"];
    [tester waitForViewWithAccessibilityLabel:@"FirstPageLabel"];
}

@end
