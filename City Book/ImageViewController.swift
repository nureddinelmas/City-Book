//
//  ImageViewController.swift
//  City Book
//
//  Created by Nureddin Elmas on 2021-11-17.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet weak var cityNameLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedCitymarkName = ""
    var selectedCityImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        cityNameLabel.text = selectedCitymarkName
        imageView.image = selectedCityImage
    }
    


}
