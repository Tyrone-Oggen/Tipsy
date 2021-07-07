//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Tyrone Oggen on 2021/07/07.
//  Copyright © 2021 Roney Writes Code. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalPerPersonLabel: UILabel!
    @IBOutlet weak var splitDescriptionLabel: UILabel!
    
    var totalPerPerson = "0.0"
    var tipPercentage = 10
    var numberOfPeople = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalPerPersonLabel.text = totalPerPerson
        splitDescriptionLabel.text = "Split between \(numberOfPeople) people, with \(tipPercentage)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
