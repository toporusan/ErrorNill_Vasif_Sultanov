//
//  SceneDelegate.swift
//  firstApp
//
//  Created by Toporusan on 04.03.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = MyView() 
            self.window = window
            window.makeKeyAndVisible()
        }
        
        
    }
}

