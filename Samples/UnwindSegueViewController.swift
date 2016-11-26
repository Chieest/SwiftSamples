//
//  UnwindSegueViewController.swift
//  Samples
//
//  Created by 田中真輔 on 2016/10/02.
//  Copyright © 2016年 SoftwareDeveloperChieest. All rights reserved.
//

import UIKit

class UnwindSegueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func UnwindButtonTouchUpInside(_ sender: UIButton) {
        self.performSegue(withIdentifier: "popToRootViewControllerSegue", sender: self)
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        NSLog("\(segue.identifier)")
        guard let identifier = segue.identifier else {
            return
        }
        
        switch identifier {
        case "popToRootViewControllerSegue":
            if let controller = self.navigationController {
                controller.popToRootViewController(animated: true)
            }
            break
        default:
            break
        }
    }

}
