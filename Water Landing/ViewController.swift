//
//  ViewController.swift
//  Water Landing
//
//  Created by Артем on 27/02/16.
//  Copyright © 2016 Артем. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var balance = 0

    @IBOutlet weak var label1: UILabel!
    
    @IBAction func b100(sender: AnyObject) {
        balance += 100
        label1.text = String(balance)
    }
    
    @IBAction func b200(sender: AnyObject) {
        balance += 200
        label1.text = String(balance)
        
    }
    
    @IBAction func b500(sender: AnyObject) {
        balance += 500
        label1.text = String(balance)
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

