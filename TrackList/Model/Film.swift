//
//  Film.swift
//  TrackList
//
//  Created by ineta.magone on 16/11/2021.
//

import Foundation

struct Film {
    let filmName: String
    let year: String
    let poster: String
    
    static func createFilm() -> [Film]{
        var films: [Film] = []
        
        let filmNames = DataManager.shared.filmName
        let years = DataManager.shared.year
        let posters = DataManager.shared.poster
        
        for index in 0..<filmNames.count {
            let film = Film(filmName: filmNames[index], year: years[index], poster: posters[index])
            films.append(film)
        }
        
        return films
    }
}
