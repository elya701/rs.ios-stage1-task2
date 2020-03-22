#import "Blocks.h"

//Extension
@interface Blocks ()

@property (nonatomic, copy) NSArray *arr;
@property (nonatomic, copy) Class class;

@end


@implementation Blocks

- (BlockA)blockA {
    return Block_copy(^void(NSArray *array) {
        _arr = array;
    });
}

- (void)setBlockA:(BlockA)blockA { }

- (BlockB)blockB {
    return Block_copy(^void(Class class) {
        NSMutableArray *mainArray = [_arr mutableCopy];
        _class = class;

        [mainArray removeObjectIdenticalTo:[NSNull null]];
        [mainArray filterUsingPredicate:[NSPredicate predicateWithFormat: @"self isKindOfClass: %@", class]];

        if ([[mainArray objectAtIndex:0] isKindOfClass:[NSString class]]) {
            NSMutableString *result = [NSMutableString new];
            for (NSString* tmpStr in mainArray) {
                [result appendString:tmpStr];
            }
            _blockC(result);
        } else if ([[mainArray objectAtIndex:0] isKindOfClass:[NSNumber class]]) {
            int res = 0;
            for (int i = 0; i < mainArray.count; i++) {
                int num = [[mainArray objectAtIndex:i] intValue];
                res += num;
            }
            _blockC(@(res));
        } else if ([[mainArray objectAtIndex:0] isKindOfClass:[NSDate class]]) {

            NSDateFormatter *df = [[NSDateFormatter alloc] init];
            [df setDateFormat:@"dd.MM.yyyy"];
            NSArray *sortedArray = [mainArray sortedArrayUsingComparator:^NSComparisonResult(NSDate *obj1, NSDate *obj2) {
                return [obj1 compare: obj2];
            }];
            _blockC([df stringFromDate:sortedArray.lastObject]);
        }
    });
}

- (void)setBlockB:(BlockB)blockB { }

@end
