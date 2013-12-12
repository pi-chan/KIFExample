//
//  Tab2ViewController.m
//  KIFExample
//
//  Created by Hiromasa OHNO on 2013/12/12.
//  Copyright (c) 2013年 xoyip. All rights reserved.
//

#import "Tab2ViewController.h"

@interface Tab2ViewController ()

@end

@implementation Tab2ViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"UIAlertView"
                                                    message:@"アラートです"
                                                   delegate:self
                                          cancelButtonTitle:@"キャンセル"
                                          otherButtonTitles:@"OK", nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"%d", buttonIndex);
}


@end
