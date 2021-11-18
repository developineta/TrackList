//
//  Film.swift
//  TrackList
//
//  Created by ineta.magone on 16/11/2021.
//

import Foundation

struct Movie {
    var movieName: String
    var year: Int
    var poster: String
    var movieGenre: String
    var description: String
    var trailerUrlString: String
    
    static func createMovie() -> [Movie]{
        var movies: [Movie] = []
        
        let movieNames = DataManager.shared.movieNames
        let years = DataManager.shared.years
        let posters = DataManager.shared.posters
        let movieGenres = DataManager.shared.movieGenres
        let descriptions = DataManager.shared.movieDescriptions
        let trailerUrlStrings = DataManager.shared.movieTrailerUrls
        
        for i in 0..<movieNames.count {
            let movie = Movie(movieName: movieNames[i], year: years[i], poster: posters[i], movieGenre: movieGenres[i], description: descriptions[i], trailerUrlString: trailerUrlStrings[i])
            movies.append(movie)
        }
        
        return movies
    }
}
