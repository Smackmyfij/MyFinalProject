//
//  DetailTableViewCell.swift
//  MyFinalProject
//
//  Created by Dmitriy Yurchenko on 06.08.17.
//  Copyright © 2017 DYFiJ. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    @IBOutlet weak var detailLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if selected
        {
            detailLabel.textColor = UIColor.black
        }
        
        
        // Configure the view for the selected state
    }
    
    
    

}
