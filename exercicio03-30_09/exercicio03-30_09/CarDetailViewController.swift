//
//  CarDetailViewController.swift
//  exercicio03-30_09
//
//  Created by Mizia Lima on 10/7/20.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    var imageName: String?
    
    @IBOutlet weak var carDetailImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setImage()
        
    }
    
    func setImage(){
        if let imageStringName = imageName {
            carDetailImage.image = UIImage(named: imageStringName)
        }
    }
}
