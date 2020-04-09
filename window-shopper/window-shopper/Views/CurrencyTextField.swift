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
    
    override func draw(_ rect: CGRect) {
        
     
        let size: CGFloat = 20

        //draw the label
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))

        //set label properties
        currencyLabel.backgroundColor = #colorLiteral(red: 0.5000929832, green: 0.4971241355, blue: 0.5023778081, alpha: 0.8135166952)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true


        //get the currency code with the number input
        let formater = NumberFormatter()
        formater.numberStyle = .currency
        formater.locale = Locale(identifier: "en_GB")
        currencyLabel.text = formater.currencySymbol
        addSubview(currencyLabel) //adding it to the parent view which is a UITextField
    }
    
    
    override func prepareForInterfaceBuilder() {
        customiseView()
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customiseView()
        
    }
    
    func setCurrency(){
        let size: CGFloat = 20
               
               //draw the label
               let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
               
               //set label properties
               currencyLabel.backgroundColor = #colorLiteral(red: 0.5000929832, green: 0.4971241355, blue: 0.5023778081, alpha: 0.8135166952)
               currencyLabel.textAlignment = .center
               currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
               currencyLabel.layer.cornerRadius = 5.0
               //currencyLabel.clipsToBounds = true
               
               
               //get the currency code with the number input
               let formater = NumberFormatter()
               formater.numberStyle = .currency
               formater.locale = .current
               currencyLabel.text = formater.currencySymbol
               addSubview(currencyLabel)
        
    }
    
    
    
    
    
    func customiseView(){
        
        backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.2539865154)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {         //if p is nil it won't get in here
            let placeholderStyling = NSAttributedString(string: p, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
            
            attributedPlaceholder = placeholderStyling //attributedPlaceholder is a property of UI textfield
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    
}
