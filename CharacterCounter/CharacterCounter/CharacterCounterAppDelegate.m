//
//  CharacterCounterAppDelegate.m
//  CharacterCounter
//
//  Created by Dan Shultz on 4/23/12.
//

#import "CharacterCounterAppDelegate.h"

@implementation CharacterCounterAppDelegate

@synthesize _textField;
@synthesize _label;
@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  [_label setStringValue:@""];
}

- (IBAction)onCountClick:(id)sender 
{
  NSString *text = [_textField stringValue];
  [_label setStringValue:[NSString stringWithFormat:@"\"%@\" has %d characters", text, [text length]]];
}

@end
