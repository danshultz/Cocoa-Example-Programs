//
//  Lottery.h
//  lottery
//
//  Created by Dan Shultz on 4/21/12.
//  Copyright (c) 2012 Within3. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject {
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}
- (id)initWithEntryDate:(NSDate *)date;
- (void)setEntryDate:(NSDate *)date;
- (NSDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;

@end
