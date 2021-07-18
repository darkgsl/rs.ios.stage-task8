//
//  AppDelegate.m
//  RSSchool_T8
//
//  Created by Sergey Gomolko on 7/15/21.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
//  if (@available(iOS 13.0, *)) {
//    [UINavigationBar appearance].backIndicatorImage = [UIImage systemImageNamed:@"arrow.left.circle.fill"];
//  } else {
//    // Fallback on earlier versions
//  }
//  if (@available(iOS 13.0, *)) {
//    [UINavigationBar appearance].backIndicatorTransitionMaskImage = [UIImage systemImageNamed:@"arrow.left.circle.fill"];
//  } else {
//    // Fallback on earlier versions
//  }
  
  [[UINavigationBar appearance] setTitleTextAttributes: @{
  NSFontAttributeName: [UIFont fontWithName:@"Montserrat-Medium" size:17.0f]
  }];
  
  //UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: UIFont(name: "Avenir", size: 20)!]
 // [UINavigationBar appearance] settt
  [UIView appearance].tintColor = [UIColor colorNamed:@"LightGreenSea"];
  //[UIView appearance]. s .ti = [UIColor colorNamed:@"LightGreenSea"];
  //self.planetButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18.0];
  
  //UIColor  .LightGreenSea;

  
  // Override point for customization after application launch.
  UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  
  //RootViewController *rootVC = [[RootViewController alloc] initWithNibName:@"ViewController" bundle:nil];
 // RootViewController *rootVC = [RootViewController new];
  UINavigationController *rootVC = [[UINavigationController alloc] initWithRootViewController:[[RootViewController alloc] initWithNibName:@"ViewController" bundle:nil]];
  
  
  [window setRootViewController:rootVC];
  
  self.window = window;
  [self.window makeKeyAndVisible];
  return YES;
}





@end
