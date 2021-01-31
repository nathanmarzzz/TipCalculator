//
//  ViewController.swift
//  TipCalculator
//
//  Created by Nathan on 1/30/21.
//

import UIKit

class ViewController: UIViewController {
    // view variables
    @IBOutlet weak var BillAmountTxtField: UITextField!
    @IBOutlet weak var TipAmount: UILabel!
    @IBOutlet weak var TipLevelSegment: UISegmentedControl!
    @IBOutlet weak var BillTotal: UILabel!
    
    // on view load
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   // calculates tip based on new tip level
    @IBAction func TipCalculator(_ sender: Any) {
        // bill total from txt field
        // if nothing entered -> 0.00
        let bill = NSString(string: BillAmountTxtField.text!).doubleValue
        let tipPercentages = [0.15,0.18,0.20]
        let tip = bill * tipPercentages[TipLevelSegment.selectedSegmentIndex]
        let total = bill + tip
        
        //update labels
        TipAmount.text = String(format:"$%.2f", tip)
        BillTotal.text = String(format: "$%.2f", total)
    }
    
}

