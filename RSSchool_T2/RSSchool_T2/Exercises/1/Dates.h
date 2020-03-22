#import <Foundation/Foundation.h>

@interface Dates : NSObject

- (NSString *) correctString:(NSString *)day month:(NSString *)month year:(NSString *)year maxDay:(int)maxDay correctMaxDay:(int)correctMaxDay;
- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year;


@end
