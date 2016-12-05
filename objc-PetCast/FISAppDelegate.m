//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISPet.h"
#import "FISDog.h"

@implementation FISAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    FISDog *aDog = [[FISDog alloc] init];
    NSLog(@"%@", [aDog makeASound]);
    NSLog(@"%@", [aDog assaultTheMailman]);
    
    FISPet *makeWoof = (FISPet *)aDog;
    NSLog(@"%@",[makeWoof makeASound]);
    
    FISPet *newPet = [[FISPet alloc] init];
    FISDog *newWoof = (FISDog *)newPet;
    NSLog(@"%@", [newWoof makeASound]);
    
    FISPet *anotherPet = [[FISDog alloc] init];
    NSLog(@"%@", [((FISDog *)anotherPet) assaultTheMailman]);
    
    
    
    // Override point for customization after application launch.
    return YES;
}

@end
