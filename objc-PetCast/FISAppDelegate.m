//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISDog.h"

@implementation FISAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISDog *dog = [[FISDog alloc] init];
    NSLog(@"%@", [dog makeASound]);
    NSLog(@"%@", [dog assaultTheMailman]);
    
    FISPet *dogAsPet = dog;
    NSLog(@"%@", [dogAsPet makeASound]);
    NSLog(@"%@", [dogAsPet eatSomething]);
    NSLog(@"%@", [((FISDog *)dogAsPet) assaultTheMailman]);
    
    FISPet *fakeDog = [[FISPet alloc] init];
    NSLog(@"%@", [((FISDog *)fakeDog) makeASound]);
//    NSLog(@"%@", [((FISDog *)fakeDog) assaultTheMailman]);
    
    return YES;
}

@end
