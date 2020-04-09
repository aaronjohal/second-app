//
//  ViewController.swift
//  window-shopper
//
//  Created by Aaron Johal on 08/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var itemTxt: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let calcButton = UIButton (frame: CGRect (x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        

        wageTxt.inputAccessoryView = calcButton
        itemTxt.inputAccessoryView = calcButton
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
        
    
        
    }

    @objc func calculate(){
        
        if let wageText = wageTxt.text, let itemText = itemTxt.text { //if these variables are not empty
            if let wage = Double(wageText), let price = Double(itemText) { //if the valued can be converted to doubles
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = " \(Wage.getHours(forWage: wage, andPrice: price))"
                
            }
        }

    }
    
    
    
    @IBAction func clearCalulatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        itemTxt.text = ""
    }
    
}

