//
//  MultiLabelCell2.swift
//  Samples
//
//  Created by 田中真輔 on 2016/11/26.
//  Copyright © 2016年 SoftwareDeveloperChieest. All rights reserved.
//

import UIKit

class MultiLabelCell2: UITableViewCell {
    static let LABEL_TEXT_BASE = "----.----1----.----2----.----3"
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var prefView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setLabelText(indexPath: IndexPath) {
        self.label1.text = "1 : "
        self.label2.text = "2 : "
        for _ in 0..<(indexPath.row + 1) {
            self.label1.text?.append(MultiLabelCell.LABEL_TEXT_BASE)
            self.label2.text?.append(MultiLabelCell.LABEL_TEXT_BASE + MultiLabelCell.LABEL_TEXT_BASE)
        }
        self.layoutSubviews()
    }
}
