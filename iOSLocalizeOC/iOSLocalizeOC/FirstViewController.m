//
//  FirstViewController.m
//  iOSLocalizeOC
//
//  Created by Allen Gao on 2019/1/23.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import "FirstViewController.h"
#import "ALLanguageManager.h"
#import "AppDelegate.h"

@implementation FirstViewController

- (IBAction)chineseButtonAction:(id)sender {
    [self changeLanguage:0];
}

- (IBAction)englishButtonAction:(id)sender {
     [self changeLanguage:1];
}

- (void)changeLanguage:(NSInteger)index {
    [ALLanguageManager saveLanguageByIndex:1];
    [self reloadRootViewController];
}

- (void)reloadRootViewController {
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSString *storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    delegate.window.rootViewController = [storyboard instantiateInitialViewController];
}

@end
