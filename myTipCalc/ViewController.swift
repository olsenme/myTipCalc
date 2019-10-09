//
//  ViewController.swift
//  myTipCalc
//
//  Created by Meagan Olsen on 10/8/19.
//  Copyright © 2019 Meagan Olsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.15,0.18,0.2]
        //get the bill
        let bill = Double(billField.text!) ?? 0
        //calc tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update tip and total label
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text=String(format: "$%.2f",total)
        
        
    }
}

