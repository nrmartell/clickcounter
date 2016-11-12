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
    var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        let label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
         //increment Button
        let incrementButton = UIButton()
        incrementButton.frame = CGRect.init(x: 125, y: 250, width: 60, height: 60)
        incrementButton.setTitle("Plus", for: .normal)
        incrementButton.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(incrementButton)
        
        incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        //decrement button
        let decrementButton = UIButton()
        decrementButton .frame = CGRect.init(x: 170, y: 250, width: 60, height: 60)
        decrementButton .setTitle("Minus", for: .normal)
        decrementButton .setTitleColor(UIColor.red, for: .normal)
        self.view.addSubview(decrementButton)
        
         decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
    }
    
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        
    }
    
    func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
        Countclick()
    }
    
    func Countclick(){
        let zcount:CGFloat=CGFloat(-1*self.count+50)
        self.label.text="\(self.count)"
        self.view.backgroundColor=UIColor.init(red: (zcount*0.02), green: (zcount*0.03), blue: (zcount*0.04), alpha: (zcount*0.05))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

