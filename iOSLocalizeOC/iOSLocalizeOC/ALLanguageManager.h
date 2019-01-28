//
//  ALLangeManager.h
//  iOSLocalizeOC
//
//  Created by Allen Gao on 2019/1/25.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ELanguage)
{
    ELanguageEnglish,
    ELanguageGerman,
    ELanguageFrench,
    ELanguageArabic,
    ELanguageCount
};

@interface ALLanguageManager : NSObject

+ (void)setupCurrentLanguage;
+ (NSString *)currentLanguageCode;
+ (NSInteger)currentLanguageIndex;
+ (void)saveLanguageByIndex:(NSInteger)index;
+ (BOOL)isCurrentLanguageRTL;

@end

