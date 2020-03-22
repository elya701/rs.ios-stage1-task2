#import "NSString+Transform.h"

@implementation NSString (Transform)

-(NSString*)transform {
    NSMutableString* result5 = [NSMutableString new];
    NSString* newString = @"";
    
    NSMutableString* zeroElement = [NSMutableString new];
    NSMutableString* oneElement = [NSMutableString new];
    NSMutableString* twoElement = [NSMutableString new];
    NSMutableString* threeElement = [NSMutableString new];
    NSMutableString* forthElement = [NSMutableString new];
    NSMutableString* fiveElement = [NSMutableString new];
    NSMutableString* sixElement = [NSMutableString new];
    NSMutableString* sevenElement = [NSMutableString new];
    NSMutableString* eightElement = [NSMutableString new];
    NSMutableString* nineElement = [NSMutableString new];
    NSMutableString* tenElement = [NSMutableString new];
    NSMutableString* elevenElement = [NSMutableString new];
    
    [zeroElement appendString:@""];
    [oneElement appendString:@""];
    [twoElement appendString:@""];
    [threeElement appendString:@""];
    [forthElement appendString:@""];
    [fiveElement appendString:@""];
    [sixElement appendString:@""];
    [sevenElement appendString:@""];
    [eightElement appendString:@""];
    [nineElement appendString:@""];
    [tenElement appendString:@""];
    [elevenElement appendString:@""];
    
    NSString* originalString = [[NSMutableString alloc] initWithString:self];
    NSMutableArray *words = [originalString componentsSeparatedByString:@" "];
    NSMutableString* result = [NSMutableString new];
    NSMutableString* result2 = [NSMutableString new];
    
    for (NSString* tempString in words) {
        if (tempString.length != 0) {
            [result appendString:tempString];
            [result appendString:@" "];
        }
    }
    
    if (result.length == 0) {
        return result;
    }
    result = [result substringWithRange:NSMakeRange(0, result.length - 1)];
    NSMutableArray *arrayOfGoodWords = [result componentsSeparatedByString:@" "];
    
    int counter = 0;
    
    if ([self isPangram:originalString]) {
        for (NSString* tempString in arrayOfGoodWords) {
            NSMutableString* b = [NSMutableString new];
            for(int i = 0; i < tempString.length; i++) {
                NSString* a = [tempString substringWithRange:NSMakeRange(i, 1)];
                
                if ([a isEqualToString:@"A"] || [a isEqualToString:@"E"] || [a isEqualToString:@"I"] || [a isEqualToString:@"O"] || [a isEqualToString:@"U"] || [a isEqualToString:@"Y"]) {
                    counter += 1;
                } else {
                    if ([a isEqualToString:@"a"] || [a isEqualToString:@"e"] || [a isEqualToString:@"i"] || [a isEqualToString:@"o"] || [a isEqualToString:@"u"] || [a isEqualToString:@"y"]) {
                        counter += 1;
                        a = [a uppercaseString];
                    }
                }
                [b appendString:a];
            }
            NSString* counterString = @(counter).stringValue;
            switch (counter) {
                case 0:
                    [zeroElement appendString:counterString];
                    [zeroElement appendString:b];
                    [zeroElement appendString:@" "];
                    break;
                case 1:
                    [oneElement appendString:counterString];
                    [oneElement appendString:b];
                    [oneElement appendString:@" "];
                    break;
                case 2:
                    [twoElement appendString:counterString];
                    [twoElement appendString:b];
                    [twoElement appendString:@" "];
                    break;
                case 3:
                    [threeElement appendString:counterString];
                    [threeElement appendString:b];
                    [threeElement appendString:@" "];
                    break;
                case 4:
                    [forthElement appendString:counterString];
                    [forthElement appendString:b];
                    [forthElement appendString:@" "];
                    break;
                case 5:
                    [fiveElement appendString:counterString];
                    [fiveElement appendString:b];
                    [fiveElement appendString:@" "];
                    break;
                case 6:
                    [sixElement appendString:counterString];
                    [sixElement appendString:b];
                    [sixElement appendString:@" "];
                    break;
                case 7:
                    [sevenElement appendString:counterString];
                    [sevenElement appendString:b];
                    [sevenElement appendString:@" "];
                    break;
                case 8:
                    [eightElement appendString:counterString];
                    [eightElement appendString:b];
                    [eightElement appendString:@" "];
                    break;
                case 9:
                    [nineElement appendString:counterString];
                    [nineElement appendString:b];
                    [nineElement appendString:@" "];
                    break;
                case 10:
                    [tenElement appendString:counterString];
                    [tenElement appendString:b];
                    [tenElement appendString:@" "];
                    break;
                case 11:
                    [elevenElement appendString:counterString];
                    [elevenElement appendString:b];
                    [elevenElement appendString:@" "];
                    break;
                default:
                    break;
            }
            counter = 0;
        }
    } else {
        for (NSString* tempString in arrayOfGoodWords) {
            NSMutableString* b = [NSMutableString new];
            for(int i = 0; i < tempString.length; i++) {
                NSString* a = [tempString substringWithRange:NSMakeRange(i, 1)];
                
                if ([a isEqualToString:@"B"] || [a isEqualToString:@"Q"] || [a isEqualToString:@"C"] || [a isEqualToString:@"D"] || [a isEqualToString:@"F"] || [a isEqualToString:@"G"] || [a isEqualToString:@"H"] || [a isEqualToString:@"J"] || [a isEqualToString:@"K"] || [a isEqualToString:@"L"] || [a isEqualToString:@"M"] || [a isEqualToString:@"N"] || [a isEqualToString:@"P"] || [a isEqualToString:@"R"] || [a isEqualToString:@"S"] || [a isEqualToString:@"T"] || [a isEqualToString:@"V"] || [a isEqualToString:@"W"] || [a isEqualToString:@"X"] || [a isEqualToString:@"Z"] ) {
                    counter += 1;
                } else if ([a isEqualToString:@"b"] || [a isEqualToString:@"q"] || [a isEqualToString:@"c"] || [a isEqualToString:@"d"] || [a isEqualToString:@"f"] || [a isEqualToString:@"g"] || [a isEqualToString:@"h"] || [a isEqualToString:@"j"] || [a isEqualToString:@"k"] || [a isEqualToString:@"l"] || [a isEqualToString:@"m"] || [a isEqualToString:@"n"] || [a isEqualToString:@"p"] || [a isEqualToString:@"r"] || [a isEqualToString:@"s"] || [a isEqualToString:@"t"] || [a isEqualToString:@"v"] || [a isEqualToString:@"w"] || [a isEqualToString:@"x"] || [a isEqualToString:@"z"] ) {
                    counter += 1;
                    a = [a uppercaseString];
                }
                [b appendString:a];
            }
            NSString* counterString = @(counter).stringValue;
            switch (counter) {
                case 0:
                    [zeroElement appendString:counterString];
                    [zeroElement appendString:b];
                    [zeroElement appendString:@" "];
                    break;
                case 1:
                    [oneElement appendString:counterString];
                    [oneElement appendString:b];
                    [oneElement appendString:@" "];
                    break;
                case 2:
                    [twoElement appendString:counterString];
                    [twoElement appendString:b];
                    [twoElement appendString:@" "];
                    break;
                case 3:
                    [threeElement appendString:counterString];
                    [threeElement appendString:b];
                    [threeElement appendString:@" "];
                    break;
                case 4:
                    [forthElement appendString:counterString];
                    [forthElement appendString:b];
                    [forthElement appendString:@" "];
                    break;
                case 5:
                    [fiveElement appendString:counterString];
                    [fiveElement appendString:b];
                    [fiveElement appendString:@" "];
                    break;
                case 6:
                    [sixElement appendString:counterString];
                    [sixElement appendString:b];
                    [sixElement appendString:@" "];
                    break;
                case 7:
                    [sevenElement appendString:counterString];
                    [sevenElement appendString:b];
                    [sevenElement appendString:@" "];
                    break;
                case 8:
                    [eightElement appendString:counterString];
                    [eightElement appendString:b];
                    [eightElement appendString:@" "];
                    break;
                case 9:
                    [nineElement appendString:counterString];
                    [nineElement appendString:b];
                    [nineElement appendString:@" "];
                    break;
                case 10:
                    [tenElement appendString:counterString];
                    [tenElement appendString:b];
                    [tenElement appendString:@" "];
                    break;
                case 11:
                    [elevenElement appendString:counterString];
                    [elevenElement appendString:b];
                    [elevenElement appendString:@" "];
                    break;
                default:
                    break;
            }
            counter = 0;
        }
    }
    
    [result5 appendString:zeroElement];
    [result5 appendString:oneElement];
    [result5 appendString:twoElement];
    [result5 appendString:threeElement];
    [result5 appendString:forthElement];
    [result5 appendString:fiveElement];
    [result5 appendString:sixElement];
    [result5 appendString:sevenElement];
    [result5 appendString:eightElement];
    [result5 appendString:nineElement];
    [result5 appendString:tenElement];
    [result5 appendString:elevenElement];
    newString = [result5 substringToIndex:[result5 length]-1];
    
    NSLog(newString);
    
    return newString;
}

-(BOOL) isPangram:(NSString *)string {
    NSString* lowercasedString = [string lowercaseString];
    
    NSString *letters = @"abcdefghijklmnopqrstuvwxyz";
    NSCharacterSet *notLetters = [[NSCharacterSet characterSetWithCharactersInString:letters] invertedSet];
    NSString *newString = [[lowercasedString componentsSeparatedByCharactersInSet:notLetters] componentsJoinedByString:@""];
    
    NSMutableSet* array = [NSMutableSet new];
    
    for (int i = 0; i < [newString length]; i++) {
        [array addObject:[NSString stringWithFormat:@"%C", [newString characterAtIndex:i]]];
    }
    
    if (array.count < 26) {
        return false;
    } else {
        return true;
    }
}

@end

