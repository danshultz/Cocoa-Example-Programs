//
//  CharacterCounterAppDelegate.h
//  CharacterCounter
//
//  Created by Dan Shultz on 4/23/12.
//

#import <Cocoa/Cocoa.h>

@interface CharacterCounterAppDelegate : NSObject <NSApplicationDelegate>
@property (weak) IBOutlet NSTextField *_textField;
@property (weak) IBOutlet NSTextField *_label;

@property (assign) IBOutlet NSWindow *window;
- (IBAction)onCountClick:(id)sender;

@end
