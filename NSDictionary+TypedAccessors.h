
#import <Foundation/Foundation.h>

@interface NSDictionary (TypedAccessors)
- (NSString*)stringForKey:(NSString*)key;
- (NSNumber*)numberForKey:(NSString*)key;
- (NSArray*)arrayForKey:(NSString*)key;
- (NSDictionary*)dictionaryForKey:(NSString*)key;
@end
