//
//  UIViewController+Extension.swift
//  CountDownApp
//
//  Created by usopp on 2020/7/21.
//  Copyright © 2020 usoppb. All rights reserved.
//

import UIKit

extension UIViewController {
    static func instantiate<T>() -> T {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "\(T.self)") as! T
        return vc
    }
}
