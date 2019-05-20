//
//  NewsTableCell.swift
//  NewsProject
//
//  Created by Piyush on 10/02/19.
//  Copyright © 2019 Piyush. All rights reserved.
//

import UIKit

class NewsTableCell: UITableViewCell {
    
    @IBOutlet weak var itsLabelTitle: BaseLabel?
    @IBOutlet weak var itsProfileImageView: BaseImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        itsLabelTitle?.text = "Test"
    }
}
