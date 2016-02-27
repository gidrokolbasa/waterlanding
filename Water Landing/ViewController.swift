//
//  ViewController.swift
//  Water Landing
//
//  Created by Артем on 27/02/16.
//  Copyright © 2016 Артем. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func addWater(doze: Int) {
        balance += doze
        label1.text = String(balance)
    }
    
    var balance = 0

    @IBOutlet weak var label1: UILabel!
    
    @IBAction func b100(sender: AnyObject) {
        addWater(100)
    }
    
    @IBAction func b200(sender: AnyObject) {
        addWater(200)
        
    }
    
    @IBAction func b500(sender: AnyObject) {
        addWater(500)
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

