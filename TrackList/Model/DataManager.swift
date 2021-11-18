//
//  DataManager.swift
//  TrackList
//
//  Created by ineta.magone on 16/11/2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var track = [
            "Carly Rae Japsen",
            "Dj Khaled",
            "Injury Reserve",
            "Jonas Brothers",
            "Joyner Lucas",
            "Maluma",
            "Never Young",
            "Rammstein",
            "Skepta",
            "Skillet",
            "Tylor the Creator",
            "YG",
        ]
    
    var album = [
            "Dedicated",
            "father of",
            "Jailbrake",
            "Happiness Begins ",
            "adhd",
            "11-11",
            "LOSER",
            "rammstein",
            "Ignorance Is Bliss",
            "Victory",
            "IGOR",
            "Stop Snitching",
        ]
    
    var cover = [
            "Carly Rae Japsen - Dedicated",
            "Dj Khaled - father of",
            "Injury Reserve - Jailbrake",
            "Jonas Brothers - Happiness Begins ",
            "Joyner Lucas - adhd",
            "Maluma - 11-11",
            "Never Young - LOSER",
            "Rammstein - rammstein",
            "Skepta - Ignorance Is Bliss",
            "Skillet - Victory",
            "Tylor the Creator - IGOR",
            "YG - Stop Snitching",
        ]
    
    var movieNames = [
            "Back To The Future",
            "Batman",
            "Da Vinci Code",
            "Matrix",
            "Star Wars",
            "The Mask"
        ]
    
    var years = [
            1985,
            1966,
            2006,
            1999,
            1977,
            1994
        ]
    
    var posters = [
            "Back To The Future - 1985",
            "Batman - 1966",
            "Da Vinci Code - 2006",
            "Matrix - 1999",
            "Star Wars - 1977",
            "The Mask - 1994"
        ]
    
    var movieGenres = [
        "Science fiction",
        "Action",
        "Thriller",
        "Science fiction",
        "Science fiction",
        "Comedy"
       ]
    
    var movieTrailerUrls = [
        "https://www.youtube.com/watch?v=qvsgGtivCgs",
        "https://www.youtube.com/watch?v=vvY5MgOgDUw",
        "https://www.youtube.com/watch?v=5sU9MT8829k",
        "https://www.youtube.com/watch?v=vKQi3bBA1y8",
        "https://www.youtube.com/watch?v=WcfYsJ1FRWU",
        "https://www.youtube.com/watch?v=LZl69yk5lEY"
    ]
    
    var movieDescriptions = [
        "Marty McFly, a 17 year old high school student gets lost in 1955 by an accident, 30 years back in time. With the help of his friend Dr. Emmet Brown, he is desperately trying to find his way back to the future in the year 1985. It becomes a battle against the clock.",
        "The Dynamic Duo faces four supervillains who plan to hold the world for ransom with the help of a secret invention that instantly dehydrates people.",
        "A murder inside the Louvre, and clues in Da Vinci paintings, lead to the discovery of a religious mystery protected by a secret society for two thousand years, which could shake the foundations of Christianity.",
        "It depicts a dystopian future in which humanity is unknowingly trapped inside a simulated reality, the Matrix, which intelligent machines have created to distract humans while using their bodies as an energy source.",
        "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.",
        "Bank clerk Stanley Ipkiss is transformed into a manic superhero when he wears a mysterious mask. Timid bank clerk, Stanley Ipkiss (Jim Carrey). Unfortunately, he's too gentle, and is unable to handle confrontations. After one of the worst days, he finds a mask which depicts Loki, the Norse god of mischief."
    ]
}
