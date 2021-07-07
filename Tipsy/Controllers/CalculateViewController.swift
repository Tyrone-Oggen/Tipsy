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
    
    var tipPercent: Double = 0.10

    @IBAction func tipPercentChanged(_ sender: UIButton) {
        zeroPercentButton.isSelected = false
        tenPercentButton.isSelected = false
        twentyPercentButton.isSelected = false
        
        sender.isSelected = true
        
        let selectedPercent = sender.currentTitle!
        
        let buttonTitleMinusPercentSign =  String(selectedPercent.dropLast())
        
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        
        tipPercent = buttonTitleAsANumber / 100
    }
    
    @IBAction func splitStepperValueChanged(_ sender: UIStepper) {
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tipPercent)
    }
}
