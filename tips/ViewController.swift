//
//  ViewController.swift
//  tips
//
//  Created by aleu on 12/19/14.
//  Copyright (c) 2014 aleu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var OnePerson: UILabel!
    @IBOutlet weak var TwoPpl: UILabel!
    
    @IBOutlet weak var Threeppl: UILabel!
    
    @IBOutlet weak var FourPpl: UILabel!
    
    @IBOutlet weak var FivePpl: UILabel!
    
    @IBOutlet weak var SixPpl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        OnePerson.text = "$0.00"
        TwoPpl.text = "$0.00"
        Threeppl.text = "$0.00"
        FourPpl.text = "$0.00"
        FivePpl.text = "$0.00"
        SixPpl.text = "$0.00"
        
        self.view.backgroundColor = UIColor.blackColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18,0.2,0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
       
        var billAmount = (billField.text as NSString).doubleValue
        
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
    tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        OnePerson.text = "$\(total)"
        OnePerson.text = String(format: "$%.2f",total)
        var totalbytwo = total/2
        TwoPpl.text = "$\(totalbytwo)"
        TwoPpl.text = String(format: "$%.2f",totalbytwo)
        var totalbythree = total/3
        Threeppl.text = "$\(totalbythree)"
        Threeppl.text = String(format: "$%.2f",totalbythree)
        var totalbyfour = total/4
        FourPpl.text = "$\(totalbyfour)"
        FourPpl.text = String(format: "$%.2f",totalbyfour)
        var totalbyfive = total/5
        FivePpl.text = "$\(totalbyfive)"
        FivePpl.text = String(format: "$%.2f",totalbyfive)
        var totalbysix = total/6
        SixPpl.text = "$\(totalbysix)"
        SixPpl.text = String(format: "$%.2f",totalbysix)
        
        
       
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

