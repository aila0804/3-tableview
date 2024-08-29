//
//  ViewController.swift
//  3 tableview
//
//  Created by Aila Aila on 27.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    
    
    @IBOutlet weak var labelYear: UILabel!
    
    @IBOutlet weak var labelGenre: UILabel!
    
    @IBOutlet weak var imageview: UIImageView!
    
    
    @IBOutlet weak var labelDescriptionMovie: UILabel!
    
    
    
    //var name = ""
    //var surname = ""
    //var imageName = ""
    
    var movie = Movie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelName.text = movie.name
        labelGenre.text = movie.genre
        imageview.image = UIImage(named: movie.imagename)
        labelDescriptionMovie.text = movie.description
        labelYear.text = String(movie.year)
        
        
    }


}

