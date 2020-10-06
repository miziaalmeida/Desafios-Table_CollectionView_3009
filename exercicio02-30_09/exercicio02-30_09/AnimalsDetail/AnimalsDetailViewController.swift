//
//  AnimalsDetailViewController.swift
//  exercicio02-30_09
//
//  Created by Mizia Lima on 10/5/20.
//

import UIKit

class AnimalsDetailViewController: UIViewController {
    
    var nome: String?
    
    @IBOutlet weak var nomeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setup(){
        nomeLabel.text = nome
    }
}
