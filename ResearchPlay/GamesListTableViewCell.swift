//
//  GamesListTableViewCell.swift
//  ResearchPlay
//
//  Created by Abdul Basit on 27/07/18.
//  Copyright © 2018 Abdul Basit. All rights reserved.
//

import UIKit

class GamesListTableViewCell: UITableViewCell {

   
    
    @IBOutlet weak var gameNameLabel: UILabel!
    @IBOutlet weak var gameClearedImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
