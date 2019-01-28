//
//  main.m
//  iOSLocalizeOC
//
//  Created by Allen Gao on 2019/1/22.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ALLanguageManager.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        [ALLanguageManager setupCurrentLanguage];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
