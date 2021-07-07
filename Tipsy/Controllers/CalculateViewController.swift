//
//  ViewController.swift
//  Tipsy
//
//  Created by Tyrone Oggen on 2021/07/06.
//  Copyright © 2021 Roney Writes Code. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPercentButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipPercent: Float = 0.1

    @IBAction func tipPercentChanged(_ sender: UIButton) {
        let selectedPercent = sender.currentTitle!
        zeroPercentButton.isSelected = false
        tenPercentButton.isSelected = false
        twentyPercentButton.isSelected = false
        
        if selectedPercent == "0%" {
            zeroPercentButton.isSelected = true
            tipPercent = 0.0
        } else if selectedPercent == "10%" {
            tenPercentButton.isSelected = true
            tipPercent = 0.1
        } else {
            twentyPercentButton.isSelected = true
            tipPercent = 0.2
        }
    }
    
    @IBAction func splitStepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tipPercent)
    }
}
