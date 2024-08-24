//
//  HomeRouter.swift
//  themovieapp
//
//  Created by Pablo Benzo on 22/08/2024.
//

import Foundation
import UIKit
import SwiftUI

class HomeRouter {
    func showListOfMovies(window: UIWindow?) {
        let view = UIHostingController(rootView: HomeView())
//        let interactor = HomeInteractor()
//        let presenter = HomePresenter(homeInteractor: interactor)
//        presenter.ui = view as? any ListOfMoviesUI
//        view = presenter
        
        window?.rootViewController = view
        window?.makeKeyAndVisible()
    }
}
