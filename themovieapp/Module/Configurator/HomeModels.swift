//
//  HomeModels.swift
//  themovieapp
//
//  Created by Pablo Benzo on 22/08/2024.
//

import Foundation

struct PopularMovieModel: Decodable {
    var id: Int
    var title: String
    var overview: String
    var video: Bool
    var vote_average: Double
    var release_date: String
    var poster_path: String
    
}

struct PopularMovieResponseModel: Decodable {
    let results: [PopularMovieModel]
}
