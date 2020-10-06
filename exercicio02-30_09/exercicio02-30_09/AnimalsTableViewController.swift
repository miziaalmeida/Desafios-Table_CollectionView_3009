//
//  AnimalsTableViewController.swift
//  exercicio02-30_09
//
//  Created by Mizia Lima on 10/5/20.
//

import UIKit

class AnimalsTableViewController: UITableViewController {
    
    var animals = [Animals]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureInfo()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalsTableViewCell", for: indexPath) as? AnimalsTableViewCell
       else { return UITableViewCell()}
        
        cell.setup(animals: animals[indexPath.row])

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = UIStoryboard(name: "AnimalsDetail", bundle: Bundle.main).instantiateInitialViewController() as? AnimalsDetailViewController {
            viewController.nome = animals[indexPath.row].nome
            present(viewController, animated: true, completion: nil)
        }
    }

    func configureInfo() {
        animals.append(Animals(nome: "Maia", raca: "Pastor Alemao", peso: 34.56, especie: "Dog"))
        animals.append(Animals(nome: "Ranço", raca: "Ranço Severiano", peso: 35.67, especie: "Dog"))
        animals.append(Animals(nome: "Billy", raca: "Xalxixa", peso: 12.34, especie: "Dog"))
        animals.append(Animals(nome: "Miau", raca: "Frajola", peso: 5.67, especie: "Cat"))
        animals.append(Animals(nome: "Mimosa", raca: "Laranja", peso: 5.67, especie: "Cat"))
        animals.append(Animals(nome: "Bolinha", raca: "Caramelo", peso: 10.78, especie: "Dog"))
        animals.append(Animals(nome: "Alexandríneo", raca: "Xitsu", peso: 3.45, especie: "Dog"))
        animals.append(Animals(nome: "Milu", raca: "Persa", peso: 4.56, especie: "Cat"))
        animals.append(Animals(nome: "Paçoca", raca: "ShowShow", peso: 12.45, especie: "Dog"))
        animals.append(Animals(nome: "Docinho", raca: "Pinxi", peso: 2.50, especie: "Dog"))
        tableView.reloadData()
    }
}
