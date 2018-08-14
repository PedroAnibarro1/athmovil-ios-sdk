//
//  AppDelegate.m
//  athm-checkout-demo-objc
//
//  Created by Cristopher Bautista on 7/9/18.
//  Copyright © 2018 EVERTEC. All rights reserved.
//

#import "AppDelegate.h"
@import athmovil_checkout;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    BITHockeyManager.shared().configure(
//                                        withIdentifier: "061809744b1f429cb2039129d8dd90ba")
//    BITHockeyManager.shared().start()
//    BITHockeyManager.shared().authenticator.authenticateInstallation()
    
    NSString *apiToken = @"VI36CPRERY5SSJVKC6XKFK8X8RMHZ5BKKXHORQP0";
    NSString *callbackURL = @"athm-checkout";
    
    [AMCheckout.shared configureFor:AMEnvironmentProduction with:apiToken and:callbackURL];
    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    NSError *error;
    [AMCheckout.shared handleIncomingURLWithUrl:url error:&error];
    NSLog(@"%@",error.description);
    return true;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
