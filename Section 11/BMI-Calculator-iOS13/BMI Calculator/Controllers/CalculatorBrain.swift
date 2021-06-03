//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sidhartha Kondeti on 03.06.21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi:Float = 0.0
    
    func getBMIValue() -> Float{
        return bmi
    }
    
    mutating func calculateBMI(height:Float, weight: Float) {
        bmi = weight / height
    }
}
