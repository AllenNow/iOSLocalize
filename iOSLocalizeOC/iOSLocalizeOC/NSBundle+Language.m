//
//  NSBundle+Language.m
//  iOSLocalizeOC
//
//  Created by Allen Gao on 2019/1/25.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import "NSBundle+Language.h"
#import "ALLanguageManager.h"
#import <UIKit/UIKit.h>
#import "Language.h"

@interface NibEx : UINib
+ (UINib *)nibWithNibName:(NSString *)name bundle:(NSBundle *)bundleOrNil;
@end

@implementation NibEx

+ (UINib *)nibWithNibName:(NSString *)name bundle:(NSBundle *)bundleOrNil {
    NSBundle *bundle = objc_getAssociatedObject(self, &kBundleKey);
    return [super nibWithNibName:name bundle:bundle];
}

@end

@interface BundleEx : NSBundle

@end

@implementation BundleEx

- (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName {
    NSBundle *bundle = objc_getAssociatedObject(self, &kBundleKey);
    if (bundle) {
        return [bundle localizedStringForKey:key value:value table:tableName];
    } else {
        return [super localizedStringForKey:key value:value table:tableName];
    }
}

- (NSArray *)loadNibNamed:(NSString *)name owner:(id)owner options:(NSDictionary<UINibOptionsKey,id> *)options{
    NSBundle *bundle = objc_getAssociatedObject(self, &kBundleKey);
    if (bundle) {
        return [bundle loadNibNamed:name owner:owner options:options];
    } else {
        return [super loadNibNamed:name owner:owner options:options];
    }
}

@end

@implementation NSBundle (Language)

+ (void)setLanguage:(NSString *)language
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        object_setClass([NSBundle mainBundle], [BundleEx class]);
    });
    
    
    if ([ALLanguageManager isCurrentLanguageRTL]) {
        if ([[[UIView alloc] init] respondsToSelector:@selector(setSemanticContentAttribute:)]) {
            [[UIView appearance] setSemanticContentAttribute:UISemanticContentAttributeForceRightToLeft];
            [[UITableView appearance] setSemanticContentAttribute:UISemanticContentAttributeForceRightToLeft];
        }
    }else {
        if ([[[UIView alloc] init] respondsToSelector:@selector(setSemanticContentAttribute:)]) {
            [[UIView appearance] setSemanticContentAttribute:UISemanticContentAttributeForceLeftToRight];
            [[UITableView appearance] setSemanticContentAttribute:UISemanticContentAttributeForceLeftToRight];
        }
    }
    [[NSUserDefaults standardUserDefaults] setBool:[ALLanguageManager isCurrentLanguageRTL] forKey:@"AppleTextDirection"];
    [[NSUserDefaults standardUserDefaults] setBool:[ALLanguageManager isCurrentLanguageRTL] forKey:@"NSForceRightToLeftWritingDirection"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    id value = language ? [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:language ofType:@"lproj"]] : nil;
    objc_setAssociatedObject([NSBundle mainBundle], &kBundleKey, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

