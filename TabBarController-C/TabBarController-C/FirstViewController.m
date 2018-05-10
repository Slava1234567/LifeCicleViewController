//
//  FirstViewController.m
//  TabBarController-C
//
//  Created by Slava on 5/10/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import "FirstViewController.h"
#import "FourViewController.h"

@interface FirstViewController ()

@property (strong, nonatomic) UILabel* label;

@end

@implementation FirstViewController

//- (void)loadView {
//    NSLog(@"F1 - loadView");
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"FirstVC";
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"VC4" style:UIBarButtonItemStyleDone target:self action:@selector(tapButtonItem:)];
   
    [self.navigationItem setRightBarButtonItem:rightButton];
    
    NSLog(@"F1 - viewDidLoad");
}

- (void)tapButtonItem:(UITabBarItem*) sender {
    
    FourViewController *VC3 = [[FourViewController alloc] init];
    [self.navigationController pushViewController:VC3 animated:true];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(160, 100, 100, 50)];
    self.label.text = @"VC1";
    self.label.font = [UIFont fontWithName:@"Helvetica" size:30];
    [self.view addSubview:self.label];
    NSLog(@"F1 - viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
    NSLog(@"F1 - viewDidAppear");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"F1 - viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"F1 - viewDidLayoutSubviews");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.label removeFromSuperview];
    NSLog(@"F1 - viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"F1 - viewDidDisappear");
}

- (void)dealloc {
    NSLog(@"F1 - dealloc");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
