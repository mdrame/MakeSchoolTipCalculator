//
//  HomeVc.swift
//  TipCalculator
//
//  Created by Mohammed Drame on 01/30/20.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit

class HomeVc: UIViewController {
    
    
    // global variable
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PROGRAMMATIC UIBUTTON
        // Purpose : When user click inputfiled button automatically        come up with keypad.
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width , height: 60 ))
        calculateButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        
        calculateButton.setTitleColor( #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) , for: .normal )
        calculateButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        amountEntered.inputAccessoryView = calculateButton
        
        
        setUPViews()
        
        setThem(isDark: false)
        
        
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
    @IBOutlet weak var seletedTipIBOutlet: UISegmentedControl!
    @IBOutlet var tipAmountIBOutlet: UILabel!
    @IBOutlet var tipAmount_AmountLabel: UILabel!
    @IBOutlet var totalIBOutlet: UILabel!
    @IBOutlet var totalLabel_Label: UILabel!
    @IBOutlet weak var resetButtonOutlet: UIButton!
    
    
    
    // = = = = = = = = UIButtons and UISwitch IBActions = = =  = = = = = = = = = = = =  =
    
    func setThem(isDark: Bool) {
        
        
        UIView.animate(withDuration: 0.5) {
            
            // setting mode base on isDark bool
            let theme = isDark ? ColorTheme.dark : ColorTheme.light
            
            //header
            self.view.backgroundColor = theme.viewControllerBg
            self.headerUIView.backgroundColor = theme.headerBG
            self.tipCalculatorLable.textColor = theme.textsColor
            
            //input
            self.inputUIView.backgroundColor = theme.inPutView
            self.billAmountIBOUTLET.textColor = theme.textsColor
            self.tiIBOUTLET.textColor = theme.textsColor
            self.seletedTipIBOutlet.tintColor = theme.tint
            
            //output
            self.outputUIView.backgroundColor = theme.outPutView
            self.outputUIView.layer.borderColor = theme.cgColor
            self.tipAmountIBOutlet.textColor = theme.textsColor
            self.tipAmount_AmountLabel.textColor = theme.textsColor
            self.totalIBOutlet.textColor = theme.textsColor
            self.totalLabel_Label.textColor = theme.textsColor
            
            
            //button
            self.resetButtonOutlet.backgroundColor = theme.buttonsBG
            
        }
        
        
    }
    
    
    // turn isDark bool when this button is pressed.
    @IBAction func switch_ON_OFF(_ sender: UISwitch) {
        
        setThem(isDark: sender.isOn)
        
        
    }
    
    
    
    
    
    
    
    
    func setUPViews() {
        
        //inputput layouts
        
        inputUIView.layer.cornerRadius = 10
        inputUIView.layer.masksToBounds = true
        
        
        //output layouts
        
        outputUIView.layer.cornerRadius = 10
        outputUIView.layer.borderWidth = 1
        outputUIView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        outputUIView.layer.masksToBounds = true
        
        
        //resetbutton layoutStyling
        
        resetButtonOutlet.layer.cornerRadius = 10
        resetButtonOutlet.layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        resetButtonOutlet.layer.shadowOpacity = 50
        resetButtonOutlet.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        
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
        
        switch seletedTipIBOutlet.selectedSegmentIndex {
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
        self.seletedTipIBOutlet.selectedSegmentIndex = 0
        self.tipAmount_AmountLabel.text = "$ 0.00"
        self.totalLabel_Label.text = "$ 0.00"
        
    }
    
    
    // reset button clear entire app
    
    @IBAction func resetPress(_ sender: UIButton) {
        
        clear()
        
    }
    
    
    
    
    
}



