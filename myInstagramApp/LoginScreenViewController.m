//
//  LoginScreenViewController.m
//  myInstagramApp
//
//  Created by Cem Onel on 19/08/15.
//  Copyright (c) 2015 Cem Onel. All rights reserved.
//

#import "LoginScreenViewController.h"
#import "HomePageViewController.h"

@interface LoginScreenViewController ()

@property (strong, nonatomic) IBOutlet UITextField *userIDOutlet;
@property (strong, nonatomic) IBOutlet UITextField *userPwOutlet;

- (IBAction)bigButtonTab:(id)sender;
- (IBAction)loginButtonTab:(id)sender;

@end

@implementation LoginScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _userIDOutlet.delegate = self;
    _userPwOutlet.delegate = self;
    
    
    [_userIDOutlet becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {

    if (textField == _userIDOutlet) {
        [_userPwOutlet becomeFirstResponder];}
    else if (textField == _userPwOutlet) {

        [self loginMethod];
     }
    return YES;
}
/*
#pragma mark - Navigation

 In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     Get the new view controller using [segue destinationViewController].
     Pass the selected object to the new view controller.
}
*/

- (IBAction)bigButtonTab:(id)sender {
    [_userIDOutlet resignFirstResponder];
    [_userPwOutlet resignFirstResponder];
}

- (IBAction)loginButtonTab:(id)sender {
    [self loginMethod];
}

- (void) loginMethod {
    NSString *userID = _userIDOutlet.text;
    NSString *userPw = _userPwOutlet.text;
    
    if([userID isEqualToString:@"cem" ]){
        NSLog(@"Correct ID");
        if([userPw isEqualToString:@"123"]){
            NSLog(@"Correct PW");
            UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            HomePageViewController *homePage = (HomePageViewController *)[storyBoard instantiateViewControllerWithIdentifier:@"HomePageView"];
            [homePage setUserIDText:[NSString stringWithFormat:@"Welcome! , %@", _userIDOutlet.text]];
            [self presentViewController:homePage animated:YES completion:nil];
            [_userIDOutlet setText:@""];
            [_userPwOutlet setText:@""];
        }else if([userPw isEqualToString:@""]) {
            NSLog(@"Empty PW Bar");
            UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Please Enter Your Password !" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert1 show];
            
        }else{
            NSLog(@"Wrong PW");
            UIAlertView *alert2 = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Wrong Password" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert2 show];
            [_userPwOutlet setText:@""];
            
        }
    }else if ([userID isEqualToString:@""]){
        NSLog(@"Empty ID Bar");
        UIAlertView* alert3 = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Please Enter Your ID !" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert3 show];
    }
    
    else{
        NSLog(@"Wrong ID");
        UIAlertView* alert4 = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Wrong ID !" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert4 show];
        [_userIDOutlet setText:@""];
    }

}
@end
