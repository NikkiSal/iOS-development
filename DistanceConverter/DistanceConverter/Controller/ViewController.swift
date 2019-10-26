//
//  ViewController.swift
//  DistanceConverter
//
//  Created by Marzieh on 2019-10-25.
//  Copyright © 2019 Myph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var distance = Distance(miles: 60)
    
    @IBOutlet weak var milesTextField: UITextField!
    @IBOutlet weak var kmTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        milesTextField.text = "\(distance.miles)"
        kmTextField.text = "\(distance.km)"
    }
    
    @IBAction func convertToKm(_ sender: Any) {
        if let milesText = milesTextField.text, let milesDouble = Double(milesText) // converts string to Double which returns an optional
        {
            distance.miles = milesDouble
            kmTextField.text = "\(distance.km)"
        }
    }
    
    @IBAction func convertToMiles(_ sender: Any) {
        if let kmText = kmTextField.text, let kmDouble = Double(kmText) {
            distance.km = kmDouble
            milesTextField.text = "\(distance.miles)"
        }
    }
    
    
    
    
    
    
}

