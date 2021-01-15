//
//  AppDelegate.swift
//  SwiftMVVMTemplate
//
//  Created by m2 on 1/12/21.
//

import UIKit
import Toast_Swift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    static var shared: AppDelegate? {
        return UIApplication.shared.delegate as? AppDelegate
    }
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let libsManager = LibsManager.shared
        libsManager.setupLibs(with: window)
        connectedToInternet().skip(1).subscribe(onNext: { [weak self] (connected) in
            var style = ToastManager.shared.style
            style.backgroundColor = connected ? UIColor.green: UIColor.red
            let message = connected ? "R.string.localizable.toastConnectionBackMessage.key.localized()": "R.string.localizable.toastConnectionLostMessage.key.localized()"
            let image = connected ? R.image.icon_toast_success() : R.image.icon_toast_warning()
            if let view = self?.window?.rootViewController?.view {
                view.makeToast(message, position: .bottom, image: image, style: style)
            }
        }).disposed(by: rx.disposeBag)
        return true
    }

    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
}

