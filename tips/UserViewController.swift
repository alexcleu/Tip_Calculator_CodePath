//
//  UserViewController.swift
//  tips
//
//  Created by aleu on 12/23/14.
//  Copyright (c) 2014 aleu. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var TipPercent: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func End(sender: AnyObject) {
         view.endEditing(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
