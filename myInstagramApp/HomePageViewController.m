//
//  HomePageViewController.m
//  myInstagramApp
//
//  Created by Cem Onel on 19/08/15.
//  Copyright (c) 2015 Cem Onel. All rights reserved.
//

#import "HomePageViewController.h"
#import "LoginScreenViewController.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_welcomeLabel setText:_userIDText];
    
    self.navigationItem.title = @"Home Page";
    
    UIBarButtonItem *logOutBarButton = [[UIBarButtonItem alloc] initWithTitle:@"Log out" style:UIBarButtonItemStyleDone target:self action:@selector(logOutBarButton:)];
    
    self.navigationItem.rightBarButtonItem = logOutBarButton;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)logOutBarButton:(UIBarButtonItem *)button {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
