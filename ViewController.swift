//
//  ViewController.swift
//  Calculator
//
//  Created by Insinema on 26.07.17.
//  Copyright © 2017 EvM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    var changeNumber = 0
    var finishNumber = 0
    var firstNumber = "0"
    var plusButton = false
    var minusButton = false
    var divideButton = false
    var multiplierButton = false
    var eaqualButton = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberTextField.text = "0"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func deleteButton(_ sender: UIButton) {
        changeNumber = 0
        firstNumber = "0"
        numberTextField.text = "0"
        finishNumber = 0
    }
    
    @IBAction func minusButtonTapped(_ sender: UIButton) {
        
        plusButton = false
        multiplierButton = false
        divideButton = false
        
        if minusButton == false {
            changeNumber = Int(firstNumber)!
        } else {
            if eaqualButton == true {
                finishNumber = finishNumber - Int(firstNumber)!
            } else {
                changeNumber = changeNumber - Int(firstNumber)!
            }
        }
        
        firstNumber = "0"
        numberTextField.text = "0"
        minusButton = true
        if eaqualButton == true {
            finishNumber = finishNumber - Int(firstNumber)!
        }
    }
    
    
    
    @IBAction func equalButtonTapped(_ sender: UIButton) {
        //mark:plus
        if plusButton == true {
            if eaqualButton == true {
                finishNumber = finishNumber + Int(firstNumber)!
            } else {
            changeNumber = changeNumber + Int(firstNumber)!
            }
            numberTextField.text = String(changeNumber)
            if eaqualButton == false {
                finishNumber = changeNumber
            }
            changeNumber = 0
            eaqualButton = true
            firstNumber = "0"
            if eaqualButton == true {
                numberTextField.text = String(finishNumber)
            }
        }
        //minus
        if minusButton == true {
            if eaqualButton == true {
                finishNumber = finishNumber - Int(firstNumber)!
            } else {
                changeNumber = changeNumber - Int(firstNumber)!
            }
            numberTextField.text = String(changeNumber)
            if eaqualButton == false {
                finishNumber = changeNumber
            }
            changeNumber = 0
            eaqualButton = true
            firstNumber = "0"
            if eaqualButton == true {
                numberTextField.text = String(finishNumber)
            }
        }
        
        //multiplier
        
        if multiplierButton == true {
            if eaqualButton == true {
                finishNumber = finishNumber * Int(firstNumber)!
            } else {
                changeNumber = changeNumber * Int(firstNumber)!
            }
            numberTextField.text = String(changeNumber)
            if eaqualButton == false {
                finishNumber = changeNumber
            }
            changeNumber = 0
            eaqualButton = true
            firstNumber = "0"
            if eaqualButton == true {
                numberTextField.text = String(finishNumber)
            }
        }

    }
    
    
    @IBAction func multiplierButtonTapped(_ sender: UIButton) {
        minusButton = false
        divideButton = false
        plusButton = false
        
        if multiplierButton == false {
            changeNumber = Int(firstNumber)!
        } else {
            if eaqualButton == true {
                finishNumber = finishNumber * Int(firstNumber)!
            } else {
                changeNumber = changeNumber * Int(firstNumber)!
            }
        }
        firstNumber = "0"
        numberTextField.text = "0"
        multiplierButton = true
        if eaqualButton == true {
            finishNumber = finishNumber * Int(firstNumber)!
        }
    }

    @IBAction func plusButtonTapped(_ sender: UIButton) {
        
        minusButton = false
        divideButton = false
        multiplierButton = false
        
        if plusButton == false {
            changeNumber = Int(firstNumber)!
        } else {
            if eaqualButton == true {
                finishNumber = finishNumber + Int(firstNumber)!
            } else {
                changeNumber = changeNumber + Int(firstNumber)!
            }
        }
        firstNumber = "0"
        numberTextField.text = "0"
        plusButton = true
        if eaqualButton == true {
            finishNumber = finishNumber + Int(firstNumber)!
        }
    }
    
//MARK: pointButtons
    
    @IBAction func zeroButtonTapped(_ sender: UIButton) {
        if numberTextField.text != "0" {
            firstNumber += "0"
        }
        numberTextField.text = firstNumber
    }
    
    @IBAction func firstButtonTapped(_ sender: UIButton) {
        if numberTextField.text == "0" {
            firstNumber = "1"
        } else {
            firstNumber = firstNumber + "1"
        }
        numberTextField.text = firstNumber
    }
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        if numberTextField.text == "0" {
            firstNumber = "2"
        } else {
            firstNumber = firstNumber + "2"
        }
        numberTextField.text = firstNumber
    }
    @IBAction func threeButtonTapped(_ sender: UIButton) {
        if numberTextField.text == "0" {
            firstNumber = "3"
        } else {
            firstNumber = firstNumber + "3"
        }
        numberTextField.text = firstNumber
    }
    @IBAction func fourButtonTapped(_ sender: UIButton) {
        if numberTextField.text == "0" {
            firstNumber = "4"
        } else {
            firstNumber = firstNumber + "4"
        }
        numberTextField.text = firstNumber
    }
    @IBAction func fiveButtonTapped(_ sender: UIButton) {
        
        if numberTextField.text == "0" {
            firstNumber = "5"
        } else {
            firstNumber = firstNumber + "5"
        }
        numberTextField.text = firstNumber
    }
    @IBAction func sixButtonTapped(_ sender: UIButton) {
        if numberTextField.text == "0" {
            firstNumber = "6"
        } else {
            firstNumber = firstNumber + "6"
        }
        numberTextField.text = firstNumber
    }
    @IBAction func sevenButtonTapped(_ sender: UIButton) {
        if numberTextField.text == "0" {
            firstNumber = "7"
        } else {
            firstNumber = firstNumber + "7"
        }
        numberTextField.text = firstNumber
    }
    @IBAction func eightButtonTapped(_ sender: UIButton) {
        if numberTextField.text == "0" {
            firstNumber = "8"
        } else {
            firstNumber = firstNumber + "8"
        }
        numberTextField.text = firstNumber
    }
    @IBAction func nineButtonTapped(_ sender: UIButton) {
        if numberTextField.text == "0" {
            firstNumber = "9"
        } else {
            firstNumber = firstNumber + "9"
        }
        numberTextField.text = firstNumber
    }
    
}
