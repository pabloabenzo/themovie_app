//
//  SceneDelegate.swift
//  themovieapp
//
//  Created by Pablo Benzo on 22/08/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var homeRouter = HomeRouter()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        homeRouter.showListOfMovies(window: window)
    }

}

