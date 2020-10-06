//
//  ViewController.swift
//  09
//
//  Created by Mizia Lima on 10/4/20.
//

//01 - Criar um app:
//- Tenha uma lista (tableView) com 15 pessoas.
//- Cada célula (linha) deve ter o nome, cargo e email de uma pessoa.
//- Quando tocar numa celula, deve abrir uma tela em modal, nessa tela deve haver um botão de fechar e um label com o nome da pessoa.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelName: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    @IBAction func buttonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupView(){
        labelName.text = name
        view.backgroundColor = .darkGray
    }
}
