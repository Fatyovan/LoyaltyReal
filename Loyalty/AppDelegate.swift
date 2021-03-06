//
//  AppDelegate.swift
//  Loyalty
//
//  Created by KorvMac01 on 01.3.18.
//  Copyright © 2018 Ivan Jovanovik. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    public var navcontroller : UINavigationController!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UITabBarItem.appearance().titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -12)

        let colorNormal : UIColor = UIColor.lightText
        let colorSelected : UIColor = UIColor.white
        let titleFontAll : UIFont = UIFont(name: "Arial", size: 17.0)!
        
        let attributesNormal = [
            NSAttributedStringKey.foregroundColor : colorNormal,
            NSAttributedStringKey.font : titleFontAll,
        ]
        let attributesSelected = [
            NSAttributedStringKey.foregroundColor : colorSelected,
            NSAttributedStringKey.font : titleFontAll
        ]
        
        UITabBarItem.appearance().setTitleTextAttributes(attributesNormal, for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes(attributesSelected, for: .selected)
        
//        self.tabbarrootcontrolelr()
        
        return true
    }

    func tabbarrootcontrolelr() -> Void {
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
//        let centerViewController = mainStoryboard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        
        navcontroller = mainStoryboard.instantiateViewController(withIdentifier: "MainNavController") as! UINavigationController
        
//        let leftViewController = mainStoryboard.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
//
//        let leftSideNav = UINavigationController(rootViewController: leftViewController)
//        let centerNav = UINavigationController(rootViewController: centerViewController)
//
//        centerContainer = MMDrawerController(center: navcontroller, leftDrawerViewController: leftSideNav)


//        centerContainer!.openDrawerGestureModeMask = MMOpenDrawerGestureMode.panningCenterView;
//        centerContainer!.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.panningCenterView;
        
        window!.rootViewController = navcontroller
        window!.makeKeyAndVisible()
        
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

