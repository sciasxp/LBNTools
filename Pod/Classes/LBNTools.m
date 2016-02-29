//
//  LBNTools.m
//
//  Created by Luciano Bastos Nunes on 22/07/15.
//  Copyright © 2015 Tap4Mobile. All rights reserved.
//

#import "LBNTools.h"

#import "Reachability.h"

//#import "GTMNSString+HTML.h"

@implementation LBNTools

+ (NSString *)stringAsPlainTextFromString:(NSString *)htmlString {
    
    //NSData *data = [htmlString dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    //return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithData:[htmlString dataUsingEncoding:NSUTF8StringEncoding] options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: [NSNumber numberWithInt:NSUTF8StringEncoding]} documentAttributes:nil error:nil];
     return attributedString.string;
    
    //return [htmlString gtm_stringByUnescapingFromHTML];
}

+ (NSError *)errorWithMessage:(NSString *)message {
    
    NSMutableDictionary *errorDetail = [NSMutableDictionary dictionary];
    [errorDetail setValue:message  forKey:NSLocalizedDescriptionKey];
    NSError *localError = [NSError errorWithDomain:@"myDomain" code:100 userInfo:errorDetail];
    
    return localError;
}

+ (bool)isNetworkAvailable {
    
    Reachability *networkReachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus networkStatus = [networkReachability currentReachabilityStatus];
    
    if (networkStatus == NotReachable) {
        
        return NO;
        
    } else {
        
        return YES;
    }
}

+(void)roundCorners:(UIRectCorner)corners borderColor:(UIColor *)color radius:(CGFloat)radius forView:(UIView *)view
{
    CGRect bounds = view.bounds;
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:bounds
                                                   byRoundingCorners:corners
                                                         cornerRadii:CGSizeMake(radius, radius)];
    
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = bounds;
    maskLayer.path = maskPath.CGPath;
    
    view.layer.mask = maskLayer;
    
    CAShapeLayer*   frameLayer = [CAShapeLayer layer];
    frameLayer.frame = bounds;
    frameLayer.path = maskPath.CGPath;
    frameLayer.strokeColor = color.CGColor;
    frameLayer.fillColor = nil;
    
    [view.layer addSublayer:frameLayer];
}

+(void)roundTopCornersRadius:(CGFloat)radius borderColor:(UIColor *)color forView:(UIView *)view
{
    [self roundCorners:(UIRectCornerTopLeft|UIRectCornerTopRight) borderColor:color radius:radius forView:view];
}

+(void)roundBottomCornersRadius:(CGFloat)radius borderColor:(UIColor *)color forView:(UIView *)view
{
    [self roundCorners:(UIRectCornerBottomLeft|UIRectCornerBottomRight) borderColor:color radius:radius forView:view];
}

+ (bool)canUpdateForTime:(CGFloat)hour andStorePlace:(NSString *)storePlace
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSTimeInterval lastUpdateTimeInterval = [defaults floatForKey:storePlace];
    
    [defaults setFloat:[[NSDate date] timeIntervalSinceReferenceDate] forKey:storePlace];
    [defaults synchronize];
    
    NSDate *lastDate = [NSDate dateWithTimeIntervalSinceReferenceDate:lastUpdateTimeInterval];
    
    NSTimeInterval difference = [[NSDate date] timeIntervalSinceDate:lastDate];
    
    float hours = ((difference / 60) /60);
    
    if (hours >= hour) {
        
        return YES;
    }
    else
    {
        return FALSE;
    }
}

@end
