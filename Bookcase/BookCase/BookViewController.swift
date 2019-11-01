//
//  BookViewController.swift
//  BookCase
//
//  Created by Marzieh on 2019-10-31.
//  Copyright © 2019 Myph. All rights reserved.
//

import UIKit

class BookViewController: UIViewController {
    
    @IBOutlet weak var bookCover: UIImageView!
    @IBOutlet weak var isbnStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // you can put an infoButton and make the isbn isHidden here
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        view.endEditing(true) //goes on a hunt on its subview hierarchy to find the first responder, then requests it to resign
    }
}

extension BookViewController:UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // this is dismissing the keyboard when you press the return key
        return true // it doesn't matter if this returns true or false
    }
}
