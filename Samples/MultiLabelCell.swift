//
//  MultiLabelCell.swift
//  Samples
//
//  Created by 田中真輔 on 2016/11/25.
//  Copyright © 2016年 SoftwareDeveloperChieest. All rights reserved.
//

import UIKit

class MultiLabelCell: UITableViewCell {
    static let LABEL_TEXT_BASE = "----.----1----.----2----.----3"
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(indexPath: IndexPath) {
        self.label1.text = "1 : "
        self.label2.text = "2 : "
        self.label3.text = "3 : "
        self.label4.text = "4 : "
        for _ in 0..<(indexPath.row + 1) {
            self.label1.text?.append(MultiLabelCell.LABEL_TEXT_BASE)
            self.label2.text?.append(MultiLabelCell.LABEL_TEXT_BASE + MultiLabelCell.LABEL_TEXT_BASE)
            self.label3.text?.append(MultiLabelCell.LABEL_TEXT_BASE + MultiLabelCell.LABEL_TEXT_BASE + MultiLabelCell.LABEL_TEXT_BASE)
            self.label4.text?.append(MultiLabelCell.LABEL_TEXT_BASE + MultiLabelCell.LABEL_TEXT_BASE + MultiLabelCell.LABEL_TEXT_BASE + MultiLabelCell.LABEL_TEXT_BASE)
        }
        self.setNeedsUpdateConstraints()
        self.updateConstraintsIfNeeded()
    }
}
