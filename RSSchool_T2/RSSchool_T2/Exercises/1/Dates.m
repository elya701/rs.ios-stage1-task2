#import "Dates.h"

@implementation Dates


- (NSString *) correctString:(NSString *)day month:(NSString *)month year:(NSString *)year maxDay:(int)maxDay correctMaxDay:(int)correctMaxDay {
    
    if (maxDay > correctMaxDay || maxDay < 1) {
        return @"Такого дня не существует";
    }
    
    NSMutableString* stringDate = [NSMutableString new];
    
    [stringDate appendString:month];
    [stringDate appendString:@"/"];
    [stringDate appendString:day];
    [stringDate appendString:@"/"];
    [stringDate appendString:year];
    
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"MM/dd/yyyy"];
    NSDate *theDate = [dateFormatter dateFromString:stringDate];
    NSDateFormatter *printFormatter = [NSDateFormatter new];
    [printFormatter setDateFormat:@"d MMMM, EEEE"];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru"];
    [printFormatter setLocale:locale];
    return [printFormatter stringFromDate:theDate];
}


- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    NSString* result;
    if (day == nil || month == nil || year == nil) {
        return nil;
    }
    
    int ourDayInt = (day) ? [day intValue] : -5;
    int ourMonthInt = (month) ? [month intValue] : -5;
    int ourYearInt = (year) ? [year intValue] : -5;
    
    if (ourDayInt == -5 || ourMonthInt == -5 || ourYearInt == -5) {
        return @"Такого дня не существует";
    }
    
    switch (ourMonthInt) {
        case 1:
            result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:31];
            break;
        case 2:
            if (month.intValue == 2) {
                if (year.intValue % 4 == 0) {
                    result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:29];
                } else {
                    result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:28];
                }
            }
            break;
        case 3:
            result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:31];
            break;
        case 4:
            result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:30];
            break;
        case 5:
            result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:31];
            break;
        case 6:
            result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:30];
            break;
        case 7:
            result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:31];
            break;
        case 8:
            result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:31];
            break;
        case 9:
            result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:30];
            break;
        case 10:
            result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:31];
            break;
        case 11:
            result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:30];
            break;
        case 12:
            result = [self correctString:day month:month year:year maxDay:ourDayInt correctMaxDay:31];
            break;
        default:
            result = @"Такого дня не существует";
            break;
    }
    
    return result;
}

@end
