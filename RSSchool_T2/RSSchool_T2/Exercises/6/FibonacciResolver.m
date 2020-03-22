#import "FibonacciResolver.h"

@implementation FibonacciResolver

- (NSArray *)productFibonacciSequenceFor:(NSNumber*)number {
    if (!number) {
        return nil;
    }

    int numberInt = number.intValue;
    int a = 1;
    int b = 1;
    int expectedValue;

    if (numberInt <= 0) {
        return @[@(a),@(b),@0];
    }

    while (a * b < numberInt) {
        int c = a + b; a = b; b = c;
    }

    if (a * b == numberInt) {
        expectedValue = 1;
    } else {
        expectedValue = 0;
    }
    return @[@(a), @(b), @(expectedValue)];
}

@end
