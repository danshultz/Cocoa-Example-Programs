//
//  main.m
//  lottery
//
//  Created by Dan Shultz on 4/21/12.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main (int argc, const char * argv[])
{

  @autoreleasepool {
    
    NSMutableArray *entries = [[NSMutableArray alloc] init];
    NSDate *now = [[NSDate alloc] init];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *weekComponents = [[NSDateComponents alloc] init];
    
    srandom((unsigned)time(NULL));
    
    for(int i = 0; i < 10; i++) 
    {
      [weekComponents setWeek:i];
      NSDate *date = [calendar dateByAddingComponents:weekComponents toDate:now options:0];
      LotteryEntry *entry = [[LotteryEntry alloc] initWithEntryDate:date];
      [entries addObject:entry];
      NSLog(@"Entry - %@", entry);
    }
  }
    return 0;
}

