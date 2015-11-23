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
+ (void)roundTopCornersRadius:(CGFloat)radius borderColor:(UIColor *)color forView:(UIView *)view;
+ (void)roundBottomCornersRadius:(CGFloat)radius borderColor:(UIColor *)color forView:(UIView *)view;
@end
