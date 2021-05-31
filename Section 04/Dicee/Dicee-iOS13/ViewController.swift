//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI Element
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    // var diceImageNumberLeft = 0
    // var diceImageNumberRight = 5
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // changing image and alpha after view gets loaded
//        // diceImageViewOne.image = #imageLiteral(resourceName: "DiceTwo")
//        // diceImageViewOne.alpha = 0.5
//
//        // diceImageViewTwo.image = #imageLiteral(resourceName: "DiceFive")
//        // diceImageViewTwo.alpha = 0.5
//
//    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // print("Button tapped.")
        
        // diceImageViewTwo.image = #imageLiteral(resourceName: "DiceThree")
        // diceImageViewOne.image = #imageLiteral(resourceName: "DiceFive")
        
        // diceImageViewOne.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][diceImageNumberLeft]
        // diceImageViewTwo.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][diceImageNumberRight]
        
        // diceImageNumberLeft = diceImageNumberLeft + 1
        // diceImageNumberLeft +=  1
        // diceImageNumberRight = diceImageNumberRight - 1
        // diceImageNumberRight -= 1
        
        let diceImagesArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
         // diceImageViewOne.image = diceImagesArray[Int.random(in: 0...5)]
         // diceImageViewTwo.image = diceImagesArray[Int.random(in: 0...5)]
        
        diceImageViewOne.image = diceImagesArray.randomElement()
        diceImageViewTwo.image = diceImagesArray.randomElement()
    }
    
}

