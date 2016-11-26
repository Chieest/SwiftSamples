//
//  MultiLabelCellViewController.swift
//  Samples
//
//  Created by 田中真輔 on 2016/11/25.
//  Copyright © 2016年 SoftwareDeveloperChieest. All rights reserved.
//

import UIKit

class MultiLabelCellViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.estimatedRowHeight = 125
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension MultiLabelCellViewController: UITableViewDelegate {
}

extension MultiLabelCellViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MultiLabelCell") as! MultiLabelCell
        cell.configure(indexPath: indexPath)
        return cell
    }
}
