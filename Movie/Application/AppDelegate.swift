//
//  AppDelegate.swift
//  Movie
//
//  Created by Кирилл Полосов on 15.09.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private(set) lazy var appWindow: UIWindow = {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        return window
    }()

    static var shared: AppDelegate {
        let delegate = UIApplication.shared.delegate

        guard let appDelegate = delegate as? AppDelegate else {
            fatalError("Can't cast \(type(of: delegate)) to AppDelegate")
        }

        return appDelegate
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        ApplicationController.initialSetup()
        appWindow.makeKeyAndVisible()
        
        return true
    }

}

