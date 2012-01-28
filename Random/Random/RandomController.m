//
//  RandomController.m
//  Random
//
//  Created by Dan Shultz on 1/28/12.
//  Copyright (c) 2012 Within3. All rights reserved.
//

#import "RandomController.h"

@implementation RandomController

- (IBAction)generate:(id)sender
{
    int generated = (int)(random() % 100) + 1;
    NSLog(@"generated = %d", generated);
    [textField setIntValue:generated];
}

- (IBAction)seed:(id)sender
{
    srandom((unsigned)time(NULL));
    [textField setStringValue:@"Generated Seed"];
}

@end
