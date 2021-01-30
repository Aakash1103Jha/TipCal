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
    
    
    override func viewDidLoad() {
        initializeHideKeyboard()
    }
    
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
        tip =  (billAmount!*(tipAsNumber/100))
        
    }
    
   
    
    //Calculate button to display final tip amount
    @IBAction func tipCalculatePressed(_ sender: UIButton) {
        print(tip)
//        print(billAmountTextField.text!)
        

        self.performSegue(withIdentifier: "showFinalTip", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFinalTip" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.finalTipAmount = String(tip)
        }
    }
    
    @objc func dismissMyKeyboard(){
    //endEditing causes the view (or one of its embedded text fields) to resign the first responder status.
    //In short- Dismiss the active keyboard.
       view.endEditing(true)
    }
    
    func initializeHideKeyboard(){
     //Declare a Tap Gesture Recognizer which will trigger our dismissMyKeyboard() function
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissMyKeyboard))
     //Add this tap gesture recognizer to the parent view
        view.addGestureRecognizer(tap)
     }
     
}
