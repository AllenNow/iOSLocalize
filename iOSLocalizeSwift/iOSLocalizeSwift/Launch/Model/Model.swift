//
//  Model.swift
//  iOSLocalizeSwift
//
//  Created by Allen Gao on 2019/1/29.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

import UIKit

class Model: NSObject {
    var name:String?
    override init() {
        name = NSLocalizedString("模型名称", comment: "模型名称")
    }
}
