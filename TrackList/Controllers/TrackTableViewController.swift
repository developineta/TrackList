//
//  TrackTableViewController.swift
//  TrackList
//
//  Created by ineta.magone on 16/11/2021.
//

import UIKit

class TrackTableViewController: UITableViewController {
    
    var songs = Song.createSong()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return songs.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackListCell", for: indexPath)

//        cell.textLabel?.text = trackList[indexPath.row]
//        cell.detailTextLabel?.text = trackList[indexPath.row]
//        cell.imageView?.image = UIImage(named: trackList[indexPath.row])
        
        let song = songs[indexPath.row]
        cell.textLabel?.text = song.track
        cell.detailTextLabel?.text = song.album
        cell.imageView?.image = UIImage(named: song.cover)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            print("indexPath: ", indexPath)
        // Get the new view controller using segue.destination.
            let detaiVC = segue.destination as! DetailViewController
        // Pass the selected object to the new view controller.
            detaiVC.song = songs[indexPath.row]
        }
    }
}
