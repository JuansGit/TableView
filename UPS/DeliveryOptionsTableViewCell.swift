//
//  DeliveryOptionsTableViewCell.swift
//  UPS
//
//  Created by Consultant on 3/17/19.
//  Copyright © 2019 JuanVitela. All rights reserved.
//

import UIKit

class DeliveryOptionsTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var shortSummary: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
