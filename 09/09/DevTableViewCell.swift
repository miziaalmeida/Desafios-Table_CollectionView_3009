//
//  DevTableViewCell.swift
//  09
//
//  Created by Mizia Lima on 10/4/20.
//

import UIKit

class DevTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        super.setSelected(false, animated: true)
    }
        
    func configureCell(developer: Developer) {
        nameLabel.text = developer.nome
        positionLabel.text = developer.cargo
        emailLabel.text = developer.email
    }

}
