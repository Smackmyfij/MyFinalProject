//
//  CourseTableViewCell.swift
//  MyFinalProject
//
//  Created by Dmitriy Yurchenko on 25.07.17.
//  Copyright © 2017 DYFiJ. All rights reserved.
//

import UIKit

class MasterTableViewCell: UITableViewCell {
    @IBOutlet weak var exchangeRatesLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
