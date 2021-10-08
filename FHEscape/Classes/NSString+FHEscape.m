//
//  NSString+FHEscape.m
//  chuanyin-louguan
//
//  Created by 戴小斌 on 2021/7/8.
//

#import "NSString+FHEscape.h"

@implementation NSString (FHEscape)

#ifdef DEBUG
- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level {
    return [NSString stringWithFormat:@"\"%@\"", self];
}
#endif

@end
