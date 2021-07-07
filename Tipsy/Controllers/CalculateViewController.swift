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
    
    var tipPercentage: Double = 0.10
    var numberOfPeople: Int = 2
    var billTotal: Double = 0.00
    var totalPerPerson: String = "0.0"

    @IBAction func tipPercentChanged(_ sender: UIButton) {
        zeroPercentButton.isSelected = false
        tenPercentButton.isSelected = false
        twentyPercentButton.isSelected = false
        
        sender.isSelected = true
        
        let selectedPercent = sender.currentTitle!
        let buttonTitleMinusPercentSign =  String(selectedPercent.dropLast())
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        tipPercentage = buttonTitleAsANumber / 100
        
        billTextField.endEditing(true)
    }
    
    @IBAction func splitStepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
        numberOfPeople = Int(sender.value)
        
        billTextField.endEditing(true)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        
        if bill != "" {
            billTotal = Double(bill)!
            let result = billTotal * (1 + tipPercentage) / Double(numberOfPeople)
            totalPerPerson = String(format: "%.2f", result)
            
            performSegue(withIdentifier: "goToResult", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.totalPerPerson = totalPerPerson
            destinationVC.numberOfPeople = numberOfPeople
            destinationVC.tipPercentage = Int(tipPercentage * 100)
        }
    }
}
