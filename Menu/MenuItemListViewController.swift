//
//  MenuItemListViewController.swift
//  Menu
//
//  Created by gzonelee on 20/09/2018.
//  Copyright © 2018 gzonelee. All rights reserved.
//

import UIKit

class MenuItemListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!


    func configureView() {
        // Update the user interface for the detail item.
        if let _ = menu {
            if let tableView = tableView {
                tableView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var menu: Menu? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

