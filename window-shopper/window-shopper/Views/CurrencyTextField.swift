//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Aaron Johal on 08/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import UIKit


@IBDesignable

class CurrencyTextField: UITextField {
    
    
    override func prepareForInterfaceBuilder() {
        customiseView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customiseView()
        
    }
    
    func customiseView(){
        
        
        backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.2539865154)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        if let p = placeholder {         //if p is nil it won't get in here
            let placeholderStyling = NSAttributedString(string: p, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
            
            attributedPlaceholder = placeholderStyling //attributedPlaceholder is a property of UI textfield
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
        
        
    }
    
}
