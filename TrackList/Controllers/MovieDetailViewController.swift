//
//  MovieDetailViewController.swift
//  TrackList
//
//  Created by ineta.magone on 16/11/2021.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if movie != nil{
            movieImageView.image = UIImage(named: movie.poster)
            movieNameLabel.text = movie.movieName
            movieYearLabel.text = movie.year
        }
    }
}
