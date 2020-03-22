#import "AbbreviationMaker.h"

@implementation AbbreviationMaker
// Complete the abbreviation function below.
- (NSString *) abbreviationFromA:(NSString *)a toB:(NSString *)b {
    
    NSString* capA = [a uppercaseString];
    NSMutableString* capitalisedStringA = [NSMutableString stringWithString:capA];
    NSMutableString* bStr = [NSMutableString stringWithString:b];
    NSMutableString* result = [NSMutableString new];
    
    int co = 0;
    
    for (int i = 0; i < capitalisedStringA.length; i++) {
        char a = [capitalisedStringA characterAtIndex:i];
        char b = [bStr characterAtIndex:co];
        
        if (a == b) {
            NSString *c = [NSString stringWithFormat:@"%c", a];
            [result appendString:c];
            if (co < bStr.length - 1) {
                co += 1;
            } else {
                break;
            }
        }
    }
    
    
    if ([b isEqualToString:result]) {
        return @"YES";
    } else {
        return @"NO";
    }
}
@end
