//
//  ViewController.swift
//  iOSLocalizeSwift
//
//  Created by Allen Gao on 2019/1/22.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    @IBAction func showAlertAction(_ sender: Any) {
        let alert = UIAlertController(title: NSLocalizedString("提示", comment: "提示"), message: NSLocalizedString("提示内容", comment: "提示内容"), preferredStyle: .alert)
        
        let actoion = UIAlertAction(title:  NSLocalizedString("取消", comment: "取消"), style: .cancel, handler: nil)
        alert.addAction(actoion)
        self.present(alert, animated: true, completion: nil);
    }
    
}

