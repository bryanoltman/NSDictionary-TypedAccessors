
#import "NSDictionary+TypedAccessors.h"

@implementation NSDictionary (TypedAccessors)

- (NSString*)stringForKey:(NSString*)key
{
    NSObject* value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSString class]]) {
        return (NSString*)value;
    }
    
    if ([value isKindOfClass:[NSNumber class]]) {
        return [NSString stringWithFormat:@"%@", value];
    }
    
    return nil;
}

- (NSNumber*)numberForKey:(NSString*)key
{
    NSObject* value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]]) {
        return (NSNumber*)value;
    }
    
    if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
        [f setNumberStyle:NSNumberFormatterDecimalStyle];
        return [f numberFromString:(NSString*)value];
    }
    
    return nil;
}

- (NSArray*)arrayForKey:(NSString*)key
{
    NSObject* value = [self objectForKey:key];
    
    if (!value) {
        return nil;
    }
    
    if ([value isKindOfClass:[NSArray class]]) {
        return (NSArray*)value;
    }
    else {
        return [NSArray arrayWithObject:value];
    }
}

- (NSDictionary*)dictionaryForKey:(NSString*)key
{
    NSDictionary* subDictionary = [self objectForKey:key];
    if ([subDictionary isKindOfClass:[NSDictionary class]]) {
        return subDictionary;
    }

    return nil;
}

@end
