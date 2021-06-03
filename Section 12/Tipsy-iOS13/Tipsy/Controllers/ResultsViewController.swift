//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Sidhartha Kondeti on 03.06.21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var eachShare: Float?
    var numPeople: Int?
    var tipPct: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%.2f", eachShare ?? "0.0")
        print(numPeople!, tipPct!)
        let modifiedSettingsLabel = settingsLabel.text?.replacingOccurrences(of: "2", with: String(numPeople ?? 2))
        let modifiedTipPctLabel = modifiedSettingsLabel?.replacingOccurrences(of: "10%", with: (tipPct ?? "10%"))
        
        settingsLabel.text = modifiedTipPctLabel
    }
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
