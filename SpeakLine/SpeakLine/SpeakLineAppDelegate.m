//
//  SpeakLineAppDelegate.m
//  SpeakLine
//
//  Created by Dan Shultz on 4/23/12.
//

#import "SpeakLineAppDelegate.h"

@implementation SpeakLineAppDelegate

@synthesize textField = _textField;
@synthesize window = _window;

- (id)init
{
  self = [super init];
  if(self) {
    _synth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
  }
  return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  // Insert code here to initialize your application
}

- (IBAction)stopIt:(id)sender 
{
  [_synth stopSpeaking];
}

- (IBAction)sayIt:(id)sender 
{
  NSString *string = [_textField stringValue];
  if([string length] == 0) 
  {
    return;
  }
  [_synth startSpeakingString: string];
}
@end
