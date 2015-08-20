//
//  HomePageViewController.h
//  myInstagramApp
//
//  Created by Cem Onel on 19/08/15.
//  Copyright (c) 2015 Cem Onel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginScreenViewController.h"

@interface HomePageViewController : UIViewController

@property(nonatomic, strong) NSString *userIDText;
@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;


- (void)logOutBarButton:(UIBarButtonItem *)button;

@end
