//
//  NSSet+FHEscape.m
//  chuanyin-louguan
//
//  Created by 戴小斌 on 2021/7/8.
//

#import "NSSet+FHEscape.h"

@implementation NSSet (FHEscape)

#ifdef DEBUG
- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level {
    NSMutableString *tempString = [NSMutableString string];
    NSMutableString *tabString = [[NSMutableString alloc] initWithString:@"\t"];
    for (NSUInteger i = 0; i < level; i++) {
        [tabString appendString:@"\t"];
    }
    if (level == 0) {
        [tempString appendString:@""];
    }
    [tempString appendString:@"(\r"];
    
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
        [tempString appendString:tabString];
        if ([obj isKindOfClass:[NSString class]]
            || [obj isKindOfClass:[NSArray class]]
            || [obj isKindOfClass:[NSDictionary class]]
            || [obj isKindOfClass:[NSSet class]]
            || [obj isKindOfClass:[NSData class]]) {
            [tempString appendFormat:@"%@", [obj descriptionWithLocale:locale indent:(level + 1)]];
        } else {
            [tempString appendFormat:@"%@", obj];
        }
        [tempString appendString:@",\r"];
    }];
    
    [tempString appendFormat:@"%@)",[tabString substringToIndex:(tabString.length - 1)]];
    return tempString.copy;
}
#endif

@end
