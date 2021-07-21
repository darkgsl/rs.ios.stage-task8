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

  [[UINavigationBar appearance] setTitleTextAttributes: @{
  NSFontAttributeName: [UIFont fontWithName:@"Montserrat-Medium" size:17.0f]
  }];
  [UIView appearance].tintColor = [UIColor colorNamed:@"LightGreenSea"];

  UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

  UINavigationController *rootVC = [[UINavigationController alloc] initWithRootViewController:[[RootViewController alloc] initWithNibName:@"ViewController" bundle:nil]];
  
  [window setRootViewController:rootVC];
  
  self.window = window;
  [self.window makeKeyAndVisible];
  return YES;
}





@end
