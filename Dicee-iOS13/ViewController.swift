//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Also created by Shapovalov Ilia 04/08/2022
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var diceeLogo: UIImageView!
    @IBOutlet weak var leftDicee: UIImageView!
    @IBOutlet weak var rightDicee: UIImageView!
    @IBOutlet weak var buttonLabel: UIButton!
    
    var diceeArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImage.image = UIImage(named: "GreenBackground")
        diceeLogo.image = UIImage(named: "DiceeLogo")
        buttonLabel.setTitle("Roll", for: .normal)
        buttonLabel.setTitleColor(.white, for: .normal)
        buttonLabel.backgroundColor = UIColor(displayP3Red: 167/255,
                                              green: 26/255,
                                              blue: 27/255,
                                              alpha: 1)
        
        diceeArray += ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        
        diceRoll()
    }

    @IBAction func buttonTapped(_ sender: Any) {
        diceRoll()
    }
    
    func diceRoll() {
        let diceRandomLeft = diceeArray[Int.random(in: 0...diceeArray.count - 1)]
        let diceRandomRight = diceeArray[Int.random(in: 0...diceeArray.count - 1)]
        leftDicee.image = UIImage(named: diceRandomLeft)
        rightDicee.image = UIImage(named: diceRandomRight)
    }
    
}

