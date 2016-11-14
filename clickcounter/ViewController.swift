//
//  ViewController.swift
//  clickcounter
//
//  Created by -Natalie  on 11/12/16.
//  Copyright © 2016 Natalie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0;
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     

       
    }
    
    @IBAction func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

