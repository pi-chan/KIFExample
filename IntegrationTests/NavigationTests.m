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

- (void)testTab1
{
    [tester tapViewWithAccessibilityLabel:@"Tab1"];
    [tester tapViewWithAccessibilityLabel:@"Tab1"];
    
    [tester waitForViewWithAccessibilityLabel:@"FirstPageLabel"];
    [tester waitForViewWithAccessibilityLabel:@"firstpage"];
    [tester waitForViewWithAccessibilityLabel:@"NextPageButton"];
    [tester tapViewWithAccessibilityLabel:@"NextPageButton"];
    [tester waitForViewWithAccessibilityLabel:@"SecondPageLabel"];
    
    // Back
    [tester tapViewWithAccessibilityLabel:@"firstpage"];
    
    [tester waitForViewWithAccessibilityLabel:@"NextPageButton"];
    [tester tapViewWithAccessibilityLabel:@"NextPageButton"];
    [tester waitForViewWithAccessibilityLabel:@"SecondPageLabel"];
    
    // Back, another way
    [tester tapViewWithAccessibilityLabel:@"Back"];
}

- (void)testTab2
{
    [tester tapViewWithAccessibilityLabel:@"タブ2"];
    [tester tapViewWithAccessibilityLabel:@"タブ2"];
    
    [tester waitForViewWithAccessibilityLabel:@"AlertButton"];
    [tester tapViewWithAccessibilityLabel:@"AlertButton"];
    [tester waitForViewWithAccessibilityLabel:@"OK"];
    [tester waitForViewWithAccessibilityLabel:@"キャンセル"];
    
    [tester tapViewWithAccessibilityLabel:@"キャンセル"];
}

@end
