//
//  ViewController.swift
//  tippy
//
//  Created by Zhenzheng Zhu on 12/16/16.
//  Copyright © 2016 Zhenzheng Zhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var currency: UILabel!
    @IBOutlet weak var currencyControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    func calculations() {
        let tipRange = [0.1, 0.15, 0.2]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipRange[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
        
    }

    @IBAction func changeTipPentage(_ sender: Any) {
        calculations()
    }
    
    @IBAction func calculateTips(_ sender: Any) {
        calculations()
    }
    
    @IBAction func currencyAction(_ sender: Any) {
        
        if (currencyControl.selectedSegmentIndex == 0) {
            currency.text = "$"
        } else {
            currency.text = "￥"
        }
        
        
    }
}

