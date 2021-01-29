//
//  ViewController.swift
//  TipCal
//
//  Created by Aakash Jha on 25/01/21.
//

import UIKit

class CalculatorViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var zeroTipButton: UIButton!
    @IBOutlet weak var tenTipButton: UIButton!
    @IBOutlet weak var twentyTipButton: UIButton!
    @IBOutlet weak var tipSplitValue: UILabel!

    var tip = 0.10
    var billAmount = 0
    var finalTip = 0
    var totalBill = 0.0
    
    //stepper that changes tip value
    @IBAction func tipStepChanged(_ sender: UIStepper) {
        tipSplitValue.text = String(Int(sender.value))
        print(tipSplitValue.text!)
    }
    
    // all 3 default tip values linked to a single IBAction
    @IBAction func tipChanged(_ sender: UIButton) {
        
        //set all buttons as deselected
        zeroTipButton.isSelected = false
        tenTipButton.isSelected = false
        twentyTipButton.isSelected = false
        
        //Make the button that triggered the IBAction selected.
        sender.isSelected = true
        
        //getting button title for tip % buttons - as STRING
        let buttonTitle = sender.currentTitle!
        
        //remove % sign from the end of buttton title - AS STRING
        let buttonTitlePercentRemoved = buttonTitle.dropLast()
        
        //converting STRING into DOUBLE
        let tipAsNumber = Double(buttonTitlePercentRemoved)!
        let billAmount = Double(billAmountTextField.text!)
        
        //setting new values for tip
        tip =  billAmount! + (billAmount!*(tipAsNumber/100))
        
    }
    
   
    
    //Calculate button to display final tip amount
    @IBAction func tipCalculatePressed(_ sender: UIButton) {
        print(tip)
        print(billAmountTextField.text!)
        
    }
    
    
}

