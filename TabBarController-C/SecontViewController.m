//
//  SecontViewController.m
//  TabBarController-C
//
//  Created by Slava on 5/10/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import "SecontViewController.h"
#import "ThreeViewController.h"

@interface SecontViewController ()

@end

@implementation SecontViewController

- (void)loadView {
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor greenColor];
    [self setView:view2];
    NSLog(@"F2 - loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(160, 100, 100, 50)];
    label.text = @"VC2";
    label.font = [UIFont fontWithName:@"Helvetica" size:30];
    [self.view addSubview:label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(160, 300, 100, 100);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"Go to VC3" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    NSLog(@"F2 - viewDidLoad");
}

- (void)tapButton:( id) sender {
    
    ThreeViewController *VC3 = [[ThreeViewController alloc] init];
    [self presentViewController:VC3 animated:true completion:^{
        NSLog(@"Go to VC3");
    }];
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"F2 - viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"F2 - viewDidAppear");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"F2 - viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"F2 - viewDidLayoutSubviews");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"F2 - viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"F2 - viewDidDisappear");
}

- (void)dealloc {
    NSLog(@"F2 - dealloc");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
