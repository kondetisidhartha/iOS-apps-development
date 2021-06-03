//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var selectedTip: Float?
    var selectedNumPeople: Int?
    var eachShare: Float?
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        let selectedTipPct = Float(sender.currentTitle?.dropLast() ?? "10")
        selectedTip = (selectedTipPct ?? 10.0) / 100.0
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        billTextField.endEditing(true)
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        selectedNumPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let tip = selectedTip ?? 0.1
        let people = Float(selectedNumPeople ?? 2)
        let bill = Float(billTextField.text ?? "0") ?? 0.0
        
        eachShare = (bill * ( 1 + tip)) / people
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.numPeople = selectedNumPeople ?? 2
            destinationVC.tipPct = String(format: "%.0f", (selectedTip ?? 0.1) * 100) + "%"
            destinationVC.eachShare = eachShare
        }
    }
    
}

