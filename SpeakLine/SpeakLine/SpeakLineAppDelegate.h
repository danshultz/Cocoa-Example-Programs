//
//  SpeakLineAppDelegate.h
//  SpeakLine
//
//  Created by Dan Shultz on 4/23/12.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate : NSObject <NSApplicationDelegate>
{
  NSSpeechSynthesizer *_synth;
}

@property (weak) IBOutlet NSTextField *textField;
@property (assign) IBOutlet NSWindow *window;

- (IBAction)stopIt:(id)sender;
- (IBAction)sayIt:(id)sender;

@end
