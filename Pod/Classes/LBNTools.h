//
//  LBNTools.h
//
//  Created by Luciano Bastos Nunes on 22/07/15.
//  Copyright © 2015 Tap4Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LBNTools : NSObject

+ (NSString *)stringAsPlainTextFromString:(NSString *)htmlString;
+ (NSError *)errorWithMessage:(NSString *)message;
+ (bool)isNetworkAvailable;
+ (void)roundCorners:(UIRectCorner)corners borderColor:(UIColor *)color radius:(CGFloat)radius forView:(UIView *)view;
+ (void)roundTopCornersRadius:(CGFloat)radius borderColor:(UIColor *)color forView:(UIView *)view;
+ (void)roundBottomCornersRadius:(CGFloat)radius borderColor:(UIColor *)color forView:(UIView *)view;
+ (bool)canUpdateForTime:(CGFloat)hour andStorePlace:(NSString *)storePlace;
+ (bool)canUpdateTime:(CGFloat)hour andStorePlace:(NSString *)storePlace;
+ (void)updateTimeForStorePlace:(NSString *)storePlace;
+ (NSMutableDictionary *)changeKey:(NSString *)key1 toKey:(NSString *)key2 onDictionary:(NSDictionary *)dic;

@end
