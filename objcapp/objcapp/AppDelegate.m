//
//  AppDelegate.m
//  objcapp
//

#import "AppDelegate.h"
#import "cpplib/bridge/Contact.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Call C++ code through Scapix bridge:
	Contact* c = [Contact getInstance];
	NSArray<NSNumber*>* __unused a = [c int8Vec];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}


@end
