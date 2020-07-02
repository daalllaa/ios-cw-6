
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by Dalal Aljouhar on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {

    @IBOutlet weak var movieimageView: UIImageView!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieRatingView: UIView!
    @IBOutlet weak var movieRatedLabel: UILabel!
    @IBOutlet weak var movieRatedView: UIView!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var releaseDateVeiw: UIView!
    
    
    
    
    @IBOutlet weak var actorImageView1: UIImageView!
    @IBOutlet weak var actorLabel1: UILabel!
    @IBOutlet weak var actorImageView2: UIImageView!
    @IBOutlet weak var actorLabel2: UILabel!
    @IBOutlet weak var actorImageView3: UIImageView!
    @IBOutlet weak var actorLabel3: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()
        
        // Do any additional setup after loading the view.
    }
    func setMovieDetails(){
        movieimageView.image = UIImage(named: seletedMovie.movieName)
        
        movieRatingLabel.text = "\(seletedMovie.rating)"
        movieRatedLabel.text = seletedMovie.pgRating
        releaseDateLabel.text = "\(seletedMovie.movieReleaseDate)"
        
        actorImageView1.image = UIImage(named: seletedMovie.actors[0])
        actorImageView1.image = UIImage(named: seletedMovie.actors[1])
        actorImageView1.image = UIImage(named: seletedMovie.actors[2])
        
        actorLabel1.text = seletedMovie.actors[0]
        actorLabel2.text = seletedMovie.actors[1]
        actorLabel3.text = seletedMovie.actors[2]
        
    }
        
    func configureUI(){
        movieRatedView.layer.cornerRadius = 13
        movieRatingView.layer.cornerRadius = 13
        releaseDateVeiw.layer.cornerRadius = 13
        

    
    }
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


