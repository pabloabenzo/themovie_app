//
//  HomePresenter.swift
//  themovieapp
//
//  Created by Pablo Benzo on 22/08/2024.
//

import Foundation

//protocol ListOfMoviesUI: AnyObject {
//    func update(movies: [PopularMovieModel])
//}

class HomePresenter {
//    var ui: ListOfMoviesUI?
    
    private let homeInteractor: HomeInteractor
    var models: [PopularMovieModel] = []
    
    init(homeInteractor: HomeInteractor) {
        self.homeInteractor = homeInteractor
    }
    
    func onViewAppear() {
        Task {
            models = await homeInteractor.getListOfMovies().results
//            ui?.update(movies: models)
        }
    }
}
