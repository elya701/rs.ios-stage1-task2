#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    NSMutableString* result = [NSMutableString new];
    int minutesInt = minutes.intValue;
    NSNumberFormatter *f = [NSNumberFormatter new];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *hoursNumber = [f numberFromString:hours];
    NSNumber *minutesNumber = [f numberFromString:minutes];
    
    NSNumberFormatter* numberFormatter = [NSNumberFormatter new];
    [numberFormatter setNumberStyle:NSNumberFormatterSpellOutStyle];
    NSString* hoursConverted = [numberFormatter stringFromNumber:hoursNumber];
    NSString* minutesConverted = [numberFormatter stringFromNumber:minutesNumber];
    int ourMinutes = 60 - minutesInt;
    NSNumber* minutesConvertedAf = [NSNumber numberWithInt:ourMinutes];
    NSString* minutesConvertedAfter = [numberFormatter stringFromNumber:minutesConvertedAf];
    
    int ourHours = hours.intValue + 1;
    NSNumber* hoursConvertedAf = [NSNumber numberWithInt:ourHours];
    NSString* hoursConvertedAfter = [numberFormatter stringFromNumber:hoursConvertedAf];
    
    if (minutesInt == 0) {
        [result appendString:hoursConverted];
        [result appendString:@" o' clock"];
        NSString* res = [result stringByReplacingOccurrencesOfString:@"-" withString:@" "];
        return res;
    }
    
    if (minutesInt == 15) {
        [result appendString:@"quarter past "];
        [result appendString:hoursConverted];
        NSString* res = [result stringByReplacingOccurrencesOfString:@"-" withString:@" "];
        return res;
    }
    
    if (minutesInt == 30) {
        [result appendString:@"half past "];
        [result appendString:hoursConverted];
        NSString* res = [result stringByReplacingOccurrencesOfString:@"-" withString:@" "];
        return res;
    }
    
    if (minutesInt == 45) {
        [result appendString:@"quarter to "];
        [result appendString:hoursConvertedAfter];
        NSString* res = [result stringByReplacingOccurrencesOfString:@"-" withString:@" "];
        return res;
    }
    
    if (minutesInt < 30) {
        [result appendString:minutesConverted];
        [result appendString:@" minutes past "];
        [result appendString:hoursConverted];
        NSString* res = [result stringByReplacingOccurrencesOfString:@"-" withString:@" "];
        return res;
    }
    
    if (minutesInt > 30 && minutesInt < 60) {
        [result appendString:minutesConvertedAfter];
        [result appendString:@" minutes to "];
        [result appendString:hoursConvertedAfter];
        NSString* res = [result stringByReplacingOccurrencesOfString:@"-" withString:@" "];
        return res;
    }
    
    return @"";
}
@end
