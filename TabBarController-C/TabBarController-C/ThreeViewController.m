//
//  ThreeViewController.m
//  TabBarController-C
//
//  Created by Slava on 5/10/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(160, 100, 100, 50)];
    label.text = @"VC3";
    label.font = [UIFont fontWithName:@"Helvetica" size:30];
    [self.view addSubview:label];
    
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(160, 300, 100, 100)];
    backButton.backgroundColor = [UIColor blueColor];
    [backButton addTarget:self action:@selector(tapBackButton:) forControlEvents:UIControlEventTouchUpInside];
    [backButton setTitle:@"Back" forState:UIControlStateNormal];
    self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:backButton];
    
    NSLog(@"F3 - viewDidLoad");
}

- (void)tapBackButton:(UIButton*) sender {
    [self dismissViewControllerAnimated:true completion:^{
        NSLog(@"Back to VC2");
        }];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"F3 - viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"F3 - viewDidAppear");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"F3 - viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"F3 - viewDidLayoutSubviews");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"F3 - viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"F3 - viewDidDisappear");
}

- (void)dealloc {
    NSLog(@"F3 - dealloc");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
