//
//  ViewController.swift
//  Water Landing
//
//  Created by Артем on 27/02/16.
//  Copyright © 2016 Артем. All rights reserved.
//

import UIKit

class Record {
    var datetime: time_t = 0
    var drunked: Int = 0
    
    init (datetime:time_t, drunked:Int) {
        self.datetime = datetime
        self.drunked = drunked
    }
}

class History {
    var records : [Record] = []
    
    func add_record(record:Record){
        self.records.append(record)
    }
    
    func sum_records() -> Int {
        var sum: Int = 0
        for record in self.records {
            sum += record.drunked
        }
        return sum
    }
    
}


class ViewController: UIViewController {
    
    
    func addWater(doze: Int) {
        //balance += doze
        
        
        
        //label1.text = String(balance)
        
        
        var record = Record(datetime: 0, drunked: doze)
        self.history.add_record(record)
        label1.text = String(self.history.sum_records())
        
    }
    
    var balance = 0
    var history:History = History()

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

