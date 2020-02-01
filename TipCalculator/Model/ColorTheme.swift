//
//  ColorTheme.swift
//  TipCalculator
//
//  Created by Mohammed Drame on 01/30/20.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import Foundation
import UIKit


struct ColorTheme {
    
    let viewControllerBg: UIColor
    let headerBG: UIColor
    let inPutView: UIColor
    let textsColor: UIColor
    let outPutView: UIColor
    let buttonsBG: UIColor
    let tint: UIColor
    let cgColor: CGColor
    
    
    // instance of light
    static let light = ColorTheme(viewControllerBg: #colorLiteral(red: 0.874435842, green: 0.8745587468, blue: 0.8743969798, alpha: 1),
                                  headerBG: #colorLiteral(red: 0.9489397407, green: 0.9490725398, blue: 0.948897779, alpha: 1),
                                  inPutView: #colorLiteral(red: 0.362932086, green: 0.8170687556, blue: 0.7171010375, alpha: 1),
                                  textsColor: #colorLiteral(red: 0.01138519589, green: 0.02358996682, blue: 0.0195768401, alpha: 1),
                                  outPutView: #colorLiteral(red: 0.9999160171, green: 1, blue: 0.9998720288, alpha: 1),
                                  buttonsBG: #colorLiteral(red: 0.9980812669, green: 0.7803611159, blue: 0.2373309731, alpha: 1),
                                  tint: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                                  cgColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).cgColor )
    
    
    
    
    // instance of dark
    static let dark = ColorTheme(viewControllerBg: #colorLiteral(red: 0.1638008952, green: 0.1679961979, blue: 0.2131763697, alpha: 1),
                                 headerBG: #colorLiteral(red: 0.2747620213, green: 0.2819551292, blue: 0.3612172961, alpha: 1),
                                 inPutView: #colorLiteral(red: 0.09910773187, green: 0.1017023139, blue: 0.1302924864, alpha: 1),
                                 textsColor: #colorLiteral(red: 0.9999160171, green: 1, blue: 0.9998720288, alpha: 1),
                                 outPutView: #colorLiteral(red: 0.2405843964, green: 0.2468827542, blue: 0.3162855067, alpha: 1),
                                 buttonsBG: #colorLiteral(red: 0.857288727, green: 0.1753842907, blue: 0.08688516907, alpha: 1),
                                 tint: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1),
                                 cgColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1).cgColor)
    
}
