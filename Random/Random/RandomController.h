//
//  RandomController.h
//  Random
//
//  Created by Dan Shultz on 1/28/12.
//  Copyright (c) 2012 Within3. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RandomController : NSObject {
    IBOutlet NSTextField *textField;
}

- (IBAction)seed:(id)sender;
- (IBAction)generate:(id)sender;

@end
