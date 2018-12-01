//
//  HomeVc.swift
//  TipCalculator
//
//  Created by Mohammed Drame on 12/1/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit

class HomeVc: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    // = = = = = = = =  UIViews IBOutlets  = = = = = = = = = = =
    
    @IBOutlet weak var headerUIView: UIView!
    
    @IBOutlet weak var inputUIView: UIView!
    
    @IBOutlet weak var outputUIView: UIView!
    
    
    
    // = = = = = = = =  UILabels, UISwitch &  UIButtons IBOUTLETS = = = = = = = = = = =
    
    @IBOutlet weak var switchIBOutlet: UISwitch!
    
    
    @IBOutlet weak var tipCalculatorLable: UILabel!
    
    @IBOutlet weak var resetButtonOutlet: UIButton!
    
    
    
    
    
    // = = = = = = = = UIButtons and UISwitch IBActions = = =  = = = = = = = = = = = =  =
    
    @IBAction func switch_ON_OFF(_ sender: Any) {
        
        if switchIBOutlet.isOn {
            print("ON")
        } else {
            print("OFF")
        }
        
    }
    
    @IBAction func resetPress(_ sender: UIButton) {
        
        print("R E S E T")
        
        
    }
    
    
    
    
    
    
    

   

}
