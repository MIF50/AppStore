//
//  SceneDelegate.swift
//  AppStore
//
//  Created by Mohamed Ibrahim on 10/08/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
    }
    
    func configureWindow() {
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
    }
}

