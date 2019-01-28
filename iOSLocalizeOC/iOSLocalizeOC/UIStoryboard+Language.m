//
//  UIStoryboard+Language.m
//  iOSLocalizeOC
//
//  Created by Allen Gao on 2019/1/28.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import "UIStoryboard+Language.h"
#import "NSBundle+Language.h"
#import "Language.h"

@implementation UIStoryboard (Language)

+ (UIStoryboard *)localized_storyboardWithName:(NSString *)name {
    NSBundle *bundle = objc_getAssociatedObject([NSBundle mainBundle], &kBundleKey);
    return [self storyboardWithName:name bundle:bundle];
}

@end
