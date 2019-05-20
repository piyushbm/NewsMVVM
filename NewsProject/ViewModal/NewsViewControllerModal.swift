//
//  NewsViewControllerModal.swift
//  NewsProject
//
//  Created by Piyush on 10/02/19.
//  Copyright © 2019 Piyush. All rights reserved.
//

import UIKit

enum tableData {
    case entertainment
    case news
    case kids
    case animal
    
    static let allValues = [tableData.entertainment,
                     tableData.news,
                     tableData.kids,
                     tableData.animal]
    
    var description: String {
        switch self {
        case .entertainment:
            return "Entertainment"
        case .news:
            return "News"
        case .kids:
            return "kids"
        case .animal:
            return "Animal"
        }
    }
    
}

class NewsViewControllerModal {
    
    let itsDataArray = tableData.allValues
    
    init() {
    }
    
    func fetchData(completion: () -> Void) {
        //call Api
        //itsdata = data
        completion()
    }
}
