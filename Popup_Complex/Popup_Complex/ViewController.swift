//
//  ViewController.swift
//  Popup_Complex
//
//  Created by Jeongho Han on 2021-05-27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showPopup(_ sender: UIButton) {
        let storyBoard = UIStoryboard.init(name: "Popup", bundle: nil)
        let popupVC = storyBoard.instantiateViewController(withIdentifier: "popupVC")
        popupVC.modalPresentationStyle = .overCurrentContext
        
        present(popupVC, animated: false, completion: nil)
    }
    
}

