//
//  ViewController.swift
//  SignInTest
//
//  Created by Jeongho Han on 2021-05-27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailErrorLabel: UILabel!
    @IBOutlet weak var passwordErrorLabel: UILabel!
    
    var emailErrorHeight: NSLayoutConstraint!
    var passwordErrorHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.addTarget(self, action: #selector(textFieldEdited), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldEdited), for: .editingChanged)
        emailErrorHeight = emailErrorLabel.heightAnchor.constraint(equalToConstant: 0)
        passwordErrorHeight = passwordErrorLabel.heightAnchor.constraint(equalToConstant: 0)
    }
    
    @objc
    func textFieldEdited(textField: UITextField){
        if textField == emailTextField{
            if isValidEmail(textField.text) {
//                emailErrorLabel.isHidden = true
                emailErrorHeight.isActive = true
                
            }else{
//                emailErrorLabel.isHidden = false
                emailErrorHeight.isActive = false
            }
            
        }else if textField == passwordTextField{
            if isValidPassword(textField.text){
                passwordErrorHeight.isActive = true
            }else{
                passwordErrorHeight.isActive = false
            }
        }
        
        UIView.animate(withDuration: 0.1) {
            self.view.layoutIfNeeded()
        }
    }
    
    // Regular Expression
    func isValidEmail(_ email: String?) -> Bool {
        if email == nil{
            return false
        }
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    // Regular Expression
    func isValidPassword(_ password: String?) -> Bool {
        if password == nil || password!.count < 8{
            return false
        }
        
        return true
    }
}

