//
//  AnimalsTableViewCell.swift
//  exercicio02-30_09
//
//  Created by Mizia Lima on 10/5/20.
//

import UIKit

class AnimalsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelRaca: UILabel!
    @IBOutlet weak var labelPeso: UILabel!
    @IBOutlet weak var labelEspecie: UILabel!
    
    func setup(animals: Animals){
        labelNome.text = animals.nome
        labelRaca.text = animals.raca
        labelPeso.text = String(animals.peso) + "kg"
        labelEspecie.text = animals.especie
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        super.setSelected(false, animated: true)
    }

}
