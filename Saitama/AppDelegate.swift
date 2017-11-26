//
//  AppDelegate.swift
//  Saitama
//
//  Created by Roberto Abreu on 11/25/17.
//  Copyright © 2017 homeappzz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        Theme.setupDefaultApperance()
        return true
    }

}
