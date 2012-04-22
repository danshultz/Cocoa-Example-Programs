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
    srandom((unsigned)time(NULL));
    
    for(int i = 0; i < 10; i++) 
    {
      NSTimeInterval days = 60 * 60 * 24 * i;
      NSDate *date = [now dateByAddingTimeInterval: days];
      
      LotteryEntry *entry = [[LotteryEntry alloc] initWithEntryDate:date];
      [entries addObject:entry];
      
      [entry release];
    }
    
    for(id entry in entries)
    {
      NSLog(@"Entry - %@", entry);
    }
    
    [entries release];
    [now release];
  }
    return 0;
}

