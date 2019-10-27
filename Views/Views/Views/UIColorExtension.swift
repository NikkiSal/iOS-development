//
//  UIColorExtension.swift
//  Views
//
//  Created by Marzieh on 2019-10-26.
//  Copyright © 2019 Myph. All rights reserved.
//

import UIKit

extension UIColor {
    static var random:UIColor { // stored property
        return UIColor(red: CGFloat.random(in: 0...1), // the use of CGFloat's random method
                       green: CGFloat.random(in: 0...1),
                       blue: CGFloat.random(in: 0...1),
                                            alpha: 1.0)
        
    }
    
}
