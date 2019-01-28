//
//  LanguageSettingController.m
//  iOSLocalizeOC
//
//  Created by Allen Gao on 2019/1/25.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import "LanguageSettingController.h"
#import "ALLanguageManager.h"
#import "AppDelegate.h"
#import "UIStoryboard+Language.h"

@interface LanguageSettingController ()

@end

@implementation LanguageSettingController

- (void)viewDidLoad {
    [super viewDidLoad];
    [UIImage imageNamed:@"haha"];
}

- (IBAction)chineseButtonAction:(id)sender {
    [self changeLanguage:0];
}

- (IBAction)englishButtonAction:(id)sender {
    [self changeLanguage:1];
}

- (IBAction)arButtonAction:(id)sender {
    [self changeLanguage:2];
}

- (void)changeLanguage:(NSInteger)index {
    [ALLanguageManager saveLanguageByIndex:index];
    [self reloadRootViewController];
}

- (void)reloadRootViewController {
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSString *storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard localized_storyboardWithName:storyboardName];
    delegate.window.rootViewController = [storyboard instantiateInitialViewController];
}


@end
