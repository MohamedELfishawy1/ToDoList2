//
//  Notificationcell.swift
//  TooDo List2
//
//  Created by Mohamed ELfishawy on 6/26/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

class Notificationcell: UITableViewCell {

    @IBOutlet var Date: UILabel!
    @IBOutlet var lbl1: UILabel!
    @IBOutlet var lbl2: UILabel!
    @IBOutlet var img1: UIImageView!
    @IBOutlet var img2: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
