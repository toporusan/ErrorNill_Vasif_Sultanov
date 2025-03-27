//
//  SceneDelegate.swift
//  lesson7_m2_p10
//
//  Created by Toporusan on 27.03.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        self.window?.rootViewController = UINavigationController(rootViewController: ViewController())
        self.window?.makeKeyAndVisible()
        
    }


}

