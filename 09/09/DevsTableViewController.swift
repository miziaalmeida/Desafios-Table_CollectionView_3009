//
//  DevsTableViewController.swift
//  09
//
//  Created by Mizia Lima on 10/4/20.
//

import UIKit

class DevsTableViewController: UITableViewController {
    private var developers: [Developer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return developers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DevTableViewCell", for: indexPath) as? DevTableViewCell
        else { return UITableViewCell() }

        let developer = developers[indexPath.row]
        cell.configureCell(developer: developer)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let detailViewController = UIStoryboard(name: "DeveloperDetail", bundle: Bundle.main).instantiateInitialViewController() as? ViewController
        else { return }
        
        let name = developers[indexPath.row].nome
        detailViewController.name = name
        
        present(detailViewController, animated: true, completion: nil)
    }
    
    func configureView() {
        createDevelopers()
        tableView.reloadData()
    }
}

extension DevsTableViewController {
    func createDevelopers() {
        developers.append(Developer(nome: "Mízia Lima", email: "mizia@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Judar Renato Lima", email: "judar@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Narlei Moreira", email: "narlei@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Jéssica Santana", email: "jessica@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Ronan Rodrigues", email: "ronan@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Grazielli Berti", email: "grazi@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Paola Pagotto", email: "paola@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Michel dos Santos", email: "michel@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Taize Carminatti", email: "taize@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Elias Nazareno", email: "elias@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Gilvã Rocha", email: "gilva@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Jorge de Carvalho", email: "jorge@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Claudia Maganhi", email: "claudia@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Rafael Nunes", email: "rafael@gmail.com", cargo: "Developer"))
        developers.append(Developer(nome: "Nineth Badcovic", email: "nineth@gmail.com", cargo: "Developer"))
    }
}
