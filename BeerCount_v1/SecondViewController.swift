//
//  SecondViewController.swift
//  BeerCount_v1
//
//  Created by Alina Spiridon on 18/07/16.
//  Copyright © 2016 Alina Spiridon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var glassCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func plusClicked(sender: AnyObject) {
        let plusCount = glassCount.text;
        var value = 0;
        value = Int(plusCount!)!
        value = value + 1;
        
        glassCount.text = String(value);
    }
    
    
    @IBAction func minusClick(sender: AnyObject) {
        let minusCount = glassCount.text;
        var value = 0;
        value = Int(minusCount!)!
        
        if(value > 0) {
            value = value - 1;
        }
        
        glassCount.text = String(value);
    }
}

