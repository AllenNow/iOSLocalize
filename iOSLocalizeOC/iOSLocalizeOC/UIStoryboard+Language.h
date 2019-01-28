//
//  UIStoryboard+Language.h
//  iOSLocalizeOC
//
//  Created by Allen Gao on 2019/1/28.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (Language)
+ (UIStoryboard *)localized_storyboardWithName:(NSString *)name;
@end

