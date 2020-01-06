//
//  AppDelegate.swift
//  YourStory
//
//  Created by Konstantin on 05.01.2020.
//  Copyright © 2020 Konstantin Meleshko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let mainView = AuthorizationViewController()
        let mainNavigationController = UINavigationController(rootViewController: mainView)
        mainNavigationController.viewControllers = [mainView]
        window?.rootViewController = mainNavigationController
        return true
    }
}

