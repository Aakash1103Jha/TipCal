//
//  ResultsViewController.swift
//  TipCal
//
//  Created by Aakash Jha on 29/01/21.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var totalTipLabel: UILabel!
    
    var finalTipAmount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalTipLabel.text = finalTipAmount
        
        
        
}
    
    @IBAction func reCalButtonPressed(_ sender: UIButton) {
        
        
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
