//
//  ColoredView.swift
//  Views
//
//  Created by Marzieh on 2019-10-26.
//  Copyright © 2019 Myph. All rights reserved.
//

import UIKit

class ColoredView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        backgroundColor = UIColor.random
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event) // comment this out if you don't want an                                        //event to continue up the responder chain
        backgroundColor = UIColor.random
        
    }
}
