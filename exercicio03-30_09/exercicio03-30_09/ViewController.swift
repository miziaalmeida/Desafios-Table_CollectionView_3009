//
//  ViewController.swift
//  exercicio03-30_09
//
//  Created by Mizia Lima on 10/6/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var carsCollectionView: UICollectionView!
    
    var arrayCars = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carsCollectionView.delegate = self
        carsCollectionView.dataSource = self
        title = "Cars List"
        configureCars()
        
    }
    
    func configureCars(){
        arrayCars.append(Car(name: "Aston", image: "aston.jpeg"))
        arrayCars.append(Car(name: "BMW", image: "bmw.jpeg"))
        arrayCars.append(Car(name: "Bugatti", image: "bugatti.jpeg"))
        arrayCars.append(Car(name: "Ferrari", image: "ferrari.jpeg"))
        arrayCars.append(Car(name: "Koenigsegg", image: "koenigsegg.jpeg"))
        arrayCars.append(Car(name: "Lamborghini", image: "lamborghini.jpeg"))
        arrayCars.append(Car(name: "Maserati", image: "maserati.jpeg"))
        arrayCars.append(Car(name: "Mercedes", image: "mercedes.jpeg"))
        arrayCars.append(Car(name: "Rolls-Royce", image: "rolls-royce.jpeg"))
        arrayCars.append(Car(name: "W Motors", image: "wmotors.jpeg"))
        carsCollectionView.reloadData()
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let detailCarView = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController
        else { return }
        
        detailCarView.imageName = arrayCars[indexPath.row].image
        
        navigationController?.pushViewController(detailCarView, animated: true)
        
    }
}

extension ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarsCollectionViewCell", for: indexPath) as? CarsCollectionViewCell
        else { return UICollectionViewCell() }
        let car = arrayCars[indexPath.row]
        cell.setup(car: car)
        
        return cell
    }
}

//extension ViewController: UICollectionViewDelegateFlowLayout {
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 300, height: 350)
//    }
//}
