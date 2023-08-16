#import "StripeTerminalxPlugin.h"
#if __has_include(<stripe_terminal/stripe_terminal-Swift.h>)
#import <stripe_terminalx/stripe_terminalx-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "stripe_terminalx-Swift.h"
#endif

@implementation StripeTerminalxPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftStripeTerminalxPlugin registerWithRegistrar:registrar];
}
@end
