//
//  calculatorBrain.swift
//  TipCal
//
//  Created by Aakash Jha on 30/01/21.
//

import UIKit

class CalculatorBrain: UIViewController {
    
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
