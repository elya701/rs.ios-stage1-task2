#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    NSMutableString* result = [NSMutableString new];
    int minutesInt = minutes.intValue;
    
    NSDictionary *dictionary = @{ @"1" : @"one", @"2" : @"two", @"3" : @"three",  @"4" : @"four", @"5" : @"five", @"6" : @"six", @"7" : @"seven", @"8" : @"eight", @"9" : @"nine", @"10" : @"ten", @"11" : @"eleven", @"12" : @"twelve", @"13" : @"thirteen", @"14" : @"fourteen", @"15" : @"fifteen", @"16" : @"sixteen", @"17" : @"seventeen", @"18" : @"eighteen", @"19" : @"nineteen", @"20" : @"twenty", @"21" : @"twenty one", @"22" : @"twenty two", @"23" : @"twenty three", @"24" : @"twenty four", @"25" : @"twenty five", @"26" : @"twenty six", @"27" : @"twenty seven", @"28" : @"twenty eight", @"29" : @"twenty nine" };
    
    if (minutesInt == 0) {
        [result appendString:dictionary[hours]];
        [result appendString:@" o' clock"];
        return result;
    }
    
    if (minutesInt == 15) {
        [result appendString:@"quarter past "];
        [result appendString:dictionary[hours]];
        return result;
    }
    
    if (minutesInt == 30) {
        [result appendString:@"half past "];
        [result appendString:dictionary[hours]];
        return result;
    }
    
    if (minutesInt == 45) {
        int hoursInt = [hours intValue] + 1;
        NSString* hoursNew = [NSString stringWithFormat:@"%d", hoursInt];
        [result appendString:@"quarter to "];
        [result appendString:dictionary[hoursNew]];
        return result;
    }
    
    if (minutesInt < 30) {
        int minutesInt = [minutes intValue];
        NSString* minutesNew = [NSString stringWithFormat:@"%d", minutesInt];
        [result appendString:dictionary[minutesNew]];
        [result appendString:@" minutes past "];
        [result appendString:dictionary[hours]];
        return result;
    }
    
    if (minutesInt > 30 && minutesInt < 60) {
        int minutesInt = 60 - [minutes intValue];
        NSString* minutesNew = [NSString stringWithFormat:@"%d", minutesInt];
        int hoursInt = [hours intValue] + 1;
        NSString* hoursNew = [NSString stringWithFormat:@"%d", hoursInt];
        [result appendString:dictionary[minutesNew]];
        [result appendString:@" minutes to "];
        [result appendString:dictionary[hoursNew]];
        return result;
    }
    
    return @"";
}
@end
