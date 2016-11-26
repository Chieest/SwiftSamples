//
//  SegueFromRight.swift
//  Samples
//
//  Created by 田中真輔 on 2016/10/02.
//  Copyright © 2016年 SoftwareDeveloperChieest. All rights reserved.
//

import UIKit

class SegueFromRight: UIStoryboardSegue {
    override func perform() {
        let src = self.source
        let dst = self.destination
        src.navigationController?.pushViewController(dst, animated: true)
    }
}
