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
        
        // PROGRAMMATIC UIBUTTON
        // Purpose : When user click inputfiled button automatically        come up with keypad.
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width , height: 60 ))
        calculateButton.backgroundColor = #colorLiteral(red: 0.3106094301, green: 0.6536671519, blue: 0.5751567483, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        amountEntered.inputAccessoryView = calculateButton
        
        
        
        
    
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    // = = = = = = = =  UIViews IBOutlets  = = = = = = = = = = =
    
    @IBOutlet weak var headerUIView: UIView!
    
    @IBOutlet weak var inputUIView: UIView!
    
    @IBOutlet weak var outputUIView: UIView!
    
    
    
    // = = = = = = = =  UILabels, UISwitch &  UIButtons IBOUTLETS = = = = = = = = = = =
    
    @IBOutlet weak var switchIBOutlet: UISwitch!
    
    
    @IBOutlet weak var tipCalculatorLable: UILabel!
    
    @IBOutlet var billAmountIBOUTLET: UILabel!
    
    
    @IBOutlet var amountEntered: UITextField!
    
    @IBOutlet var tiIBOUTLET: UILabel!
    
    @IBOutlet var seltedTipIBOutlet: UISegmentedControl!
    
    @IBOutlet var tipAmountIBOutlet: UILabel!
    
    @IBOutlet var tipAmount_AmountLabel: UILabel!
    
    @IBOutlet var totalIBOutlet: UILabel!
    
    @IBOutlet var totalLabel_Label: UILabel!
    
    @IBOutlet weak var resetButtonOutlet: UIButton!
    
    
    
    
    
    // = = = = = = = = UIButtons and UISwitch IBActions = = =  = = = = = = = = = = = =  =
    
   
    
    
    
    @IBAction func switch_ON_OFF(_ sender: Any) {
        
        if switchIBOutlet.isOn {
            print("ON")
        } else {
            print("OFF")
        }
        
    }
    
    
    
  
    // programmatic UIButton action call
    
     @objc func buttonAction(sender: UIButton!) {
        
        if self.amountEntered.isFirstResponder {
            self.amountEntered.resignFirstResponder()
        }
        
        
        guard let billAmountText = amountEntered.text,
              let billAmountDouble: Double = Double(billAmountText) else {
            return
        }
        
        // rounding bill amount entered by user.
        let roundedBillAmount = (billAmountDouble).rounded()
        
      
        let tipPercent: Double
        
        switch seltedTipIBOutlet.selectedSegmentIndex {
        case 0:
            tipPercent = 0.15
            break
        case 1:
            tipPercent = 0.18
            break
        case 2:
            tipPercent = 0.20
            break
        default:
            tipPercent = 0.15
        }
        
        // Tip Amount
       let tipAmount = roundedBillAmount * tipPercent
       let roundedTipAmount = (tipAmount).rounded()
        
        // Total Amont
        let totalAmount = roundedBillAmount + roundedTipAmount
        
        
        // Updating UI
        
        self.tipAmount_AmountLabel.text =  "$ \(roundedTipAmount)"
        self.totalLabel_Label.text = "$ \(totalAmount)"
        
        
        }
    
    
    // reset clear function
    // reason: so i can be able to call this func in the calcation button function just incase the calculator milfunction.
    
    func clear () {
        
        self.amountEntered.text = nil
        self.seltedTipIBOutlet.selectedSegmentIndex = 0
        self.tipAmountIBOutlet.text = "$ 0.00"
        self.totalIBOutlet.text = "$ 0.00"
        
    }
    
    
    // reset button clear entire app
    
    @IBAction func resetPress(_ sender: UIButton) {
        
        clear()

    }
        
        
        
       
        
    }



