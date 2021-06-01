//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSliderLabel: UILabel!
    @IBOutlet weak var weightSliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 1.5
        weightSlider.value = 100
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print("Height Slider changing to \(sender.value)")
        // Converting float to string
        heightSliderLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print("Weight Slider changing to \(sender.value)")
        // Converting Float to Int to string
        // weightSliderLabel.text = "\(String(format: "%.0f", sender.value))
        weightSliderLabel.text = "\(String(Int(sender.value)))Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let BMI = weightSlider.value / pow(heightSlider.value, 2)
        print(BMI)
    }
}

