//
//  Lottery.m
//  lottery
//
//  Created by Dan Shultz on 4/21/12.
//  Copyright (c) 2012 Within3. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

- (id) init
{
  return [self initWithEntryDate:[NSDate date]];
}

- (id)initWithEntryDate:(NSDate *)date
{
  NSAssert(date != nil, @"date must not be nil");
  self = [super init];
  if(self) 
  {
    entryDate = date;
    firstNumber = ((int)random() % 100) + 1;
    secondNumber = ((int)random() % 100) + 1;
  }
  return self;
}

- (void)setEntryDate:(NSDate *)date
{
  entryDate = date;
}

- (NSDate *)entryDate
{
  return entryDate;
}

- (int)firstNumber
{
  return firstNumber;
}

- (int)secondNumber
{
  return secondNumber;
}

- (NSString *)description
{
  NSDateFormatter *df = [[NSDateFormatter alloc]init];
  [df setTimeStyle:NSDateFormatterNoStyle];
  [df setDateStyle:NSDateFormatterMediumStyle];
  NSString *result = [[NSString alloc] initWithFormat:@"%@ = %d and %d",
                      [df stringFromDate:entryDate],
                      firstNumber, secondNumber];
  return result;
}

@end
