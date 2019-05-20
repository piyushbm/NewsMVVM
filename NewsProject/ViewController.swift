//
//  ViewController.swift
//  NewsProject
//
//  Created by Piyush on 10/02/19.
//  Copyright © 2019 Piyush. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    struct TableAttributes {
       static let newsTableCellIdentifier: String = "NewsTableCell"
    }
    
    let newsViewModal = NewsViewControllerModal()
    
//    let tableHeader = NewsTableHeaderView.fromNib()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        tableView.tableHeaderView = tableHeader
        
        newsViewModal.fetchData {
            tableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsViewModal.itsDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableAttributes.newsTableCellIdentifier) as? NewsTableCell else {
            return UITableViewCell()
        }
        let theCellValue = newsViewModal.itsDataArray[indexPath.row]
        cell.itsLabelTitle?.text = theCellValue.description
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
