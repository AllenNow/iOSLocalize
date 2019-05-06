//
//  New Class.swift
//  iOSLocalizeSwift
//
//  Created by Allen Gao on 2019/2/20.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

import UIKit

class New_Class: NSObject {
    var name:String?
    override init() {
        name = NSLocalizedString("对象名称", comment: "对象名称")
    }
}
