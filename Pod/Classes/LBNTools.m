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

@end
