//
//  LocalizedImageView.m
//  iOSLocalizeOC
//
//  Created by Allen Gao on 2019/1/28.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import "LocalizedImageView.h"
#import "NSBundle+Language.h"
#import "Language.h"

@implementation LocalizedImageView

- (void)setImageName:(NSString *)imageName {
    NSBundle *bundle = objc_getAssociatedObject([NSBundle mainBundle], &kBundleKey);
    if (!bundle){
        bundle = [NSBundle mainBundle];
    }
    self.image = [UIImage imageWithContentsOfFile:[bundle pathForResource:imageName ofType:nil]];
    
}

@end
