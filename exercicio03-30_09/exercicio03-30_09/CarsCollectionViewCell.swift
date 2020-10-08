//
//  CarsCollectionViewCell.swift
//  exercicio03-30_09
//
//  Created by Mizia Lima on 10/7/20.
//

import UIKit

class CarsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var carNameLabel: UILabel!
    
    func setup(car: Car) {
        carImageView.image = UIImage(named: car.image)
        carNameLabel.text = car.name
    }
}
