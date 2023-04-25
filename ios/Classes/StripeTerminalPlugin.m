#import "FlutterflowStripeTerminalPlugin.h"
#if __has_include(<flutterflow_stripe_terminal/flutterflow_stripe_terminal-Swift.h>)
#import <flutterflow_stripe_terminal/flutterflow_stripe_terminal-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutterflow_stripe_terminal-Swift.h"
#endif

@implementation FlutterflowStripeTerminalPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterflowStripeTerminalPlugin registerWithRegistrar:registrar];
}
@end
