//
//  BaseImageView.swift
//  NewsProject
//
//  Created by Piyush on 10/02/19.
//  Copyright © 2019 Piyush. All rights reserved.
//

import UIKit

class BaseImageView: UIImageView {
    
    override func layoutSubviews() {
        self.backgroundColor = UIColor.red
        self.layer.cornerRadius = self.frame.size.height / 2
        self.clipsToBounds = true
    }
}
