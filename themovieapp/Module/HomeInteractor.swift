//
//  HomeInteractor.swift
//  themovieapp
//
//  Created by Pablo Benzo on 22/08/2024.
//

import Foundation

class HomeInteractor {
    func getListOfMovies() async -> PopularMovieResponseModel {
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=d5204356791b3a396787fcaa00bab32f")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMovieResponseModel.self, from: data)
    }
}
