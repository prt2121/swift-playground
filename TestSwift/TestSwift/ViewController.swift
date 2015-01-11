//
//  ViewController.swift
//  TestSwift
//
//  Created by Prat Tanapaisankit on 1/7/15.
//  Copyright (c) 2015 Prat Tanapaisankit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var totalTextField : UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxPctLabel : UILabel!
    @IBOutlet var resultsTextView : UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTapped(sender : AnyObject) {
        tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        for (tipPct, tipValue) in possibleTips {
            results += "\(tipPct)%: \(tipValue)\n"
        }
        resultsTextView.text = results
    }
    
    @IBAction func taxPercentageChanged(sender : AnyObject) {
        refreshUI()
    }
    
    @IBAction func viewTapped(sender : AnyObject) {
        totalTextField.resignFirstResponder()
    }
    
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    
    func refreshUI() {
        // 1
        totalTextField.text = String(format: "%0.2f", tipCalc.total)
        // 2
        taxPctSlider.value = Float(tipCalc.taxPct) * 100.0
        // 3
        taxPctLabel.text = "Tax Percentage (\(Int(taxPctSlider.value))%)"
        // 4
        resultsTextView.text = ""
    }
    
    
    
    
}

