#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSArray+FHEscape.h"
#import "NSDictionary+FHEscape.h"
#import "NSSet+FHEscape.h"
#import "NSString+FHEscape.h"

FOUNDATION_EXPORT double FHEscapeVersionNumber;
FOUNDATION_EXPORT const unsigned char FHEscapeVersionString[];

