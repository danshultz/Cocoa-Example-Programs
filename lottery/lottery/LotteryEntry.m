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
    [self setEntryDate: date];
    firstNumber = ((int)random() % 100) + 1;
    secondNumber = ((int)random() % 100) + 1;
  }
  return self;
}

- (void)dealloc
{
  NSLog(@"Deallocating %@", self);
  [entryDate release];
  [super dealloc];
}

- (void)setEntryDate:(NSDate *)date
{
  [date retain];
  [entryDate release];
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
  [df setDateStyle:NSDateFormatterFullStyle];
  [df autorelease];
  return [NSString stringWithFormat:@"%@ = %d and %d",
                      [df stringFromDate:entryDate],
                      firstNumber, secondNumber];
}

@end
