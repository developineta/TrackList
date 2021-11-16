//
//  ViewController.swift
//  TrackList
//
//  Created by ineta.magone on 16/11/2021.
//

import UIKit

class DetailViewController: UIViewController {
    

    @IBOutlet weak var tracknameLabel: UILabel!
    @IBOutlet weak var trackImgView: UIImageView!
    
    var song: Song!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if song != nil{
            trackImgView.image = UIImage(named: song.cover)
            tracknameLabel.text = song.track + " - " + song.album
        }
    }
}

