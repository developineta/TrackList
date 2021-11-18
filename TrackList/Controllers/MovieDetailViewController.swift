//
//  MovieDetailViewController.swift
//  TrackList
//
//  Created by ineta.magone on 16/11/2021.
//

import WebKit
import UIKit

class MovieDetailViewController: UIViewController {
    
    var movie: Movie!
    
    var webView = WKWebView()
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var movieGenreLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    @IBOutlet weak var watchTrailerButton: UIButton!
    
    @IBOutlet weak var movieWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if movie != nil{
            movieImageView.image = UIImage(named: movie.poster)
            movieNameLabel.text = movie.movieName
            movieYearLabel.text = "Year: \(movie.year)"
            movieGenreLabel.text = "Genre: \(movie.movieGenre)"
            movieDescriptionLabel.text = movie.description
            movieWebView.isHidden = true
        }
    }

    @IBAction func playButtonTapped(_ sender: Any) {
        movieWebView.isHidden = false
        loadVideoToWebView()
        watchTrailerButton.isHidden = true
    }
    
    func loadVideoToWebView() {
        let urlString = movie.trailerUrlString
        guard let movieUrl = URL(string: urlString) else { return  }
        movieWebView.load(URLRequest(url: movieUrl))
    }
}
