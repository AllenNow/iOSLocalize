//
//  LaunchViewController.swift
//  iOSLocalizeSwift
//
//  Created by Allen Gao on 2019/1/29.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let alert = UIAlertController(title: NSLocalizedString("警告", comment: "警告"), message: NSLocalizedString("警告内容", comment: "警告内容"), preferredStyle: .alert)
        
        let actoion = UIAlertAction(title:  NSLocalizedString("取消", comment: "取消"), style: .cancel, handler: nil)
        alert.addAction(actoion)
        self.present(alert, animated: true, completion: nil);
        // Do any additional setup after loading the view.
    }


}
