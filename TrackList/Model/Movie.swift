//
//  Film.swift
//  TrackList
//
//  Created by ineta.magone on 16/11/2021.
//

import Foundation

struct Movie {
    let movieName: String
    let year: String
    let poster: String
    
    static func createMovie() -> [Movie]{
        var movies: [Movie] = []
        
        let movieNames = DataManager.shared.movieName
        let years = DataManager.shared.year
        let posters = DataManager.shared.poster
        
        for index in 0..<movieNames.count {
            let movie = Movie(movieName: movieNames[index], year: years[index], poster: posters[index])
            movies.append(movie)
        }
        
        return movies
    }
}
