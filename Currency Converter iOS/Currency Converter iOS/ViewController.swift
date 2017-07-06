//
//  ViewController.swift
//  Currency Converter iOS
//
//  Created by Sakada Lim on 7/5/17.
//  Copyright © 2017 Sakada Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currencySelector: UISegmentedControl!

    @IBOutlet weak var USDAmountField: UITextField!
   
    @IBOutlet weak var resultField: UITextField!

    @IBAction func calculateCurrency(_ sender: AnyObject) {
        if let USDAmount = Double(USDAmountField.text!){
            var currencyRate = 0.0
            
            switch currencySelector.selectedSegmentIndex {
            case 0:
                currencyRate = 1.38
            case 1:
                currencyRate = 4085.87
            case 2:
                currencyRate = 1.32
            default:
                break
            }
            
            let roundedUSDAmount = round(100*USDAmount)/100
            let result = roundedUSDAmount * currencyRate
            
            if(!USDAmountField.isEditing){
                USDAmountField.text = String(format: "%.2f", roundedUSDAmount)
            }
            
            resultField.text = String(format: "%.2f", result)
        }else {
            USDAmountField.text = ""
            resultField.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

