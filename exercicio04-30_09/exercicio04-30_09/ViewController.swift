//
//  ViewController.swift
//  exercicio04-30_09
//
//  Created by Mizia Lima on 10/7/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var names = [Name]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNames()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
    }
}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        names.remove(at: indexPath.row)
        print(names)
        collectionView.reloadData()
    }
    
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NamesCollectionViewCell", for: indexPath) as! NamesCollectionViewCell
        
        cell.nameLabel.text = names[indexPath.row].name
        
        return cell
        
    }
        
    func getNames(){
        names.append(Name(name: "Mízia"))
        names.append(Name(name: "Judar"))
        names.append(Name(name: "Jerry"))
        names.append(Name(name: "Katia"))
        names.append(Name(name: "Bete"))
        names.append(Name(name: "Renato"))
        names.append(Name(name: "Raiza"))
        names.append(Name(name: "Rízia"))
        names.append(Name(name: "Lael"))
        names.append(Name(name: "Jeiel"))
        names.append(Name(name: "Hágabe"))
        names.append(Name(name: "Járede"))
        names.append(Name(name: "Hadassa"))
        names.append(Name(name: "Daniel"))
        names.append(Name(name: "Ágatha"))
        names.append(Name(name: "Rafael"))
        names.append(Name(name: "Renildo"))
        names.append(Name(name: "Maia"))
        names.append(Name(name: "Michel"))
        names.append(Name(name: "Taize"))
        
    }
    
}

