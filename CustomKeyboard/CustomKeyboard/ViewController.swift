//
//  ViewController.swift
//  CustomKeyboard
//
//  Created by Jeongho Han on 2021-05-25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Custom Keyboard Setting
        let loadNib = Bundle.main.loadNibNamed("CustomKeyboard", owner: nil, options: nil)
        
        let myKeyboardView = loadNib?.first as! CustomKeyboard
        myKeyboardView.delegate = self
        
        firstTextField.inputView = myKeyboardView
    }
}

extension ViewController: CustomKeyboardDelegate{
    func keyboardTapped(str: String) {
        let oldNumber = Int(firstTextField.text!)
        var newNumber = Int(str)
        
        if str == "00" && oldNumber != nil{
            newNumber = oldNumber! * 100
        }
        
        if let hasNumber = newNumber{
            firstTextField.text = String(describing: hasNumber)
        }
    }
}

