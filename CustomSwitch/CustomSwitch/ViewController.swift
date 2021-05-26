//
//  ViewController.swift
//  CustomSwitch
//
//  Created by Jeongho Han on 2021-05-25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var switchThumb: UIButton!
    @IBOutlet weak var switchBG: UIView!
    @IBOutlet weak var buttonCenterX: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonCenterX.constant = -75
        switchThumb.layer.cornerRadius = 50 / 2
        switchBG.layer.cornerRadius = 50 / 2
    }
    
    @IBAction func selectedThumb(_ sender: UIButton) {
        
        
        if buttonCenterX.constant == 75{
            buttonCenterX.constant = -75
            switchBG.backgroundColor = .lightGray
        }else{
            buttonCenterX.constant = 75
            switchBG.backgroundColor = .yellow
        }
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
    
}

