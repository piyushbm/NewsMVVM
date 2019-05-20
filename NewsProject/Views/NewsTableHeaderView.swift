//
//  NewsTableHeaderView.swift
//  NewsProject
//
//  Created by Piyush on 10/02/19.
//  Copyright © 2019 Piyush. All rights reserved.
//

import UIKit

class NewsTableHeaderView: UIView {
    @IBOutlet weak var itsHeaderLabelTitle: BaseLabel?
    
    override func awakeFromNib() {
        itsHeaderLabelTitle?.text = "My Table Header Title"
    }
}
