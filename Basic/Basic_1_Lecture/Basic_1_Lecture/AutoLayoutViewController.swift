//
//  AutoLayoutViewController.swift
//  Basic_1_Lecture
//
//  Created by Jeongho Han on 2021-05-23.
//

import UIKit

class AutoLayoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myButton = UIButton.init(type: .system)
        myButton.setTitle("My Button", for: .normal)
        
        self.view.addSubview(myButton)
        
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 100).isActive = true
        myButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        let myLabel = UILabel.init()
        myLabel.text = "My Label"
        
        self.view.addSubview(myLabel)
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        myLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        myLabel.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        
    }

}
