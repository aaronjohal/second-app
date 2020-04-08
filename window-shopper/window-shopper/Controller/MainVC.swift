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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let calcButton = UIButton (frame: CGRect (x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        

        wageTxt.inputAccessoryView = calcButton
        itemTxt.inputAccessoryView = calcButton
        
        
    
        
    }

    @objc func calculate(){
        let wage = Int (wageTxt.text!) ?? 0
        let item = Int (itemTxt.text!) ?? 0
        let total = wage + item
    
        
       print (total)
    }

}

