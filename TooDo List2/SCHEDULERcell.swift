//
//  SCHEDULERcell.swift
//  TooDo List2
//
//  Created by Mohamed ELfishawy on 6/25/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

class SCHEDULERcell: UITableViewCell {

    @IBOutlet var Date: UILabel!
    @IBOutlet var check1: UIButton!
    @IBOutlet var check2: UIButton!
    @IBOutlet var libTitle: UILabel!
    @IBOutlet var lbltitle2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
