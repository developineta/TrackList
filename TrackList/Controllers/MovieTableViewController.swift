//
//  MovieTableViewController.swift
//  TrackList
//
//  Created by ineta.magone on 16/11/2021.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var movies = Movie.createMovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =
                tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
                as? MovieTableViewCell else {return UITableViewCell()}           // casting as

        let movie = movies[indexPath.row]
        
        cell.movieLblView.text = movie.movieName
        cell.movieImgView.image = UIImage(named: movie.poster)
        cell.genreLabel.text = "Genre: \(movie.movieGenre)"
        cell.yearLabel.text = "Year: \(movie.year)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            //print("indexPath: ", indexPath)
        // Get the new view controller using segue.destination.
            let detailVC = segue.destination as! MovieDetailViewController
        // Pass the selected object to the new view controller.
            detailVC.movie = movies[indexPath.row]
        }
    }
}
